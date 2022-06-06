/**
* Name: blackpawn
* Based on the internal empty template. 
* Author: Rinelfi
* Tags: 
*/
model blackpawn

import '../pieces_abstractions/pawn.gaml'
/* Insert your model definition here */
species BlackPawn parent: Pawn {

	init {
		image_form <- image_file('../../includes/images/black_pawn.png');
		direction <- 1;
		side <- 'black';
	}

}