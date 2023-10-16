; type signature: (X X -> X) X (listof X) -> X
; Writing my own implementation of foldr and foldl using apply

(define my-foldr
  (λ (func start inp-list)
    (apply func
           (append inp-list
                   (list start)))))

(define my-foldl
  (λ (func start inp-list)
    (apply func
           (append (reverse inp-list)
                   (list start)))))
