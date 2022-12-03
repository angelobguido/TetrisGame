#define RIGHT_BUTTON r0
#define LEFT_BUTTON r1
#define ROTATE_BUTTON r2
#define CURRENT_BUTTON r3

;This procedure will get an input from the player and execute the command

push fr
push r0
push r1
push r2
push r3

loadn RIGHT_BUTTON, #'d'
loadn LEFT_BUTTON, #'a'
loadn ROTATE_BUTTON, #'w'

inchar CURRENT_BUTTON

cmp RIGHT_BUTTON, CURRENT_BUTTON
jeq get_move_input_right

cmp LEFT_BUTTON, CURRENT_BUTTON
jeq get_move_input_left

cmp ROTATE_BUTTON, CURRENT_BUTTON
jeq get_move_input_rotate

jmp get_move_input_exit


get_move_input_right:
call tetromino_go_right
jmp get_move_input_exit

get_move_input_left:
call tetromino_go_left
jmp get_move_input_exit

get_move_input_rotate:
call tetromino_go_rotate
jmp get_move_input_exit


get_move_input_exit:
pop r3
pop r2
pop r1
pop r0
pop fr

#undef CURRENT_BUTTON
#undef RIGHT_BUTTON
#undef LEFT_BUTTON
#undef ROTATE_BUTTON