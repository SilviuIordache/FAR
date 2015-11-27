///scr_move_axis(xaxis,yaxis, threshold,spd)

var xaxis     = argument0;
var yaxis     = argument1;
var threshold = argument2;
var spd       = argument3;
var magnitude = point_distance(0, 0, xaxis, yaxis);


//Move the character if you can
if( magnitude >= threshold)
    if (!place_meeting (x + xaxis * spd, y + yaxis * spd, obj_solid)) 
    {
       x += xaxis * spd;
       y += yaxis * spd;
    } 
    else if (!place_meeting(x + xaxis * spd, y, obj_solid))
        x += xaxis * spd;
    else if (!place_meeting(x , y + yaxis * spd, obj_solid))
        y += yaxis * spd;
