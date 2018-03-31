// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // obj_menu_logic
global.__objectDepths[1] = 0; // obj_damageNumber
global.__objectDepths[2] = 0; // obj_class_select_arrow
global.__objectDepths[3] = 0; // obj_path_constructor
global.__objectDepths[4] = 0; // obj_camera_focus
global.__objectDepths[5] = 0; // obj_camera_focus_delay
global.__objectDepths[6] = 0; // obj_mage
global.__objectDepths[7] = 0; // obj_warrior
global.__objectDepths[8] = 0; // obj_rogue
global.__objectDepths[9] = 0; // obj_player_Spawner
global.__objectDepths[10] = 0; // obj_key
global.__objectDepths[11] = 0; // obj_player
global.__objectDepths[12] = 0; // obj_exit_door
global.__objectDepths[13] = 0; // obj_sword
global.__objectDepths[14] = 0; // obj_crab
global.__objectDepths[15] = 0; // obj_monster
global.__objectDepths[16] = 0; // obj_skeleton
global.__objectDepths[17] = 0; // obj_wolf
global.__objectDepths[18] = 0; // obj_block
global.__objectDepths[19] = 0; // obj_system
global.__objectDepths[20] = 0; // obj_undiscovered
global.__objectDepths[21] = 0; // obj_chamber_info
global.__objectDepths[22] = 0; // obj_path_marker
global.__objectDepths[23] = 0; // obj_chamber_entrance_marker
global.__objectDepths[24] = 0; // obj_nav_square
global.__objectDepths[25] = 0; // obj_chamber_marker
global.__objectDepths[26] = 0; // obj_item_armor
global.__objectDepths[27] = 0; // obj_item_helmet
global.__objectDepths[28] = 0; // obj_item_belt
global.__objectDepths[29] = 0; // obj_item_boot
global.__objectDepths[30] = 0; // obj_item_glove
global.__objectDepths[31] = 0; // obj_item_chest
global.__objectDepths[32] = 0; // obj_item_shoulders
global.__objectDepths[33] = 0; // obj_cameraDrone
global.__objectDepths[34] = 0; // obj_ball
global.__objectDepths[35] = 0; // obj_star
global.__objectDepths[36] = 0; // obj_bolt


global.__objectNames[0] = "obj_menu_logic";
global.__objectNames[1] = "obj_damageNumber";
global.__objectNames[2] = "obj_class_select_arrow";
global.__objectNames[3] = "obj_path_constructor";
global.__objectNames[4] = "obj_camera_focus";
global.__objectNames[5] = "obj_camera_focus_delay";
global.__objectNames[6] = "obj_mage";
global.__objectNames[7] = "obj_warrior";
global.__objectNames[8] = "obj_rogue";
global.__objectNames[9] = "obj_player_Spawner";
global.__objectNames[10] = "obj_key";
global.__objectNames[11] = "obj_player";
global.__objectNames[12] = "obj_exit_door";
global.__objectNames[13] = "obj_sword";
global.__objectNames[14] = "obj_crab";
global.__objectNames[15] = "obj_monster";
global.__objectNames[16] = "obj_skeleton";
global.__objectNames[17] = "obj_wolf";
global.__objectNames[18] = "obj_block";
global.__objectNames[19] = "obj_system";
global.__objectNames[20] = "obj_undiscovered";
global.__objectNames[21] = "obj_chamber_info";
global.__objectNames[22] = "obj_path_marker";
global.__objectNames[23] = "obj_chamber_entrance_marker";
global.__objectNames[24] = "obj_nav_square";
global.__objectNames[25] = "obj_chamber_marker";
global.__objectNames[26] = "obj_item_armor";
global.__objectNames[27] = "obj_item_helmet";
global.__objectNames[28] = "obj_item_belt";
global.__objectNames[29] = "obj_item_boot";
global.__objectNames[30] = "obj_item_glove";
global.__objectNames[31] = "obj_item_chest";
global.__objectNames[32] = "obj_item_shoulders";
global.__objectNames[33] = "obj_cameraDrone";
global.__objectNames[34] = "obj_ball";
global.__objectNames[35] = "obj_star";
global.__objectNames[36] = "obj_bolt";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for