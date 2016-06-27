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

chamber_Size_W   = irandom_range(min_size, max_size);
chamber_Size_H   = irandom_range(min_size, max_size);


while ( chambers_Placed < chambers_To_Place && iterations_Chamber_cur < iterations_Chamber_max)
{
    if ( script_execute( scr_Valid_Chamber_Position, chamber_Start_X, chamber_Start_Y, chamber_Size_W, chamber_Size_H))
    {
        //Create chamber_info object
        //idd = instance_create(chamber_Start_X * 16, chamber_Start_Y * 16, obj_chamber_info)
        //idd.chamber_width  =  chamber_Size_W + 1
        //idd.chamber_height =  chamber_Size_H + 1
        
        
        //fill the margins with walls
        /*
        for (i = chamber_Start_X; i <= chamber_Start_X + chamber_Size_W; i++)
        {
            for (j = chamber_Start_Y; j <= chamber_Start_Y + chamber_Size_H ; j++)
            {
                //LEFT SIDE
                if (i == chamber_Start_X ) 
                { 
                    instance_create(i * 16, j * 16 , obj_block)
                    //if (j == (chamber_Start_Y + chamber_Size_H)/2)
                    //  instance_create(i * 16, j * 16 , obj_chamber_entrance_marker)
                }
                //RIGHT SIDE
                if (i == chamber_Start_X + chamber_Size_W )
                {
                    instance_create(i * 16, j * 16 , obj_block)
                    if ( j == (chamber_Start_Y + chamber_Size_H)/2)
                       instance_create(i * 16, j * 16 , obj_chamber_entrance_marker)
                }
                //TOP SIDE
                if (j == chamber_Start_Y)
                {
                    instance_create(i * 16, j * 16 , obj_block)
                }
                //BOTTOM SIDE
                if (j == chamber_Start_Y + chamber_Size_H)
                {
                    instance_create(i * 16, j * 16 , obj_block)
                }
                   
            }
        }
        */

        instance_create(chamber_Start_X * 16, (chamber_Start_Y + chamber_Size_W)/2 * 16,  obj_chamber_entrance_marker)
        
        //fill the inside with markers
        for (i = chamber_Start_X; i <= chamber_Start_X + chamber_Size_W - 2; i ++)
        {
            for (j = chamber_Start_Y; j <= chamber_Start_Y + chamber_Size_H - 2; j++)
            {
                instance_create(x + i * 16, y + j * 16 , obj_chamber_marker)
            }
        }
        chambers_Placed += 1;
    }
    iterations_Chamber_cur += 1;
    chamber_Start_X = irandom(room_height / 16 - 2)  
    chamber_Start_Y = irandom(room_width  / 16 - 2)
    chamber_Size_W   = irandom_range(min_size, max_size);
    chamber_Size_H   = irandom_range(min_size, max_size);
}
//DELETE ALL inside-room MARKERS AFTER GENERATING CHAMBERS
//with (obj_chamber_marker) instance_destroy()

return chambers_Placed
/*
1.until you populate the room with X mini-rooms  do this:
2.iterate through whole room
3.find a suitable position from where to start a and place a mini-room
4.find a random width and height for that mini-room
5.verify if by creating an outline to this room you dont intersect already created mini-rooms
6.create the outline of that room
7.Delete middle of each room side

8.repeat until you have X rooms in the world

