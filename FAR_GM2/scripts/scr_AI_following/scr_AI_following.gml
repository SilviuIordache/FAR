scrHopAnimation();

isMoving = true;

if (instance_exists(obj_player))
{
	if (scrAICheckPlayerRangeAndLos() && canPathFind == true)
	{
		scrAiRememberLastPlayerPos();
		canPathFind = false;
		alarm[0] = pathScanRefreshRate;
		
		scr_AI_init_grid();
		
		if (mp_grid_path(AI_grid, path_smartAI, x, y, last_known_player_x, last_known_player_y, true))
		{
			speed_current = speed_normal;
			path_start (path_smartAI, speed_current, path_action_stop, false);
		}
	}
	//check if path end has been reached; 0 = path start, 1 = path end
	else if (path_position == 1)
	{
		currentState = AIStates.investigating;
	}
}
else
{
	path_end();
	currentState = AIStates.neutral;
}	

if (scrAICheckPlayerInCombatRange())
{
	path_end();
	currentState = AIStates.combat;
}