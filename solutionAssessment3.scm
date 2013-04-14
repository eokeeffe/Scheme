;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname solutionAssessment3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;Question 1.
;Take each element from the list, apply the function to it, and return the result, plus mapTo on the rest of the list.
(define mapTo (lambda (fn L)
                (cond
                    ((null? L) '())
                    (else (cons (fn (car L)) (mapTo fn (cdr L)))))))



;Question 2
;This is just one possible solution to question 2; many are possible, some may be more elegant.

;Utility function, return list of all ints between 'start' and 'end'
(define range (lambda (start end)
                (cond
                    ((= start end) (list end))
                    (else (cons start (range (+ 1 start) end))))))

;Utility function, to insert into list at position. From previous assignment
(define insert (lambda (element position L)
                (cond
                    ((= position 0) (cons element L))
                    (else ( cons (car L) (insert element (- position 1 ) (cdr L)))))))


;AllInsertions expressed as a map operation; insert the element A, into L, for all possible positions in L.
;The possible positions in L are those between 0 and (length L)
;This could be done many other ways, but this is clear.
(define allInsertions (lambda (A L)
                        (mapTo (lambda(x) (insert A x L)) (range 0  (length L )))))

;tests
;(allInsertions 'x '(a b c d e))
;(allInsertions 'x '(a (b c) d ))
;(allInsertions '(x y) '(a (b c) d ))




;Question 3
;Best solution:
(define allPermutations
   (lambda(L)
      (cond( (null? L) '( () ) )
           ( #t (apply append
                             (map (lambda(x)  (allInsertions (car L) x))
                                       (allPermutations (cdr L)) )   ) ))))



;Alternate solution 1
;Utility code, to prepend an item to a list, from previous assignment
;(define prepend (lambda (P L)
;                  (cond
;                    ((null? P) L)
;                    (else (cons (car P) (prepend (cdr P) L))))))
;
;Utility code to flatten list one level, from previous assignment
;(define flatten (lambda (L)
;                  (cond
;                    ((null? L) '())
;                    ((list? (car L)) (prepend (car L) (flatten (cdr L))))
;                    (else (cons (car L) (flatten (cdr L)))))))


;(define allPermutations
;   (lambda(L)
;     (cond 
;            ((< (length L) 2) L) ;handle trivial input
;            ((= 2 (length L)) (list L (reverse L)  )) ;base case, when there are 2 elements, return 2 lists, one list for each permutation.
;            (#t (flatten (mapTo (lambda(x) (allInsertions (car L) x)) (allPermutations (cdr L)))))))) 

;tests
;(allPermutations '())
;(allPermutations '(1))
;(allPermutations '(1 2))
;(allPermutations '(a b c))
;(allPermutations '(a b c d))
;(allPermutations '((a b) (c d) e))



;Other alternate solutions:


;Utility function:
;take in an element A, and a list of (sub)lists, and return a new list of lists, which contains what you'd 
;have if you made every list you could, by inserting A into every position in each of the sublists.

;(define allInsertionsLists (lambda (A ListOfLists)
;                            (flatten (mapTo (lambda (theList) (allInsertions A theList)) ListOfLists ))))

; Alternative version of this utility function, without using 'map'
;(define allInsertionsLists (lambda (A LoL)
;                            (cond
;                                ((null? LoL) '())
;                                (else (append (allInsertions A (car LoL)) (allInsertionsLists A (cdr LoL)))))))



;Version using this helper method, using recursion (not using map)
;(define allPermutations (lambda (L)
;                         (cond
;                           ((< (length L) 2) L) ;handle trivial input
;                           ((= 2 (length L)) (list L (reverse L)  )) ;if there are two elements a,b to permute, return a new list ((a b) (b a));
;                           (else (append (allInsertionsLists (car L) (allPermutations (cdr L))))))))





