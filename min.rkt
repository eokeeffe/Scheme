;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname min) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define l '(14 21 7 12 13 9))

(define mymin(lambda(L)(cond
                       ((null? (cdr L)) (car L));if there is only one element , that is the min element
                       ((< (car L) (mymin (cdr L))) (car L));is the current element less than the rest of the list , return that element 
                       (else
                        (mymin (cdr L));else go through the list until a new min is found
                        ))))

(mymin l)