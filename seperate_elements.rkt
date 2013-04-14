;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname seperate_elements) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define L '((jack jill) (bonnie clyde) (romeo juliet)))

;this will seperate the atoms in the list

(define seperate_elements(lambda(l)(cond
                                     ((null? l) '(() ()) )
                                     (
                                      else
                                      (list (cons (caar l) (car (seperate_elements (cdr l))))
                                            (cons (cadar l) (cadr (seperate_elements (cdr l)))))))))

(seperate_elements L)