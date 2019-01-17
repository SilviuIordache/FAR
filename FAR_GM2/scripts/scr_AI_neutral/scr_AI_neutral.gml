script_execute(scr_AI_check_player_in_LOS());
script_execute(scr_AI_check_player_in_range());

if (player_is_in_LOS && player_is_in_range)
	currentState = AIStates.suspicious;
	
