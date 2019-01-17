script_execute(scr_AI_check_player_in_LOS());
script_execute(scr_AI_check_player_in_range());

//suspicion meter logic
if (suspicion_level < suspicion_max)
	suspicion_level += suspicion_gain_rate;
else if (suspicion_level > 0)
	suspicion_level -= suspicion_gain_rate;
	
//remember last known player position
script_execute(scr_AI_remember_last_player_pos());

if (suspicion_level <= 0)
	currentState = AIStates.neutral;

if (suspicion_level == suspicion_max)
	currentState = AIStates.following;