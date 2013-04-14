#lang racket

the 5 steps for solving problems (that is, designing algorithms) recursively.
Here we are taking the task of sorting a list of numbers as our example

1) What is base case?
   (when the list to be sorted is so simple
    we can give an answer straight away)

2) What is the recursive case?

    (when the list is too long
     to give an immediate answer)

    3) How can we split the complex input into simpler parts?
       (Split the  long list into smaller lists)

    4) How can we recursively get answers for those simpler parts?
        (call our sort function for those smaller lists: this is recursion)

    5) How can we put those answers together to get the answer for the whole input? 
       (depends on how we split up the long list into smaller lists..)   



A worked solution for insertion sort

L is the list we want to sort

1)    two base cases: If L is an empty list, answer is L
                      If L is a list with 1 element, answer is L

2)    recursive case:  If L has more than 1 element, then

        3) Split L into simpler parts
            write a function split, which returns a list containing
               two parts: first element of L, and rest of L

        4) get answer for simpler parts (recurively)
              [if my function is called 'sort', just use that same
               'sort' function, but for the simpler parts of L]
           
        5) put simpler answers together to get overall answer for L
             we have sorted answers for firstPart, restPart
             the answer for firstPart is a list with 1 element
             the answer for restPart is a (maybe) longer list


             firstAnswerElement  ; a single element e.g. 5
             restAnswerList      ; a sorted list   (2, 4, 11, 13 19)

              suppose 'insert' means, put element into right
              place in a list.  

            then our answer for L is, 
                'insert firstAnswerElement restAnswerList'



See the insert and insertionSort code in the sort.txt file
  
 



  

Worked answer for MergeSort 

1)    two base cases: If L is an empty list, answer is L
                      If L is a list with 1 element, answer is L

2)    recursive case:  If L has more than 1 element, then

        3) Split L into simpler parts
            write a function split that splits a list into 2 halves

        4) get answer for simpler parts (recurively)
              [if my function is called 'sort', just use that same
               'sort' function, but for the simpler parts of L]
           
        5) put simpler answers together to get overall answer for L
             we have sorted answers for firstPart, secondPart:
                 firstAnswerList  ; a list of sorted nums
                 secondAnswerList      ; same

           suppose 'merge' takes 2 sorted lists and
           merges them to create a new sorted list of both elements 

           then our answer for L is, 
                'merge firstAnswerList restAnswerList'

(see the rest of the code in the sort.txt file)





 

