switch (currentState)
{
	case AIStates.neutral: //0
		scr_AI_neutral();
		break;
	case AIStates.suspicious: //1
		scr_AI_suspicious();
		break;
	case AIStates.following: //2
		scr_AI_following();
		break;
	case AIStates.investigating: //3
		scr_AI_investigating();
		break;
	case AIStates.returning: //4
		scr_AI_returning();
		break;
	case AIStates.combat: //5
		scr_AI_combat();
		break;
	default:
		instance_destroy(); //4;
	//case AIStates.combat:
	//	break;
	//case AIStates.dead:
	//	break;
}


///DIRECTION FACING
if(direction > 90 && direction < 270) 
	directionFacing = -1
else directionFacing = 1


