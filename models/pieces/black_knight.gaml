/**
* Name: whiteknight
* Based on the internal empty template. 
* Author: Rinelfi
* Tags: 
*/


model blackknight
import '../pieces_abstractions/knight.gaml'
/* Insert your model definition here */

species BlackKnight parent: Knight {
	init {
		image_form <- image_file('../../includes/images/black_knight.png');
		side <- 'black';
	}
}