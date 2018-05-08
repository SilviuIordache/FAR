//Check if the player is in the line of sight-
if collision_line( x, y, obj_player.x, obj_player.y, obj_block, false, true )
	player_is_in_LOS = false
else
	player_is_in_LOS = true


//record the player x & y as long as he in in LOS
if (player_is_in_LOS == true)
{
	last_known_player_x = obj_player.x
	last_known_player_y = obj_player.y
}


//if there is a player and no pathfinding has started yet
if (instance_exists(obj_player) && pathFindingStarted == false && player_is_in_LOS)
{
	mp_grid_clear_all(AI_grid);       //creates a GRID
	mp_grid_add_instances(AI_grid, obj_block, false); //adds obj_block objects as obstacles;
	mp_grid_path(AI_grid, path_smartAI, x, y, obj_player.x, obj_player.y, true);  //compute a path on the created GRID towards the player position
	
	
	if (path_exists(path_smartAI))
	{
		speed_current = speed_normal
		pathFindingStarted = true;
		alarm[0] = AI_path_scan_refresh_rate;
		path_start(path_smartAI, speed_current, 0, 1) //start moving on the previously created path with set speed
	}
}

//check if player is out of range
if (player_is_in_LOS == false || distance_to_object(obj_player) > aggroRadius ) 
{
	pathFindingStarted = false
	path_speed = 0
	path_end();
}

		
//IF THE PLAYER DIED, STOP PATHFINDING
if (!instance_exists(obj_player))
{
	path_end();
}

///MOVE STATE
if (path_speed > 0)
    isMoving = 1
else
    isMoving = 0

///HOP VAR
/// Make the object hop only when moving
if (isMoving == true)
    hopVar = sin (get_timer() / 50000)
else
    hopVar = 0;

///DIRECTION FACING
if(direction > 90 && direction < 270)
    directionFacing = -1
else
    directionFacing = 1

/// @description PATHFINDING
//CHECK TO SEE IF THE PLAYER IS ALIVE AND A PATHFIND HASN'T ALREADY STARTED
/*
if (instance_exists(obj_player) && pathFindingStarted == false && distance_to_object(obj_player) < aggroRadius )
{
    mp_grid_clear_all(AI_grid);       //creates a GRID
    mp_grid_add_instances(AI_grid, obj_block, false); //adds obj_block objects as obstacles;
    mp_grid_path(AI_grid, path_smartAI, x, y, obj_player.x, obj_player.y, true);  //compute a path on the created GRID towards the player position 
    if (path_exists(path_smartAI))
    {
        if (isCharger == true && distance_to_object(obj_player) < chargeRadius)
        {
           if (canCharge == true)
           {
               speed_current = speed_charge
               canCharge = false
               alarm[2]  = stunTimeAfterCharge
           }
           else
           {
               speed_current = speed_stun
           }
        }
        else
           speed_current = speed_normal
        pathFindingStarted = true;
        alarm[0] = AI_path_scan_refresh_rate;
        path_start(path_smartAI, speed_current, 0, 1) //start moving on the previously created path
    }
}
else if ( distance_to_object(obj_player) > aggroRadius)
{   
    path_speed = 0
    path_end();
}
*/