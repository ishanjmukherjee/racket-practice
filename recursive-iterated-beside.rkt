; type signature: (number -> picture) number -> picture
; Given a generator function, uses it create a horizontal series of pictures.

(define recursive-iterated-beside
  (λ (func count)
    (if (= count 0)
        empty-image
        (beside (func (- count 1))
                (recursive-iterated-beside func (- count 1))))))
