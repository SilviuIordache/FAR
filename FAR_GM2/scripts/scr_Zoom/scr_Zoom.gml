if keyboard_check_pressed(vk_numpad1)
{
 __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) * (2) )
 __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) * (2) )
}
if keyboard_check_pressed(vk_numpad2)
{
 __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) / (2) )
 __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) / (2) )
}

