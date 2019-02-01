///@param projectileToCreate
///@param projectileSpeed 
///@param projectileDamage
///@param projectileDirection


projectileToCreate   = argument0
projectileSpeed      = argument1;
projectileDamage     = argument2;
projectileDirection  = argument3;

idd = instance_create(x, y, projectileToCreate);

with (idd)
{
	speed = other.projectileSpeed;
	dmg   = other.projectileDamage;
	direction = other.projectileDirection;
}