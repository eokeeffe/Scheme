;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname selectionsort) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;selection sort

(define mymin(lambda(L)(cond
                       ((null? (cdr L)) (car L));if there is only one element , that is the min element
                       ((< (car L) (mymin (cdr L))) (car L));is the current element less than the rest of the list , return that element 
                       (else
                        (mymin (cdr L));else go through the list until a new min is found
                        ))))

(define myremove(lambda(A L)(cond
                             ((null? L) '());is the list empty , return empty
                             ((eq? (car L) A) (cdr L));is the current element the element we are looking for
                             (else
                              (cons (car L) (myremove A (cdr L)))))));return a list of all the elements bar first occurence

(define SelectionSort(lambda(L)(cond 
                                 ((null? L) L);is the list empty
                                 ((null? (cdr L)) L);is the list just 1 element
                                 (else
                                  (cons (mymin L) (SelectionSort(SortedR L)));build a list of minimum of L to the list L without the minimum of L
                                  ))))

;slightly more efficent selectionsort
(define SelectionSort2(lambda(L)(cond 
                                 ((null? L) L);is the list empty
                                 ((null? (cdr L)) L);is the list just 1 element
                                 (else
                                  (
                                   let ((M (mymin L)))
                                  (cons M (SelectionSort2 (myremove M L)));build a list of minimum of L to the list L without the minimum of L
                                  )
                                 ))))

(define SortedR(lambda(L)(cond 
                             ((null? L) L);is the list empty ?
                             (else (myremove (mymin L) L)))));find the minimum and remove it from the list

;(SelectionSort '(2 3 1 4 5 9 6 8 7 2 2 3 4 5 10))
(SelectionSort2 '(2 3 1 4 5 9 6 8 7 2 2 3 4 5 10))