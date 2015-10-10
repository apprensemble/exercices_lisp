#!/usr/bin/env perl
sub greater {
  my ($x,@liste) = @_;
  if (@liste>0) {
  my $res = shift @liste;
    print greater($x,@liste);
    if ($res>$x) {
      return $res;
    }
}
}

print greater(1,4,5,6,7,8,2,3);

#print $res;
