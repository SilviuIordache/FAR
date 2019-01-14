//--Base Stats------------------------------------
hp				= 50
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
player_is_in_LOS			= false
player_is_in_range			= false
isMoving                    = 0
path_smartAI                = path_add()
path_AI_return_home         = path_add()
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
suspicion_gain_rate			= 6
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

enum states
{
	neutral			  = true,			
	suspicious		  = false,			
	investigating	  = false,		
	aggresive		  = false,
	returningToOrigin = false
}

state = states.neutral;




