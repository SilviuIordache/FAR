x_offset = argument0 
y_offset = argument1
idd      = 0
if( !collision_point(x + x_offset, y + y_offset, obj_path_marker, false, true) && !collision_point(x + x_offset, y + y_offset, obj_block, false, true))
{
    //if (idd = collision_point(x + x_offset, y + y_offset, obj_block, false, true))
    if (!instance_position( x + x_offset, y + y_offset, obj_block ))
    //idd = instance_position( x + x_offset, y + y_offset, obj_block )
        //with (idd) instance_destroy()
        instance_create(x + x_offset, y + y_offset, obj_block)
}
