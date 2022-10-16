#define SELECTED_TETROMINO r0
#define SELECTED_COLOR r1
#define SELECTED_ROTATION r2
#define GAME_TETROMINO_ADRESS r3

push r0
push r1
push r2
push r3

loadn SELECTED_TETROMINO, #0 ; '0' stands for "I tetromino"
loadn SELECTED_COLOR, #RED
loadn SELECTED_ROTATION, #0
loadn GAME_TETROMINO_ADRESS, #current_tetromino_pixels_array



pop r3
pop r2
pop r1
pop r0

#undef SELECTED_TETROMINO
#undef SELECTED_COLOR
#undef SELECTED_ROTATION
#undef GAME_TETROMINO_ADRESS