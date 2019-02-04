///get camera coords
var cx = camera_get_view_x(view_camera);
var cy = camera_get_view_y(view_camera);

///make the adjustment to gui
var xx = (x-cx)*display_scalex;
var yy = (y-cy)*display_scaley;

draw_set_text(c_white, fnt_default, fa_left, fa_top)

draw_text(xx - 20, yy - 140, "LKPPI: " + string(scrAILastKnownPlayerPosInvestigated()));
draw_text(xx - 20, yy - 120, "LOS " + string(scrAiCheckPlayerInLos()));
draw_text(xx - 20, yy - 100, "R " + string(scrAiCheckPlayerInRange()));
draw_text(xx - 20, yy - 60, "hp " + string(hp_current) + "/" + string(hp_initial));
switch (currentState)
{
	case 0:
		draw_text(xx - 20, yy - 80, "neutral");
		break;
	case 1:
		draw_text(xx - 20, yy - 80, "suspicious");
		break;
	case 2:
		draw_text(xx - 20, yy - 80, "following");
		break;
	case 3:
		draw_text(xx - 20, yy - 80, "investigating");
		break;
	case 4:
		draw_text(xx - 20, yy - 80, "returning");
		break;
	case 5:
		draw_text(xx - 20, yy - 80, "combat");
		break;
	case 6:
		draw_text(xx - 20, yy - 80, "neutral");
		break;
}
//draw_text(xx - 20, yy - 80, "s: " + string(currentState));
//draw_text(xx - 20, yy - 100, "dirToPl: " + string(dirRelativeToPlayer));