randomize(); //set seed to a random value
var i
var j

iterations_Chamber_max    = 50;
iterations_Chamber_cur    = 0;

chambers_To_Place = 25;
chambers_Placed   = 0;


chamber_Start_X = irandom(room_height / 16 - 2) 
chamber_Start_Y = irandom(room_width  / 16 - 2) 

min_size = 7  // minimum size in 16X16 squares that a room can have
max_size = 16 // maximum size in 16X16 squares that a room can have

chamber_Size_W   = chamber_Start_X + irandom_range(min_size, max_size);
chamber_Size_H   = chamber_Start_Y + irandom_range(min_size, max_size);


while ( chambers_Placed < chambers_To_Place && iterations_Chamber_cur < iterations_Chamber_max)
{
    if ( script_execute( scr_Valid_Chamber_Position, chamber_Start_X, chamber_Start_Y, chamber_Size_W, chamber_Size_H))
    {
        //fill the margins with walls
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
        //fill the inside with markers
        for (i = chamber_Start_Y + 1; i <= chamber_Size_H - 1; i ++)
        {
            for (j = chamber_Start_X + 1; j <= chamber_Size_W - 1; j++)
            {
                instance_create(x + i * 16, y + j * 16 , obj_chamber_marker)
            }
        }
        chambers_Placed += 1;
    }
    iterations_Chamber_cur += 1;
    chamber_Start_X = irandom(room_height / 16 - 2)  
    chamber_Start_Y = irandom(room_width  / 16 - 2)
    chamber_Size_W   = chamber_Start_X + irandom_range(min_size, max_size);
    chamber_Size_H   = chamber_Start_Y + irandom_range(min_size, max_size);
}
//DELETE ALL MARKERS AFTER GENERATING CHAMBERS
with (obj_chamber_marker) instance_destroy()

return chambers_Placed
/*
until you populate the room with X mini-rooms  do this:
iterate through whole room
find a suitable position from where to start a and place a mini-room
find a random width and height for that mini-room
verify if by creating an outline to this room you dont intersect already created mini-rooms
create the outline of that room
repeat until you have X rooms in the world
