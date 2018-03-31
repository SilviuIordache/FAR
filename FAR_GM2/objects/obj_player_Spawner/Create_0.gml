//CREATE PLAYER
switch(global.selectedClass)
{
case 0:
    instance_create(x + 8, y + 8, obj_mage);
    break;
case 1:
    instance_create(x + 8, y + 8, obj_warrior);
    break;
case 2:
    instance_create(x + 8, y + 8, obj_rogue);
    break;
}

//CREATE CAMERA DRONES
instance_create(x,y, obj_camera_focus)
instance_create(x,y, obj_camera_focus_delay)


