/**
* Name: whiterook
* Based on the internal empty template. 
* Author: Rinelfi
* Tags: 
*/


model whiterook
import '../pieces_abstractions/rook.gaml'
/* Insert your model definition here */

species WhiteRook parent: Rook {
	init {
		image_form <- image_file('../../includes/images/white_rook.png');
		side <- 'white';
	}
}