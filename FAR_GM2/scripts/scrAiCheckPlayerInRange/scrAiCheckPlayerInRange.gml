if (instance_exists(obj_player))
{
	if (distance_to_object(obj_player) <= aggroRadius)
		return true
	else
		return false
}