/// @description SYSTEM VARIABLES

//------------SET GAME SPEED / FPS -----------------
fpsDynamicTarget = 65
canIncreaseFpsTarget = true;
game_set_speed(fpsDynamicTarget, gamespeed_fps);
//--------------------------------------------------


global.selectedClass = 2;

//------GRAPHIC SETTINGS-----------------
draw_set_font(fnt_default);
GUI_scaleFactor = 4
GUI_defaultScaleFactor = 1;
globalvar pxSize;
          pxSize = 8;
//---------------------------------------

//------CAMERA VARIABLES-----------------
maxCameraPanDistance = 20

//normal zoom center values
verCameraAdjustment   = 8 
horCameraAdjustment   = 11
//---------------------------------------


//----AI Variables------------------------------------------------

globalvar AI_grid;
          AI_grid = mp_grid_create(0,
							       0, 
								   room_width / pxSize, 
								   room_height / pxSize, 
								   pxSize, 
								   pxSize);
//-----------------------------------------------------------

// DEBUG BLOCK IDS
global.chamber_Nr = 0;

//WORLD GENERATIONS CHAMBERS
/*
global.chamber_id_valuator = 1;
if (room_get_name(room) != "room_menu")
{
    global.chamber_Nr = script_execute(scr_Create_World)
    //fill level with navigation squares that will be used to create paths between doors
    /*
    for (i = 0; i <= room_height / pxSize; i++)
    {
        for (j = 0; j <= room_width / pxSize ; j++)
        {
            instance_create(x + i * pxSize, y + j * pxSize, obj_nav_square)
        }
    }
    
}
*/
//DEBUG SCROLLING
//view_hview[0] *= 2
//view_wview[0] *= 2



/* */
/*  */
