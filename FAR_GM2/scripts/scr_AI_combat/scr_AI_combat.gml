if instance_exists(obj_player)
{
	if (distance_to_object(obj_player) > combatRange)
	{
		currentState = AIStates.following;
	}

	if(obj_player.canTakeDamage == true)
	{
		dirRelativeToPlayer = point_direction(x,y, obj_player.x, obj_player.y);
		//instance_create(x,y,objAiCombatProjectile);
		
		scr_knockBack(obj_player, 5, dirRelativeToPlayer);
		obj_player.hp_Current -= dmg
		obj_player.canTakeDamage = false;
		obj_player.alarm[4] = obj_player.invincibleFrames;
	}
}
