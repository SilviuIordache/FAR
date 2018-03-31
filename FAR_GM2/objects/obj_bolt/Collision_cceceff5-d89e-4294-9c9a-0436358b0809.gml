if (instance_exists(obj_player))
{
    if (dealtDamage == false) //has this projectile dealt damage already?; prevent enemy melt with 1 projectile
    {
        dealtDamage = true  // mark this projectile as already done damage;
        finalDamage = script_execute(scr_Calculate_Damage, obj_player.dmg_ranged, obj_player.crit_Chance_Percent, obj_player.crit_Damage_Percent)
        script_execute(scr_createDamageNumber, finalDamage, obj_player.dmg_ranged)
    } 
    
    with (other) 
    { 
        hp -= other.finalDamage 
        if(hp <= 0)
        {
            //obj_player.xp_current += xp_reward
            instance_destroy() //destroy monster if his health is 0
        }
    }         
    instance_destroy(); //destroy bullet
}

