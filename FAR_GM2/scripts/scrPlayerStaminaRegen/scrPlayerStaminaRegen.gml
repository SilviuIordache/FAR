///Stamina regeneration
if (staminaCurrent < staminaMax && staminaRegenStart == true)
{
    staminaCurrent += staminaRegenRate;
    if (staminaCurrent > staminaMax)
    {
        staminaCurrent = staminaMax;
    }
}
