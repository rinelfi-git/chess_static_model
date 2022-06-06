/**
* Name: whiterook
* Based on the internal empty template. 
* Author: Rinelfi
* Tags: 
*/


model blackrook
import '../pieces_abstractions/rook.gaml'
/* Insert your model definition here */

species BlackRook parent: Rook {
	init {
		image_form <- image_file('../../includes/images/black_rook.png');
		side <- 'black';
	}
}