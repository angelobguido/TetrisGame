; all tetrominos have 4 pixels
; the position will always be in (row, column) order
; every pixel will store a position(2 bytes)
; because there is no negative number, all pivot position will start at (4,4)
; the larger the row, the lower the pixel
; the rotation number order will be in clockwise
; the game memory will hold the game pixels 
; for every row destroyed, the values of that row will becocome 0 {need to think more}
; the map will be 20 x 10 pixels, with colors(color 0 is empty)

jmp main

;colors code
green_color : var #1
purple_color : var #1
red_color : var #1
yellow_color : var #1
blue_color : var #1
aqua_color : var #1

static green_color, #512
static purple_color, #1280
static red_color, #2304
static yellow_color, #2816
static blue_color, #3072
static aqua_color, #3584

;game memory
game_pixels_array_with_values : var #600 ; remember to initialise later with color 0 and the actual positions

static game_pixels_array_with_values + #0, #0
static game_pixels_array_with_values + #1, #0
static game_pixels_array_with_values + #2, #0

; current tetromino
current_tetromino_pixels_array : var #8 ; 2 bytes per pixel, 4 pixels per tetromino
current_tetromino_color : var #1 ; this will be the color for all pixels in one tetromino

; next tetromino
next_tetromino_pixels_array : var #8
next_tetromino_color : var #1


; ... I tetromino

; rotation 0
; #$##

I_rotation_0_pixels_array : var #8

static I_rotation_0_pixels_array + #0, #4 ; pivot pixel row position
static I_rotation_0_pixels_array + #1, #4 ; pivot pixel column position

static I_rotation_0_pixels_array + #2, #4 ; 1st pixel row position
static I_rotation_0_pixels_array + #3, #3 ; 1st pixel column position

static I_rotation_0_pixels_array + #4, #4 ; 2nd pixel row position
static I_rotation_0_pixels_array + #5, #5 ; 2nd pixel column position

static I_rotation_0_pixels_array + #6, #4 ; 3th pixel row position
static I_rotation_0_pixels_array + #7, #6 ; 3th pixel column position

; rotation 1 
; #
; $
; #
; # 

I_rotation_1_pixels_array : var #8

static I_rotation_1_pixels_array + #0, #4 ; pivot pixel row position
static I_rotation_1_pixels_array + #1, #4 ; pivot pixel column position

static I_rotation_1_pixels_array + #2, #4 ; 1st pixel row position
static I_rotation_1_pixels_array + #3, #3 ; 1st pixel column position

static I_rotation_1_pixels_array + #4, #4 ; 2nd pixel row position
static I_rotation_1_pixels_array + #5, #5 ; 2nd pixel column position

static I_rotation_1_pixels_array + #6, #4 ; 3th pixel row position
static I_rotation_1_pixels_array + #7, #6 ; 3th pixel column position

; rotation 2
; ##$#

I_rotation_2_pixels_array : var #8

static I_rotation_2_pixels_array + #0, #4 ; pivot pixel row position
static I_rotation_2_pixels_array + #1, #4 ; pivot pixel column position

static I_rotation_2_pixels_array + #2, #4 ; 1st pixel row position
static I_rotation_2_pixels_array + #3, #3 ; 1st pixel column position

static I_rotation_2_pixels_array + #4, #4 ; 2nd pixel row position
static I_rotation_2_pixels_array + #5, #5 ; 2nd pixel column position

static I_rotation_2_pixels_array + #6, #4 ; 3th pixel row position
static I_rotation_2_pixels_array + #7, #6 ; 3th pixel column position

; rotation 3
; #
; #
; $
; #

I_rotation_3_pixels_array : var #8

static I_rotation_3_pixels_array + #0, #4 ; pivot pixel row position
static I_rotation_3_pixels_array + #1, #4 ; pivot pixel column position

static I_rotation_3_pixels_array + #2, #4 ; 1st pixel row position
static I_rotation_3_pixels_array + #3, #3 ; 1st pixel column position

static I_rotation_3_pixels_array + #4, #4 ; 2nd pixel row position
static I_rotation_3_pixels_array + #5, #5 ; 2nd pixel column position

static I_rotation_3_pixels_array + #6, #4 ; 3th pixel row position
static I_rotation_3_pixels_array + #7, #6 ; 3th pixel column position

; end of I tetromino ...


; ... J tetromino
; end of J tetromino ...


; ... L tetromino
; end of L tetromino ...


; ... O tetromino
; end of O tetromino ...


; ... S tetromino
; end of S tetromino ...


; ... T tetromino
; end of T tetromino ...


; ... Z tetromino
; end of Z tetromino ...

main:
    halt