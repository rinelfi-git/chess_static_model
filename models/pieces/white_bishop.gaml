/**
* Name: whitebishop
* Based on the internal empty template. 
* Author: Rinelfi
* Tags: 
*/


model whitebishop
import '../pieces_abstractions/bishop.gaml'
/* Insert your model definition here */

species WhiteBishop parent: Bishop {
	init {
		image_form <- image_file('../../includes/images/white_bishop.png');
		side <- 'white';
	}
}