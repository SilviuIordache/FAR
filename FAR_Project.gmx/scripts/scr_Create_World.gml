var i
var j

iterations_Chamber_max    = 50;
iterations_Chamber_cur    = 0;

chambers_To_Place = 5;
chambers_Placed   = 0;


chamber_Start_X = irandom(room_height / 16) 
chamber_Start_Y = irandom(room_width  / 16) 

chamber_Size_W   = chamber_Start_X + irandom_range(4, 10);
chamber_Size_H   = chamber_Start_Y + irandom_range(4, 10);


while ( chambers_Placed < chambers_To_Place && iterations_Chamber_cur < iterations_Chamber_max)
{
    if ( script_execute( scr_Valid_Chamber_Position, chamber_Start_X, chamber_Start_Y, chamber_Size_W, chamber_Size_H) == true)
    {
        for (i = chamber_Start_Y; i <= chamber_Size_H; i ++)
        {
            for (j = chamber_Start_X; j <= chamber_Size_W; j++)
            {
                if (i == chamber_Start_Y)
                    instance_create(x + i * 16, y + j * 16 , obj_block)
                if (i == chamber_Size_H)
                    instance_create(x + i * 16, y + j * 16 , obj_block)
                if (j == chamber_Start_X)
                    instance_create(x + i * 16, y + j * 16 , obj_block)
                if (j == chamber_Size_W)
                    instance_create(x + i * 16, y + j * 16 , obj_block)
            }
        }
        chambers_Placed += 1;
    }
    iterations_Chamber_cur += 1;
    chamber_Start_X = irandom(room_height / 16) 
    chamber_Start_Y = irandom(room_width  / 16) 
    chamber_Size_W   = chamber_Start_X + irandom_range(4, 10);
    chamber_Size_H   = chamber_Start_Y + irandom_range(4, 10);
}

return chambers_Placed
/*
until you populate the room with X mini-rooms  do this:
iterate through whole room
find a suitable position from where to start a and place a mini-room
find a random width and height for that mini-room
verify if by creating an outline to this room you dont intersect already created mini-rooms
create the outline of that room
repeat until you have X rooms in the world
