;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname parity) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define L '(1 1 1))
(define L2'(1 0 1))
;simply count the number of ones in the list
(define count1(lambda(l)(cond
                             ((null? l) 0)
                             ((= (car l) 1) (+ 1 (count1(cdr l))))
                             (else (count1(cdr l))))
                             ))

;just to replace my beloved modulo operator
(define %(lambda(x y)(modulo x y)))
;parity recursive function 
(define parity(lambda(l)(cond
                          ((= (% (count1 l) 2) 0) 0)
                          (else 1)
                          )))
(parity L)
(parity L2)