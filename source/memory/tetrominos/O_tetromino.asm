; ... O tetromino

; rotation 0
; $#
; ##

I_rotation_0_pixels_array : var #8

static I_rotation_0_pixels_array + #0, #4 ; pivot pixel row position
static I_rotation_0_pixels_array + #1, #4 ; pivot pixel column position

static I_rotation_0_pixels_array + #2, #4 ; 1st pixel row position
static I_rotation_0_pixels_array + #3, #5 ; 1st pixel column position

static I_rotation_0_pixels_array + #4, #5 ; 2nd pixel row position
static I_rotation_0_pixels_array + #5, #5 ; 2nd pixel column position

static I_rotation_0_pixels_array + #6, #5 ; 3th pixel row position
static I_rotation_0_pixels_array + #7, #4 ; 3th pixel column position

; rotation 1 
; #$
; ##

I_rotation_1_pixels_array : var #8

static I_rotation_1_pixels_array + #0, #4 ; pivot pixel row position
static I_rotation_1_pixels_array + #1, #4 ; pivot pixel column position

static I_rotation_1_pixels_array + #2, #5 ; 1st pixel row position
static I_rotation_1_pixels_array + #3, #4 ; 1st pixel column position

static I_rotation_1_pixels_array + #4, #5 ; 2nd pixel row position
static I_rotation_1_pixels_array + #5, #3 ; 2nd pixel column position

static I_rotation_1_pixels_array + #6, #4 ; 3th pixel row position
static I_rotation_1_pixels_array + #7, #3 ; 3th pixel column position

; rotation 2
; ## 
; #$

I_rotation_2_pixels_array : var #8

static I_rotation_2_pixels_array + #0, #4 ; pivot pixel row position
static I_rotation_2_pixels_array + #1, #4 ; pivot pixel column position

static I_rotation_2_pixels_array + #2, #3 ; 1st pixel row position
static I_rotation_2_pixels_array + #3, #4 ; 1st pixel column position

static I_rotation_2_pixels_array + #4, #3 ; 2nd pixel row position
static I_rotation_2_pixels_array + #5, #3 ; 2nd pixel column position

static I_rotation_2_pixels_array + #6, #4 ; 3th pixel row position
static I_rotation_2_pixels_array + #7, #3 ; 3th pixel column position

; rotation 3
; ##
; $#

I_rotation_3_pixels_array : var #8

static I_rotation_3_pixels_array + #0, #4 ; pivot pixel row position
static I_rotation_3_pixels_array + #1, #4 ; pivot pixel column position

static I_rotation_3_pixels_array + #2, #3 ; 1st pixel row position
static I_rotation_3_pixels_array + #3, #4 ; 1st pixel column position

static I_rotation_3_pixels_array + #4, #3 ; 2nd pixel row position
static I_rotation_3_pixels_array + #5, #5 ; 2nd pixel column position

static I_rotation_3_pixels_array + #6, #4 ; 3th pixel row position
static I_rotation_3_pixels_array + #7, #5 ; 3th pixel column position

; end of O tetromino ...
