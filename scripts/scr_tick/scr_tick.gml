/// scr_tick()

// Steps
obj_GameManager.Steps += 1;

// Hour
obj_GameManager.Hour += 0.25;
if (obj_GameManager.Hour >= 24) obj_GameManager.Hour = 0;

// Hunger and Thirst Damage
if (obj_GameManager.P_HNG <= 0 or obj_GameManager.P_THR <= 0) obj_GameManager.P_HP -= choose(2, 3);

// Heal
if (obj_GameManager.P_THR > 90 and obj_GameManager.P_HNG > 90 and obj_GameManager.Steps mod 5 == 0) obj_GameManager.P_HP += choose(1, 2);
if (obj_GameManager.P_HP > 100) obj_GameManager.P_HP = 100;

// Hunger
obj_GameManager.HungerTick -= 1;
if (obj_GameManager.HungerTick <= 0)
{
	if (obj_GameManager.Hour > 6 and obj_GameManager.Hour < 18) obj_GameManager.HungerTick = 6;
	else obj_GameManager.HungerTick = 3;
	obj_GameManager.P_HNG -= 1.25 + (obj_Pilot.Run * 0.25);
	if (obj_GameManager.P_HNG < 0)
	{
		obj_GameManager.P_HNG = 0;
		obj_GameManager.P_HP -= irandom_range(1, 3);
	}
}

// Thirst
obj_GameManager.ThirstTick -= 1;
if (obj_GameManager.ThirstTick < 0)
{
	if (obj_GameManager.Hour > 6 and obj_GameManager.Hour < 18) obj_GameManager.ThirstTick = 2;
	else obj_GameManager.ThirstTick = 1;
	obj_GameManager.P_THR -= 1.25 + (obj_Pilot.Run * 0.25);
	if (obj_GameManager.P_THR <= 0)
	{
		obj_GameManager.P_THR = 0;
		obj_GameManager.P_HP -= irandom_range(1, 3);
	}
}

// obj_GroundItem Despawn Counter
with (obj_GroundItem)
{
	Despawn -= 1;
	if (Despawn <= 0)
	{
		instance_destroy();
	}
}