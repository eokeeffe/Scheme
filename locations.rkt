;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname locations) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define l '(a b c d e f g a a b b a h g u))

(define LOC_H(lambda(A L counter)(cond
                                   ((null? L) '())
                                   ((eq? A (car L)) (cons counter (LOC_H A (cdr L) (+ 1 counter)) ))
                                   (else (LOC_H A (cdr L) (+ 1 counter)))
                                   )))

(define locations(lambda(A L)(LOC_H A L 1)))

(locations 'b l)