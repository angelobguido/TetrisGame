#define VALUE_NEEDED r0
#define VALUE_GOT r1

;This function will wait until the value in r0 is got from the keyboard
wait_press_key:

push fr
push r0
push r1

wait_press_key_loop:

inchar VALUE_GOT

cmp VALUE_GOT, VALUE_NEEDED
jeq wait_press_key_exit

jmp wait_press_key_loop

wait_press_key_exit:

pop r1
pop r0
pop fr
rts

#undef VALUE_NEEDED
#undef VALUE_GOT