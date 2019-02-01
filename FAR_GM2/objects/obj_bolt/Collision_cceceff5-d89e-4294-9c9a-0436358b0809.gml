/*
if (instance_exists(obj_player))
{
	// prevent enemy melt with 1 projectile
    if (dealtDamage == false) 
	{
        dealtDamage = true;
        finalDamage =  scr_Calculate_Damage (obj_player.dmg_ranged, 
											 obj_player.crit_Chance_Percent, 
											 obj_player.crit_Damage_Percent);
											 
        scr_createDamageNumber (finalDamage, obj_player.dmg_ranged);
    } 
    
	
	scr_knockBack(other, 5, direction);
	
    with (other) 
    {
        hp_current -= other.finalDamage 
        if(hp_current <= 0)
        {
            instance_destroy() 
        }
    }      
	
    instance_destroy(); 
}

