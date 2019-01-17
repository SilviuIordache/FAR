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