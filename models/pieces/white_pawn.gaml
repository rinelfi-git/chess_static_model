/**
* Name: whitepawn
* Based on the internal empty template. 
* Author: Rinelfi
* Tags: 
*/
model whitepawn

import '../pieces_abstractions/pawn.gaml'
/* Insert your model definition here */
species WhitePawn parent: Pawn {

	init {
		image_form <- image_file('../../includes/images/white_pawn.png');
		direction <- -1;
		side <- 'white';
	}

}