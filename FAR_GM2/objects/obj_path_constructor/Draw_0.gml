draw_self()

draw_set_color(c_white)
draw_set_font(fnt_damage)
draw_text(x,y , string_hash_to_newline("player x: " + string(abs(x - x_target))))
draw_text(x,y + 10,string_hash_to_newline("player y: " + string(abs(y - y_target))))

draw_set_font(fnt_default)

