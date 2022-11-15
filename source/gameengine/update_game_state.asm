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

#define SELECTED_TETROMINO r0
#define SELECTED_COLOR r1
#define SELECTED_ROTATION r2
#define GAME_TETROMINO_ADRESS r3

push r0
push r1
push r2
push r3

loadn SELECTED_TETROMINO, #1 ; '0' stands for "I tetromino"
loadn SELECTED_COLOR, #GREEN
loadn SELECTED_ROTATION, #0
loadn GAME_TETROMINO_ADRESS, #current_tetromino_pixels_array

call set_tetromino

push fr
push r0
push r1
push r2
push r3

#undef SELECTED_TETROMINO
#undef SELECTED_COLOR
#undef SELECTED_ROTATION
#undef GAME_TETROMINO_ADRESS
