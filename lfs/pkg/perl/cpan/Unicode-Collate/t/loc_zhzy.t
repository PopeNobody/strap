
BEGIN {
    if ($ENV{PERL_CORE}) {
	chdir('t') if -d 't';
	@INC = $^O eq 'MacOS' ? qw(::lib) : qw(../lib);
    }
}

use strict;
use warnings;
BEGIN { $| = 1; print "1..308\n"; }
my $count = 0;
sub ok ($;$) {
    my $p = my $r = shift;
    if (@_) {
	my $x = shift;
	$p = !defined $x ? !defined $r : !defined $r ? 0 : $r eq $x;
    }
    print $p ? "ok" : "not ok", ' ', ++$count, "\n";
}

use Unicode::Collate::Locale;

ok(1);

sub _pack_U   { Unicode::Collate::pack_U(@_) }
sub _unpack_U { Unicode::Collate::unpack_U(@_) }

#########################

my $objZhZ = Unicode::Collate::Locale->
    new(locale => 'ZH__zhuyin', normalization => undef);

ok($objZhZ->getlocale, 'zh__zhuyin');

$objZhZ->change(level => 1);

ok($objZhZ->eq("a\x{304}", "a\x{301}"));
ok($objZhZ->eq("a\x{301}", "a\x{30C}"));
ok($objZhZ->eq("a\x{30C}", "a\x{300}"));
ok($objZhZ->eq("a\x{300}", "a"));
ok($objZhZ->eq("e\x{304}", "e\x{301}"));
ok($objZhZ->eq("e\x{301}", "e\x{30C}"));
ok($objZhZ->eq("e\x{30C}", "e\x{300}"));
ok($objZhZ->eq("e\x{300}", "e"));
ok($objZhZ->eq("e\x{302}\x{304}", "e\x{302}\x{301}"));
ok($objZhZ->eq("e\x{302}\x{301}", "e\x{302}\x{30C}"));
ok($objZhZ->eq("e\x{302}\x{30C}", "e\x{302}\x{300}"));
ok($objZhZ->eq("e\x{302}\x{300}", "e\x{302}"));
ok($objZhZ->eq("i\x{304}", "i\x{301}"));
ok($objZhZ->eq("i\x{301}", "i\x{30C}"));
ok($objZhZ->eq("i\x{30C}", "i\x{300}"));
ok($objZhZ->eq("i\x{300}", "i"));
ok($objZhZ->eq("m\x{304}", "m\x{301}"));
ok($objZhZ->eq("m\x{301}", "m\x{30C}"));
ok($objZhZ->eq("m\x{30C}", "m\x{300}"));
ok($objZhZ->eq("m\x{300}", "m"));
ok($objZhZ->eq("n\x{304}", "n\x{301}"));
ok($objZhZ->eq("n\x{301}", "n\x{30C}"));
ok($objZhZ->eq("n\x{30C}", "n\x{300}"));
ok($objZhZ->eq("n\x{300}", "n"));
ok($objZhZ->eq("o\x{304}", "o\x{301}"));
ok($objZhZ->eq("o\x{301}", "o\x{30C}"));
ok($objZhZ->eq("o\x{30C}", "o\x{300}"));
ok($objZhZ->eq("o\x{300}", "o"));
ok($objZhZ->eq("u\x{304}", "u\x{301}"));
ok($objZhZ->eq("u\x{301}", "u\x{30C}"));
ok($objZhZ->eq("u\x{30C}", "u\x{300}"));
ok($objZhZ->eq("u\x{300}", "u"));
ok($objZhZ->eq("u\x{308}\x{304}", "u\x{308}\x{301}"));
ok($objZhZ->eq("u\x{308}\x{301}", "u\x{308}\x{30C}"));
ok($objZhZ->eq("u\x{308}\x{30C}", "u\x{308}\x{300}"));
ok($objZhZ->eq("u\x{308}\x{300}", "u\x{308}"));

# 38

$objZhZ->change(level => 2);

ok($objZhZ->lt("a\x{304}", "a\x{301}"));
ok($objZhZ->lt("a\x{301}", "a\x{30C}"));
ok($objZhZ->lt("a\x{30C}", "a\x{300}"));
ok($objZhZ->lt("a\x{300}", "a"));
ok($objZhZ->lt("e\x{304}", "e\x{301}"));
ok($objZhZ->lt("e\x{301}", "e\x{30C}"));
ok($objZhZ->lt("e\x{30C}", "e\x{300}"));
ok($objZhZ->lt("e\x{300}", "e"));
ok($objZhZ->lt("e\x{302}\x{304}", "e\x{302}\x{301}"));
ok($objZhZ->lt("e\x{302}\x{301}", "e\x{302}\x{30C}"));
ok($objZhZ->lt("e\x{302}\x{30C}", "e\x{302}\x{300}"));
ok($objZhZ->lt("e\x{302}\x{300}", "e\x{302}"));
ok($objZhZ->lt("i\x{304}", "i\x{301}"));
ok($objZhZ->lt("i\x{301}", "i\x{30C}"));
ok($objZhZ->lt("i\x{30C}", "i\x{300}"));
ok($objZhZ->lt("i\x{300}", "i"));
ok($objZhZ->lt("m\x{304}", "m\x{301}"));
ok($objZhZ->lt("m\x{301}", "m\x{30C}"));
ok($objZhZ->lt("m\x{30C}", "m\x{300}"));
ok($objZhZ->lt("m\x{300}", "m"));
ok($objZhZ->lt("n\x{304}", "n\x{301}"));
ok($objZhZ->lt("n\x{301}", "n\x{30C}"));
ok($objZhZ->lt("n\x{30C}", "n\x{300}"));
ok($objZhZ->lt("n\x{300}", "n"));
ok($objZhZ->lt("o\x{304}", "o\x{301}"));
ok($objZhZ->lt("o\x{301}", "o\x{30C}"));
ok($objZhZ->lt("o\x{30C}", "o\x{300}"));
ok($objZhZ->lt("o\x{300}", "o"));
ok($objZhZ->lt("u\x{304}", "u\x{301}"));
ok($objZhZ->lt("u\x{301}", "u\x{30C}"));
ok($objZhZ->lt("u\x{30C}", "u\x{300}"));
ok($objZhZ->lt("u\x{300}", "u"));
ok($objZhZ->lt("u\x{308}\x{304}", "u\x{308}\x{301}"));
ok($objZhZ->lt("u\x{308}\x{301}", "u\x{308}\x{30C}"));
ok($objZhZ->lt("u\x{308}\x{30C}", "u\x{308}\x{300}"));
ok($objZhZ->lt("u\x{308}\x{300}", "u\x{308}"));

# 74

ok($objZhZ->eq("a\x{304}", "A\x{304}"));
ok($objZhZ->eq("a\x{301}", "A\x{301}"));
ok($objZhZ->eq("a\x{30C}", "A\x{30C}"));
ok($objZhZ->eq("a\x{300}", "A\x{300}"));
ok($objZhZ->eq("e\x{304}", "E\x{304}"));
ok($objZhZ->eq("e\x{301}", "E\x{301}"));
ok($objZhZ->eq("e\x{30C}", "E\x{30C}"));
ok($objZhZ->eq("e\x{300}", "E\x{300}"));
ok($objZhZ->eq("e\x{302}\x{304}", "E\x{302}\x{304}"));
ok($objZhZ->eq("e\x{302}\x{301}", "E\x{302}\x{301}"));
ok($objZhZ->eq("e\x{302}\x{30C}", "E\x{302}\x{30C}"));
ok($objZhZ->eq("e\x{302}\x{300}", "E\x{302}\x{300}"));
ok($objZhZ->eq("e\x{302}", "E\x{302}"));
ok($objZhZ->eq("i\x{304}", "I\x{304}"));
ok($objZhZ->eq("i\x{301}", "I\x{301}"));
ok($objZhZ->eq("i\x{30C}", "I\x{30C}"));
ok($objZhZ->eq("i\x{300}", "I\x{300}"));
ok($objZhZ->eq("m\x{304}", "M\x{304}"));
ok($objZhZ->eq("m\x{301}", "M\x{301}"));
ok($objZhZ->eq("m\x{30C}", "M\x{30C}"));
ok($objZhZ->eq("m\x{300}", "M\x{300}"));
ok($objZhZ->eq("n\x{304}", "N\x{304}"));
ok($objZhZ->eq("n\x{301}", "N\x{301}"));
ok($objZhZ->eq("n\x{30C}", "N\x{30C}"));
ok($objZhZ->eq("n\x{300}", "N\x{300}"));
ok($objZhZ->eq("o\x{304}", "O\x{304}"));
ok($objZhZ->eq("o\x{301}", "O\x{301}"));
ok($objZhZ->eq("o\x{30C}", "O\x{30C}"));
ok($objZhZ->eq("o\x{300}", "O\x{300}"));
ok($objZhZ->eq("u\x{304}", "U\x{304}"));
ok($objZhZ->eq("u\x{301}", "U\x{301}"));
ok($objZhZ->eq("u\x{30C}", "U\x{30C}"));
ok($objZhZ->eq("u\x{300}", "U\x{300}"));
ok($objZhZ->eq("u\x{308}\x{304}", "U\x{308}\x{304}"));
ok($objZhZ->eq("u\x{308}\x{301}", "U\x{308}\x{301}"));
ok($objZhZ->eq("u\x{308}\x{30C}", "U\x{308}\x{30C}"));
ok($objZhZ->eq("u\x{308}\x{300}", "U\x{308}\x{300}"));
ok($objZhZ->eq("u\x{308}", "U\x{308}"));

# 112

$objZhZ->change(level => 3);

ok($objZhZ->lt("a\x{304}", "A\x{304}"));
ok($objZhZ->lt("a\x{301}", "A\x{301}"));
ok($objZhZ->lt("a\x{30C}", "A\x{30C}"));
ok($objZhZ->lt("a\x{300}", "A\x{300}"));
ok($objZhZ->lt("e\x{304}", "E\x{304}"));
ok($objZhZ->lt("e\x{301}", "E\x{301}"));
ok($objZhZ->lt("e\x{30C}", "E\x{30C}"));
ok($objZhZ->lt("e\x{300}", "E\x{300}"));
ok($objZhZ->lt("e\x{302}\x{304}", "E\x{302}\x{304}"));
ok($objZhZ->lt("e\x{302}\x{301}", "E\x{302}\x{301}"));
ok($objZhZ->lt("e\x{302}\x{30C}", "E\x{302}\x{30C}"));
ok($objZhZ->lt("e\x{302}\x{300}", "E\x{302}\x{300}"));
ok($objZhZ->lt("e\x{302}", "E\x{302}"));
ok($objZhZ->lt("i\x{304}", "I\x{304}"));
ok($objZhZ->lt("i\x{301}", "I\x{301}"));
ok($objZhZ->lt("i\x{30C}", "I\x{30C}"));
ok($objZhZ->lt("i\x{300}", "I\x{300}"));
ok($objZhZ->lt("m\x{304}", "M\x{304}"));
ok($objZhZ->lt("m\x{301}", "M\x{301}"));
ok($objZhZ->lt("m\x{30C}", "M\x{30C}"));
ok($objZhZ->lt("m\x{300}", "M\x{300}"));
ok($objZhZ->lt("n\x{304}", "N\x{304}"));
ok($objZhZ->lt("n\x{301}", "N\x{301}"));
ok($objZhZ->lt("n\x{30C}", "N\x{30C}"));
ok($objZhZ->lt("n\x{300}", "N\x{300}"));
ok($objZhZ->lt("o\x{304}", "O\x{304}"));
ok($objZhZ->lt("o\x{301}", "O\x{301}"));
ok($objZhZ->lt("o\x{30C}", "O\x{30C}"));
ok($objZhZ->lt("o\x{300}", "O\x{300}"));
ok($objZhZ->lt("u\x{304}", "U\x{304}"));
ok($objZhZ->lt("u\x{301}", "U\x{301}"));
ok($objZhZ->lt("u\x{30C}", "U\x{30C}"));
ok($objZhZ->lt("u\x{300}", "U\x{300}"));
ok($objZhZ->lt("u\x{308}\x{304}", "U\x{308}\x{304}"));
ok($objZhZ->lt("u\x{308}\x{301}", "U\x{308}\x{301}"));
ok($objZhZ->lt("u\x{308}\x{30C}", "U\x{308}\x{30C}"));
ok($objZhZ->lt("u\x{308}\x{300}", "U\x{308}\x{300}"));
ok($objZhZ->lt("u\x{308}", "U\x{308}"));

# 150

ok($objZhZ->eq("a\x{304}", "\x{101}"));
ok($objZhZ->eq("A\x{304}", "\x{100}"));
ok($objZhZ->eq("a\x{301}", _pack_U(0xE1)));
ok($objZhZ->eq("a\x{301}", "a\x{341}"));
ok($objZhZ->eq("A\x{301}", _pack_U(0xC1)));
ok($objZhZ->eq("A\x{301}", "A\x{341}"));
ok($objZhZ->eq("a\x{30C}", "\x{1CE}"));
ok($objZhZ->eq("A\x{30C}", "\x{1CD}"));
ok($objZhZ->eq("a\x{300}", _pack_U(0xE0)));
ok($objZhZ->eq("a\x{300}", "a\x{340}"));
ok($objZhZ->eq("A\x{300}", _pack_U(0xC0)));
ok($objZhZ->eq("A\x{300}", "A\x{340}"));
ok($objZhZ->eq("e\x{304}", "\x{113}"));
ok($objZhZ->eq("E\x{304}", "\x{112}"));
ok($objZhZ->eq("e\x{301}", _pack_U(0xE9)));
ok($objZhZ->eq("e\x{301}", "e\x{341}"));
ok($objZhZ->eq("E\x{301}", _pack_U(0xC9)));
ok($objZhZ->eq("E\x{301}", "E\x{341}"));
ok($objZhZ->eq("e\x{30C}", "\x{11B}"));
ok($objZhZ->eq("E\x{30C}", "\x{11A}"));
ok($objZhZ->eq("e\x{300}", _pack_U(0xE8)));
ok($objZhZ->eq("e\x{300}", "e\x{340}"));
ok($objZhZ->eq("E\x{300}", _pack_U(0xC8)));
ok($objZhZ->eq("E\x{300}", "E\x{340}"));
ok($objZhZ->eq("e\x{302}\x{304}", _pack_U(0xEA, 0x304)));
ok($objZhZ->eq("E\x{302}\x{304}", _pack_U(0xCA, 0x304)));
ok($objZhZ->eq("e\x{302}\x{301}", "\x{1EBF}"));
ok($objZhZ->eq("e\x{302}\x{301}", "e\x{302}\x{341}"));
ok($objZhZ->eq("E\x{302}\x{301}", "\x{1EBE}"));
ok($objZhZ->eq("E\x{302}\x{301}", "E\x{302}\x{341}"));
ok($objZhZ->eq("e\x{302}\x{301}", _pack_U(0xEA, 0x301)));
ok($objZhZ->eq("e\x{302}\x{301}", _pack_U(0xEA, 0x341)));
ok($objZhZ->eq("E\x{302}\x{301}", _pack_U(0xCA, 0x301)));
ok($objZhZ->eq("E\x{302}\x{301}", _pack_U(0xCA, 0x341)));
ok($objZhZ->eq("e\x{302}\x{30C}", _pack_U(0xEA, 0x30C)));
ok($objZhZ->eq("E\x{302}\x{30C}", _pack_U(0xCA, 0x30C)));
ok($objZhZ->eq("e\x{302}\x{300}", "\x{1EC1}"));
ok($objZhZ->eq("e\x{302}\x{300}", "e\x{302}\x{340}"));
ok($objZhZ->eq("E\x{302}\x{300}", "\x{1EC0}"));
ok($objZhZ->eq("E\x{302}\x{300}", "E\x{302}\x{340}"));
ok($objZhZ->eq("e\x{302}\x{300}", _pack_U(0xEA, 0x300)));
ok($objZhZ->eq("e\x{302}\x{300}", _pack_U(0xEA, 0x340)));
ok($objZhZ->eq("E\x{302}\x{300}", _pack_U(0xCA, 0x300)));
ok($objZhZ->eq("E\x{302}\x{300}", _pack_U(0xCA, 0x340)));
ok($objZhZ->eq("e\x{302}", _pack_U(0xEA)));
ok($objZhZ->eq("E\x{302}", _pack_U(0xCA)));
ok($objZhZ->eq("i\x{304}", "\x{12B}"));
ok($objZhZ->eq("I\x{304}", "\x{12A}"));
ok($objZhZ->eq("i\x{301}", _pack_U(0xED)));
ok($objZhZ->eq("i\x{301}", "i\x{341}"));
ok($objZhZ->eq("I\x{301}", _pack_U(0xCD)));
ok($objZhZ->eq("I\x{301}", "I\x{341}"));
ok($objZhZ->eq("i\x{30C}", "\x{1D0}"));
ok($objZhZ->eq("I\x{30C}", "\x{1CF}"));
ok($objZhZ->eq("i\x{300}", _pack_U(0xEC)));
ok($objZhZ->eq("i\x{300}", "i\x{340}"));
ok($objZhZ->eq("I\x{300}", _pack_U(0xCC)));
ok($objZhZ->eq("I\x{300}", "I\x{340}"));
ok($objZhZ->eq("m\x{301}", "\x{1E3F}"));
ok($objZhZ->eq("m\x{301}", "m\x{341}"));
ok($objZhZ->eq("M\x{301}", "\x{1E3E}"));
ok($objZhZ->eq("M\x{301}", "M\x{341}"));
ok($objZhZ->eq("m\x{300}", "m\x{340}"));
ok($objZhZ->eq("M\x{300}", "M\x{340}"));
ok($objZhZ->eq("n\x{301}", "\x{144}"));
ok($objZhZ->eq("n\x{301}", "n\x{341}"));
ok($objZhZ->eq("N\x{301}", "\x{143}"));
ok($objZhZ->eq("N\x{301}", "N\x{341}"));
ok($objZhZ->eq("n\x{30C}", "\x{148}"));
ok($objZhZ->eq("N\x{30C}", "\x{147}"));
ok($objZhZ->eq("n\x{300}", "\x{1F9}"));
ok($objZhZ->eq("n\x{300}", "n\x{340}"));
ok($objZhZ->eq("N\x{300}", "\x{1F8}"));
ok($objZhZ->eq("N\x{300}", "N\x{340}"));
ok($objZhZ->eq("o\x{304}", "\x{14D}"));
ok($objZhZ->eq("O\x{304}", "\x{14C}"));
ok($objZhZ->eq("o\x{301}", _pack_U(0xF3)));
ok($objZhZ->eq("o\x{301}", "o\x{341}"));
ok($objZhZ->eq("O\x{301}", _pack_U(0xD3)));
ok($objZhZ->eq("O\x{301}", "O\x{341}"));
ok($objZhZ->eq("o\x{30C}", "\x{1D2}"));
ok($objZhZ->eq("O\x{30C}", "\x{1D1}"));
ok($objZhZ->eq("o\x{300}", _pack_U(0xF2)));
ok($objZhZ->eq("o\x{300}", "o\x{340}"));
ok($objZhZ->eq("O\x{300}", _pack_U(0xD2)));
ok($objZhZ->eq("O\x{300}", "O\x{340}"));
ok($objZhZ->eq("u\x{304}", "\x{16B}"));
ok($objZhZ->eq("U\x{304}", "\x{16A}"));
ok($objZhZ->eq("u\x{301}", _pack_U(0xFA)));
ok($objZhZ->eq("u\x{301}", "u\x{341}"));
ok($objZhZ->eq("U\x{301}", _pack_U(0xDA)));
ok($objZhZ->eq("U\x{301}", "U\x{341}"));
ok($objZhZ->eq("u\x{30C}", "\x{1D4}"));
ok($objZhZ->eq("U\x{30C}", "\x{1D3}"));
ok($objZhZ->eq("u\x{300}", _pack_U(0xF9)));
ok($objZhZ->eq("u\x{300}", "u\x{340}"));
ok($objZhZ->eq("U\x{300}", _pack_U(0xD9)));
ok($objZhZ->eq("U\x{300}", "U\x{340}"));
ok($objZhZ->eq("u\x{308}\x{304}", "\x{1D6}"));
ok($objZhZ->eq("U\x{308}\x{304}", "\x{1D5}"));
ok($objZhZ->eq("u\x{308}\x{304}", _pack_U(0xFC, 0x304)));
ok($objZhZ->eq("U\x{308}\x{304}", _pack_U(0xDC, 0x304)));
ok($objZhZ->eq("u\x{308}\x{301}", "\x{1D8}"));
ok($objZhZ->eq("u\x{308}\x{301}", "u\x{308}\x{341}"));
ok($objZhZ->eq("U\x{308}\x{301}", "\x{1D7}"));
ok($objZhZ->eq("U\x{308}\x{301}", "U\x{308}\x{341}"));
ok($objZhZ->eq("u\x{308}\x{301}", _pack_U(0xFC, 0x301)));
ok($objZhZ->eq("u\x{308}\x{301}", _pack_U(0xFC, 0x341)));
ok($objZhZ->eq("U\x{308}\x{301}", _pack_U(0xDC, 0x301)));
ok($objZhZ->eq("U\x{308}\x{301}", _pack_U(0xDC, 0x341)));
ok($objZhZ->eq("u\x{308}\x{30C}", "\x{1DA}"));
ok($objZhZ->eq("U\x{308}\x{30C}", "\x{1D9}"));
ok($objZhZ->eq("u\x{308}\x{30C}", _pack_U(0xFC, 0x30C)));
ok($objZhZ->eq("U\x{308}\x{30C}", _pack_U(0xDC, 0x30C)));
ok($objZhZ->eq("u\x{308}\x{300}", "\x{1DC}"));
ok($objZhZ->eq("u\x{308}\x{300}", "u\x{308}\x{340}"));
ok($objZhZ->eq("U\x{308}\x{300}", "\x{1DB}"));
ok($objZhZ->eq("U\x{308}\x{300}", "U\x{308}\x{340}"));
ok($objZhZ->eq("u\x{308}\x{300}", _pack_U(0xFC, 0x300)));
ok($objZhZ->eq("u\x{308}\x{300}", _pack_U(0xFC, 0x340)));
ok($objZhZ->eq("U\x{308}\x{300}", _pack_U(0xDC, 0x300)));
ok($objZhZ->eq("U\x{308}\x{300}", _pack_U(0xDC, 0x340)));
ok($objZhZ->eq("u\x{308}", _pack_U(0xFC)));
ok($objZhZ->eq("U\x{308}", _pack_U(0xDC)));

# 274

ok($objZhZ->eq("e\x{302}\x{303}", "\x{1EC5}"));
ok($objZhZ->eq("E\x{302}\x{303}", "\x{1EC4}"));
ok($objZhZ->eq("e\x{302}\x{309}", "\x{1EC3}"));
ok($objZhZ->eq("E\x{302}\x{309}", "\x{1EC2}"));
ok($objZhZ->eq("e\x{302}\x{323}", "\x{1EC7}"));
ok($objZhZ->eq("E\x{302}\x{323}", "\x{1EC6}"));

# 280

$objZhZ->change(level => 1);

ok($objZhZ->lt("\x{A000}", "\x{516B}"));
ok($objZhZ->lt("\x{516B}", "\x{628A}"));
ok($objZhZ->lt("\x{628A}", "\x{5DF4}"));
ok($objZhZ->lt("\x{5DF4}", "\x{767D}"));
ok($objZhZ->lt("\x{767D}", "\x{5317}"));
ok($objZhZ->lt("\x{5317}", "\x{9F3B}"));
ok($objZhZ->lt("\x{9F3B}", "\x{4E0D}"));
ok($objZhZ->lt("\x{4E0D}", "\x{547D}"));
ok($objZhZ->lt("\x{547D}", "\x{6BCD}"));
ok($objZhZ->lt("\x{6BCD}", "\x{6253}"));
ok($objZhZ->lt("\x{6253}", "\x{7530}"));
ok($objZhZ->lt("\x{7530}", "\x{52AA}"));
ok($objZhZ->lt("\x{52AA}", "\x{529B}"));
ok($objZhZ->lt("\x{529B}", "\x{5375}"));
ok($objZhZ->lt("\x{5375}", "\x{5149}"));
ok($objZhZ->lt("\x{5149}", "\x{5915}"));
ok($objZhZ->lt("\x{5915}", "\x{4E09}"));
ok($objZhZ->lt("\x{4E09}", "\x{4E00}"));
ok($objZhZ->lt("\x{4E00}", "\x{7528}"));

# 299

$objZhZ->change(variable => 'non-ignorable');

ok($objZhZ->eq("\x{300}", "\x{2C9}"));
ok($objZhZ->lt("\x{2C9}", "\x{2CA}"));
ok($objZhZ->lt("\x{2CA}", "\x{2C7}"));
ok($objZhZ->lt("\x{2C7}", "\x{2CB}"));
ok($objZhZ->lt("\x{2CB}", "\x{2D9}"));
ok($objZhZ->lt("\x{2D9}", "\x{2EA}"));
ok($objZhZ->lt("\x{2EA}", "\x{2EB}"));
ok($objZhZ->lt("\x{2EB}", "\ "));

# 307

$objZhZ->change(level => 2);

ok($objZhZ->lt("\x{300}", "\x{2C9}"));

# 308
