//clears the pathfinding GRID (grid is created in obj_system Create event)
mp_grid_clear_all(AI_grid); 
	
//adds obj_block objects as obstacles;
mp_grid_add_instances(AI_grid, obj_block, true); 