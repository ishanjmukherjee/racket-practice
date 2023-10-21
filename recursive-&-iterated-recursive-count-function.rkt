; type signature (both functions): (X -> boolean) (listof X) -> number
; Returns the number of elements of the list that satisfy a predicate. First a recursive implementation, then a more memory-efficient implementation using iterative recursion.

(define count
  (λ (p inp-list)
    (if (empty? inp-list)
        0
        (+ 1 (count p (rest inp-list))))))

(define count/iter
  (λ (p inp-list)
    (local [(define count-helper
              (λ (p inp-list accumulator)
                (if (empty? inp-list)
                    accumulator
                    (cond [(p (first inp-list))
                           (count-helper p
                                         (rest inp-list)
                                         (+ accumulator 1))]
                          [else
                           (count-helper p
                                         (rest inp-list)
                                         accumulator)]))))]
      (count-helper p inp-list 0))))
