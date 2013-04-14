;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname geteverysecondmemeber) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;given a list of things L
;get a list of every second member of L
;Starting with the first

(define L '(1 2 3 4 5 6 7 8))
(define A '0)
(define geteverysecond(lambda(L)
                        (cond
                          ((null? L) L)
                          ((null? (cdr L)) L)
                          (else(cons A (car (cdr (geteverysecond( cdr L)))))))))