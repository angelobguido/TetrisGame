# TetrisGame
 This is a university project for learning assembly language.

Objetivo:
 O objetivo deste projeto foi desenvolver um ambiente de desenvolvimento de códigos mais complexos em Assembly, utilizando de ferramentas como Makefile e o preprocessador de C, possibilitando a criação de um projeto com múltiplos arquivos.

Dependencias:
 Para o funcionamento do jogo é nescessário ter o Processador ICMC(https://github.com/simoesusp/Processador-ICMC)
 Caso todos os passos foram seguidos corretamente, os arquivos "montador" e "sim" serão criados.

Execução:
 É nescessário colocar os executáveis "montador" e "sim" dentro da raíz do projeto.
 Após tendo feito isso, basta executar o comando "make" no terminal. Assim o programa deve rodar normalmente.
 
Funcionamento:
 O jogo como um todo é rodado dentro do arquivo "main.asm". Neste são incluidos os códigos nescessários para o desenvolvimento do Tetris. Resumidamente, no arquivo main, temos a inclusão do arquivo "game_loop.asm", que é responsável por atualizar o estado do jogo e os gráficos dentro de um loop infinito. Desta forma, em cada iteração, o player tem a possibilidade de escolher uma ação, como ir para direita, ir para esquerda, ou rotacionar para o sentido horário, apertando respectivamente "d", "a" e "w". Após isso o jogo checa colisões com as paredes e depois move a peça atual para baixo. Como o Tetris ainda é incompleto, ao chegar no chão do jogo, a peça volta para o início com sua próxima forma.
 
Coisas úteis:
 Como esse projeto foi focado em desenvolver um ambiente bom para criação de projetos em Assembly, foi adotado uma série de padrões, como por exemplo, toda função criada deve possuir um comentário especificando o que ela faz e possíveis argumentos e retornos que ela possui. Além disso, tambem foram criados testes únitários simples para testar códigos específicos sem a nescessidade de mudar o código principal, para isso basta acessar a pasta "tests" e executar o comando make. O comando make ira executar o teste atual, para modificar qual é o teste que é preciso executar no momento, basta entrar dentro do arquivo Makefile dentro de "tests" e modificar o nome do arquivo desejado .asm na primeira variável, "CURRENT_TEST_ASM_FILE".

Link do vídeo de explicação: https://drive.google.com/file/d/1COmUYb05EI8eMb87py0zZo8dQ_C8ZmNp/view?usp=share_link
