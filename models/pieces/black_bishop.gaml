/**
* Name: whitebishop
* Based on the internal empty template. 
* Author: Rinelfi
* Tags: 
*/


model blackbishop
import '../pieces_abstractions/bishop.gaml'
/* Insert your model definition here */

species BlackBishop parent: Bishop {
	init {
		image_form <- image_file('../../includes/images/black_bishop.png');
		side <- 'black';
	}
}