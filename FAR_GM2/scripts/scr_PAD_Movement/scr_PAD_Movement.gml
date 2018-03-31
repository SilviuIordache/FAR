var xaxis     = argument0;
var yaxis     = argument1;
var threshold = argument2;
var spd       = argument3;
script_execute(scr_get_gamepad_input, 0);
script_execute(scr_move_axis, xaxis, yaxis, threshold, spd )
