#define DRAW_POSITION r0
#define STRING_ADRESS r1
#define STRING_COLOR r2
#define NUMBER_OF_COLUMNS r3
#define NUMBER_OF_CHARS_PER_STRING r4
#define MAX_NUMBER_OF_ROWS r5
#define CURRENT_ROW r6

push fr		; Protege o registrador de flags
push r0
push r1
push r2
push r3
push r4
push r5
push r6

loadn DRAW_POSITION, #0		; Posicao na tela onde a mensagem sera' escrita
loadn STRING_ADRESS, #title1		; Carrega r1 com o endereco do vetor que contem a mensagem
loadn STRING_COLOR, #GREEN		; Seleciona a COR da Mensagem
loadn NUMBER_OF_COLUMNS, #40       ; Numero de colunas por linha
loadn NUMBER_OF_CHARS_PER_STRING, #41 ; Numero de caracteres por linha
loadn MAX_NUMBER_OF_ROWS, #30       ; Numero de linhas total
loadn CURRENT_ROW, #0        ; Linha atual

game_title_loop:
    inc CURRENT_ROW
    
    call print_string   ;  r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso;  r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"
    
    cmp CURRENT_ROW, MAX_NUMBER_OF_ROWS           ; verifica se esta na linha final
    jeq game_title_exit
    
    add DRAW_POSITION, NUMBER_OF_COLUMNS, DRAW_POSITION
    add STRING_ADRESS, NUMBER_OF_CHARS_PER_STRING, STRING_ADRESS
    
    jmp game_title_loop

game_title_exit:
pop r6
pop r5
pop r4
pop r3
pop r2
pop r1
pop r0	
pop fr

#undef DRAW_POSITION
#undef STRING_ADRESS
#undef STRING_COLOR
#undef NUMBER_OF_COLUMNS
#undef MAX_NUMBER_OF_ROWS
#undef CURRENT_ROW