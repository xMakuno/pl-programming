#lang racket
(define (sumar-listas L1 L2)
  (if (and (andmap number? L1) (andmap number? L2) (= (length L1) (length L2)))
      (map (lambda (e1 e2 ) (+ e1 e2)) L1 L2)
      (display "ERROR: Ingrese dos listas donde todos sus elementos sean numeros y las listas sean de la misma longitud ")
  )
)