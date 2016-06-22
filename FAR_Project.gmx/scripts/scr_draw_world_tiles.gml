/*depth = 10001
draw_background_ext(bck_black, x - 128, x - 128, 100, 100, 0, c_white, 1); 

depth = 10000

tile_to_draw = argument0

for (i = 1; i <= room_height / 16 - 2 ; i ++)
{
    for (j = 1; j <= room_width / 16 - 2; j ++)
    {
        draw_background(tile_to_draw, x * i, y * j)
    }
}

