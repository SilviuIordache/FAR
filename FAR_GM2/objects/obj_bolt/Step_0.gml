/// @description DRAW VARIABLES UPDATE
if ( canStartFalling == true)
{
    if (virtualFallVariable == 10)
       instance_destroy();
    virtualFallVariable += virtualFallAmount;
}

rotationAngle -= 6;

