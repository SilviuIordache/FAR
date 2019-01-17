script_execute(scr_AI_check_player_in_LOS());
script_execute(scr_AI_check_player_in_range());
script_execute(scr_AI_remember_last_player_pos());

if (instance_exists(obj_player))
{
	script_execute(scr_AI_init_grid());
	
	//compute path towards player
	if (player_is_in_LOS && player_is_in_range)
		mp_grid_path(AI_grid, path_smartAI, x, y, obj_player.x, obj_player.y, true);
	else
		path_smartAI = 0;
	
	if (path_exists(path_smartAI))
		script_execute(scr_AI_initialize_path())
	else
		currentState = AIStates.investigating;
}
else
	path_end();
	
script_execute(scr_AI_hop_animation());