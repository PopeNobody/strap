#!/usr/bin/perl

@ARGV=qw(doc/book.txt);
@_=<ARGV>;

my (@l,@c);
while(@_){
  $_=shift(@_);
  chomp;
  if(/^Chapter/ || /^Ap/){
    push(@c,[@l]);
    @l=$_;
  } else {
    push(@l,$_);
  };
};
push(@c,\@l);
sub spit($@_){
  my $fn=shift;
  open(my $fh,">$fn");
  print $fh @_;
  close($fh);
};

for(@c){
  my @l=@$_;
  $_=$l[0];
  $_=lc($_);
  s{^\s*}{};
  s{\s(\d[.])}{ 0$1};
  s{chapter}{$0  };
  $_="hide/$_";
  spit($_,@$_);  
};
$\="\n";

use Data::Dumper;
