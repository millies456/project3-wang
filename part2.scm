;this is part a and b the reason that is because if i want to delete an atom in the list all i have to do is set the paramter of num2 to null, which will make the target number turn into null.
(define (swap lst num1 num2) ;parameters function name listname and 2 varibales
  (cond ((null? lst) ;if null returns empty list
      '())

        ; if the element is a list swap the element of the first and the rest of the list
           (( equal? num1(car lst)) ;see if the first element equals to num1 which is the target
             (cons num2(swap(cdr lst) num1 num2)))
             ((list? (car lst)) 
             (cons (swap (car lst) num1 num2)(cdr lst)));call the function recursively  if an element is present in the list
            (else
              (cons (car lst) (swap (cdr lst) num1 num2)))))
(display(swap '(gar sar lard '( nim ( ki gar 5) 12) 35 3) 'gar '" "))
(display(swap '(1 2 1 '( 1 ( 1 2 1) 12) 35 3) '1 '" "))
(newline)
(display(swap '(1 2 2(3 1 2)1 2 3121 1) '1 '" "))
(newline)
(display(swap '(1 12 3 (324  (32 4 2) 2342)1) '1 '" "))
(newline)
(display(swap '(1 12 31231 1231 1231 1 1  1) '1 '32))
 (newline)
(display(swap '(1 2 1 '( 1 ( 1(1)2(3(3)3)1 2 1) 12) 35 3) '1 '" "))
(newline)
(display(swap '(1(2(1 12 21 22121)2 21 12)1 21) '12 '" "))
(newline)
 (display(swap '(ma ms mdm mdm  '(ms mdm ma mas (mdm smm) 12) 35 3) 'mdm '" "))
 (newline)
(display(swap '(1 2 3 4 5) '3 '" "))
(newline)
 (display(swap '(a b c d e f g) 'd '" "))
 (newline)
