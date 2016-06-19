chamber_Start_X = argument0
chamber_Start_Y = argument1
chamber_Size_W  = argument2
chamber_Size_H  = argument3
SAFE            = true

for (i = chamber_Start_Y; i <= chamber_Size_H; i ++)
{
    for (j = chamber_Start_X; j <= chamber_Size_W; j++)
    {
        if (i == chamber_Start_Y)
        {
            if (instance_position( x + i * 16, y + j * 16, obj_block ) == true)
               SAFE = false
        }
        if (i == chamber_Size_H)
        {
            if (instance_position( x + i * 16, y + j * 16, obj_block ) == true)
               SAFE = false
        }
        if (j == chamber_Start_X)
        {
            if (instance_position( x + i * 16, y + j * 16, obj_block ) == true)
               SAFE = false
        }
        if (j == chamber_Size_W)
        {
            if (instance_position( x + i * 16, y + j * 16, obj_block ) == true)
               SAFE = false
        }
    }
}

return SAFE
