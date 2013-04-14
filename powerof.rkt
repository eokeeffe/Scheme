;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname powerof) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define mypower
 (lambda(A B)
 (cond
	((= B 0) 1)
	(else (* A (mypower A (- B 1))))
  )
  )
 )