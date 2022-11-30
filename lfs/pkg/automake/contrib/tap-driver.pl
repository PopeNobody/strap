#! /usr/bin/env perl
# Copyright (C) 2011-2021 Free Software Foundation, Inc.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

# As a special exception to the GNU General Public License, if you
# distribute this file as part of a program that contains a
# configuration script generated by Autoconf, you may include it under
# the same distribution terms that you use for the rest of that program.

# This file is maintained in Automake, please report
# bugs to <bug-automake@gnu.org> or send patches to
# <automake-patches@gnu.org>.

# ---------------------------------- #
#  Imports, static data, and setup.  #
# ---------------------------------- #

use warnings FATAL => 'all';
use strict;
use Getopt::Long ();
use TAP::Parser;

my $VERSION = '2013-12-24.15'; # UTC

my $ME = "tap-driver.pl";

my $USAGE = <<'END';
Usage:
  tap-driver --test-name=NAME --log-file=PATH --trs-file=PATH
             [--expect-failure={yes|no}] [--color-tests={yes|no}]
             [--enable-hard-errors={yes|no}] [--ignore-exit]
             [--diagnostic-string=STRING] [--merge|--no-merge]
             [--comments|--no-comments] [--] TEST-COMMAND
The '--test-name', '--log-file' and '--trs-file' options are mandatory.
END

my $HELP = "$ME: TAP-aware test driver for Automake testsuite harness." .
           "\n" . $USAGE;

# Keep this in sync with 'lib/am/check.am:$(am__tty_colors)'.
my %COLOR = (
  red => "\e[0;31m",
  grn => "\e[0;32m",
  lgn => "\e[1;32m",
  blu => "\e[1;34m",
  mgn => "\e[0;35m",
  brg => "\e[1m",
  std => "\e[m",
);

# It's important that NO_PLAN evaluates "false" as a boolean.
use constant NO_PLAN => 0;
use constant EARLY_PLAN => 1;
use constant LATE_PLAN => 2;

# ------------------- #
#  Global variables.  #
# ------------------- #

my $testno = 0;     # Number of test results seen so far.
my $bailed_out = 0; # Whether a "Bail out!" directive has been seen.
my $parser;         # TAP parser object (will be initialized later).

# Whether the TAP plan has been seen or not, and if yes, which kind
# it is ("early" is seen before any test result, "late" otherwise).
my $plan_seen = NO_PLAN;

# ----------------- #
#  Option parsing.  #
# ----------------- #

my %cfg = (
  "color-tests" => 0,
  "expect-failure" => 0,
  "merge" => 0,
  "comments" => 0,
  "ignore-exit" => 0,
);

my $test_script_name = undef;
my $log_file = undef;
my $trs_file = undef;
my $diag_string = "#";

Getopt::Long::GetOptions
  (
    'help' => sub { print $HELP; exit 0; },
    'version' => sub { print "$ME $VERSION\n"; exit 0; },
    'test-name=s' => \$test_script_name,
    'log-file=s' => \$log_file,
    'trs-file=s' => \$trs_file,
    'color-tests=s'  => \&bool_opt,
    'expect-failure=s'  => \&bool_opt,
    'enable-hard-errors=s' => sub {}, # No-op.
    'diagnostic-string=s' => \$diag_string,
    'comments' => sub { $cfg{"comments"} = 1; },
    'no-comments' => sub { $cfg{"comments"} = 0; },
    'merge' => sub { $cfg{"merge"} = 1; },
    'no-merge' => sub { $cfg{"merge"} = 0; },
    'ignore-exit' => sub { $cfg{"ignore-exit"} = 1; },
  ) or exit 1;

# ------------- #
#  Prototypes.  #
# ------------- #

sub add_test_result ($);
sub bool_opt ($$);
sub colored ($$);
sub copy_in_global_log ();
sub decorate_result ($);
sub extract_tap_comment ($);
sub finish ();
sub get_global_test_result ();
sub get_test_exit_message ();
sub get_test_results ();
sub handle_tap_bailout ($);
sub handle_tap_plan ($);
sub handle_tap_result ($);
sub is_null_string ($);
sub main (@);
sub must_recheck ();
sub report ($;$);
sub setup_io ();
sub setup_parser (@);
sub stringify_result_obj ($);
sub testsuite_error ($);
sub trap_perl_warnings_and_errors ();
sub write_test_results ();
sub yn ($);

# -------------- #
#  Subroutines.  #
# -------------- #

sub bool_opt ($$)
{
  my ($opt, $val) = @_;
  if ($val =~ /^(?:y|yes)\z/i)
    {
      $cfg{$opt} = 1;
    }
  elsif ($val =~ /^(?:n|no)\z/i)
    {
      $cfg{$opt} = 0;
    }
  else
    {
      die "$ME: invalid argument '$val' for option '$opt'\n";
    }
}

# If the given string is undefined or empty, return true, otherwise
# return false.  This function is useful to avoid pitfalls like:
#   if ($message) { print "$message\n"; }
# which wouldn't print anything if $message is the literal "0".
sub is_null_string ($)
{
  my $str = shift;
  return ! (defined $str and length $str);
}

# Convert a boolean to a "yes"/"no" string.
sub yn ($)
{
  my $bool = shift;
  return $bool ? "yes" : "no";
}

TEST_RESULTS :
{
  my (@test_results_list, %test_results_seen);

  sub add_test_result ($)
  {
    my $res = shift;
    push @test_results_list, $res;
    $test_results_seen{$res} = 1;
  }

  sub get_test_results ()
  {
    return @test_results_list;
  }

  # Whether the test script should be re-run by "make recheck".
  sub must_recheck ()
  {
    return grep { !/^(?:XFAIL|PASS|SKIP)$/ } (keys %test_results_seen);
  }

  # Whether the content of the log file associated to this test should
  # be copied into the "global" test-suite.log.
  sub copy_in_global_log ()
  {
    return grep { not $_ eq "PASS" } (keys %test_results_seen);
  }

  sub get_global_test_result ()
  {
    return "ERROR"
      if $test_results_seen{"ERROR"};
    return "FAIL"
      if $test_results_seen{"FAIL"} || $test_results_seen{"XPASS"};
    return "SKIP"
      if scalar keys %test_results_seen == 1 && $test_results_seen{"SKIP"};
    return "PASS";
  }

}

sub write_test_results ()
{
  open RES, ">", $trs_file or die "$ME: opening $trs_file: $!\n";
  print RES ":global-test-result: " . get_global_test_result . "\n";
  print RES ":recheck: " . yn (must_recheck) . "\n";
  print RES ":copy-in-global-log: " . yn (copy_in_global_log) . "\n";
  foreach my $result (get_test_results)
    {
      print RES ":test-result: $result\n";
    }
  close RES or die "$ME: closing $trs_file: $!\n";
}

sub trap_perl_warnings_and_errors ()
{
  $SIG{__WARN__} = $SIG{__DIE__} = sub
    {
      # Be sure to send the warning/error message to the original stderr
      # (presumably the console), not into the log file.
      open STDERR, ">&OLDERR";
      die @_;
    }
}

sub setup_io ()
{
  # Redirect stderr and stdout to a temporary log file.  Save the
  # original stdout stream, since we need it to print testsuite
  # progress output. Save original stderr stream, so that we can
  # redirect warning and error messages from perl there.
  open LOG, ">", $log_file or die "$ME: opening $log_file: $!\n";
  open OLDOUT, ">&STDOUT" or die "$ME: duplicating stdout: $!\n";
  open OLDERR, ">&STDERR" or die "$ME: duplicating stdout: $!\n";
  *OLDERR = *OLDERR; # To pacify a "used only once" warning.
  trap_perl_warnings_and_errors;
  open STDOUT, ">&LOG" or die "$ME: redirecting stdout: $!\n";
  open STDERR, ">&LOG" or die "$ME: redirecting stderr: $!\n";
}

sub setup_parser (@)
{
  local $@ = '';
  eval { $parser = TAP::Parser->new ({exec => \@_, merge => $cfg{merge}}) };
  if ($@ ne '')
    {
      # Don't use the error message in $@ as set by TAP::Parser, since
      # currently it's both too generic (at the point of being basically
      # useless) and quite long.
      report "ERROR", "- couldn't execute test script";
      finish;
    }
}

sub get_test_exit_message ()
{
  my $wstatus = $parser->wait;
  # Watch out for possible internal errors.
  die "$ME: couldn't get the exit status of the TAP producer"
    unless defined $wstatus;
  # Return an undefined value if the producer exited with success.
  return unless $wstatus;
  # Otherwise, determine whether it exited with error or was terminated
  # by a signal.
  use POSIX qw (WIFEXITED WEXITSTATUS WIFSIGNALED WTERMSIG);
  if (WIFEXITED ($wstatus))
  {
    return sprintf "exited with status %d", WEXITSTATUS ($wstatus);
  }
  elsif (WIFSIGNALED ($wstatus))
    {
      return sprintf "terminated by signal %d", WTERMSIG ($wstatus);
    }
  else
    {
      return "terminated abnormally";
    }
}

sub stringify_result_obj ($)
{
  my $result_obj = shift;
  my $COOKED_PASS = $cfg{"expect-failure"} ? "XPASS": "PASS";
  my $COOKED_FAIL = $cfg{"expect-failure"} ? "XFAIL": "FAIL";
  if ($result_obj->is_unplanned || $result_obj->number != $testno)
    {
      return "ERROR";
    }
  elsif ($plan_seen == LATE_PLAN)
    {
      return "ERROR";
    }
  elsif (!$result_obj->directive)
    {
      return $result_obj->is_ok ? $COOKED_PASS: $COOKED_FAIL;
    }
  elsif ($result_obj->has_todo)
    {
      return $result_obj->is_actual_ok ? "XPASS" : "XFAIL";
    }
  elsif ($result_obj->has_skip)
    {
      return $result_obj->is_ok ? "SKIP" : $COOKED_FAIL;
    }
  die "$ME: INTERNAL ERROR"; # NOTREACHED
}

sub colored ($$)
{
  my ($color_name, $text) = @_;
  return $COLOR{$color_name} . $text . $COLOR{'std'};
}

sub decorate_result ($)
{
  my $result = shift;
  return $result unless $cfg{"color-tests"};
  my %color_for_result =
    (
      "ERROR" => 'mgn',
      "PASS"  => 'grn',
      "XPASS" => 'red',
      "FAIL"  => 'red',
      "XFAIL" => 'lgn',
      "SKIP"  => 'blu',
    );
  if (my $color = $color_for_result{$result})
    {
      return colored ($color, $result);
    }
  else
    {
      return $result; # Don't colorize unknown stuff.
    }
}

sub report ($;$)
{
  my ($msg, $result, $explanation) = (undef, @_);
  if ($result =~ /^(?:X?(?:PASS|FAIL)|SKIP|ERROR)/)
    {
      $msg = ": $test_script_name";
      add_test_result $result;
    }
  elsif ($result eq "#")
    {
      $msg = " $test_script_name:";
    }
  else
    {
      die "$ME: INTERNAL ERROR"; # NOTREACHED
    }
  $msg .= " $explanation" if defined $explanation;
  $msg .= "\n";
  # Output on console might be colorized.
  print OLDOUT decorate_result ($result) . $msg;
  # Log the result in the log file too, to help debugging (this is
  # especially true when said result is a TAP error or "Bail out!").
  print $result . $msg;
}

sub testsuite_error ($)
{
  report "ERROR", "- $_[0]";
}

sub handle_tap_result ($)
{
  $testno++;
  my $result_obj = shift;

  my $test_result = stringify_result_obj $result_obj;
  my $string = $result_obj->number;

  my $description = $result_obj->description;
  $string .= " $description"
    unless is_null_string $description;

  if ($plan_seen == LATE_PLAN)
    {
      $string .= " # AFTER LATE PLAN";
    }
  elsif ($result_obj->is_unplanned)
    {
      $string .= " # UNPLANNED";
    }
  elsif ($result_obj->number != $testno)
    {
      $string .= " # OUT-OF-ORDER (expecting $testno)";
    }
  elsif (my $directive = $result_obj->directive)
    {
      $string .= " # $directive";
      my $explanation = $result_obj->explanation;
      $string .= " $explanation"
        unless is_null_string $explanation;
    }

  report $test_result, $string;
}

sub handle_tap_plan ($)
{
  my $plan = shift;
  if ($plan_seen)
    {
      # Error, only one plan per stream is acceptable.
      testsuite_error "multiple test plans";
      return;
    }
  # The TAP plan can come before or after *all* the TAP results; we speak
  # respectively of an "early" or a "late" plan.  If we see the plan line
  # after at least one TAP result has been seen, assume we have a late
  # plan; in this case, any further test result seen after the plan will
  # be flagged as an error.
  $plan_seen = ($testno >= 1 ? LATE_PLAN : EARLY_PLAN);
  # If $testno > 0, we have an error ("too many tests run") that will be
  # automatically dealt with later, so don't worry about it here.  If
  # $plan_seen is true, we have an error due to a repeated plan, and that
  # has already been dealt with above.  Otherwise, we have a valid "plan
  # with SKIP" specification, and should report it as a particular kind
  # of SKIP result.
  if ($plan->directive && $testno == 0)
    {
      my $explanation = is_null_string ($plan->explanation) ?
                        undef : "- " . $plan->explanation;
      report "SKIP", $explanation;
    }
}

sub handle_tap_bailout ($)
{
  my ($bailout, $msg) = ($_[0], "Bail out!");
  $bailed_out = 1;
  $msg .= " " . $bailout->explanation
    unless is_null_string $bailout->explanation;
  testsuite_error $msg;
}

sub extract_tap_comment ($)
{
  my $line = shift;
  if (index ($line, $diag_string) == 0)
    {
      # Strip leading '$diag_string' from '$line'.
      $line = substr ($line, length ($diag_string));
      # And strip any leading and trailing whitespace left.
      $line =~ s/(?:^\s*|\s*$)//g;
      # Return what is left (if any).
      return $line;
    }
  return "";
}

sub finish ()
{
  write_test_results;
  close LOG or die "$ME: closing $log_file: $!\n";
  exit 0;
}

sub main (@)
{
  setup_io;
  setup_parser @_;

  while (defined (my $cur = $parser->next))
    {
      # Verbatim copy any input line into the log file.
      print $cur->raw . "\n";
      # Parsing of TAP input should stop after a "Bail out!" directive.
      next if $bailed_out;

      if ($cur->is_plan)
        {
          handle_tap_plan ($cur);
        }
      elsif ($cur->is_test)
        {
          handle_tap_result ($cur);
        }
      elsif ($cur->is_bailout)
        {
          handle_tap_bailout ($cur);
        }
      elsif ($cfg{comments})
        {
          my $comment = extract_tap_comment ($cur->raw);
          report "#", "$comment" if length $comment;
       }
    }
  # A "Bail out!" directive should cause us to ignore any following TAP
  # error, as well as a non-zero exit status from the TAP producer.
  if (!$bailed_out)
    {
      if (!$plan_seen)
        {
          testsuite_error "missing test plan";
        }
      elsif ($parser->tests_planned != $parser->tests_run)
        {
          my ($planned, $run) = ($parser->tests_planned, $parser->tests_run);
          my $bad_amount = $run > $planned ? "many" : "few";
          testsuite_error (sprintf "too %s tests run (expected %d, got %d)",
                                   $bad_amount, $planned, $run);
        }
      if (!$cfg{"ignore-exit"})
        {
          my $msg = get_test_exit_message ();
          testsuite_error $msg if $msg;
        }
    }
  finish;
}

# ----------- #
#  Main code. #
# ----------- #

main @ARGV;

# Local Variables:
# perl-indent-level: 2
# perl-continued-statement-offset: 2
# perl-continued-brace-offset: 0
# perl-brace-offset: 0
# perl-brace-imaginary-offset: 0
# perl-label-offset: -2
# cperl-indent-level: 2
# cperl-brace-offset: 0
# cperl-continued-brace-offset: 0
# cperl-label-offset: -2
# cperl-extra-newline-before-brace: t
# cperl-merge-trailing-else: nil
# cperl-continued-statement-offset: 2
# eval: (add-hook 'before-save-hook 'time-stamp)
# time-stamp-start: "my $VERSION = "
# time-stamp-format: "'%:y-%02m-%02d.%02H'"
# time-stamp-time-zone: "UTC0"
# time-stamp-end: "; # UTC"
# End:
