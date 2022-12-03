; current tetromino
current_tetromino_pixels_array : var #8 ; 2 bytes per pixel, 4 pixels per tetromino
current_tetromino_color : var #1 ; this will be the color for all pixels in one tetromino
current_tetromino_prefab_adress : var #1 ; this will store the current prefab with rotation 0, that the tetromino is using
current_tetromino_rotation : var #1; this will save the current rotation

; next tetromino
next_tetromino_pixels_array : var #8
next_tetromino_color : var #1
next_tetromino_prefab_adress : var #1
next_tetromino_rotation : var #1

; tetromino next prefab
tetromino_next_prefab_index : var #1
static tetromino_next_prefab_index, #0