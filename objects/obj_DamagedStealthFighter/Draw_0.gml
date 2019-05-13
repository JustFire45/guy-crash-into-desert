/// Draw

if (obj_GameManager.Steps < 30) draw_sprite(spr_StealthFighterShadow, 0, x, y);
else draw_sprite(spr_StealthFighterShadow, 1, x + 2, y);
draw_self();