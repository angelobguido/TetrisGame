#define CURRENT_ADRESS r0
#define NEXT_ADRESS r1
#define BUFFER r2
#define USER_TETROMINO_SIZE r3

; This function will copy all information
; from next to current tetromino
copy_next_to_current:

push fr
push r0
push r1
push r2
push r3

loadn CURRENT_ADRESS, #current_tetromino_pixels_array
loadn NEXT_ADRESS, #next_tetromino_pixels_array
loadn USER_TETROMINO_SIZE, #11

copy_next_to_current_loop:

loadi BUFFER, NEXT_ADRESS
storei CURRENT_ADRESS, BUFFER

inc CURRENT_ADRESS
inc NEXT_ADRESS

dec USER_TETROMINO_SIZE

jnz copy_next_to_current_loop

copy_next_to_current_end:

pop r3
pop r2
pop r1
pop r0
pop fr
rts