;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname double_recursionofallnegatives) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define L '((2 0 -1 (4 -2)) (((-3))) (1 -4)))

(define FindAllNegatives(lambda(L)
                          (cond
                            ;(#t (display (list 'arg 'is L)))
                            ( (null? L) '())
                            ( (list? (car L)) (append (FindAllNegatives (car L)) (FindAllNegatives (cdr L))))
                            ( (< (car L) 0) (cons (car L) (FindAllNegatives (cdr L))))
                            ( else ( FindAllNegatives (cdr L)))
                            )))

(FindAllNegatives L)