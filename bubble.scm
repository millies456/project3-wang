(define (bubble nums);defintion of method and list
  (if (null? (cdr nums));if the rest of the list is empty return the list
      nums   
      (if (< (caar nums) (caadr nums))   ;if the first element, in the first set of parenthesis is bigger than, the first element in the sencond set of parenthesis 
          (cons (car nums) (bubble (cdr nums)))
          (cons (cadr nums) (bubble (cons (car nums) (cddr nums)))))))

(define (sort N nums) ;couldve used length to find the number of times to run the method.   
  (cond ((= N 1) (bubble nums))  ;method recursively called when list is unsorted 
        (else 
         (sort (- N 1) (bubble nums)))))

(display (sort 100 (list '(11) '(2) '(3) '(33)'(4)'(121) '(72) '(33) '(53)'(4))))
(newline)
(display (sort 100 (list '(11) '(2) '(3) '(33)'(4))))
(newline)
(display (sort 100 (list '(41) '(32) '(63) '(33)'(4))))
(newline)
(display (sort 100 (list '(9) '(5) '(3) '(6)'(7))))
(newline)
(display (sort 100 (list '(24) '(22) '(363) '(23)'(4))))
(newline)
(display (sort 100 (list '(1012) '(223) '(313) '(333)'(440))))
(newline)
(display (sort 100 (list '(136) '(2) '(3) '(33)'(4)'(9) '(5) '(3) '(6)'(7))))
(newline)
(display (sort 100 (list '(176) '(22) '(3) '(33)'(4)'(41) '(32) '(63) '(33)'(4))))
(newline)
(display (sort 100 (list '(121) '(72) '(33) '(53)'(4)'(41) '(32) '(63) '(33)'(4))))
(newline)
(display (sort 100 (list '(133) '(2) '(53) '(33)'(4)'(9) '(5) '(3) '(6)'(7))))
(newline)
(display (sort 100 (list '(12) '(10) '(9) '(11)'(10.5))))
