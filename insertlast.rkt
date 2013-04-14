;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname insertlast) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define insertLast(lambda(A L)(cond
                                ((null? L) '())
                                ((null? (cdr L)) (cons (car L) (list A)))
                                (else
                                 (cons (car L) (insertLast A (cdr L)))
                                 ))))
(insertLast 'x '(a b c))