if(canTakeDamage == true)
{
    hp_Current -= other.dmg
    canTakeDamage = false;
    alarm[4] = invincibleFrames;
}

