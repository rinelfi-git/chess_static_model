/**
* Name: knight
* Based on the internal empty template. 
* Author: Rinelfi
* Tags: 
*/
model knight

import '../abstractions/piece.gaml'
/* Insert your model definition here */
species Knight parent: Piece {

	action compute_movement {
		is_clicked <- true;
		ask current_cell {
			list<Plan>
			possible_roads <- [Plan[grid_x - 1, grid_y - 2], Plan[grid_x + 1, grid_y - 2], Plan[grid_x - 1, grid_y + 2], Plan[grid_x + 1, grid_y + 2], Plan[grid_x - 2, grid_y - 1], Plan[grid_x + 2, grid_y - 1], Plan[grid_x - 2, grid_y + 1], Plan[grid_x + 2, grid_y + 1]]
			where (each != nil);
			write possible_roads;
			loop possible_road over: possible_roads {
				if (possible_road.value != nil) {
					if (possible_road.value.side = myself.side) {
						ask possible_road {
							status <- 0;
							do repaint;
						}

					} else if (possible_road.value.side != myself.side) {
						ask possible_road {
							status <- 2;
							do repaint;
						}

					}

				} else {
					ask possible_road {
						status <- 1;
						do repaint;
					}

				}

			}

		}

	}

}