#!/usr/bin/env perl
sub greater {
  my ($x,@liste) = @_;
  if (@liste>0) {
    my $courant = shift @liste;
    unless ($courant > $x) {
      $courant = '';
    }
    return $courant.greater($x,@liste);

  }
}

my $res = greater(7,4,5,6,7,8,2,3);

print $res;
