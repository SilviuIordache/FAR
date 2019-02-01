//--HP bar GUI draw variables-----------------------------------------------
///grab the width and height of view
var cw = camera_get_view_width(view_camera);
var ch = camera_get_view_height(view_camera);

///set some variables to hold the value and div that by width and height
display_scalex = display_get_gui_width()/cw;
display_scaley = display_get_gui_height()/ch;
//--------------------------------------------------------------------------

//--Base Stats------------------------------------
hp_initial      = 50;
hp_current	    = hp_initial;

speed_current   = 0;
speed_normal	= 0.35;
speed_roaming	= speed_normal / 2;
speed_returning = speed_normal / 1.5;
speed_charge	= speed_normal* 3;
speed_stun		= speed_normal / 1.5;

dmg				= 1;
xp_reward		= 5;
//------------------------------------------------


//--AI Variables----------------------------------
enum AIStates {
	neutral,
	suspicious,
	following,
	investigating,
	returning,
	combat,
}

currentState				= AIStates.neutral;

directionFacing             = 1; // 0 = right; 1 = left
dirRelativeToPlayer         = 0;

lastPlayerPosInvestigated   = false;
investigateTime             = 60 * 3;

playerInLos					= false;
playerInRange				= false;
playerInLosAndRange			= false;

isMoving                    = false;

path_smartAI                = path_add();
pathReturningAI				= path_add();

canPathFind					= true;
pathFindingStartedHOME		= false;

aggroRadius                 = 70;
combatRange					= 2;

suspicion_level				= 0;
suspicion_gain_rate			= 1.5;
suspicion_max				= 60 * 3;

pathScanRefreshRate         = 60 * 0.15;

last_known_player_x			= 0;
last_known_player_y			= 0;

x_origin					= x;
y_origin					= y;
//------------------------------------------------


//----DRAW VARIABLES------------------------------
main_sprite                 = spr_monster;
shadow_sprite               = spr_shadow;
shadow_offset_X             = -6;
shadow_offset_Y             = 0;
hopVar                      = 0;

