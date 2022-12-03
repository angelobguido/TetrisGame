#define SELECTED_TETROMINO r0
#define SELECTED_COLOR r1
#define SELECTED_ROTATION r2
#define GAME_TETROMINO_ADRESS r3
#define NUMBER_OF_PREFABS r4

;This function will reset the next tetromino
tetromino_reset:
push fr
push r0
push r1
push r2
push r3
push r4
push r5

loadn NUMBER_OF_PREFABS, #7

loadn SELECTED_TETROMINO, #tetromino_next_prefab_index ; '0' stands for "I tetromino"
loadi SELECTED_TETROMINO, SELECTED_TETROMINO
loadn SELECTED_COLOR, #RED
loadn SELECTED_ROTATION, #0
loadn GAME_TETROMINO_ADRESS, #next_tetromino_pixels_array

call set_tetromino

inc SELECTED_TETROMINO
mod SELECTED_TETROMINO, SELECTED_TETROMINO, NUMBER_OF_PREFABS
loadn r5, #tetromino_next_prefab_index
storei r5, SELECTED_TETROMINO

tetromino_reset_exit:
pop r5
pop r4
pop r3
pop r2
pop r1
pop r0
pop fr
rts

#undef SELECTED_TETROMINO
#undef SELECTED_COLOR
#undef SELECTED_ROTATION
#undef GAME_TETROMINO_ADRESS
#undef NUMBER_OF_PREFABS