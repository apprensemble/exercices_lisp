 (defun greater(l x)
   (if (endp l)
     '()
     (if (>(car l)x)
       (cons (car l)(greater(cdr l)
		      x))
       (greater(cdr l)x))))

(greater '(5 6 7 8) 6)
