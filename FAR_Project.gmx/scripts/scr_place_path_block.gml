x_offset = argument0 
y_offset = argument1
idd      = 0
if (!instance_position(x + x_offset, y + y_offset, obj_path_marker))
{
    if (!instance_position( x + x_offset, y + y_offset, obj_block ))
        instance_create(x + x_offset, y + y_offset, obj_block)
}
