;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname allinsertions) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;insert an element at rank i of a list and return the list
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

;Base case : is the list empty , return a list containing A
;Recursive case : construct a list of lists
;that have the element A inserted at rank i
;where i is incremented for each list

(define AllInsertionsH(lambda(A L Place)(cond
                                   ((null? L) (list A))
                                   ((null? (cdr L)) (list (append (list A) L) (append L (list A))))
                                   ((> Place (countlist L)) '())
                                   (else
                                    (cons (insertRank A Place 0 L) (AllInsertionsH A L (+ Place 1)))
                                    ))))

(define AllInsertions(lambda(A L)(AllInsertionsH A L 0)))

(AllInsertions 'x '(a b c d e f g h i j k l m n o p))