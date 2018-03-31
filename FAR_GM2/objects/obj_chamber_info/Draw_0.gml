draw_self()

draw_set_font(fnt_damage)
draw_set_color(c_white)
draw_text(x + 20, y + 20, string_hash_to_newline("W: " +  string(chamber_width) + "#" + "H: " + string(chamber_height) + "#" + "id: " + string(idd)))
draw_set_font(fnt_default)

