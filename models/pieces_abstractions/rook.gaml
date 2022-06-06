/**
* Name: rook
* Based on the internal empty template. 
* Author: Rinelfi
* Tags: 
*/
model rook

import '../abstractions/long_roaded_piece.gaml'
import '../externals/plan.gaml'
/* Insert your model definition here */
species Rook parent: LongRoadedPiece {

	action compute_movement {
		is_clicked <- true;
		ask current_cell {
			list<Plan> possible_roads <- neighbors where (each.grid_x = grid_x and (each.grid_y = grid_y + 1 or each.grid_y = grid_y - 1) or each.grid_y = grid_y and
			(each.grid_x = grid_x + 1 or each.grid_x = grid_x - 1));
			loop possible_road over: possible_roads {
				ask myself {
					do compute_recursively from: myself to: possible_road;
				}

			}

		}

	}

}