/**
* Name: blackpawn
* Based on the internal empty template. 
* Author: Rinelfi
* Tags: 
*/


model blackpawn
import '../pieces_abstractions/pawn.gaml'
/* Insert your model definition here */

species BlackPawn parent: Pawn {
	init {
		image_form <- image_file('../../includes/images/black_pawn.png');
		side <- 'black';
	}
	
	action compute_movement {
		is_clicked <- true;
		ask current_cell {
			list<Plan> possible_roads <- [];
			list<Plan> possible_attacks <- Plan where (each.grid_y = grid_y + 1 and (each.grid_x = grid_x - 1 or each.grid_x = grid_x + 1) and each.value != nil);
			ask myself {
				if (is_first_movement) {
					possible_roads <- Plan where ((each.grid_y = current_cell.grid_y + 2 or each.grid_y = current_cell.grid_y + 1) and each.grid_x = current_cell.grid_x);
				} else {
					possible_roads <- Plan where (each.grid_y = current_cell.grid_y + 1 and each.grid_x = current_cell.grid_x);
				}

			}
			
			write 'possible roads : ' + possible_roads;
			write 'possible attacks : ' + possible_attacks;
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