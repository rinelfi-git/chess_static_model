/**
* Name: plan
* Based on the internal empty template. 
* Author: Rinelfi
* Tags: 
*/


model plan
import '../chess_model.gaml'
import '../abstractions/piece.gaml'
/* Insert your model definition here */

grid Plan width: 8 height: 8 neighbors: 8 {
	int status;
	Piece value;

	init {
		do repaint;
		status <- 0;
		value <- nil;
	}

	action repaint {
		if(status = 0) {
			color <- grid_y mod 2 = 0 ? (grid_x mod 2 = 0 ? light_cell_color : dark_cell_color) : (grid_x mod 2 = 0 ? dark_cell_color : light_cell_color);			
		} else if(status = 1) {
			color <- road_cell_color;
		}else {
			color <- target_cell_color;
		}
	}

}