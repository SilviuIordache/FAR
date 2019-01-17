if (instance_exists(obj_player))
{
	// prevent enemy melt with 1 projectile
    if (dealtDamage == false) 
	{
        dealtDamage = true  // mark this projectile as already done damage;
        finalDamage = script_execute(
									scr_Calculate_Damage, 
									obj_player.dmg_ranged, 
									obj_player.crit_Chance_Percent, 
									obj_player.crit_Damage_Percent)
        script_execute(
						scr_createDamageNumber, 
						finalDamage, 
						obj_player.dmg_ranged)
    } 
    
    with (other) 
    { 
        hp_current -= other.finalDamage 
        if(hp_current <= 0)
        {
            //obj_player.xp_current += xp_reward
            instance_destroy() //destroy monster if his health is 0
        }
    }         
    instance_destroy(); //destroy bullet
}

