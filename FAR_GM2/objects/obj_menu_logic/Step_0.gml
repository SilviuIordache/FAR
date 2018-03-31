if (keyboard_check_pressed(vk_left))
{
    global.selectedClass = (global.selectedClass + 2) %3;
}
if (keyboard_check_pressed(vk_right))
{
    global.selectedClass = (global.selectedClass + 1) %3;
}

obj_class_select_arrow.x = 35 + global.selectedClass * 50

if (keyboard_check_pressed(vk_enter))
{
    room_goto(room_first);
}

