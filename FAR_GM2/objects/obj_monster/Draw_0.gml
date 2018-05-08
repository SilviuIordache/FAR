//DRAW SHADOW
draw_sprite_ext(shadow_sprite, image_index, x + shadow_offset_X, y + shadow_offset_Y, image_xscale,  image_yscale, image_angle,image_blend, image_alpha * 0.32);      

//DRAW SELF
draw_sprite_ext(main_sprite, image_index, x, y + hopVar, image_xscale * directionFacing, image_yscale, image_angle, image_blend, image_alpha);  

//DRAW PATH
if path_smartAI
	draw_set_color(c_yellow)
	draw_path(path_smartAI, x, y, true);
	draw_set_color(c_white)

//SEE FOV scan in real time
if (distance_to_object(obj_player) < aggroRadius)
{
    if player_is_in_LOS == true
    {
        draw_set_color(c_gray)
        draw_line(x, y, obj_player.x , obj_player.y)
		draw_set_color(c_white)
    }
    else
    {
        draw_set_color(c_red)
        draw_line(x, y, obj_player.x , obj_player.y)
		draw_set_color(c_white)
    }
}
