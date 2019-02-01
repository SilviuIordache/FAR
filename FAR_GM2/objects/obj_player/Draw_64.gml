///get camera coords
var cx = camera_get_view_x(view_camera);
var cy = camera_get_view_y(view_camera);

///make the adjustment to gui
var xx = (x-cx)*display_scalex;
var yy = (y-cy)*display_scaley;

draw_text(xx,yy, string(id));