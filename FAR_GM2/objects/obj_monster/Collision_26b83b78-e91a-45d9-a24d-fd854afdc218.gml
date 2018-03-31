if ( distance_to_object(other) < 1)
{

    var i;
    i = point_direction(other.x, other.y, x, y);
    
    if (!place_meeting(x + lengthdir_x(1, i), y + lengthdir_y(1, i), obj_block))
    {
      x += lengthdir_x(1, i);
      y += lengthdir_y(1, i);
    }
    
    
    //spd = 0;
    alarm[1] = 60;
}

