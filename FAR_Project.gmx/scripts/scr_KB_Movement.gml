//script_execute(scr_Movement, friction, speedGain, speedTop)
//Bind keys
moveUp      = ord("W");
moveDown    = ord("S");
moveRight   = ord("D");
moveLeft    = ord("A");

//Set movement variables;
if(argument_count == 3)
{
    friction         = argument0;
    moveSpeedCurrent = argument1;
    moveSpeedMax     = argument2;
}
else //Set default movement variables
{   
    friction          = 0.1;
    moveSpeedCurrent  = 0.2;
    moveSpeedMax      = 1.1;
}


//Move when detecting values
if (keyboard_check(moveUp))      vspeed -= moveSpeedCurrent;
if (keyboard_check(moveDown))    vspeed += moveSpeedCurrent;
if (keyboard_check(moveRight))   hspeed += moveSpeedCurrent;
if (keyboard_check(moveLeft))    hspeed -= moveSpeedCurrent;

//Limit Speed
if(speed > moveSpeedMax)
   speed = moveSpeedMax

