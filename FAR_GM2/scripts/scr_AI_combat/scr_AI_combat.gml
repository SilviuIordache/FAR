if instance_exists(obj_player)
{
	if (distance_to_object(obj_player) > combatRange)
	{
		currentState = AIStates.following;
	}

	if (obj_player.canTakeDamage)
	{
		dirRelativeToPlayer = point_direction(x, y, obj_player.x, obj_player.y);
		
		scrCreateProjectile(obj_bolt_monster, 3, 1, dirRelativeToPlayer);
		
		
		
		obj_player.hp_Current -= dmg
		obj_player.canTakeDamage = false;
		obj_player.alarm[4] = obj_player.invincibleFrames;
	}
}
