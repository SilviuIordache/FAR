for (i = 0; i <= room_height / 16; i++)
{
    for (j = 0; j <= room_width / 16 ; j++)
    {
        instance_create(x + i * 16, y + j * 16, obj_nav_square)
    }
}
