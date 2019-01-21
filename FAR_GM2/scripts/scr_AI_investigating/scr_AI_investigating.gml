if (scrAICheckPlayerRangeAndLos())
{
	currentState = AIStates.following;
}
	
else if (instance_exists(obj_player))
{
	scr_AI_init_grid();
	
	//compute a path towards the last known player pos
	mp_grid_path(AI_grid, path_smartAI, x, y, last_known_player_x, last_known_player_y, true); 
	
	//check if path towards player has been found
	if (path_exists(path_smartAI))
	{
		speed_current = speed_normal;
		path_start(path_smartAI, speed_current, path_action_stop, 1)
	}
	else
	{
		currentState = AIStates.returning;
	}
}