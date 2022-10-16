; this function will multiply r1, r2, and put the result in r0
multiply:
push fr
push r1
push r2

multiply_loop:
add r0, r1, r1
dec r2
jz multiply_exit
jmp multiply_loop

multiply_exit:
pop r2
pop r1
pop fr
rts