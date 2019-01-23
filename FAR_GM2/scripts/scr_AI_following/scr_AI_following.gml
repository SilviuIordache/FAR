scrAiRememberLastPlayerPos();

if (instance_exists(obj_player))
{
	if (scrAICheckPlayerRangeAndLos() && canPathFind == true)
	{
		canPathFind = false;
		alarm[0] = pathScanRefreshRate;
		
		lastPlayerPosInvestigated = false;

		scr_AI_init_grid();
		
		if (mp_grid_path(AI_grid, path_smartAI, x, y, last_known_player_x, last_known_player_y, true))
		{
			speed_current = speed_normal;
			path_start (path_smartAI, 
						speed_current, 
						path_action_stop, 
						false);
		}
	}
	//check if path end has been reached; 0 = path start, 1 = path end
	if (path_position == 1)
	{
		//alarm[1] = investigateTime;
		currentState = AIStates.returning;
	}	
}
else
{
	path_end();
	currentState = AIStates.neutral;
}	

if (lastPlayerPosInvestigated == true)
{
	///
}

scr_AI_hop_animation();