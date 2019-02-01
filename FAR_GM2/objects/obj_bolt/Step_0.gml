/// @description Falling animation
if ( canStartFalling == true)
{
    if (virtualFallVariable == 10)
       instance_destroy();
    virtualFallVariable += virtualFallAmount;
}

rotationAngle -= 6;


if collision_point(x, y, objTarget, true, true)
{
	if (dealtDamage == false) 
	{
        dealtDamage = true;
        finalDamage =  scr_Calculate_Damage (obj_player.rangedAttackDamage, 
											 obj_player.crit_Chance_Percent, 
											 obj_player.crit_Damage_Percent);
											 
        scr_createDamageNumber (finalDamage, obj_player.rangedAttackDamage);
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

