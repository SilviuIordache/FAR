scrAICheckPlayerRangeAndLos()

//suspicion meter logic
if scrAICheckPlayerRangeAndLos()
{
	if (suspicion_level < suspicion_max)
		suspicion_level += suspicion_gain_rate;
		
	if (suspicion_level >= suspicion_max)
		suspicion_level = suspicion_max
}
else if (suspicion_level > 0)
	suspicion_level -= suspicion_gain_rate;

//remember last known player position
scrAiRememberLastPlayerPos();

if (suspicion_level <= 0)
	currentState = AIStates.neutral;

if (suspicion_level == suspicion_max)
	currentState = AIStates.following;