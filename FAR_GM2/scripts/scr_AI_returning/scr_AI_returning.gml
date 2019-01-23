scr_AI_init_grid();


if (pathFindingStarted == false)
{
	pathFindingStarted = true;
	mp_grid_path(AI_grid, path_smartAI, x, y, x_origin, y_origin, true); 
	
	if (path_exists(path_smartAI))
	{
		pathFindingStarted = true;
		speed_current = speed_returning;
		path_start (path_smartAI, speed_current, path_action_stop, false) ;
	}
}

//path_get_name(0) == "path_smartAI" 

if ( path_position == 1)
{
	currentState = AIStates.neutral;
}

scr_AI_hop_animation();