chamber_Start_X = argument0
chamber_Start_Y = argument1
chamber_Size_W  = argument2
chamber_Size_H  = argument3
SAFE            = true

//check if there is empty place all along the chamber future position + 1 free outer layer (avoids tangent chamebrs)
for (i = chamber_Start_X - 1; i <= chamber_Start_X + chamber_Size_W + 1; i ++)
{
    for (j = chamber_Start_Y - 1; j <= chamber_Start_Y + chamber_Size_H + 1; j++)
    {
        //CHECK THAT THE NEW CHAMBER DOES NOT INTERSECT WITH THE OUTLINE OF AN EXISTING CHAMBER, INCLUDING ROOM OUTLINE
            if (position_meeting(i * 16, j * 16, obj_block ) == true || 
                position_meeting(i * 16, j * 16, obj_chamber_marker ))
               SAFE = false
    }
}

return SAFE
