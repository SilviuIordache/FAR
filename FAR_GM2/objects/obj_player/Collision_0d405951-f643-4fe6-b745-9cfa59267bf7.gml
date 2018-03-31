action_set_relative(1);
var __b__;
__b__ = action_if_collision(hspeed, 0, 0);
if __b__
{
	{
	action_set_relative(0);
	action_set_hspeed(0);
	action_set_relative(1);
	}
}
__b__ = action_if_collision(0, vspeed, 0);
if __b__
{
	{
	action_set_relative(0);
	action_set_vspeed(0);
	action_set_relative(1);
	}
}
action_set_relative(0);
