; current tetromino
current_tetromino_pixels_array : var #8 ; 2 bytes per pixel, 4 pixels per tetromino
current_tetromino_color : var #1 ; this will be the color for all pixels in one tetromino
current_tetromino_prefab_adress : var #1 ; this will store the current prefab with rotation 0, that the tetromino is using
current_tetromino_rotation : var #1; this will save the current rotation

static current_tetromino_pixels_array + #0, #4 ; pivot pixel row position
static current_tetromino_pixels_array + #1, #4 ; pivot pixel column position

static current_tetromino_pixels_array + #2, #3 ; 1st pixel row position
static current_tetromino_pixels_array + #3, #4 ; 1st pixel column position

static current_tetromino_pixels_array + #4, #5 ; 2nd pixel row position
static current_tetromino_pixels_array + #5, #4 ; 2nd pixel column position

static current_tetromino_pixels_array + #6, #6 ; 3th pixel row position
static current_tetromino_pixels_array + #7, #4 ; 3th pixel column position

static current_tetromino_color, #GREEN

; next tetromino
next_tetromino_pixels_array : var #8
next_tetromino_color : var #1
next_tetromino_prefab_adress : var #1
next_tetromino_rotation : var #1