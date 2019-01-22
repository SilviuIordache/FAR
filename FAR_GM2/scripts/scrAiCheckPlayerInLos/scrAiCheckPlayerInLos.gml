if (instance_exists(obj_player))
{
	if collision_line( x, y, obj_player.x, obj_player.y, obj_block, false, true )
		return false;
	else
		return true;
}

