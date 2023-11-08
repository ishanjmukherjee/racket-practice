; sums the elements of a list using imperative programming 

(define (sum-list lst)
  (local [(define sum 0)
          (define remaining lst)
          (define (loop)
            (if (empty? remaining)
                sum
                (begin (set! sum
                             (+ sum (first remaining)))
                       (set! remaining
                             (rest remaining))
                       (loop))))]
    (loop)))
