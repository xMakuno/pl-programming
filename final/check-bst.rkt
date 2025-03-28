#lang racket

;; Define a helper function to check BST validity with a range
(define (is-bst-helper tree min-val max-val)
  (if (null? tree)
      #t ; An empty tree is a BST
      (let ([value (first tree)]
            [left (second tree)]
            [right (third tree)])
        (and (<= min-val value max-val) ; Current node must satisfy the range
             (is-bst-helper left min-val value)  ; Left subtree values < current node
             (is-bst-helper right value max-val))))) ; Right subtree values > current node

;; Main function to check if a tree is a BST
(define (is-bst tree)
  (is-bst-helper tree -inf +inf)) ; Start with an infinite range

;; Example trees
(define T1 (list 5
                 (list 3
                       (list 2 null null)
                       (list 4 null null))
                 (list 7 null null))) ; Valid BST

(define
