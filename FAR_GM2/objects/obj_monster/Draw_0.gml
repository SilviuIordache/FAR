//DRAW SHADOW
draw_sprite_ext(shadow_sprite, 
				image_index, 
				x + shadow_offset_X, 
				y + shadow_offset_Y, 
				image_xscale,  
				image_yscale, 
				image_angle,
				image_blend, 
				image_alpha * 0.32);      

//DRAW SELF
draw_sprite_ext(main_sprite, 
				image_index, 
				x, 
				y + hopVar, 
				image_xscale * directionFacing, 
				image_yscale, 
				image_angle, 
				image_blend, 
				image_alpha);  
				


//DRAW SUSPICION METER
if (suspicion_level > 0) {
	//meter background
	draw_sprite(spr_suspicion_meter_bck,
				0, 
				x - 6, 
				y - 11)
	
	//draw fill
	draw_sprite_ext(spr_suspicion_meter_gain, 
					0, 
					x - 6, 
					y - 11, 
					1, 
					suspicion_level * 1/suspicion_max, 
					0, 
					c_white,
					1)	
	if (suspicion_level == suspicion_max)
		draw_sprite(spr_suspicion_meter_full, 0, x - 6, y - 11)
}


//-------------DEBUG DRAW--------------

//DRAW PATH
if path_exists(path_smartAI)
{
	draw_set_color(c_yellow)
	draw_path(path_smartAI, x, y, true);
	draw_set_color(c_white)
}

//SEE FOV scan in real time
if scrAiCheckPlayerInRange()
{
	draw_set_color(c_gray)
    draw_line(x, y, obj_player.x , obj_player.y)
	draw_set_color(c_gray)
	
    if scrAiCheckPlayerInLos()
    {
        draw_set_color(c_red)
        draw_line(x, y, obj_player.x , obj_player.y)
		draw_set_color(c_white)
    }
    else
    {
        draw_set_color(c_gray)
        draw_line(x, y, obj_player.x , obj_player.y)
		draw_set_color(c_white)
    }
	
}

//DEBUG DRAW
//draw_text(x,y, string(suspicion_level))
