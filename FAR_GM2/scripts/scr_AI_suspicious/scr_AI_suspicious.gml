scrAICheckPlayerRangeAndLos();
scrAiRememberLastPlayerPos();

//suspicion meter logic
if (scrAICheckPlayerRangeAndLos())
{
	if (suspicion_level < suspicion_max)
	{
		suspicion_level += suspicion_gain_rate;
	}
		
	if (suspicion_level >= suspicion_max)
	{
		suspicion_level = suspicion_max;
		currentState = AIStates.following;
	}
}
else if (suspicion_level > 0)
{
	suspicion_level -= suspicion_gain_rate;
}

if (suspicion_level <= 0)
{
	currentState = AIStates.neutral;
}
