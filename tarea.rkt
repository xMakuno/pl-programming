#lang racket
(define (ask msg)
  (display msg)
  (read)
)

(define (descuentazo)
  (let ((price (ask "Ingrese el precio original del producto:\n")))
    (let ((discount (ask "Ingrese el porcentaje de descuento (sin el signo %):\n")))
    (display "El precio final despues del descuento es: $")
    (display (* price (- 1 (/ discount 100.0))))
    )
  )
)