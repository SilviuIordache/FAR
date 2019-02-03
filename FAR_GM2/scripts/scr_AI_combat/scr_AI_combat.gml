scrAICheckPlayerRangeAndLos();
scrAiRememberLastPlayerPos();

if instance_exists(obj_player)
{
	
	if (!scrAICheckPlayerRangeAndLos())
	{
		currentState = AIStates.following;
	}
	
	/*
	if (!scrAiCheckPlayerInLos())
	{
		currentState = AIStates.investigating;
	}
	*/
	if (rangedAttackPossible)
	{
		rangedAttackPossible = false;
		alarm[1] = rangedAttackSpeed;
		dirRelativeToPlayer = point_direction(x, y, obj_player.x, obj_player.y);
		
		scrCreateProjectile(obj_bolt_monster, 
							rangedAttackProjectileSpeed, 
							rangedAttackDamage, 
							dirRelativeToPlayer);
	}
}
