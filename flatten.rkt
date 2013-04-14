;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname flatten) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define l '( (one two) a (pot kettle black)))

(define flatten(lambda(L)(cond
                           ((null? L) '())
                           ((list? (car L)) (append (car L) (flatten (cdr L))))
                           (else
                            (cons (car L) (flatten (cdr L)))
                            ))))
(flatten l)