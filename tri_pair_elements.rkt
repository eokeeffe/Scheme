;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname tri_pair_elements) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;triple elements , takes 3 lists and will 
;take the elements(rank) of each and pair them into lists
(define L '(jack bonnie romeo))
(define L1 '(and and and))
(define L2 '(jill clyde juliet))


(define tri_pair_elements(lambda(a b c)(cond
                                         ((or (null? a) (null? b) (null? c)) '())
                                         (else
                                          (cons 
                                           (list (car a) (car b) (car c))
                                           (tri_pair_elements (cdr a) (cdr b) (cdr c))
                                           )))))

(tri_pair_elements L L1 L2)