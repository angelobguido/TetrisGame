push r0

loadn r0, #current_tetromino_pixels_array

call clear_tetromino

call copy_next_to_current

call draw_tetromino

pop r0