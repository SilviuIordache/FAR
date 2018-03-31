if(instance_exists(obj_player))
{
    x = obj_player.x;
    y = obj_player.y;
    
    swingAngleCurrent += swingSpeed;
    
    if (swingAngleCurrent >= coneOfSwingAngle)
    {
        instance_destroy()
    }
}

