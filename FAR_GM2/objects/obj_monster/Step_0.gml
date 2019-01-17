switch (currentState)
{
	case AIStates.neutral:
		script_execute(scr_AI_neutral);
		break;
	case AIStates.suspicious:
		script_execute(scr_AI_suspicious);
		break;
	case AIStates.following:
		script_execute(scr_AI_following);
		break;
	case AIStates.investigating:
		script_execute(scr_AI_investigating())
		break;
	case AIStates.returning:
		script_execute(scr_AI_returning())
		break;
	case AIStates.combat:
		break;
	case AIStates.dead:
		break;
}

/*
//Check if the player is in the line of sight
if collision_line( x, y, obj_player.x, obj_player.y, obj_block, false, true )
	player_is_in_LOS = false
else
	player_is_in_LOS = true
*/

/*
//Player in range logic check
if (distance_to_object(obj_player) <= aggroRadius)
	player_is_in_range = true
else
	player_is_in_range = false
*/

/*
//Suspicion logic check
if (player_is_in_LOS && player_is_in_range)
{
	if (suspicion_level < suspicion_max)
		suspicion_level += suspicion_gain_rate
}
else if (suspicion_level > 0)
		suspicion_level -= suspicion_gain_rate
*/

/*
//record the player x & y as long as he in in LOS and within range
if (suspicion_level == suspicion_max && player_is_in_range)
{
	last_known_player_x = obj_player.x
	last_known_player_y = obj_player.y
}
*/

/*
//return to origin if player is no longer in LOS
if (suspicion_level == 0 && player_is_in_LOS == false  && pathFindingStartedHOME == false)
{
	mp_grid_clear_all(AI_grid); 
	mp_grid_add_instances(AI_grid, obj_block, true); 
	mp_grid_path(AI_grid, path_AI_return_home, x, y, x_origin, y_origin, true); 
	
	if (path_exists(path_AI_return_home))
	{
		pathFindingStartedHOME = true
		speed_current = speed_normal
		path_start(path_AI_return_home, speed_current, path_action_stop, 1) 
	}
	
	if (x_origin == x && y_origin == y)
		pathFindingStartedHOME = true
}
*/

/*
//if there is a player and no pathfinding has started yet
if (instance_exists(obj_player) && pathFindingStarted == false && suspicion_level == suspicion_max && player_is_in_range)
{
	//clears the pathfinding GRID (grid is created in obj_system Create event)
	mp_grid_clear_all(AI_grid); 
	
	//adds obj_block objects as obstacles;
	mp_grid_add_instances(AI_grid, obj_block, true); 
	
	//compute a path on the created GRID towards the last known player position
	mp_grid_path(AI_grid, path_smartAI, x, y, last_known_player_x, last_known_player_y, true); 
	
	//check if a path has been found
	if (path_exists(path_smartAI))
	{
		speed_current = speed_normal
		pathFindingStarted = true;
		if (player_is_in_LOS)
			alarm[0] = AI_path_scan_refresh_rate;
		
		//start moving on the previously created path with set speed
		path_start(path_smartAI, speed_current, path_action_stop, 1) 
		
	}
}
*/

/*
//check if player is out of range
if (distance_to_object(obj_player) > aggroRadius ) 
{
	pathFindingStarted = false
	path_speed = 0
	path_end();
}
*/

/*
//IF THE PLAYER DIED, STOP PATHFINDING
if (!instance_exists(obj_player))
	path_end();
*/

/*
///MOVING STATE
if (path_position == 1)
	isMoving = 0
else if (path_position == 0 && pathFindingStarted)
	isMoving = 1


///HOP VAR - Make the object hop only when moving
if (isMoving == true)
    hopVar = sin (get_timer() / 50000)
else
    hopVar = 0;

///DIRECTION FACING
if(direction > 90 && direction < 270) 
	directionFacing = -1
else directionFacing = 1

*/