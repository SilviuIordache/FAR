if (distance_to_object(obj_player) > combatRange)
{
	currentState = AIStates.following;
}

with (obj_player)
{
	if(canTakeDamage == true)
	{
	    hp_Current -= other.dmg
	    canTakeDamage = false;
	    alarm[4] = invincibleFrames;
	}
}
