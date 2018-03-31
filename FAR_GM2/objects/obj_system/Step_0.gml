//----Dynamic FPS-----------------------------------------------------------------------------------------
//check if the fps drops below 60,increase the target by 1 each 2 seconds, until the fps goes above 60
if (fps < 60 && canIncreaseFpsTarget == true)
{
	fpsDynamicTarget += 1
	game_set_speed(fpsDynamicTarget, gamespeed_fps);
	alarm[1] = 120
	canIncreaseFpsTarget = false
}
//--------------------------------------------------------------------------------------------------------

//------------------
if (room != room_menu && instance_exists(obj_player))
{
    
    //---------------CAMERA stuff-----------------------------------------------------------------------------
    //dynamic camera
	//targetX = obj_camera_focus_delay.x
    //targetY = obj_camera_focus_delay.y
	
	//player fixed camera
	targetX = obj_player.x
    targetY = obj_player.y
	
    //targetX = (obj_player.x + mouse_x) /2
    //targetY = (obj_player.y + mouse_y) /2


    //the xview is weighed *7 here. xview*7+targetX*1 --> 8
    __view_set( e__VW.XView, 0, (__view_get( e__VW.XView, 0 )*7+targetX)/8 - horCameraAdjustment ) 
    __view_set( e__VW.YView, 0, (__view_get( e__VW.YView, 0 )*7+targetY)/8 - verCameraAdjustment )
    
    //view_angle[0] = 2 //sets camera angle to something different than 0, in this example 2 degrees tilted
    //view_angle[0] += 0.5 //rotates camera constantly, creates fun dizzines
    
    //-------------------------------------------------------------------------------------------------------
}

if (keyboard_check_pressed(vk_escape))
{
    room_goto(room_menu)
}
if (keyboard_check_pressed(ord("R")))
{
    room_restart()
}


///ZOOM SCRIPT
script_execute(scr_Zoom)

///DESTROY OBJECTS AFTER DELAY
/*
script_execute(scr_destroy_with_delay, obj_path_marker, 5)
script_execute(scr_destroy_with_delay, obj_chamber_marker, 5)
script_execute(scr_destroy_with_delay, obj_nav_square, 5)

/* */
/*
if device_mouse_check_button_pressed(0, mb_left)
    script_execute(scr_send_path_constructor, mouse_x, mouse_y, obj_player.x, obj_player.y)
    

/* */
/*  */
