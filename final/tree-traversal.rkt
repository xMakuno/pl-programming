#lang racket
(define T1 (list 5
                 (list 3
                       (list 2 null null)
                       (list 4 null null))
                 (list 7 null null)))
(define (post-order T)
  (cond
    [(null? T) (display "nil ")]
    [else
      (post-order (second T))
      (post-order (third T))
      (display (first T))
      (display " ")]))

(define (pre-order T)
  (cond
    [(null? T) (display "nil ")]
    [else
      (display (first T))
      (display " ")
      (post-order (second T))
      (post-order (third T))
      ]))

(define (in-order T)
  (cond
    [(null? T) (display "nil ")]
    [else 
      (post-order (second T))
      (display (first T))
      (display " ")
      (post-order (third T))
      ]))

(displayln "Pre-Order")
(pre-order T1)
(displayln "")
(displayln "In-Order")
(in-order T1)
(displayln "")
(displayln "Post-Order")
(post-order T1)