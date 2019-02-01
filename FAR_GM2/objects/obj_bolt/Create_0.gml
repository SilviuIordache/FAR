//-------------Draw text on GUI variables-------------------------------------
///grab the width and height of view
var cw = camera_get_view_width(view_camera);
var ch = camera_get_view_height(view_camera);

///set some variables to hold the value and div that by width and height
display_scalex = display_get_gui_width()/cw;
display_scaley = display_get_gui_height()/ch;
//----------------------------------------------------------------------------

speed       = 0;
dealtDamage = false;
finalDamage = 0;
dmg         = 1;

initX = x;
initY = y;

canStartFalling     = false;
virtualFallVariable = 0;
virtualFallAmount   = 0.2
rotationAngle       = 90;

inst = 0;

alarm[0] = 12;



