;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname seperate_elementsv2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define L '((jack jill) (bonnie clyde) (romeo juliet)))

;this will seperate the atoms in the list

(define seperate_elements(lambda(l)(cond
                                     ((null? l) '(() ()) )
                                     ( else
                                      (let (Ans (seperate_elements (cdr l)) )
                                        (list (cons (caar l) (car Ans)))
                                        (cons (cadar l) (cadr Ans))
                                        )))))

(seperate_elements L)