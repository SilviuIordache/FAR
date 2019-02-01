if (instance_exists(obj_player))
{
	// prevent player melt with 1 projectile
    if (dealtDamage == false) 
	{
        dealtDamage = true;
		finalDamage = obj_monster.rangedAttackDamage;
        finalDamage =  scr_Calculate_Damage (obj_player.rangedAttackDamage, 
											 obj_player.crit_Chance_Percent, 
											 obj_player.crit_Damage_Percent);
											 
        scr_createDamageNumber (finalDamage, obj_player.rangedAttackDamage);
    } 
    
	
	scr_knockBack(other, 5, direction);
	
    with (other) 
    {
        healthPointsCurrent -= other.finalDamage 
        if(healthPointsCurrent <= 0)
        {
            instance_destroy() 
        }
    }      
	
    instance_destroy(); 
}

