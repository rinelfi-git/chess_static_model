/**
* Name: bishop
* Based on the internal empty template. 
* Author: Rinelfi
* Tags: 
*/
model bishop

import '../abstractions/long_roaded_piece.gaml'
/* Insert your model definition here */
species Bishop parent: LongRoadedPiece {

	init {
		image_form <- image_file('../../includes/images/white_bishop.png');
	}

	action compute_movement {
		ask current_cell {
		// set color first
			status <- 1;
			do repaint;

			// check if there are possible roads
			list<Plan> possible_roads <- neighbors where (each.grid_x = grid_x - 1 and (each.grid_y = grid_y + 1 or each.grid_y = grid_y - 1) or each.grid_x = grid_x + 1 and
			(each.grid_y = grid_y + 1 or each.grid_y = grid_y - 1));
			loop possible_road over: possible_roads {
				ask myself {
					do compute_recursively from: myself to: possible_road;
				}

			}

		}

	}

}