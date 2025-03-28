#lang racket

;; Define a function for in-order traversal of a tree
(define (in-order tree)
  (if (null? tree)
      '() ; If the tree is null, return an empty list
      (let ([value (first tree)]
            [left (second tree)]
            [right (third tree)])
        (append (in-order left) (list value)  (in-order right)))))

;; Example tree
(define T1 (list 5
                 (list 3
                       (list 2 null null)
                       (list 4 null null))
                 (list 7 null null)))

;; Get the in-order traversal
(define in-order-list (in-order T1))

;; Print the result
(displayln in-order-list) ; Output: '(2 3 3 5 7)
