finalDamage = argument0;
baseDamage  = argument1;
idd = instance_create(x + irandom_range(-6, 6) - 6, 
                      y + irandom_range(-6, 6) - 6, 
                      obj_damageNumber)
                      
idd.damageValue = finalDamage;

if( finalDamage > baseDamage)       // is the finalDamage a critical damage?
{
    idd.stayOnScreenTime = 0.01    //if Crit, stay on screen longer
    idd.col = c_yellow;             //if Crit, draw the damage number yellow
    idd.verticalSpeed = 0.05
}
