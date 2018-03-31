draw_sprite_ext(shadow_sprite, image_index, x + shadow_offset_X, y + shadow_offset_Y, image_xscale,  image_yscale, image_angle,image_blend, image_alpha * 0.32);
                
draw_sprite_ext(main_sprite, image_index, x, y + hopVar, image_xscale * directionFacing, image_yscale, image_angle, image_blend, image_alpha);  

switch(state)
{
	case states.neutral: 
		draw_set_font(fnt_damage);

		draw_set_font(fnt_default);
		break;
	//case states.suspicious: break;
	//case states.investigating: break;
	//case states.aggresive: break;
	//case states.returningToOrigin: break;
}
//draw_text(x,y, string(state))      

//DEBUG

//SEE FOV scan in real time

if (distance_to_object(obj_player) < aggroRadius)
{
    if player_is_in_LOS == true
    {
        draw_set_color(c_gray)
        draw_line(x, y, obj_player.x , obj_player.y)
    }
    else
    {
        draw_set_color(c_red)
        draw_line(x, y, obj_player.x , obj_player.y)
    }
}