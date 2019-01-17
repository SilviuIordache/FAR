script_execute(scr_AI_check_player_in_LOS());
script_execute(scr_AI_check_player_in_range());

if (player_is_in_LOS && player_is_in_range)
	currentState = AIStates.following;
else if (instance_exists(obj_player))
{
	script_execute(scr_AI_init_grid());
	
	//compute a path towards the last known player pos
	mp_grid_path(AI_grid, path_smartAI, x, y, last_known_player_x, last_known_player_y, true); 
	
	//check if path towards player has been found
	if (path_exists(path_smartAI))
		script_execute(scr_AI_initialize_path())
	else
		currentState = AIStates.returning;
}