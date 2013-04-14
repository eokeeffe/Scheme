;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname pair_elements) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define L '(jack bonnie romeo))
(define L1 '(jill clyde juliet))

;this function will get the 2 lists and will pair the elements in each
;section

(define pair_elements(lambda(a b)(cond 
                                 ((or (null? a) (null? b)) '())
                                 (else (cons (list (car a) (car b))
                                 (pair_elements (cdr a) (cdr b))
                                 )))))
                                 
(pair_elements L L1)