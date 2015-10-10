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
my @liste = (5,6,7,8);
my $res = greater(8,@liste);
print 'greater(8,',@liste,') : ',$res,"\n";
$res = greater(1,@liste);
print 'greater(1,',@liste,') : ',$res,"\n";
$res = greater(6,@liste);
print 'greater(6,',@liste,') : ',$res,"\n";

