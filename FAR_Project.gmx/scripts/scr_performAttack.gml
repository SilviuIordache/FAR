projectile = argument0;
dir        = argument1;

if dir == "left"
    with ( instance_create(x + 8, y + 8, projectile)) direction = 180; 
if dir == "right"
    with ( instance_create(x + 8, y + 8, projectile)) direction = 0; 
if dir == "up"
    with ( instance_create(x + 8, y + 8, projectile)) direction = 90; 
if dir == "down"
    with ( instance_create(x + 8, y + 8, projectile)) direction = 270; 

canAttackRanged = false;
alarm[0] = range_Attack_CD;

sta_Cur -= range_Attack_Sta_Cost;
sta_Regen_Start = false;
alarm[5] = sta_Regen_Start_time;

