(define power
  (λ (a b)
    (if (= b 0)
        1
        (* a (power a (- b 1))))))

; The iterated recursive implementation of the power function is more memory efficient.
(define power/iter
  (λ (number exponent)
    (local [(define power-helper
              (λ (number exponent accumulator)
                (if (= exponent 0)
                    accumulator
                    (power-helper number
                                  (- exponent 1)
                                  (* accumulator number)))))]
      (power-helper number exponent 1))))
