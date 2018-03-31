/// @description MAIN STEP EVENT; MOVEMENT SCRIPT
event_inherited();

//MOVEMENT SCRIPTS
script_execute(scr_KB_Movement, 5/100 * spd, 0.2, spd); //friction, speedGain, speedTop

//CALCULATE ANGLE BETWEEN PLAYER AND CURSOR POSITION
global.playerMouseAngle = point_direction(x, y, mouse_x, mouse_y)




///MELEE & RANGED COMBAT LOGIC

//Mouse shooting
if( obj_player.sta_Cur >= range_Attack_Sta_Cost )
{
    if( mouse_check_button(mb_left) && canAttackRanged == true)
    {
         idd = instance_create(x, y, obj_bolt)
         idd.direction = point_direction(x, y, mouse_x, mouse_y)

         canAttackRanged = false;
         alarm[0] = range_Attack_CD;
         
         sta_Cur -= range_Attack_Sta_Cost;
         sta_Regen_Start = false;
         alarm[5] = sta_Regen_Start_time;
    }
}

//Sword combat
if( obj_player.sta_Cur >= range_Attack_Sta_Cost)
{
    if( mouse_check_button(mb_right) && canAttackMelee == true)
    {
        idd            = instance_create(x, y, obj_sword)
        canAttackMelee = false
        alarm[1]       = melee_Attack_CD;
        
        sta_Cur        -= melee_Attack_Sta_Cost
        sta_Regen_Start = false;
        alarm[5]        = sta_Regen_Start_time;
        script_execute(scr_kick, obj_player, 2, point_direction(x, y, mouse_x, mouse_y))
    }
}



///REGENS
if( sta_Cur < sta_Max && sta_Regen_Start == true)
{
    sta_Cur += sta_Regen_Rate
    if( sta_Cur > sta_Max)
    {
        sta_Cur = sta_Max;
    }
}



///HEALTH & GAME OVER

if ( hp_Current < 1 )
{
    with (obj_camera_focus)       instance_destroy();
    with (obj_camera_focus_delay) instance_destroy();
    instance_destroy() // destroy obj_player
}

///HOP VAR
/// Make the object hop only when moving
if (isMoving == true)
{
    hopVar = sin (get_timer() / 50000)
}
else
{
    hopVar = 0;
}


///EXPERIENCE POINTS
/*
if (xp_current > xp_level[xp_level_current])
{
    xp_level_current += 1
    xp_current        = 0
    hp_Current       += 1
}

/* */
/*  */
