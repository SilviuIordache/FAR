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

global.canShootBolts = false;
alarm[0] = global.shootBoltsCD;


