;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname countconsecutive) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define l '(a b b c d d c c))

(define countConsecutive(lambda(a)(
                                   cond
                                    ((null? a) 0)
                                    ((null? (cdr a)) 0)
                                    (else
                                     (cond 
                                        ((eq? (car a) (cadr a)) (+ 1 (countConsecutive(cdr a))))
                                        (else (countConsecutive (cdr a)))
                                    )))))
(countConsecutive l)