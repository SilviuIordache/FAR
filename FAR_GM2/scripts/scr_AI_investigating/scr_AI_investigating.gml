if (suspicion_level > 0)
{
	suspicion_level -= suspicion_gain_rate;
}
else
{
	currentState = AIStates.returning;
}