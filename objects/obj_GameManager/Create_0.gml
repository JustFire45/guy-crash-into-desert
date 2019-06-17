/// Init

// Randomize Seed
randomize();

// Other Variables
DT = 0;
depth = -14000;
Hour = 0;
Track = 0.5;
TrackT = 30;

// Player Stats
P_HP = 100;
P_HNG = 100;
P_THR = 100;
P_INV = [0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1];
P_INVN = ["Match", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""];
P_INVC = [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
P_INVS = 4;

HungerTick = 3;
ThirstTick = 1;

// Text
Text[0] = "You have been shot down into the desert!\nFind the nearby enemy base and take one of their planes.";
TextText = 0;
TextWait = 0;
Options = ["", "", "", ""];
OptionsCursor = 0;
TextObj = noone;

// Set Alarms
alarm[1] = 1;
alarm[0] = 15;

// Other
Steps = 0;
DSF_Smoke = 1;
Inventory = -1;
InventorySelect = 0;
InventoryOption = 0;