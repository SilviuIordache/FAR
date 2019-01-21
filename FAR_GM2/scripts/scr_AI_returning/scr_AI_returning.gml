scr_AI_init_grid();

mp_grid_path(AI_grid, path_AI_return_home, x, y, x_origin, y_origin, true); 
	
if (path_exists(path_AI_return_home))
{
	pathFindingStartedHOME = true
	speed_current = speed_normal
	path_start(path_AI_return_home, speed_current, path_action_stop, 1) 
}
	
if (x_origin == x && y_origin == y)
{
	pathFindingStartedHOME = true
}


scr_AI_hop_animation();