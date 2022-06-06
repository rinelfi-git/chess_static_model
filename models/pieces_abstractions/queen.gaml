/**
* Name: queen
* Based on the internal empty template. 
* Author: Rinelfi
* Tags: 
*/


model queen
import '../abstractions/long_roaded_piece.gaml'
/* Insert your model definition here */

species Queen parent: LongRoadedPiece {
	action compute_movement {
		is_clicked <- true;
		ask current_cell {
		// set color first
			status <- 1;
			do repaint;

			// check if there are possible roads
			list<Plan> possible_roads <- neighbors;
			loop possible_road over: possible_roads {
				ask myself {
					do compute_recursively from: myself to: possible_road;
				}

			}

		}

	}
}