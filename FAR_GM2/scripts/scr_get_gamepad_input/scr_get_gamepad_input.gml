/// @description scr_get_gamepad_input(device)
/// @function scr_get_gamepad_input
/// @param device

var device = argument0;

xaxis     = gamepad_axis_value(device, gp_axislh); //(-1, 1)
yaxis     = gamepad_axis_value(device, gp_axislv); //(-1, 1)
