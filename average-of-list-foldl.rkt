; type signature: (listof number) -> number
; Returns the average of a list of numbers

(define average-list
  (λ (inp-list)
    (/ (foldl + 0 inp-list) (length inp-list)))) 
