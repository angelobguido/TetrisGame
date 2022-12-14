#define GAME_TETROMINO_ADRESS r0
#define TETROMINO_ROTATION r1
#define TETROMINO_ROTATION_ADRESS r2
#define MAX_TETROMINO_ROTATION r3
#define PIXEL_ARRAY_SIZE r4
#define PREFAB_TETROMINO_ADRESS r5
#define CURRENT_PIXEL_POSITION r6

; This function will rotate positive the game tetromino.
; The arguments is r0:
; the memory adress of the tetromino you want
; to rotate positive(clockwise).
rotate_tetromino:

push fr
push r0
push r1
push r2
push r3
push r4
push r5
push r6
push r7


loadn PIXEL_ARRAY_SIZE, #8
loadn MAX_TETROMINO_ROTATION, #3

; getting prefab and rotation
push PIXEL_ARRAY_SIZE ;saving pixel array size for later

inc PIXEL_ARRAY_SIZE
add PREFAB_TETROMINO_ADRESS, PIXEL_ARRAY_SIZE, GAME_TETROMINO_ADRESS
loadi PREFAB_TETROMINO_ADRESS, PREFAB_TETROMINO_ADRESS ; getting the adress of the prefab

inc PIXEL_ARRAY_SIZE
add TETROMINO_ROTATION_ADRESS, PIXEL_ARRAY_SIZE, GAME_TETROMINO_ADRESS ; getting the tetromino rotation adress
loadi TETROMINO_ROTATION, TETROMINO_ROTATION_ADRESS ; getting the tetromino rotation number

pop PIXEL_ARRAY_SIZE
; end getting prefab and rotation

; getting pivot position to change position later
push GAME_TETROMINO_ADRESS ;saving adress for the change position function call
#define ROW_PIVOT_POSITION r6
#define COLUMN_PIVOT_POSITION r7
loadi ROW_PIVOT_POSITION, GAME_TETROMINO_ADRESS
inc GAME_TETROMINO_ADRESS
loadi COLUMN_PIVOT_POSITION, GAME_TETROMINO_ADRESS
dec GAME_TETROMINO_ADRESS
push ROW_PIVOT_POSITION ; saving r6, because it is used when getting the pixels from prefab
; end getting pivot position

cmp TETROMINO_ROTATION, MAX_TETROMINO_ROTATION
jeq rotate_tetromino_zero

jmp rotate_tetromino_nonzero

rotate_tetromino_loop:

loadi CURRENT_PIXEL_POSITION, PREFAB_TETROMINO_ADRESS
storei GAME_TETROMINO_ADRESS, CURRENT_PIXEL_POSITION

inc PREFAB_TETROMINO_ADRESS
inc GAME_TETROMINO_ADRESS

dec PIXEL_ARRAY_SIZE
jnz rotate_tetromino_loop

rotate_tetromino_exit:

pop ROW_PIVOT_POSITION
pop GAME_TETROMINO_ADRESS

mov r0, GAME_TETROMINO_ADRESS
mov r1, ROW_PIVOT_POSITION
mov r2, COLUMN_PIVOT_POSITION

call change_tetromino_position

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

rotate_tetromino_zero:
loadn TETROMINO_ROTATION, #0
storei TETROMINO_ROTATION_ADRESS, TETROMINO_ROTATION
jmp rotate_tetromino_loop

rotate_tetromino_nonzero:
inc TETROMINO_ROTATION
storei TETROMINO_ROTATION_ADRESS, TETROMINO_ROTATION

; getting the adress of rotated tetromino
mul TETROMINO_ROTATION, TETROMINO_ROTATION, PIXEL_ARRAY_SIZE
add PREFAB_TETROMINO_ADRESS, PREFAB_TETROMINO_ADRESS, TETROMINO_ROTATION
; end getting the adress

jmp rotate_tetromino_loop

#undef GAME_TETROMINO_ADRESS
#undef TETROMINO_ROTATION
#undef TETROMINO_ROTATION_ADRESS
#undef MAX_TETROMINO_ROTATION
#undef PIXEL_ARRAY_SIZE
#undef PREFAB_TETROMINO_ADRESS
#undef CURRENT_PIXEL_POSITION
#undef ROW_PIVOT_POSITION
#undef COLUMN_PIVOT_POSITION