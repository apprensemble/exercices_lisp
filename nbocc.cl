#|A present la fonction de lecture du nombre d'occurence en lisp
je n'ai pas compris les parentheses apres la definition de fonction...
je n'ai pas compris non plus pourquoi la comparaison de caracteres ne fonctionne qu'avec equal et pas eql ou eq, NB ...
|#
#|
=pod

=head1 nbOcc version lisp

=head2 description

chercher le nombre d'occurence x dans la liste l

=head3 code nbOcc


  (defun nbOcc(l x)
    (if (endp l)
    0
    (+ (if (equal(car l)x)
	 1 0) (nbOcc(cdr l) x))))

=head2 fonction resultat

permet d'afficher l'appel de fonction ainsi que son resultat

=head3 code resultat

  (defun resultat(l x)
    (print (list 'nbOcc l x))
    (nbOcc l x))

=head3 resultat

  (NBOCC ("a" "b" "c" "a") "a") 
  2
  * 
  (NBOCC ("a" "a" "a" "a") "a") 
  4
  * 
  (NBOCC ("b" "c" "a" "a") "a") 
  2
  * 
  (NBOCC ("b" "c" "a" "a") "z") 
  0
  * 
  (NBOCC ("z" "c" "a" "z") "z") 
  2
  * 
  (NBOCC ("z" "c" "y" "a" "z") "y") 
  1

=head2 Questions

B<sur equal :>

  (eq "a" "a") ;nil
  (eql "a" "a") ;nil 
  (equal "a" "a") ;t pourquoi?!?! J'ai lu que cela appel string= lorsque l'on compare deux strings...Seulement il s'agit de deux chars je me trompe?
  (char= "a" "a") ne compile meme pas...
  (string= "a" "a") ;t


B<ensuite je sais que cela a ete dit mais :>

  je n'ai pas compris les parentheses apres la definition de fonction...

=cut

|#

(defun nbOcc(l x)
  (if (endp l)
  0
  (+ (if (equal(car l)x)
       1 0) (nbOcc(cdr l) x))))

(defun resultat(l x)
  (print (list 'nbOcc l x))
  (nbOcc l x))

(resultat '("a" "b" "c" "a") "a")
(resultat '("a" "a" "a" "a") "a")
(resultat '("b" "c" "a" "a") "a")
(resultat '("b" "c" "a" "a") "z")
(resultat '("z" "c" "a" "z") "z")
(resultat '("z" "c" "y" "a" "z") "y")

;pour mettre en avant ma question sur equal :
(eq "a" "a") ;nil
(eql "a" "a") ;nil 
(equal "a" "a") ;t pourquoi?!?! J'ai lu que cela appel string= lorsque l'on compare deux strings...Seulement il s'agit de deux chars je me trompe?
;(char= "a" "a") ne compile même pas...
(string= "a" "a")
