if (rangedAttackStaminaCost <= staminaCurrent)
{
    if (mouse_check_button(mb_left) && rangedAttackPossible == true)
    {
		
		scrCreateProjectile( obj_bolt,
							 rangedAttackSpeed, 
							 rangedAttackDamage, 
							 point_direction(x, y, mouse_x, mouse_y));

        rangedAttackPossible = false;
        alarm[0] = rangedAttackCd;
         
        staminaCurrent -= rangedAttackStaminaCost;
        staminaRegenStart = false;
        alarm[5] = staminaRegenStartTime;
    }
}