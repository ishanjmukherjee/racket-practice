; For a given predicate and list, recursively creates and returns a list of the elements that satisfy the predicate. Equivalent to the filter function.
; type signature: (X -> boolean) (listof X) -> (listof X)

(define recursive-filter
  (λ (p inp-list)
    (if (empty? inp-list)
        '()
        (if (p (first inp-list))
            (cons (first inp-list)
                  (recursive-filter p (rest inp-list)))
            (recursive-filter p (rest inp-list))))))
