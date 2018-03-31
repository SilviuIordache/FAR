//Draw player shadow
draw_sprite_ext(spr_shadow, 
                image_index, 
                x + 1, 
                y + 7, 
                image_xscale, 
                image_yscale, 
                image_angle,
                image_blend, 
                image_alpha * 0.32);
                
//Draw player sprite          
draw_sprite_ext(spr_player_rogue1, 
                image_index, 
                x, 
                y + hopVar, 
                image_xscale, 
                image_yscale, 
                image_angle,
                image_blend, 
                image_alpha);
                
//CAMERA FOCUS OBJECT CIRCLE BOUND           
//draw_circle(x, y, obj_system.maxCameraPanDistance/2, true);




