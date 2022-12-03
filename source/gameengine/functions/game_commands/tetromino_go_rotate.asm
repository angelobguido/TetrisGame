
;This function will rotate the next tetromino clockwise
tetromino_go_rotate:
push r0

loadn r0, #next_tetromino_pixels_array

call rotate_tetromino

pop r0
rts