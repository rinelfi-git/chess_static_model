/**
* Name: blackking
* Based on the internal empty template. 
* Author: Rinelfi
* Tags: 
*/


model blackking
import '../pieces_abstractions/king.gaml'
/* Insert your model definition here */

species BlackKing parent: King {
	init {
		image_form <- image_file('../../includes/images/black_king.png');
		side <- 'black';
	}
}