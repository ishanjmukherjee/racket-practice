(define (sum-list lst)
  (local [(define sum 0)
          (define (loop)
            (begin (for-each (λ (element) (set! sum (+ sum element)))
                             lst)
                   sum))]
    (loop)))
