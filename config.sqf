/*
	Author: lukrop
	Date: 10/1/2013
  Description: Configuration. Sets classnames used in the mission scripts.
  Defines enemy faction and side.
	
	Parameters: -
	
	Returns: -
  
*/

// Enemy side
// east = 0 
// west = 1
// resistance = 2
// civilian = 3
ani_enemySide = 0;
ani_friendlySide = 1;

// friendly faction
// 0 = CSAT
// 1 = NATO
// 2 = INDFOR (AAF)
// 3 = Civilian
// 4 = GRU Russian by massi
// 5 = African Rebel Army by massi
// 6 = African Rebel civilians by massi
ani_friendlyFaction = 0;


switch (ani_enemyFaction) do {
  case 0: {
      // CSAT
      ani_mortarClass = "O_Mortar_01_F";
      ani_mortarGunnerClass = "O_Soldier_F";
      ani_hvtClass = "O_officer_F";
      ani_hvtGuardClass = "O_Soldier_F";
  };
  case 4: {
      // russia
      ani_mortarClass = "O_mas_rus_Mortar_01_F";
      ani_mortarGunnerClass = "O_mas_rus_Soldier_F";
      ani_hvtClass = "O_mas_rus_Soldier_off_F_u";
      ani_hvtGuardClass = "O_mas_rus_Soldier_F";
    };

  case 5: {
      // african rebel army
      ani_mortarClass = "O_mas_afr_Mortar_01_F";
      ani_mortarGunnerClass = "O_mas_afr_Soldier_F";
      ani_hvtClass = "O_mas_afr_Soldier_off_F";
      ani_hvtGuardClass = "O_mas_afr_Soldier_F";
    };
  case 6: {
      // african rebel civilians
      ani_mortarClass = "O_mas_afr_Mortar_01_F";
      ani_mortarGunnerClass = "O_mas_afr_Rebel8a_F";
      ani_hvtClass = "O_mas_afr_Soldier_off_F";
      ani_hvtGuardClass = "O_mas_afr_Soldier_F";
    };
  default {
      // CSAT
      ani_mortarClass = "O_Mortar_01_F";
      ani_mortarGunnerClass = "O_Soldier_F";
      ani_hvtClass = "O_officer_F";
      ani_hvtGuardClass = "O_Soldier_F";
  };
};

ani_uavClass = "B_UAV_02_F";

ani_timeBetweenMissions = 120;

ani_citys = [ 
["city0", "city0_vecSpawn", [ "city0_reinf0",  "city0_reinf1",  "city0_reinf2",  "city0_reinf3"], ["city0_spawn0", "city0_spawn1", "city0_spawn2", "city0_spawn3"] ],
["city1", "city1_vecSpawn", [ "city1_reinf0",  "city1_reinf1",  "city1_reinf2",  "city1_reinf3"], ["city1_spawn0", "city1_spawn1", "city1_spawn2", "city1_spawn3"] ],
["city2", "city2_vecSpawn", [ "city2_reinf0",  "city2_reinf1",  "city2_reinf2",  "city2_reinf3"], ["city2_spawn0", "city2_spawn1", "city2_spawn2", "city2_spawn3"] ],
["city3", "city3_vecSpawn", [ "city3_reinf0",  "city3_reinf1",  "city3_reinf2",  "city3_reinf3"], ["city3_spawn0", "city3_spawn1", "city3_spawn2", "city3_spawn3"] ],
["city4", "city4_vecSpawn", [ "city4_reinf0",  "city4_reinf1",  "city4_reinf2",  "city4_reinf3"], ["city4_spawn0", "city4_spawn1", "city4_spawn2", "city4_spawn3"] ]
];

ani_lands = [
["land0", [ "city3_reinf1", "city1_vecSpawn", "reinf_spawn0"]],
["land1", [ "city0_reinf1", "city3_reinf0", "reinf_spawn1"]],
["land2", [ "city3_reinf2", "city4_reinf0", "city2_spawn3"]],
["land3", [ "city3_reinf3", "city0_reinf0", "reinf_spawn2"]],
["land4", [ "city1_reinf2", "city4_reinf3", "city4_reinf2"]],
["land5", [ "city3_reinf2", "city3_reinf3", "reinf_spawn2"]],
["land6", [ "city1_reinf3", "city1_vecSpawn", "reinf_spawn0"]],
["land7", [ "city3_reinf0", "city3_spawn1", "city2_reinf3"]],
["land8", [ "city3_spawn0", "reinf_spawn3", "city0_spawn1"]],
["land9", [ "city2_spawn1", "city2_reinf3", "city2_spawn2"]]
];
