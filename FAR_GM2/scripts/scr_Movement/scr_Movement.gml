controlType = argument0;

//Set movement variables;
if(argument_count == 3)
{
    friction         = argument0;
    moveSpeedGain    = argument1;
    moveSpeedMax     = argument2;
}
else //Set default movement variables
{   
    friction          = 0.1;
    moveSpeedCurrent  = 0.2;
    moveSpeedMax      = 1.1;
}

if (controlType == KEYBOARD)
{}
if (controlType == GAMEPAD)
{}
