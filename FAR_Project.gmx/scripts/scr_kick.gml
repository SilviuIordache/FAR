objectToKick  = argument0
kickPower     = argument1
kickDirection = argument2


if (!place_meeting(x + lengthdir_x(1, kickDirection), 
                   y + lengthdir_y(1, kickDirection), 
                   obj_block))
{
    objectToKick.x += lengthdir_x(kickPower, kickDirection);
    objectToKick.y += lengthdir_y(kickPower, kickDirection);
}
