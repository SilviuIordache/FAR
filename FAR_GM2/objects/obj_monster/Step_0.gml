scrCheckDirectionFacing();

switch (currentState)
{
	//0
	case AIStates.neutral: 
		scr_AI_neutral();
		break;
	//1
	case AIStates.suspicious: 
		scr_AI_suspicious();
		break;
	//2
	case AIStates.following: 
		scr_AI_following();
		break;
	//3
	case AIStates.investigating:
		scr_AI_investigating();
		break;
	//4
	case AIStates.returning: 
		scr_AI_returning();
		break;
	//5
	case AIStates.combat: 
		scr_AI_combat();
		break;
	//6;
	default:
		instance_destroy(); 
}