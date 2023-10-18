; type signature: (listof any) -> number
; For a given list, returns the length of the list (ie, number of elements in the list).

(define recursive-length
  (λ (inp-list)
    (if (empty? inp-list)
        0
        (+ 1 (recursive-length (rest inp-list))))))
