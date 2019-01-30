//to add back to draw GUI
//DRAW HP BAR

///get camera coords
var cx = camera_get_view_x(view_camera);
var cy = camera_get_view_y(view_camera);

///make the adjustment to gui
var xx = (x-cx)*display_scalex;
var yy = (y-cy)*display_scaley;

draw_set_text(c_white, fnt_default, fa_left, fa_top)

draw_text(xx - 20, yy - 60, string(hp_current) + "/" + string(hp_initial));

draw_text(xx - 20, yy - 80, "state: " + string(currentState));
draw_text(xx - 20, yy - 100, "dirToPl: " + string(dirRelativeToPlayer));