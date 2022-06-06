/**
* Name: whitequeen
* Based on the internal empty template. 
* Author: Rinelfi
* Tags: 
*/


model blackqueen
import '../pieces_abstractions/queen.gaml'
/* Insert your model definition here */

species BlackQueen parent: Queen {
	init {
		image_form <- image_file('../../includes/images/black_queen.png');
		side <- 'black';
	}
}