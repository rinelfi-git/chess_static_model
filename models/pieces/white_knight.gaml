/**
* Name: whiteknight
* Based on the internal empty template. 
* Author: Rinelfi
* Tags: 
*/


model whiteknight
import '../pieces_abstractions/knight.gaml'
/* Insert your model definition here */

species WhiteKnight parent: Knight {
	init {
		image_form <- image_file('../../includes/images/white_knight.png');
		side <- 'white';
	}
}