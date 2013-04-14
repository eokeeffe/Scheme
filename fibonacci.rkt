;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname fibonacci) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;function tested to N=50 , after that was painfull to compare values
;define how many Fibonacci numbers your looking for
(define NumberOfElements 20)

;this is the Fn-1 or the last element of the list
(define FindLast(lambda(L)(cond
                            ((null? L) '())
                            ((null? (cdr L)) (car L))
                            (else (FindLast (cdr L)))
                            )))
;this is the Fn-2 or the second last element of the list
(define FindSecondLast(lambda(L)(cond
                            ((null? L) '())
                            ((null? (cdr (cdr L))) (car L))
                            (else (FindSecondLast (cdr L)))
                            )))
;remove the last element, due to n+1 error of my loop
(define removeLast(lambda(L)(cond
                              ((null? (cdr L)) '())
                              (else (cons (car L) (removeLast (cdr L)))))))


;main loop function that will get the list fibonacci numbers
(define fib(lambda(a L x)(cond
                           ((= x 0) '(0));return simple list
                           ((= x 1) L);return the list from first function
                           
                           ;while a < x , recusively call fib with incremented a , append the sum
                           ;of last and secondlast to the list and pass x too
                           
                           ((< a x) (fib (+ a 1) (append L (list (+ (FindLast L) (FindSecondLast L)))) x))
                           
                           ;return the list less the last element , due to n+1 error on my behalf
                           
                           (else (removeLast L))
                           )))

(define Fibonacci(lambda(x)( fib 0 '(0 1) x)))

(Fibonacci NumberOfElements)

;Efficency of algorithm
;FindLast = O(N)
;FindSeconLast = O(N-1)
;removeLast = O(N)
;N+N-1+N= 3N-1 = O(N)
;algorithm is simple O(N) standard