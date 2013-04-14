;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname insertrank) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define countlist(lambda(L)(cond 
                             ((null? L) 0)
                             ((null? (cdr L)) 1)
                             (else (+ 1 (countlist (cdr L))))
                             )))

(define insertRank(lambda(a inc cnt L)(cond
                                ((null? L) '())
                                ((= cnt inc) (append (list a (car L)) (insertRank a (- inc 1) (+ cnt 1) (cdr L))))
                                ((and (> cnt (countlist L)) (> inc (countlist L))) (insertLast a L))
                                (else
                                 (cons (car L) (insertRank a inc (+ cnt 1) (cdr L) )))
                                )))
  
(define insertLast(lambda(A L)(cond
                                ((null? L) '())
                                ((null? (cdr L)) (cons (car L) (list A)))
                                (else
                                 (cons (car L) (insertLast A (cdr L)))
                                 ))))

(insertRank 'x 3 0 '(a b c))