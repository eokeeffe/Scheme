;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname insertafter) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define insertAfter(lambda(e a l)(cond
                                 ((null? l) (list a))
                                 ((null? (cdr l)) (cons (append (list a) l)  (list (append l (list a)))))
                                 (else
                                  (cons (car l) (cdr l)))
                                 )))
(insertAfter 'x '(a b))