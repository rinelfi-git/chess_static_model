/**
* Name: pawn
* Based on the internal empty template. 
* Author: Rinelfi
* Tags: 
*/


model pawn
import '../abstractions/piece.gaml'
/* Insert your model definition here */
species Pawn parent: Piece {
	bool is_first_movement;
	int direction;
	init {
		is_first_movement <- true;
		direction <- 0;
	}
	
	action move_to(Plan cell) {
		invoke move_to cell: cell;
		is_first_movement <- false;	
	}
	
	action compute_movement{
		is_clicked <- true;
		ask current_cell {
		// set color first
			status <- 1;
			do repaint;

			// check if there are possible roads
			list<Plan> possible_roads <- [];
			list<Plan> possible_attacks <- Plan where (each.grid_y = grid_y + myself.direction * 1 and (each.grid_x = grid_x - 1 or each.grid_x = grid_x + 1) and each.value != nil);
			ask myself {
				if (is_first_movement) {
					possible_roads <- Plan where (each.value = nil and (each.grid_y = current_cell.grid_y + direction * 2 or each.grid_y = current_cell.grid_y + direction * 1) and each.grid_x = current_cell.grid_x);
				} else {
					possible_roads <- Plan where (each.value = nil and each.grid_y = current_cell.grid_y + direction * 1 and each.grid_x = current_cell.grid_x);
				}

			}
			
			loop possible_road over:possible_roads {
				if (possible_road.value != nil and possible_road.value.side = myself.side) {
					ask possible_road {
						status <- 0;
						do repaint;
					}

				} else {
					ask possible_road {
						status <- 1;
						do repaint;
					}

				}

			}

			loop possible_attack over: possible_attacks {
				if (possible_attack.value != nil and possible_attack.value.side = myself.side) {
					ask possible_attack {
						status <- 0;
						do repaint;
					}

				} else {
					ask possible_attack {
						status <- 2;
						do repaint;
					}

				}
			}

		}
	}
}