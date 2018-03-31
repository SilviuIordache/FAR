draw_sprite_ext(spr_class_selection_arrow, 1, x, y, 3, 3, 0, c_white, 1);

//set color and font for the classes names
draw_set_font( fnt_FAR);
draw_set_colour ( c_white);

draw_text( x - 6, y - 4, string_hash_to_newline("SELECT"));

