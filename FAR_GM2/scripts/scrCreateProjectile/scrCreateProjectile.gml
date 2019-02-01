projectileSpeed      = argument0;
projectileDamage     = argument1;
projectileDirection  = argument2;
objectToDamage       = obj_monster;

idd = instance_create(x, y, obj_bolt);

with (idd)
{
	speed = projectileSpeed;
	dmg   = projectileDamage;
	direction = projectileDirection;
	objTarget = objectToDamage;
}