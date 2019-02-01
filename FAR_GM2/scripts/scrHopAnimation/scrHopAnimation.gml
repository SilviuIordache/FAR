///HOP VAR - Make the object hop only when moving
if (isMoving)
{
    hopVar = sin (get_timer() / 50000)
}
else
{
    hopVar = 0;
}

///DIRECTION FACING
if(direction > 90 && direction < 270)
{
	directionFacing = -1;
}
else 
{
	directionFacing = 1;
}