; type signature: number -> number
; For a given n, return n!

(define factorial
  (λ (n)
    (if (= n 0)
        1
        (* n (factorial (- n 1))))))
