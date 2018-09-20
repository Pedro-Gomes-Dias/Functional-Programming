;Exercício 1
(define x 3)
(define y 4)
(define (distancia x y)
  (sqrt(+(* x x)(* y y))))
#| > (distancia x y)
5 |#

;Exercicio 2
(define prefixo "hello")
(define sufixo "world")
(define (concatenar prefixo sufixo)
  (string-append prefixo "_" sufixo))
#| > (concatenar prefixo sufixo)
"hello_world" |# 

;Exercicio 3
(define str "helloworld")
(define i 5)
(define (separar str i)
  (string-append(string-append(substring str 0 i) "_")(substring str i (string-length str))))
#|> (separar str i)
"hello_world"
--------------------------------------------------------------------------------
Substring é utilizado para filtrar uma string
-------------------------------------------------------------------------------|#

;Exercicio 4
(define (separar2 str i)
  (string-append(string-append(substring str 0 (- i 1)) "")(substring str i 10)))
#| > (separar2 str i)
"hellworld" |#

;Exercicio 5
;----------------Carro---------------
(define framecarro
(above (rectangle 30 10 "solid" "black")
       (rectangle 50 15 "solid" "black")))
(define rodas
  (beside (circle 8 "solid" "green")
          (circle 8 "solid" "green")))
#|> (underlay/xy rodas
            -10 -20
            framecarro)
>
.|#
;---------------Arvore---------------
(define folhas
(overlay/offset
   (overlay/offset (circle 30 'solid (color 0 150 0 127))
                   26 0
                   (circle 30 'solid (color 0 150 0 127)))
   0 26
   (circle 30 'solid (color 0 150 0 127))))
(define tronco
(rectangle 20 60 "solid" "brown"))

;Exercicio 6
(define imagem .)
(define (pixels imagem)
  (* (image-width imagem)(image-height imagem)))
#| > (pixels imagem)
16384 |#

;Exercicio 7
(define sunny #true)
(define friday #false)
(define (compras sunny friday)
  (if(or (equal? (not sunny) #false) (equal? friday #true))
     #false
     #true
     ))
#| > (compras sunny friday)
#false|#

;Exercicio 8
(define (tipoimagem imagem)
  (if (> (image-width imagem)(image-height imagem))
      "tall"
      (if (= (image-width imagem)(image-height imagem))
          "square"
          "wide")))
#|> (tipoimagem imagem)
"square"
----------------------------------------------
OBS:A imagem(128x128) ja foi declarada no exercicio 6
---------------------------------------------|#

;Exercicio 9
;String -> Número
(define in "hello")
(define (converter_string in)
  (if(string? in)
     (string-length in)
     "Não é uma string"))
;Imagem -> Numero
(define in2 10)
(define (converter_imagem imagem)
  (if(image? imagem)
     (*(image-width imagem)(image-height imagem))
     "Não é uma imagem"))
#| > (converter_string in)
5
> (converter_imagem imagem)
16384
----------------------------------------------
OBS:A imagem(128x128) ja foi declarada no exercicio 6
---------------------------------------------|#

;Exercicio 11
;(define x 3) Variavéis que já
;(define y 4) foram definida anteriormente.
(define (distancia2 x y)
  (sqrt(+(* x x)(* y y))))
#| > (distancia2 x y)
5 |#

;Exercicio 12
(define (volume larguralado)
  (* larguralado (* larguralado larguralado)))
#| > (volume 2)
8 |#

;Exercicio 13
(define (string-first str)
  (substring str 0 1))
#|> (string-first "hello")
"h"|#

;Exercicio 14
(define (last-string str)
  (substring str (- (string-length str) 1) (string-length str)))
#|> (last-string "hello")
"o"|#

;Exercicio 15
(define sunny2 #false)
(define friday2 #true)
(define (bool-imply x y)
  (or x y))
#| > (bool-imply sunny2 friday2)
#true |#

;Exercicio 16
(define (image-area imagem)
  (* (image-height imagem)(image-width imagem)))
#| > (image-area imagem)
16384 |#

;Exercicio 17
(define (image-classify imagem)
  (if (> (image-width imagem)(image-height imagem))
      "tall"
      (if (= (image-width imagem)(image-height imagem))
          "square"
          "wide")))
#| > (image-classify imagem)
"square" |#

;Exercicio 18
(define (string-join str1 str2)
  (string-append str1 "_" str2))
#| > (string-join "hello" "world")
"hello_world" |#

;Exercicio 19
(define (string-insert str1 i)
  (string-append(string-append(substring str1 0 i) "_")(substring str1 i (string-length str1))))
#| > (string-insert "hello" 2)
"he_llo" |#

;Exercicio 20
(define (string-delete str1 i)
  (string-append(string-append(substring str1 0 (- i 1)) "")(substring str1 i (string-length str1))))
#| > (string-delete "hello" 2)
"hllo" |#

;Exercicio 21
(define (ff a)
  (* 10 a))
#| > (ff (ff 1))
100
> (+ (ff  1)(ff  1))
20|#

;Exercicio 22
(define (distance-to-origin x y)
  (sqrt (+ (sqr x) (sqr y))))
#|> (distance-to-origin 3 4)
5
---------------------------------------------------
O exercício é basicamente a fórmula da distancia
---------------------------------------------------
|#

;Exercicio 23
(define (string-first2 a)
  (substring a 0 1))
#|> (string-first2 "heymermao")
"h"
----------------------------------------------------
Esse exercicio é basicamente o exercício 13
----------------------------------------------------
|#

;Exercicio 24
(define (bool-imply2 x y)
  (or (not x)y))
#| > (bool-imply2 #true #false)
#false |#

;Exercicio 25
(define (image-classify2 imagem)
  (cond
        [(> (image-height imagem) (image-width imagem))
         "tall"]
        [(= (image-height imagem) (image-width imagem))
         "square"]
        [(< (image-height imagem) (image-width imagem))
         "wide"]))
#| > (image-classify2 imagem)
"square" |#

;Exercicio 26
(define (string-insert2 s i)
  (string-append (substring s 0 i)
                 "_"
                 (substring s i)))
#| > (string-insert2 "hello" 3)
"hel_lo" |#

;Exercicio 27
(define constantepessoas 120)
(define constantepreco 5.0)
(define mudancapessoas 15)
(define alteracaonovalor 0.1)
(define partefixa 180)
(define gastoporpessoa 0.4)
(define (attendees ticket-price)
  (- constantepessoas (* (- ticket-price constantepreco) (/ mudancapessoas alteracaonovalor))))
(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))
(define (cost ticket-price)
  (+ partefixa (* gastoporpessoa (attendees ticket-price))))
(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

;Exercicio 28
#| ---------------------------------------------
Mesmo código do exercício 27
------------------------------------------------
> (profit 1)
252
> (profit 2)
732
> (profit 3)
912
> (profit 4)
792
> (profit 5)
372
------------------------------------------------
O maior lucro é com o preço em R$3.00
------------------------------------------------|#

;Exercicio 29
(define gastoporpessoa2 1.5)
(define (attendees2 ticket-price)
  (- constantepessoas (* (- ticket-price constantepreco) (/ mudancapessoas alteracaonovalor))))
(define (revenue2 ticket-price)
  (* ticket-price (attendees2 ticket-price)))
(define (cost2 ticket-price)
  (* gastoporpessoa2 (attendees2 ticket-price)))
(define (profit2 ticket-price)
  (- (revenue2 ticket-price)
     (cost2 ticket-price)))
#|> (profit2 3)
630
> (profit2 4)
675
> (profit2 5)
420
-------------------------------------------------------
O mais lucrativo se torna R$ 4.00 e com a mudança feita
pelo dono seu lucro diminuiu.
-------------------------------------------------------|#

;Exercicio 30
(define MUDANCAPESSOAS 15)
(define ALTERACAOVALOR 0.1)
(define (attendees3 ticket-price)
  (- 120 (* (- ticket-price 5.0) (/ MUDANCAPESSOAS ALTERACAOVALOR))))
(define (revenue3 ticket-price)
  (* ticket-price (attendees3 ticket-price)))
(define (cost3 ticket-price)
  (+ 180 (* 0.04 (attendees3 ticket-price))))
(define (profit3 ticket-price)
  (- (revenue3 ticket-price)
     (cost3 ticket-price)))
#|> (profit3 1)
511.2
> (profit3 2)
937.2
> (profit3 3)
1063.2
> (profit3 4)
889.2
> (profit3 5)
415.2|#

;Exercicio 31
(define (letter fst lst signature-name)
  (string-append
    (opening fst)
    "\n\n"
    (body fst lst)
    "\n\n"
    (closing signature-name)))
 
(define (opening fst)
  (string-append "Dear " fst ","))
 
(define (body fst lst)
  (string-append
   "We have discovered that all people with the last name " "\n"
   lst " have won our lottery. So, " fst ", " "\n"
   "hurry and pick up your prize."))
 
(define (closing signature-name)
  (string-append
   "Sincerely,"
   "\n\n"
   signature-name))

(define (main in-fst in-lst in-signature out)
  (write-file out
              (letter (read-file in-fst)
                      (read-file in-lst)
                      (read-file in-signature))))
#|> (letter "Pedro" "Gomes" "Pedro Gomes")
"Dear Pedro,\n\nWe have discovered that all people with the last name \nGomes have won our lottery. So, Pedro, \nhurry and pick up your prize.\n\nSincerely,\n\nPedro Gomes"
|#

;Exercicio 32

