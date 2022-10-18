#define CURRENT_POSITION_IN_SCREEN r0
#define SPACE_CHAR r1

;This function will put ' ' in all screen
clear_screen:

push fr
push r0
push r1

loadn CURRENT_POSITION_IN_SCREEN, #1199
loadn SPACE_CHAR, #' '

clear_screen_loop:

outchar SPACE_CHAR, CURRENT_POSITION_IN_SCREEN

dec CURRENT_POSITION_IN_SCREEN
jnz clear_screen_loop

clear_screen_exit:

pop r1
pop r0
pop fr
rts

#undef CURRENT_POSITION_IN_SCREEN
#undef SPACE_CHAR