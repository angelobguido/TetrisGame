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
game_pixels_array_with_values : var #200 ; remember to initialise later with color 0 and the actual positions

static game_pixels_array_with_values + #0, #0
static game_pixels_array_with_values + #1, #0
static game_pixels_array_with_values + #2, #0
static game_pixels_array_with_values + #3, #0
static game_pixels_array_with_values + #4, #0
static game_pixels_array_with_values + #5, #0
static game_pixels_array_with_values + #6, #0
static game_pixels_array_with_values + #7, #0
static game_pixels_array_with_values + #8, #0
static game_pixels_array_with_values + #9, #0
static game_pixels_array_with_values + #10, #0
static game_pixels_array_with_values + #11, #0
static game_pixels_array_with_values + #12, #0
static game_pixels_array_with_values + #13, #0
static game_pixels_array_with_values + #14, #0
static game_pixels_array_with_values + #15, #0
static game_pixels_array_with_values + #16, #0
static game_pixels_array_with_values + #17, #0
static game_pixels_array_with_values + #18, #0
static game_pixels_array_with_values + #19, #0
static game_pixels_array_with_values + #20, #0
static game_pixels_array_with_values + #21, #0
static game_pixels_array_with_values + #22, #0
static game_pixels_array_with_values + #23, #0
static game_pixels_array_with_values + #24, #0
static game_pixels_array_with_values + #25, #0
static game_pixels_array_with_values + #26, #0
static game_pixels_array_with_values + #27, #0
static game_pixels_array_with_values + #28, #0
static game_pixels_array_with_values + #29, #0
static game_pixels_array_with_values + #30, #0
static game_pixels_array_with_values + #31, #0
static game_pixels_array_with_values + #32, #0
static game_pixels_array_with_values + #33, #0
static game_pixels_array_with_values + #34, #0
static game_pixels_array_with_values + #35, #0
static game_pixels_array_with_values + #36, #0
static game_pixels_array_with_values + #37, #0
static game_pixels_array_with_values + #38, #0
static game_pixels_array_with_values + #39, #0
static game_pixels_array_with_values + #40, #0
static game_pixels_array_with_values + #41, #0
static game_pixels_array_with_values + #42, #0
static game_pixels_array_with_values + #43, #0
static game_pixels_array_with_values + #44, #0
static game_pixels_array_with_values + #45, #0
static game_pixels_array_with_values + #46, #0
static game_pixels_array_with_values + #47, #0
static game_pixels_array_with_values + #48, #0
static game_pixels_array_with_values + #49, #0
static game_pixels_array_with_values + #50, #0
static game_pixels_array_with_values + #51, #0
static game_pixels_array_with_values + #52, #0
static game_pixels_array_with_values + #53, #0
static game_pixels_array_with_values + #54, #0
static game_pixels_array_with_values + #55, #0
static game_pixels_array_with_values + #56, #0
static game_pixels_array_with_values + #57, #0
static game_pixels_array_with_values + #58, #0
static game_pixels_array_with_values + #59, #0
static game_pixels_array_with_values + #60, #0
static game_pixels_array_with_values + #61, #0
static game_pixels_array_with_values + #62, #0
static game_pixels_array_with_values + #63, #0
static game_pixels_array_with_values + #64, #0
static game_pixels_array_with_values + #65, #0
static game_pixels_array_with_values + #66, #0
static game_pixels_array_with_values + #67, #0
static game_pixels_array_with_values + #68, #0
static game_pixels_array_with_values + #69, #0
static game_pixels_array_with_values + #70, #0
static game_pixels_array_with_values + #71, #0
static game_pixels_array_with_values + #72, #0
static game_pixels_array_with_values + #73, #0
static game_pixels_array_with_values + #74, #0
static game_pixels_array_with_values + #75, #0
static game_pixels_array_with_values + #76, #0
static game_pixels_array_with_values + #77, #0
static game_pixels_array_with_values + #78, #0
static game_pixels_array_with_values + #79, #0
static game_pixels_array_with_values + #80, #0
static game_pixels_array_with_values + #81, #0
static game_pixels_array_with_values + #82, #0
static game_pixels_array_with_values + #83, #0
static game_pixels_array_with_values + #84, #0
static game_pixels_array_with_values + #85, #0
static game_pixels_array_with_values + #86, #0
static game_pixels_array_with_values + #87, #0
static game_pixels_array_with_values + #88, #0
static game_pixels_array_with_values + #89, #0
static game_pixels_array_with_values + #90, #0
static game_pixels_array_with_values + #91, #0
static game_pixels_array_with_values + #92, #0
static game_pixels_array_with_values + #93, #0
static game_pixels_array_with_values + #94, #0
static game_pixels_array_with_values + #95, #0
static game_pixels_array_with_values + #96, #0
static game_pixels_array_with_values + #97, #0
static game_pixels_array_with_values + #98, #0
static game_pixels_array_with_values + #99, #0
static game_pixels_array_with_values + #100, #0
static game_pixels_array_with_values + #101, #0
static game_pixels_array_with_values + #102, #0
static game_pixels_array_with_values + #103, #0
static game_pixels_array_with_values + #104, #0
static game_pixels_array_with_values + #105, #0
static game_pixels_array_with_values + #106, #0
static game_pixels_array_with_values + #107, #0
static game_pixels_array_with_values + #108, #0
static game_pixels_array_with_values + #109, #0
static game_pixels_array_with_values + #110, #0
static game_pixels_array_with_values + #111, #0
static game_pixels_array_with_values + #112, #0
static game_pixels_array_with_values + #113, #0
static game_pixels_array_with_values + #114, #0
static game_pixels_array_with_values + #115, #0
static game_pixels_array_with_values + #116, #0
static game_pixels_array_with_values + #117, #0
static game_pixels_array_with_values + #118, #0
static game_pixels_array_with_values + #119, #0
static game_pixels_array_with_values + #120, #0
static game_pixels_array_with_values + #121, #0
static game_pixels_array_with_values + #122, #0
static game_pixels_array_with_values + #123, #0
static game_pixels_array_with_values + #124, #0
static game_pixels_array_with_values + #125, #0
static game_pixels_array_with_values + #126, #0
static game_pixels_array_with_values + #127, #0
static game_pixels_array_with_values + #128, #0
static game_pixels_array_with_values + #129, #0
static game_pixels_array_with_values + #130, #0
static game_pixels_array_with_values + #131, #0
static game_pixels_array_with_values + #132, #0
static game_pixels_array_with_values + #133, #0
static game_pixels_array_with_values + #134, #0
static game_pixels_array_with_values + #135, #0
static game_pixels_array_with_values + #136, #0
static game_pixels_array_with_values + #137, #0
static game_pixels_array_with_values + #138, #0
static game_pixels_array_with_values + #139, #0
static game_pixels_array_with_values + #140, #0
static game_pixels_array_with_values + #141, #0
static game_pixels_array_with_values + #142, #0
static game_pixels_array_with_values + #143, #0
static game_pixels_array_with_values + #144, #0
static game_pixels_array_with_values + #145, #0
static game_pixels_array_with_values + #146, #0
static game_pixels_array_with_values + #147, #0
static game_pixels_array_with_values + #148, #0
static game_pixels_array_with_values + #149, #0
static game_pixels_array_with_values + #150, #0
static game_pixels_array_with_values + #151, #0
static game_pixels_array_with_values + #152, #0
static game_pixels_array_with_values + #153, #0
static game_pixels_array_with_values + #154, #0
static game_pixels_array_with_values + #155, #0
static game_pixels_array_with_values + #156, #0
static game_pixels_array_with_values + #157, #0
static game_pixels_array_with_values + #158, #0
static game_pixels_array_with_values + #159, #0
static game_pixels_array_with_values + #160, #0
static game_pixels_array_with_values + #161, #0
static game_pixels_array_with_values + #162, #0
static game_pixels_array_with_values + #163, #0
static game_pixels_array_with_values + #164, #0
static game_pixels_array_with_values + #165, #0
static game_pixels_array_with_values + #166, #0
static game_pixels_array_with_values + #167, #0
static game_pixels_array_with_values + #168, #0
static game_pixels_array_with_values + #169, #0
static game_pixels_array_with_values + #170, #0
static game_pixels_array_with_values + #171, #0
static game_pixels_array_with_values + #172, #0
static game_pixels_array_with_values + #173, #0
static game_pixels_array_with_values + #174, #0
static game_pixels_array_with_values + #175, #0
static game_pixels_array_with_values + #176, #0
static game_pixels_array_with_values + #177, #0
static game_pixels_array_with_values + #178, #0
static game_pixels_array_with_values + #179, #0
static game_pixels_array_with_values + #180, #0
static game_pixels_array_with_values + #181, #0
static game_pixels_array_with_values + #182, #0
static game_pixels_array_with_values + #183, #0
static game_pixels_array_with_values + #184, #0
static game_pixels_array_with_values + #185, #0
static game_pixels_array_with_values + #186, #0
static game_pixels_array_with_values + #187, #0
static game_pixels_array_with_values + #188, #0
static game_pixels_array_with_values + #189, #0
static game_pixels_array_with_values + #190, #0
static game_pixels_array_with_values + #191, #0
static game_pixels_array_with_values + #192, #0
static game_pixels_array_with_values + #193, #0
static game_pixels_array_with_values + #194, #0
static game_pixels_array_with_values + #195, #0
static game_pixels_array_with_values + #196, #0
static game_pixels_array_with_values + #197, #0
static game_pixels_array_with_values + #198, #0
static game_pixels_array_with_values + #199, #0

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
