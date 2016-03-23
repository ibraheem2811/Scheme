#lang racket
(require (planet dyoo/simply-scheme:2:2))


(define (second thing)
(first (butfirst thing)))

;Lesson

;(first '(because))
;'because

;> (first '(because))
;'because

;> (butfirst '(because)
;           )
;'()

;> (butfirst 'because)
;'ecause

;> (butfirst 'a)
;""

;> (butfirst 1024)
;"024"

;> 00000025
;25

;> "024"
;"024"

;> (word 'ses 'qui 'pe 'da 'lian 'ism)
;'sesquipedalianism

;> (word 'now 'here)
;'nowhere

;> (word 35 893)
;35893

;> (sentence 'carry 'that 'weight)
;'(carry that weight)

;> (sentence '(john paul) '(george ringo))
;'(john paul george ringo)

;> (se '(one plus one) 'makes 2)
;'(one plus one makes 2)


;Exercise

;1.

;> (sentence 'I '(me mine))
;'(I me mine)

;> (sentence '() '(is empty))
;'(is empty)

;> (word '23 '45)
;2345

;> (se '23 45)
;'(23 45)

;> (se '23 '45)
;'(23 45)

;> (bf 'a)
;""

;> (bf '(aye))
;'()

;> (count (first '(maggie mae)))
;6

;> (se "" '() "" '())
;'("" "")

;> (count (se "" '() "" '()))
;2

;2. In (first 'mezzanine),
;we're trying to find the first letter of the word "mezzanine.
;While in (first '(mezzanine))
;we're finding the first word in the sentence "mezzanine"

;3. In (first (square 7)),
;square is not defined because it is a sentence.
; In (first '(square 7)),
; square is a sentence, so the expression works as intended.

;4. The difference between (word 'a 'b 'c) and 
;(se 'a 'b 'c) is that in (word 'a 'b 'c),
;it thinks that 'a 'b 'c are all letters,
;so (word 'a 'b 'c) would be 'abc. 
;On the other hand, (se 'a 'b 'c) thinks that 'a 'b 'c are all words. 
;So it would be '(a b c).

;5. There is no difference between
;(bf 'zabadak) and (butfirst 'zabadak)
;since bf = butfirst.

;6. The difference between (bf 'x) and (butfirst '(x)) is that