/// scr_tick()

// Steps
obj_GameManager.Steps += 1;

// Hunger
obj_GameManager.HungerTick -= 1;
if (obj_GameManager.HungerTick <= 0)
{
	obj_GameManager.HungerTick = 3;
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
	obj_GameManager.ThirstTick = 1;
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