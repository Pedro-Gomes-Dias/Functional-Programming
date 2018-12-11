(require 2htdp/image)
(require 2htdp/universe)

;PROLOGUE: How to Program
;ALUNO: Pedro Gomes Dias
;MATRÍCULA: 11821ECP007

;_________________________________________________________________________________________________________________
#|

(define (y x) (* x x))

(define (sign x)
  (cond
    [(> x 0) 1]
    [(= x 0) 0]
    [(< x 0) -1]))
(define picture-of-rocket .)

(define (picture-of-rocket height)
  (place-image . 50 height (empty-scene 100 60))) 

(define (sign x)
  (cond
    [(> x 0) 1]
    [(= x 0) 0]
    [(< x 0) -1]))

(define (sign x)
  (cond
    [(> x 0) 1]
    [(= x 0) 0]
    [(< x 0) -1]))

(define (picture-of-rocket.v2 height)
  (cond
    [(<= height 60)
     (place-image . 50 height
                  (empty-scene 100 60))]
    [(> height 60)
     (place-image . 50 60
                  (empty-scene 100 60))]))

(define (picture-of-rocket.v3 height)
  (cond
    [(<= height (- 60 (/ (image-height . ) 2)))
     (place-image . 50 height
                  (empty-scene 100 60))]
    [(> height (- 60 (/ (image-height . ) 2)))
     (place-image . 50 (- 60 (/ (image-height . ) 2))
                  (empty-scene 100 60))]))


(define (picture-of-rocket.v4 h)
  (cond
    [(<= h (- HEIGHT (/ (image-height ROCKET) 2)))
     (place-image ROCKET 50 h (empty-scene WIDTH HEIGHT))]
    [(> h (- HEIGHT (/ (image-height ROCKET) 2)))
     (place-image ROCKET
                  50 (- HEIGHT (/ (image-height ROCKET) 2))
                  (empty-scene WIDTH HEIGHT))]))
 
(define WIDTH 100)
(define HEIGHT 60)
(define ROCKET . )

; constants 
(define WIDTH  100)
(define HEIGHT  60)
(define MTSCN  (empty-scene WIDTH HEIGHT))
(define ROCKET . )
(define ROCKET-CENTER-TO-TOP
  (- HEIGHT (/ (image-height ROCKET) 2)))
 
; functions
(define (picture-of-rocket.v5 h)
  (cond
    [(<= h ROCKET-CENTER-TO-TOP)
     (place-image ROCKET 50 h MTSCN)]
    [(> h ROCKET-CENTER-TO-TOP)
     (place-image ROCKET 50 ROCKET-CENTER-TO-TOP MTSCN)]))

(define (picture-of-rocket t)
  (cond
    [(<= t ROCKET-CENTER-TO-TOP)
     (place-image ROCKET 50 t MTSCN)]
    [(> t ROCKET-CENTER-TO-TOP)
     (place-image ROCKET
                  50 ROCKET-CENTER-TO-TOP
                  MTSCN)]))
(define V 3)
 
(define (distance t)
  (* V t))

; properties of the "world" and the descending rocket
(define WIDTH  100)
(define HEIGHT  60)
(define V 3)
(define X 50)
 
; graphical constants 
(define MTSCN  (empty-scene WIDTH HEIGHT))
(define ROCKET . )
(define ROCKET-CENTER-TO-TOP
  (- HEIGHT (/ (image-height ROCKET) 2)))
 
; functions
(define (picture-of-rocket.v6 t)
  (cond
    [(<= (distance t) ROCKET-CENTER-TO-TOP)
     (place-image ROCKET X (distance t) MTSCN)]
    [(> (distance t) ROCKET-CENTER-TO-TOP)
     (place-image ROCKET X ROCKET-CENTER-TO-TOP MTSCN)]))
 
(define (distance t)
  (* V t))

__________________________________________________________________________________________________________________

> (+ 1 1)
2
> (+ 2 2)
(* 3 3)
(- 4 2)
(/ 6 2)

4
9
2
3
> (sqr 3)
9
> (expt 2 3)
8
> (sin 0)
0
> (cos pi)
#i-1.0
> (+ 2 (+ 3 4))
9
> (+ 2 3 4)
9
> (+ 2 (+ (* 3 3) 4))
15
> (+ 2 (+ (* 3 (/ 12 4)) 4))
15
> (+ (* 5 5) (+ (* 3 (/ 12 4)) 4))
38
> (+ (1) (2))
function call: expected a function after the open parenthesis, but found a number
> (+ 1 2 3 4 5 6 7 8 9 0)
45
> (* 1 2 3 4 5 6 7 8 9 0)
0
> "hello world"
"hello world"
> (string-append "hello" "world")
"helloworld"
> (string-append "hello " "world")
"hello world"
> (string-append "hello" " " "world")
"hello world"
> (+ (string-length "hello world") 20)
31
> (number->string 42)
"42"
> (string->number "42")
42
> (string->number "hello world")
#false
> (and #true #true)
#true
> (and #true #false)
#false
> (or #true #false)
#true
> (or #false #false)
#false
> (not #false)
#true
> (> 10 9)
#true
> (< -1 0)
#true
> (= 42 9)
#false
> (>= 10 10)
#true
> (<= -1 0)
#true
> (string=? "design" "tinker")
#false
> (and (or (= (string-length "hello world")
            (string->number "11"))
         (string=? "hello world" "good morning"))
     (>= (+ (string-length "hello world") 60) 80))

#false
> (circle 10 "solid" "red")
.
> (rectangle 30 20 "outline" "blue")
.
> (overlay (circle 5 "solid" "red")
           (rectangle 20 20 "solid" "blue"))
.
> (overlay (rectangle 20 20 "solid" "blue")
           (circle 5 "solid" "red"))
.
> (image-width (square 10 "solid" "red"))
10
> (image-width
    (overlay (rectangle 20 20 "solid" "blue")
             (circle 5 "solid" "red")))
20
> (place-image (circle 5 "solid" "green")
             50 80
             (empty-scene 100 100))

.
> (y 1)
1
> (y 2)
4
> (y 3) (y 4) (y 5)
9
16
25
> (empty-scene 100 60)
.
> (sign 10)
1
> (sign -5)
-1
> (sign 0)
0
> (empty-scene 100 60)
.
> (place-image . 50 23 (empty-scene 100 60))
.
> (place-image . 50 20 (empty-scene 100 60))
.
> (place-image . 50 30 (empty-scene 100 60))
.
> (place-image . 50 40 (empty-scene 100 60))
.
> (place-image picture-of-rocket 50 23 (empty-scene 100 60))
.
> (place-image picture-of-rocket 50 20 (empty-scene 100 60))
.
> (place-image picture-of-rocket 50 30 (empty-scene 100 60))
.
> (place-image picture-of-rocket 50 40 (empty-scene 100 60))
.
> (picture-of-rocket 0)
(picture-of-rocket 10)
(picture-of-rocket 20)
(picture-of-rocket 30)

.
.
.
.
> (animate picture-of-rocket)
281
> (picture-of-rocket.v2 5555)
.
> (- 60 (/ (image-height . ) 2))
39
> (place-image . 50 (- 60 (image-height . ))
             (empty-scene 100 60))
.
> (- 60 (/ (image-height . ) 2))
39
> (animate picture-of-rocket.v4)
260
> (animate picture-of-rocket.v5)
97
> (overlay (circle 10 "solid" "green")
         (rectangle 40 4 "solid" "green"))
.
> (animate picture-of-rocket.v6)
107

|#
