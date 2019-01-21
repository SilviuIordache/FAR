//delete after
debugVar = scrTest()

//-----Player Logic Variables-------
isMoving                    = false;
global.playerMouseAngle     = 45;
global.playerMouseAngleLAST = 45;
global.playerImageSpeed     = 0.15;
//----------------------------------

//-------DRAW variables-------------
depth				= -5
main_Sprite         = spr_player_body_2
shadow_sprite       = spr_shadow
classSpriteVariable = spr_player_body_2;
spr_shdw_X_offset   = 6
spr_shdw_Y_offset   = 12
//----------------------------------

//---------GAMEPLAY STATS-----------
keys_found  = 0
keys_needed = 3
//----------------------------------
//---------GENERAL STATS------------
chosenClass           = 0;

spd                   = 1;

hp_Current            = 10;
hp_Max                = 10;

/*
xp_current            = 1;
xp_level_current       = 1
xp_level[1]            = 50
xp_level[2]            = 75
xp_level[3]            = 100
xp_level[4]            = 250
xp_level[5]            = 500
xp_level[6]            = 1000
xp_level[7]            = 1000000
*/

gold_Current          = 3


sta_Max               = 10
sta_Cur               = 10
sta_Regen_Rate        = 0.12
sta_Regen_Start       = true
sta_Regen_Start_time  = 30

crit_Chance_Percent   = 25
crit_Damage_Percent   = 25

dmg_melee             = 1
dmg_ranged            = 1

canAttackRanged       = true
range_Attack_CD       = 15
range_Attack_Sta_Cost = 2
range_Attack_Speed    = 1
range_Attack_Texture  = spr_bolt

canAttackMelee        = true
melee_Attack_CD       = 15
melee_Attack_Sta_Cost = 1
melee_Attack_Speed    = 1


canTakeDamage         = true
invincibleFrames      = 60;
//----------------------------------

//----DRAW VARIABLES------
hopVar        = 0
//------------------------


/* */
/*  */
