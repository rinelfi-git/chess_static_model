/**
* Name: Piece
* Based on the internal empty template. 
* Author: Rinelfi
* Tags: 
*/
model piece

import '../chess_model.gaml'
import '../externals/plan.gaml'
/* Insert your model definition here */
species Piece {
	image_file image_form;
	string side;
	bool is_clicked;
	Plan current_cell;

	init {
		is_clicked <- false;
	}

	action move_to (Plan cell) {
		if(cell.value != nil and cell.value != self) {
			ask cell.value {
			write '' + myself + ' attacked ' + self;
				do die;
			} 
		}
		if (current_cell != nil) {
			ask current_cell {
				value <- nil;
			}

		}

		current_cell <- cell;
		location <- current_cell.location;
		ask current_cell {
			value <- myself;
		}
		ask Plan {
			status <- 0;
			do repaint;
		}
		is_clicked <- false;
	}

	action compute_movement virtual: true;

	action kill (Piece piece) {
		ask piece {
			do die;
		}

	}

	aspect default_aspect {
		draw image_form size: 8;
	}

}