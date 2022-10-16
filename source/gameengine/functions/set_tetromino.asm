#define SELECTED_TETROMINO r0
#define SELECTED_COLOR r1
#define SELECTED_ROTATION r2
#define GAME_TETROMINO_ADRESS r3
#define FIRST_TETROMINO_ADRESS r4
#define PIXEL_ARRAY_SIZE r5
#define TETROMINO_SIZE r6
#define CHOSEN_TETROMINO_ADRESS r7

; This function will set the game tetromino state.
; The arguments are r0, r1, r2, r3:
; selecting the tetromino, the color, the rotation, 
; and the memory adress of the tetromino you want
; to change.
set_tetromino:

push fr
push r0
push r1
push r2
push r3
push r4
push r5
push r6
push r7

loadn FIRST_TETROMINO_ADRESS, #I_rotation_0_pixels_array
loadn TETROMINO_SIZE, #32
loadn PIXEL_ARRAY_SIZE, #8

;getting the memory adress of the prefab selected and rotation

push SELECTED_ROTATION ; saving the rotation value for later

mult CHOSEN_TETROMINO_ADRESS, SELECTED_TETROMINO, TETROMINO_SIZE
add CHOSEN_TETROMINO_ADRESS, FIRST_TETROMINO_ADRESS, CHOSEN_TETROMINO_ADRESS 

push CHOSEN_TETROMINO_ADRESS ; saving the prefab adress with rotation zero, to store in game tetromino

mult SELECTED_ROTATION, SELECTED_ROTATION, PIXEL_ARRAY_SIZE
add CHOSEN_TETROMINO_ADRESS, SELECTED_ROTATION, CHOSEN_TETROMINO_ADRESS

set_tetromino_loop:

storei GAME_TETROMINO_ADRESS, CHOSEN_TETROMINO_ADRESS

inc GAME_TETROMINO_ADRESS
inc CHOSEN_TETROMINO_ADRESS

dec PIXEL_ARRAY_SIZE
jz set_tetromino_exit

jmp set_tetromino_loop

set_tetromino_exit:

; storing the color
storei GAME_TETROMINO_ADRESS, SELECTED_COLOR
inc GAME_TETROMINO_ADRESS

; storing the prefab adress
pop CHOSEN_TETROMINO_ADRESS
storei GAME_TETROMINO_ADRESS, CHOSEN_TETROMINO_ADRESS
inc GAME_TETROMINO_ADRESS

; storing the rotation
pop SELECTED_ROTATION
storei GAME_TETROMINO_ADRESS, SELECTED_ROTATION

pop r7
pop r6
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
#undef FIRST_TETROMINO_ADRESS
#undef PIXEL_ARRAY_SIZE
#undef TETROMINO_SIZE
#undef CHOSEN_TETROMINO_ADRESS