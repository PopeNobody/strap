
BEGIN {
    if ($ENV{PERL_CORE}) {
	chdir('t') if -d 't';
	@INC = $^O eq 'MacOS' ? qw(::lib) : qw(../lib);
    }
}

use strict;
use warnings;
BEGIN { $| = 1; print "1..25\n"; }
my $count = 0;
sub ok ($;$) {
    my $p = my $r = shift;
    if (@_) {
	my $x = shift;
	$p = !defined $x ? !defined $r : !defined $r ? 0 : $r eq $x;
    }
    print $p ? "ok" : "not ok", ' ', ++$count, "\n";
}

use Unicode::Collate;

ok(1);

sub _pack_U   { Unicode::Collate::pack_U(@_) }
sub _unpack_U { Unicode::Collate::unpack_U(@_) }

#########################

use Unicode::Collate::CJK::GB2312;

my $collator = Unicode::Collate->new(
    table => undef,
    normalization => undef,
    overrideCJK => \&Unicode::Collate::CJK::GB2312::weightGB2312
);

sub hex_sort {
    my @source = map _pack_U(hex $_), split ' ', shift;
    my @sorted = $collator->sort(@source);
    return join " ", map sprintf("%04X", _unpack_U($_)), @sorted;
}

# 1

$collator->change(level => 1);

ok($collator->lt("\x{554A}", "\x{963F}"));
ok($collator->lt("\x{963F}", "\x{57C3}"));
ok($collator->lt("\x{57C3}", "\x{6328}"));
ok($collator->lt("\x{6328}", "\x{54CE}"));
ok($collator->lt("\x{54CE}", "\x{5509}"));
ok($collator->lt("\x{5509}", "\x{54C0}"));
ok($collator->lt("\x{54C0}", "\x{7691}"));
ok($collator->lt("\x{7691}", "\x{764C}"));
ok($collator->lt("\x{764C}", "\x{853C}"));
ok($collator->lt("\x{853C}", "\x{77EE}"));

ok($collator->lt("\x{77EE}", "\x{4E00}"));
ok($collator->lt("\x{4E00}", "\x{9F2F}"));

ok($collator->lt("\x{9F2F}", "\x{9F39}"));
ok($collator->lt("\x{9F39}", "\x{9F37}"));
ok($collator->lt("\x{9F37}", "\x{9F3D}"));
ok($collator->lt("\x{9F3D}", "\x{9F3E}"));
ok($collator->lt("\x{9F3E}", "\x{9F44}"));

# Ext.B
ok($collator->lt("\x{20000}", "\x{20001}"));
ok($collator->lt("\x{20001}", "\x{20002}"));
ok($collator->lt("\x{20002}", "\x{20003}"));
ok($collator->lt("\x{20003}", "\x{20004}"));
ok($collator->lt("\x{20004}", "\x{20005}"));

# 23

ok(hex_sort('4E00 4E8C 4E09 56DB 4E94 516D 4E03 516B 4E5D 5341'),
            '516B 4E8C 4E5D 516D 4E03 4E09 5341 56DB 4E94 4E00');

ok(hex_sort('4E0C 4E8D 4F5C 5140 554A 5750 57C3 5EA7 963F 9F3D 9F3E 9F44'),
            '554A 963F 57C3 4F5C 5750 5EA7 4E8D 4E0C 5140 9F3D 9F3E 9F44');

# 25
