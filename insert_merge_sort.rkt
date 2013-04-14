#lang racket
;; here is the code for two sort algorithms, as done in class on Wednesday.
;; the associated sortWorked.txt file contains the reasoning leading to this code.

(define insert
      (lambda(e L)
        (cond( (null? L) (list e) )
             ( ( > e (car L))        (cons (car L) 
                                           (insert e (cdr L)) ) )
             ( #t                    (cons e L) )
        )
     )
)


(define insertionSort
     (lambda( L)
         (cond( (or (null? L) (null? (cdr L)))   L)
              ( #t (insert (car L) (insertionSort (cdr L)) )  )
         )
      )
)



;; get the first N elements of a list: used for splitting a list, below
(define firstN
   (lambda(N L)
      (cond( (< N 1) '() )
           ( (null? L) '() )
           (#t (cons (car L) (firstN (- N 1) (cdr L))) )
      )
   )
)

(define afterFirstN
   (lambda(N L)
      (cond( (< N 1) L )
           ( (null? L) '() )
           (#t  (afterFirstN (- N 1) (cdr L)) )
      )
   )
)


(define split
    (lambda(L)
         (let ((half (/ (length L) 2)))
              (list (firstN half L) (afterFirstN half L))
         )
     )
)





(define merge
     (lambda( L M)
        (cond( (null? L)   M)
             ( (null? M)   L)
             ( #t  (merge (cdr L)  (insert (car L) M) ) )
        )
     )
)


(define mergeSort
     (lambda( L)
         (cond( (or (null? L) (null? (cdr L)))   L)
              ( #t (let ( (S (split L)) )
                        (merge  (mergeSort (car S)) 
                                (mergeSort (cadr S)) )  ) )
         )
      )
)