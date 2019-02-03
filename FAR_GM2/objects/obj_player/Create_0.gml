//-----Player Logic Variables-------
global.playerMouseAngle     = 45;
global.playerMouseAngleLAST = 45;
global.playerImageSpeed     = 0.15;
//----------------------------------

//-------DRAW variables----------------------------------------------------------
///grab the width and height of view
var cw = camera_get_view_width(view_camera);
var ch = camera_get_view_height(view_camera);

///set some variables to hold the value and div that by width and height
display_scalex = display_get_gui_width()/cw;
display_scaley = display_get_gui_height()/ch;

depth				= -5;
main_Sprite         = spr_player_body_2;
shadow_sprite       = spr_shadow;
classSpriteVariable = spr_player_body_2;
spr_shdw_X_offset   = 6;
spr_shdw_Y_offset   = 12;
directionFacing     = 0;
hopVar				= 0;
//--------------------------------------------------------------------------------


//---------General Variables------------
idd                      = 0;
chosenClass              = 0;
isMoving                 = false;
spd                      = 1;

healthPointsMax          = 10;
healthPointsCurrent      = healthPointsMax

gold_Current			 = 3;

staminaMax               = 10;
staminaCurrent           = 10;
staminaRegenRate         = 0.12;
staminaRegenStart        = true;
staminaRegenStartTime    = 30;

crit_Chance_Percent     = 25;
crit_Damage_Percent     = 25;

rangedAttackDamage      = 1;
rangedAttackPossible    = true;
rangedAttackCd          = 15;
rangedAttackStaminaCost = 2;
rangedAttackSpeed       = 1;

rangedAttackTexture     = spr_bolt;


meleeAttackDamage      = 1;
meleeAttackPossible    = true;
meleeAttackCd		   = 15;
meleeAttackStaminaCost = 1;
meleeAttackSpeed       = 1;

canTakeDamage         = true
invincibleFrames      = 60;
//----------------------------------


//---------Debug Variables----------
//----------------------------------

//---------Other gameplay variables-----------
keys_found  = 0
keys_needed = 3
//--------------------------------------------


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