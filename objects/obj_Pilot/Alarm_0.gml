///@description Hunger DMG

//Reduce Health
obj_GameManager.P_HP -= 1;
if (obj_GameManager.P_HNG <= 0) alarm[0] = 300;