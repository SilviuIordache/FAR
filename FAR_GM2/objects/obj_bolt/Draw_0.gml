if (instance_exists(obj_player))
{
    draw_sprite(spr_boltShadow, 1, x, y + 10)
    //draw_sprite_ext(obj_player.range_Attack_Texture, 1, x, y + virtualFallVariable, 1, 1, rotationAngle, c_white, 1)
    draw_sprite_ext(obj_player.range_Attack_Texture, 1, x, y, 1, 1, rotationAngle, c_white, 1)
}



