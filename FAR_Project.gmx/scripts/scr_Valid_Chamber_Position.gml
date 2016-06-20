chamber_Start_X = argument0
chamber_Start_Y = argument1
chamber_Size_W  = argument2
chamber_Size_H  = argument3
SAFE            = true

for (i = chamber_Start_Y; i <= chamber_Size_H; i ++)
{
    for (j = chamber_Start_X; j <= chamber_Size_W; j++)
    {
        //CHECK THAT THE NEW CHAMBER DOES NOT INTERSECT WITH THE OUTLINE OF AN EXISTING CHAMBER, INCLUDING ROOM OUTLINE
            if (position_meeting( x + i * 16, y + j * 16, obj_block ) == true || 
                position_meeting( x + i * 16, y + j * 16, obj_chamber_marker ))
               SAFE = false

    }
}

return SAFE
