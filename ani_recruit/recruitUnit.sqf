/*
	Author: lukrop
	Date: 10/1/2013
  Description: Spawns a unit and adds it to the group of the leader as
  long the group is not too big.
	
	Parameters:
        NUMBER: type of the unit
        OBJECT: unit of group in which the new units joins
	
	Returns: -
  
*/

_unitType = _this select 0;
_leader = _this select 1;
if (_leader != leader (group _leader)) then {hint "You are not the squad leader."}
else {
  if(count (units (group _leader)) < ani_maxRecruitUnits) then {

  private ["_unitClass"];

  switch (ani_friendlyFaction) do {
    case 1: {
      switch (_unitType) do {
        case 0: {
          _unitClass = "B_soldier_AR_F";
        };
        case 1: {
          _unitClass = "B_soldier_AR_F";
        };
        case 2: {
          _unitClass = "B_soldier_AT_F";
        };
        case 3: {
          _unitClass = "B_soldier_LAT_F";
        };
        case 4: {
          _unitClass = "B_medic_F";
        };
        case 5: {
          _unitClass = "B_helipilot_F";
        };
        case 6: {
          _unitClass = "B_engineer_F";
        };
      };
    };
    case 7: {
      switch (_unitType) do {
        case 0: {
          _unitClass = "B_mas_usn_soldier_AR_F";
        };
        case 1: {
          _unitClass = "B_mas_usn_soldier_MG_F";
        };
        case 2: {
          _unitClass = "B_mas_usn_soldier_AT_F";
        };
        case 3: {
          _unitClass = "B_mas_usn_soldier_LAT_F";
        };
        case 4: {
          _unitClass = "B_mas_usn_medic_F";
        };
        case 5: {
          _unitClass = "B_helipilot_F";
        };
        case 6: {
          _unitClass = "B_mas_usn_soldier_repair_F";
        };
      };
    };
  };

  _unitClass createUnit [(getMarkerPos "recruit_spawn"), group _leader];

  } else {
  hint format ["You may only have %1 units in your group (including players)", ani_maxRecruitUnits];
  };
};