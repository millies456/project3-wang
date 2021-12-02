(define (bubble L)
  (if (null? (cdr L))
      L    
      (if (< (car (car L)) (car (cadr L)))   
          (cons (car L)
                (bubble (cdr L)))
          (cons (cadr L)
                (bubble (cons (car L) (cddr L)))))))

(define (bubble-sort N L)    
  (cond ((= N 1) (bubble L))   
        (else
         (bubble-sort (- N 1) (bubble L)))))

(define (bubble-set-up L) 
  (bubble-sort (length L) L))


(define t3 (list '(1) '(2) '(3) '(33)'(4)))
(display (bubble-set-up t3))
(newline)
