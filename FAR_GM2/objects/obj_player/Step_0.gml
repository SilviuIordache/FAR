/// @description MAIN STEP EVENT; MOVEMENT SCRIPT
event_inherited();

scrCheckDirectionFacing();

scr_KB_Movement(5/100 * spd, 0.2, spd);

scrHopAnimation();

global.playerMouseAngle = point_direction(x, y, mouse_x, mouse_y)


//Mouse shooting
if (rangedAttackStaminaCost >= staminaCurrent)
{
    if (mouse_check_button(mb_left) && rangedAttackPossible == true)
    {
		idd = instance_create(x, y, obj_bolt)
        with (idd)
		{
	        direction = point_direction(x, y, mouse_x, mouse_y);
		}

        rangedAttackPossible = false;
        alarm[0] = rangedAttackCd;
         
        staminaCurrent -= rangedAttackStaminaCost;
        staminaRegenStart = false;
        alarm[5] = staminaRegenStartTime;
    }
}

//Sword combat
if( staminaCurrent >= meleeAttackStaminaCost)
{
    if( mouse_check_button(mb_right) && canAttackMelee == true)
    {
        idd				= instance_create(x, y, obj_sword);
        canAttackMelee	= false;
        alarm[1]		= meleeAttackCd;
        
        staminaCurrent -= meleeAttackStaminaCost;
        sta_Regen_Start = false;
        alarm[5]        = staminaRegenStartTime;
    }
}


///Stamina regeneration
if (staminaCurrent < staminaMax && staminaRegenStart == true)
{
    staminaCurrent += staminaRegenRate;
    if (staminaCurrent > staminaMax)
    {
        staminaCurrent = staminaMax;
    }
}



///HEALTH & GAME OVER
if ( hp_Current < 1 )
{
    with (obj_camera_focus)       instance_destroy();
    with (obj_camera_focus_delay) instance_destroy();
    instance_destroy() // destroy obj_player
}



///EXPERIENCE POINTS
/*
if (xp_current > xp_level[xp_level_current])
{
    xp_level_current += 1
    xp_current        = 0
    hp_Current       += 1
}
