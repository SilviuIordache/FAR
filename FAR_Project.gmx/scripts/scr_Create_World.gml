randomize(); //set seed to a random value
var i
var j

iterations_Chamber_max    = 100;
iterations_Chamber_cur    = 0;

chambers_To_Place = 20;
chambers_Placed   = 0;


chamber_Start_X = irandom(room_height / 16 - 2) 
chamber_Start_Y = irandom(room_width  / 16 - 2) 

min_size = 5  // minimum size in 16X16 squares that a room can have
max_size = 25 // maximum size in 16X16 squares that a room can have

chamber_Size_W   = irandom_range(min_size, max_size);
chamber_Size_H   = irandom_range(min_size, max_size);


while ( chambers_Placed < chambers_To_Place && iterations_Chamber_cur < iterations_Chamber_max)
{
    //check to see if the place we are about to place the chamber is valid ( = has no other blocks and no other markers in it)
    if ( script_execute( scr_Valid_Chamber_Position, chamber_Start_X, chamber_Start_Y, chamber_Size_W, chamber_Size_H))
    {
        //create chamber_info object
        o                = instance_create(chamber_Start_X * 16, chamber_Start_Y * 16, obj_chamber_info)
        o.chamber_width  = chamber_Size_W + 1
        o.chamber_height = chamber_Size_H + 1
        o.idd            = global.chamber_id_valuator; //assign a unique id for each room info object
        
        //create room -> fill the margins with walls
        for (i = chamber_Start_X; i <= chamber_Start_X + chamber_Size_W; i++)
        {
            for (j = chamber_Start_Y; j <= chamber_Start_Y + chamber_Size_H ; j++)
            {
                //LEFT SIDE
                if (i == chamber_Start_X && j != (chamber_Start_Y + ceil(chamber_Size_H/2)))
                    instance_create(i * 16, j * 16 , obj_block)
                //RIGHT SIDE
                if (i == chamber_Start_X + chamber_Size_W && j != (chamber_Start_Y + ceil(chamber_Size_H/2)))
                    instance_create(i * 16, j * 16 , obj_block)
                //TOP SIDE
                if (j == chamber_Start_Y && i != (chamber_Start_X + ceil(chamber_Size_W/2)))
                    instance_create(i * 16, j * 16 , obj_block)
                //BOTTOM SIDE
                if (j == chamber_Start_Y + chamber_Size_H && i != (chamber_Start_X + ceil(chamber_Size_W/2)))
                    instance_create(i * 16, j * 16 , obj_block)
            }
        }
        
        //place ENTRANCE objects
        //left
        o     = instance_create(chamber_Start_X * 16, (chamber_Start_Y + ceil(chamber_Size_H/2)) * 16,  obj_chamber_entrance_marker) 
        o.idd = global.chamber_id_valuator
        //right
        o     = instance_create((chamber_Start_X+ chamber_Size_W) * 16, (chamber_Start_Y + ceil(chamber_Size_H/2)) * 16,  obj_chamber_entrance_marker) 
        o.idd = global.chamber_id_valuator
        //top
        o     = instance_create((chamber_Start_X + ceil(chamber_Size_W/2)) * 16, chamber_Start_Y * 16,  obj_chamber_entrance_marker) 
        o.idd = global.chamber_id_valuator
        //left
        o     = instance_create((chamber_Start_X + ceil(chamber_Size_W/2)) * 16, (chamber_Start_Y + chamber_Size_H) * 16, obj_chamber_entrance_marker) 
        o.idd = global.chamber_id_valuator
        
        
        //fill the inside with markers
        for (i = chamber_Start_X; i <= chamber_Start_X + chamber_Size_W - 2; i ++)
        {
            for (j = chamber_Start_Y; j <= chamber_Start_Y + chamber_Size_H - 2; j++)
            {
                instance_create(x + i * 16, y + j * 16 , obj_chamber_marker)
            }
        }
        
        //fill the outside 1-layer with markers to avoid tangent chambers
        for (i = chamber_Start_X - 1; i <= chamber_Start_X + chamber_Size_W + 1; i ++)
        {
            for (j = chamber_Start_Y - 1; j <= chamber_Start_Y + chamber_Size_H + 1; j++)
            {
                //LEFT SIDE
                if (i == chamber_Start_X - 1)
                    instance_create(i * 16, j * 16 , obj_chamber_marker)
                //RIGHT SIDE
                if (i == chamber_Start_X + chamber_Size_W + 1)
                    instance_create(i * 16, j * 16 , obj_chamber_marker)
                //TOP SIDE
                if (j == chamber_Start_Y - 1)
                    instance_create(i * 16, j * 16 , obj_chamber_marker)
                //BOTTOM SIDE
                if (j == chamber_Start_Y + chamber_Size_H + 1)
                    instance_create(i * 16, j * 16 , obj_chamber_marker)
            }
        }
        
        
        chambers_Placed += 1; //increased chambers placed
        global.chamber_id_valuator++; //increment unique id 
    }
    iterations_Chamber_cur += 1; //increase number of tries to place chambers
    
    //re-initialize random variables
    chamber_Start_X = irandom(room_height / 16 - 2)  
    chamber_Start_Y = irandom(room_width  / 16 - 2)
    chamber_Size_W   = irandom_range(min_size, max_size);
    chamber_Size_H   = irandom_range(min_size, max_size);
    
}//chambers have been created

//DELETE ALL inside-room MARKERS AFTER GENERATING CHAMBERS
with (obj_chamber_marker) instance_destroy()

//also return chambers_Placed for debug purposes
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

