spr_body   = argument0;
spr_shdw   = argument1;
hopVar     = argument2;

draw_sprite_ext(
                spr_shdw, 
                image_index, 
                x + 9, 
                y + 16, 
                image_xscale, 
                image_yscale, 
                image_angle,
                image_blend, 
                image_alpha * 0.32);
                
draw_sprite_ext(
                spr_body, 
                image_index, 
                x, 
                y + hopVar, 
                image_xscale, 
                image_yscale, 
                image_angle,
                image_blend, 
                image_alpha);
                



