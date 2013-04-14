;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname findlast) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define L '(Hello World Hello Universe))
;this function will find the last atom in this list and return it
(define findlast(lambda(list)
                  (cond 
                    ;while the next element of the list is not null
                    ;pass the shortened list into the function
                    ((null? (cdr list)) list)
                    (else(findlast(cdr list))))))