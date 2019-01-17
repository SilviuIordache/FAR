speed_current = speed_normal
canPathFind   = false;
if (player_is_in_LOS && canPathFind)
	alarm[0] = AI_path_scan_refresh_rate;
		
path_start(path_smartAI, speed_current, path_action_stop, 1) 