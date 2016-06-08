baseDamage = argument0 
critChance = argument1
critDamage = argument2
critical = false
chance = irandom(100)

if ( chance < critChance)
{
    critical = true;
}

if ( critical == true)
{
    return baseDamage + baseDamage * critDamage / 100;
}
else
{
    return baseDamage;
}
