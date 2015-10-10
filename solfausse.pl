#!/usr/bin/env perl
#il manque un moyen de garder le resultat et d'afficher le dernier element.
#on peut utiliser une variable globale mais c'est trop different du lisp j'ai donc fait un print.
#pour afficher le dernier element sans faire de print au premier appel de fonction on peut ajouter un element fictif au moment de l'appel. 
#Quoi qu'il en soit cette solution n'est pas pratique :-)
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
my @liste = (5,6,7,8);

print 'greater(8,',@liste,') : ';
print greater(8,@liste);
print "\n";
print 'greater(1,',@liste,') : ';
print greater(1,@liste);
print "\n";
print 'greater(6,',@liste,') : ';
print greater(6,@liste);
print "\n";
#print $res;
