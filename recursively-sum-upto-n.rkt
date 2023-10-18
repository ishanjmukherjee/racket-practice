; type signature: number -> number
; For a given n, return 0+1+2+...+n

(define sum-n
  (λ (n)
    (if (= n 0)
        0
        (+ n (sum-n (- n 1))))))
