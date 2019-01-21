scrAiRememberLastPlayerPos();

if (instance_exists(obj_player))
{
	if (scrAICheckPlayerRangeAndLos())
	{
		scr_AI_init_grid();
		if (mp_grid_path(AI_grid, path_smartAI, x, y, last_known_player_x, last_known_player_y, true))
			scr_AI_initialize_path();
	}
	else
	{
		currentState = AIStates.returning
	}
		
}
else
{
	path_end();
	currentState = AIStates.neutral;
}	
scr_AI_hop_animation();