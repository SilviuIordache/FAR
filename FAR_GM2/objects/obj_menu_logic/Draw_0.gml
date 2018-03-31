//Draw classes in the selection screen
draw_sprite_ext(spr_player_mage,    1, 20, 30, 3, 3, 0, c_white, 1)
draw_sprite_ext(spr_player_warrior, 1, 70, 30, 3, 3, 0, c_white, 1)
draw_sprite_ext(spr_player_rogue,   1, 120, 30, 3, 3, 0, c_white, 1)

//set color and font for the classes names
draw_set_font(fnt_FAR)
draw_set_colour (c_white)

//draw classes names
draw_text(35,  80, string_hash_to_newline("mage"))
draw_text(85,  80, string_hash_to_newline("warrior"))
draw_text(135, 80, string_hash_to_newline("rogue"))

//DEBUG
//draw_text(165, 80, string(global.selectedClass));

