; all tetrominos have 4 pixels
; the position will always be in (row, column) order
; every pixel will store a position(2 bytes)
; because there is no negative number, all pivot position will start at (4,4)
; the larger the row, the lower the pixel
; the rotation number order will be in clockwise
; the game memory will hold the game pixels 
; for every row destroyed, the values of that row will becocome 0 {need to think more}
; the map will be 20 x 10 pixels, with colors(color 0 is empty)
; some functions may use the last 3 registers as input and output, so keep in mind

;---Tetris---;
;
;main:
;
;   Set parameters...
;
;   InitialScreen:
;       Call PrintInitialScreen
;       Call GetStart  --> This function will loop until start button is pressed
;   GameLoop:
;       Call UpdateGame --> This function will select the new tetromino if is needed, or just move the tetromino
;       Call PrintGameState
;       cmp Exit
;       jne GameLoop
;   jmp InitialScreen
;   halt
;
;PrintInitialScreen:
;   Do some magic... --> Remember to print current tetromino in map, only if not in ChooseNewTetrominoState
;   rts
;
;GetStart:
;   GetStart_GetButton:
;       inchar...
;       cmp CurrentChar StartButton
;       jne GetStart_GetButton
;   rts
;
;UpdateGame:
;   cmp CurrentState ChooseNewTetrominoState --> Will verify if a new tetronimo need to be chosen
;   ceq UpdateGame_ChooseNewTetromino
;   
;   save current tetromino position and rotation
;   see input control (Rotation or go to sides) and save new position
;   
;   this block can be a function later
;   {
;   verify collisions with walls
;   cmp CollisionState CollidedWithWalls
;   jeq UpdateGame_InvalidMovement --> This will return the position to the old one
;
;   verify collisions with pixel map
;   cmp CollisionState CollidedWithPixelMap
;   jep UpdateGame_InvalidMovement
;   }
;
;   UpdateGame_InvalidMovement:
;       jne UpdateGame_InvalidMovement_End --> If none of the invalid collisions happend, go to move tetromino 
;       return the position to the old one
;   UpdateGame_InvalidMovement_End:
;   
;   move tetromino down --> will move the next position down
;   
;   verify collisions with border  
;   cmp CollisionState CollidedWithBorder
;   jeq UpdateGame_FixTetromino
;
;   UpdateGame_FixTetromino:
;       jne UpdateGame_FixTetromino_End
;       return the position to the old one
;       update pixel map with new tetromino
;       change state to ChooseNewTetrominoState
;   UpdateGame_FixTetromino_End:
;
;   rts
;
;