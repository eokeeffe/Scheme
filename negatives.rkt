;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname negatives) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define L '(1 2 3 4 -1 2 -4 -5 -6 4))

(define negatives(lambda(x)(cond
                             ( (null? x) '())
                             ( (< (car x) 0) (cons (car x) (negatives (cdr x))) )
                             (else ( negatives (cdr x)))
                             )))

(negatives L)