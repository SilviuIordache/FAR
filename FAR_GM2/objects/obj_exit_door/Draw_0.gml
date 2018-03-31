draw_self()

draw_set_color(c_white)
draw_set_font(fnt_damage)

if (player_is_near == true)
{
    if ( obj_player.keys_found >= obj_player.keys_needed)
    {
      with(obj_monster) instance_destroy()
      draw_text(x - 90, y + 25, string_hash_to_newline("                   GOOD JOB!#YOU OPENED THE MAGIC DOOR AND #GAINED POWER BEYOND IMAGINATION#             PRESS 'ESC' TO RETRY")) 
    }
    else
    {
      draw_text(x - 90, y + 25, string_hash_to_newline("                   YOU NEED 3 KEYS TO #                 OPEN THE MAGIC DOOR"))  
      draw_text(x, y + 50, string_hash_to_newline("keys: " + string(obj_player.keys_found) + "/" + string(obj_player.keys_needed)))
    }
}   
draw_set_font(fnt_default)


