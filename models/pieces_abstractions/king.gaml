/**
* Name: king
* Based on the internal empty template. 
* Author: Rinelfi
* Tags: 
*/
model king

import '../abstractions/piece.gaml'
/* Insert your model definition here */
species King parent: Piece {

	action compute_movement {
		is_clicked <- true;
		ask current_cell {
		// set color first
			status <- 1;
			do repaint;

			// check if there are possible roads
			list<Plan> possible_roads <- neighbors;
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