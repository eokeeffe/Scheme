#lang racket
;; a simple quicksort function.  Compare with the other sort functions we've seen.
;; in quicksort we divide the numbers in L around some 'pivot' number to make
;; two sublists: the first of all numbers less than pivot, the second of the rest.
;; we sort both (recursively) and then put the resulting answers back together by
;; simply appending them


(define quickSort 
    (lambda(L) 
       (cond( (null? L)          L)
            ( (null? (cdr L))    L)
            ( #t (let ((dividedList (pivotSplit L)))
                     (append (quickSort (car dividedList))
                             (quickSort (car (cdr dividedList)))) 
                 ))
       )
    )
)


;; selects a pivot number for a given list.  We could do this in various ways.



(define getPivot
    (lambda(L)
       (/ (+ (apply max L) (apply min L)) 2)
     )
)

;; splits alist around a pivot
(define splitAroundPivot
    (lambda(P L)
      (cond( (null? L)  '(() ()) )
           ( (< (car L) P)
             (list (cons (car L) (car (splitAroundPivot P (cdr L))))
                   (cadr (splitAroundPivot P (cdr L))))  )
           (#t 
            (list (car (splitAroundPivot P (cdr L)))
               (cons (car L) (cadr (splitAroundPivot P (cdr L))))) )
       )
    )
)

(define PivotSplit
   (lambda(L)
       (cond( (null? (cdr (cdr L)))  
                        (list (list (apply min L)) (list (apply max L))) )
            (#t   (splitAroundPivot (getPivot L) L) )
        )
   )
)