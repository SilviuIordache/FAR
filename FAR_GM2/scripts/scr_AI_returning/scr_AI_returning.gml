scr_AI_init_grid();

if (pathFindingStartedHOME == false)
{
	pathFindingStartedHOME = true;
	if (mp_grid_path(AI_grid, path_smartAI, x, y, x_origin, y_origin, true))
	{
		speed_current = speed_returning;
		path_start (path_smartAI, speed_current, path_action_stop, false);
	}
}

if (path_position == 1)
{
	currentState = AIStates.neutral;
}

scr_AI_hop_animation();