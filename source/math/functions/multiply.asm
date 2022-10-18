; this function will multiply r1, r2
;, and put the result in r0
multiply:
push fr
push r1
push r2

loadn r0, #0

cmp r2, r0 ;if r2 is zero
jeq multiply_exit

multiply_loop:
add r0, r1, r0
dec r2
jnz multiply_loop

multiply_exit:
pop r2
pop r1
pop fr
rts