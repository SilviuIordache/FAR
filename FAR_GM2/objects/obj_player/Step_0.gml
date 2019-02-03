/// @description MAIN STEP EVENT; MOVEMENT SCRIPT
event_inherited();

scrCheckDirectionFacing();

scr_KB_Movement(5/100 * spd, 0.2, spd);

scrHopAnimation();

global.playerMouseAngle = point_direction(x, y, mouse_x, mouse_y)

scrPlayerRangedAttack();

scrPlayerMeleeAttack();

scrPlayerStaminaRegen();

///EXPERIENCE POINTS
/*
if (xp_current > xp_level[xp_level_current])
{
    xp_level_current += 1
    xp_current        = 0
    hp_Current       += 1
}
