/**
* Name: whiteking
* Based on the internal empty template. 
* Author: Rinelfi
* Tags: 
*/


model whiteking
import '../pieces_abstractions/king.gaml'
/* Insert your model definition here */

species WhiteKing parent: King {
	init {
		image_form <- image_file('../../includes/images/white_king.png');
		side <- 'white';
	}
}