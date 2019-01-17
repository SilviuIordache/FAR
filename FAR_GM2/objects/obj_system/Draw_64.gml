//DRAW FPS
draw_set_text(c_white, fnt_default, fa_left, fa_center);
draw_text(x + window_get_width() - 100, y, "fps: " + string(fps))
//draw_text(x + window_get_width() - 100, y + 15, "fps_real: " + string(fps_real))
draw_text(x + window_get_width() - 120, y + 15, "target: " + string(fpsDynamicTarget))


if (room != room_menu && instance_exists(obj_player) ) 
{
	//HEALTH POINTS
    for ( i = 1; i <= obj_player.hp_Current; i++ )
    {
        draw_sprite_ext(spr_heart, image_index, x - 20 + i * 30, y, image_xscale * 3, image_yscale * 3, image_angle, c_white, image_alpha );
    }
    for ( i = 1; i <= obj_player.hp_Max; i++ )
    {
        draw_sprite_ext(spr_heart_outline, image_index, x - 20 + i * 30, y, image_xscale * 3, image_yscale * 3, image_angle, c_white, image_alpha );
    }
    
    //STAMINA
    draw_sprite_ext(spr_playerSTA_total, image_index, x + 2, y + 24, image_xscale * 12, image_yscale * 2, image_angle, c_white, image_alpha)
    draw_sprite_ext(spr_playerSTA_curr, image_index, x + 2, y + 24, image_xscale * 12 * obj_player.sta_Cur/obj_player.sta_Max, image_yscale * 2, image_angle, c_white, image_alpha)
    for ( i = 0; i < obj_player.sta_Max / 5; i++)
    {
        draw_sprite_ext(spr_playerSTA_segment, image_index, x - 1 + i / obj_player.sta_Max * 1100, y + 24, image_xscale, image_yscale * 1.5, image_angle, c_white, image_alpha)
    }
    
    //UNLOCK KEYS held
    draw_sprite_ext(spr_key, 0, x - 10, y + 35, image_xscale * 3, image_yscale * 3, image_angle, c_white, image_alpha)
    draw_set_color(c_yellow)
    draw_set_font(fnt_damage)
    draw_text_ext_transformed(x + 30, y + 45, string_hash_to_newline(string(obj_player.keys_found) + "/" + string(obj_player.keys_needed)), 10, 300, 3, 3, 0 )
    draw_set_font(fnt_default)


//DEBUG------------------------------

//Draw center of screen for camera - player optimal positioning
//draw_sprite(spr_magic_bolt, 0, view_wport[0] /2, view_hport[0] / 2  )
 
                 
    draw_set_alpha(0.7)
    draw_rectangle_colour(5, 90, 200, 320, c_gray, c_gray, c_gray, c_gray, false); 
    draw_set_alpha(1)

    draw_set_color(c_white)
    draw_set_font(fnt_damage)
	draw_text(x + 20,y + 80, "x: " + string(obj_player.x))
	draw_text(x + 20,y + 100,"y: " + string(obj_player.y))
	draw_text(x + 20,y + 120, "last x: " + string(obj_skeleton.last_known_player_x))
	draw_text(x + 20,y + 140, "last y: " + string(obj_skeleton.last_known_player_y))
	draw_text(x + 20,y + 160, "enemy x: " + string(obj_skeleton.x))
	draw_text(x + 20,y + 180, "enemy y: " + string(obj_skeleton.y))
	draw_text(x + 20,y + 200, "canPathFind: " + string(obj_skeleton.canPathFind))
	draw_text(x + 20,y + 220, "playerInLOS: " + string(obj_skeleton.player_is_in_LOS))
	draw_text(x + 20,y + 240, "playerInRange: " + string(obj_skeleton.player_is_in_range))
	/*
    draw_text(x + 20,y + 80, string_hash_to_newline("cos: " + string((point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y)))))
    draw_text(x + 20,y + 100,string_hash_to_newline("sin: " + string((point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y)))))
    draw_text(x + 20,y + 120,string_hash_to_newline("mouse x: " + string(mouse_x)))
    draw_text(x + 20,y + 140,string_hash_to_newline("mouse y: " + string(mouse_y)))
    draw_text(x + 20,y + 160, string_hash_to_newline("TOTAL instances cnt: " + string(instance_count)))
    draw_text(x + 20,y + 190, string_hash_to_newline("obj_path_marker nr: " + string(instance_number(obj_path_marker))))
    draw_text(x + 20,y + 220, string_hash_to_newline("obj_block nr: "       + string(instance_number(obj_block))))
    draw_text(x + 20,y + 250, string_hash_to_newline("player speed: "  + string(obj_player.speed)))
    draw_text(x + 20,y + 280, string_hash_to_newline("level_time: "       + string(get_timer() / 1000000)))
	*/
    draw_set_font(fnt_default)

}

