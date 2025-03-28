#lang racket

;; Define a function to count the leaves of a tree
(define (count-leaves tree)
  (if (null? tree)
      0 ; If the tree is null, there are no leaves
      (let ([left (second tree)]
            [right (third tree)])
        (if (and (null? left) (null? right))
            1 ; If both subtrees are null, it's a leaf
            (+ (count-leaves left) (count-leaves right))))))

;; Example tree
(define T1 (list 5
                 (list 3
                       (list 2 null null)
                       (list 3 null null))
                 (list 7
                       (list 6 null null)
                       (list 8 null null))))

;; Count the leaves
(define leaf-count (count-leaves T1))

;; Print the result
(displayln leaf-count) ; Output: 3
