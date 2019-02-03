//Sword combat
if( staminaCurrent >= meleeAttackStaminaCost)
{
    if( mouse_check_button(mb_right) && meleeAttackPossible == true)
    {
        idd				= instance_create(x, y, obj_sword);
        canAttackMelee	= false;
        alarm[1]		= meleeAttackCd;
        
        staminaCurrent -= meleeAttackStaminaCost;
        sta_Regen_Start = false;
        alarm[5]        = staminaRegenStartTime;
    }
}