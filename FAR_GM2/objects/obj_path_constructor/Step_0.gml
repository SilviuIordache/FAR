if (pathFindingStarted == false)
{
    pathFindingStarted = true
    mp_grid_clear_all(AI_grid);       
    mp_grid_add_instances(AI_grid, obj_block, false); 
    mp_grid_path(AI_grid, constructor_path, x, y, x_target, y_target, false)
    
    if (path_exists(constructor_path))
        path_start(constructor_path, spd, path_action_stop, 1)
}

if (collision_point( x, y, obj_nav_square, false, true ))
{
    if (collision_point( x, y, obj_block, false, true ))
    {
        idd_block = collision_point( x, y, obj_block, false, true)
        with(idd_block) instance_destroy()
    }
    nav_sq_idd = collision_point( x, y, obj_nav_square, false, true)
    if ( !instance_position(nav_sq_idd.x, nav_sq_idd.y, obj_path_marker))
    {
        instance_create(nav_sq_idd.x, nav_sq_idd.y, obj_path_marker)
    }
}
    
if (abs(x - x_target) < 1 && abs(y - y_target) < 1)
{
    instance_destroy();
}
    

