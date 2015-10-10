#!/usr/bin/env perl
#version perl de l'exercice demandé en lisp

=pod

=head1 nbOcc

=head2 description

compte le nombre d'occurence cible dans la liste de maniere recursive

=head3 code

 sub nbOcc {
  my ($cible,@liste) = @_;
  if (@liste>0) {
    return (shift @liste eq $cible)+nbOcc($cible,@liste); #on dirait presque du lisp non? j'ai compare car de l a la cible et appelle nbOcc(cible,cdr l) 
  }
 }


=cut

sub nbOcc {
  my ($cible,@liste) = @_;
  if (@liste>0) {
    return (shift @liste eq $cible)+nbOcc($cible,@liste); #on dirait presque du lisp non? j'ai compare car de l a la cible et appelle nbOcc(cible,cdr l) 
  }
}

=head2 resultat

fonction simple ne servant qu'a mettre en valeur l'action menee.
B<ne pas oublier que ce qui compte c'est nbOcc>

 cible :b ;liste : (a,b,c,d,e,b,b);nbOcc : 3
 cible :c ;liste : (a,a,b,c,c,c,c,d,e,b,c,c,b,c,c,z,f);nbOcc : 8
 cible :a ;liste : (a,a,b,c,c,c,c,d,e,b,c,c,b,c,c,z,f);nbOcc : 2
 cible :y ;liste : (u,b,b,c,c,c,c,d,e,b,c,c,b,c,c,z,f);nbOcc : 0
 cible :e ;liste : (a,a,b,c,c,c,c,d,e,b,c,c,b,c,c,z,f);nbOcc : 1


=head3 code de la fonction resultat


  sub resultat {
    my ($cible,@liste) = @_;

  print "cible :$cible ;liste : (",join(",",@liste),');nbOcc : ';
  print nbOcc($cible,@liste),"\n";
  }

=cut

sub resultat {
  my ($cible,@liste) = @_;

print "cible :$cible ;liste : (",join(",",@liste),');nbOcc : ';
print nbOcc($cible,@liste),"\n";
}

resultat(b,a,b,c,d,e,b,b);
resultat(c,a,a,b,c,c,c,c,d,e,b,c,c,b,c,c,z,f);
resultat(a,a,a,b,c,c,c,c,d,e,b,c,c,b,c,c,z,f);
resultat("y",u,b,b,c,c,c,c,d,e,b,c,c,b,c,c,z,f); #il semble que y soit un terme protege d'ou les doubles quotes
resultat(e,a,a,b,c,c,c,c,d,e,b,c,c,b,c,c,z,f);
