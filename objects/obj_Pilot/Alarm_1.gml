///@description Thirst DMG

//Reduce Health
obj_GameManager.P_HP -= 1;
if (obj_GameManager.P_THR <= 0) alarm[0] = 300;