//--HP bar GUI draw variables-------------------------

///grab the width and height of view
var cw = camera_get_view_width(view_camera);
var ch = camera_get_view_height(view_camera);

///set some variables to hold the value and div that by width and height
display_scalex = display_get_gui_width()/cw;
display_scaley = display_get_gui_height()/ch;

//--Base Stats------------------------------------
hp_initial      = 50
hp_current	    = hp_initial
speed_current   = 0.2
speed_normal	= speed_current
speed_roaming	= speed_current / 2
speed_charge	= speed_current* 3
speed_stun		= speed_current / 1.5
dmg				= 1
xp_reward		= 5

//------------------------------------------------

//--AI Variables----------------------------------
directionFacing             = 1 // 0 = right; 1 = left
playerInLos					= false
playerInRange				= false
playerInLosAndRange			= false
isMoving                    = 0
path_smartAI                = path_add()
path_AI_return_home         = path_add()
canPathFind					= true
pathFindingStarted          = false
pathFindingStartedHOME		= false
shouldSpread                = true
aggroRadius                 = 800
chargeRadius                = 25
isCharger                   = false
canCharge                   = true
stunTimeAfterCharge         = 60
AI_path_scan_refresh_rate   = 60 * 0.03
last_known_player_x			= 0
last_known_player_y			= 0
suspicion_level				= 0
suspicion_gain_rate			= 1
suspicion_max				= 60 * 3
x_origin					= x
y_origin					= y
//------------------------------------------------

//----DRAW VARIABLES------------------------------
main_sprite                 = spr_monster
shadow_sprite               = spr_shadow
shadow_offset_X             = -6
shadow_offset_Y             = 0
hopVar                      = 0
//------------------------------------------------

//States
currentState = AIStates.neutral;




