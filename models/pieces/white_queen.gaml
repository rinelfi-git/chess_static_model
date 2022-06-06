/**
* Name: whitequeen
* Based on the internal empty template. 
* Author: Rinelfi
* Tags: 
*/


model whitequeen
import '../pieces_abstractions/queen.gaml'
/* Insert your model definition here */

species WhiteQueen parent: Queen {
	init {
		image_form <- image_file('../../includes/images/white_queen.png');
		side <- 'white';
	}
}