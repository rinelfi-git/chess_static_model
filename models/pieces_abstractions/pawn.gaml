/**
* Name: pawn
* Based on the internal empty template. 
* Author: Rinelfi
* Tags: 
*/


model pawn
import '../abstractions/piece.gaml'
/* Insert your model definition here */
species Pawn parent: Piece {
	bool is_first_movement;
	init {
		is_first_movement <- true;
	}
	
	action move_to(Plan cell) {
		invoke move_to cell: cell;
		is_first_movement <- false;	
	}
	
	action compute_movement virtual: true;
}