/**
* Name: longroadedpiece
* Based on the internal empty template. 
* Author: Rinelfi
* Tags: 
*/
model longroadedpiece

import 'piece.gaml'
/* Insert your model definition here */
species LongRoadedPiece parent: Piece {
	action compute_movement virtual: true;
	action compute_recursively (Plan from, Plan to) {
		if (to != nil) {
			if (to.value = nil) {
				if (from.grid_x < to.grid_x) {
				// going left
					if (from.grid_y < to.grid_y) {
					// then down
						do compute_recursively from: to to: Plan[to.grid_x + 1, to.grid_y + 1];
					} else if (from.grid_y = to.grid_y) {
					// then forward
						do compute_recursively from: to to: Plan[to.grid_x + 1, to.grid_y];
					} else {
					// then up
						do compute_recursively from: to to: Plan[to.grid_x + 1, to.grid_y - 1];
					}

				} else if (from.grid_x = to.grid_x) {
				// stay
					if (from.grid_y < to.grid_y) {
					// going down
						do compute_recursively from: to to: Plan[to.grid_x, to.grid_y + 1];
					} else {
					// going up
						do compute_recursively from: to to: Plan[to.grid_x, to.grid_y - 1];
					}

				} else {
				// going right
					if (from.grid_y < to.grid_y) {
						do compute_recursively from: to to: Plan[to.grid_x - 1, to.grid_y + 1];
						// going down
					} else if (from.grid_y = to.grid_y) {
					// going forward
						do compute_recursively from: to to: Plan[to.grid_x - 1, to.grid_y];
					} else {
					// going up
						do compute_recursively from: to to: Plan[to.grid_x - 1, to.grid_y - 1];
					}

				}

				ask to {
					status <- 1;
					do repaint;
				}

			} else if(to.value.side = self.side) {
				ask to {
					status <- 0;
					do repaint;
				}
			} else if(to.value.side != self.side){
				ask to {
					status <- 2;
					do repaint;
				}

			}

		}

	}

}