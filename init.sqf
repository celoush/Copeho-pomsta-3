player setIdentity "WillCope";

diary = player createDiaryRecord ["Diary", [localize "STR_CELO_DiaryName",  localize "STR_CELO_DiaryDescription"]];

celo_cope_special_power_enabled = false;
celo_cope_special_power_activated = false;
celo_difficulty_time_koef = 0;
//celo_cope_track1_total_length = 163;

celo_fnc_default_look = {
	"colorCorrections" ppEffectAdjust [1, 1, 0, [0.7, 0.7, 0.9, 0.07], [0.1,0.70, 0.86, 0.65], [0.2, 0.5, 0.1, 0.0]];
	"colorCorrections" ppEffectCommit _this;   
	"colorCorrections" ppEffectEnable true;
};

0 setFog 0.4;	

0 call celo_fnc_default_look;

player enableFatigue false;

setViewDistance 700;
setObjectViewDistance [700,700];

waitUntil {time > 0};
enableEnvironment false;

init_music = {
	playmusic [_this, 0];
};


init_power_effects = {

	_celo_difficulty_time_koef = (_this # 0);

	for "_i" from 1 to 5 do {player addMagazine "2Rnd_12Gauge_Pellets"};

	celo_cope_special_power_enabled = true;

	waitUntil { sleep 0.2; celo_cope_special_power_activated };
	0 fadeMusic 1;
	(_this # 1) call init_music;

	sleep (_celo_difficulty_time_koef - 3);
	3 fadeMusic 0;
	sleep 3;
	celo_cope_special_power_enabled = false;
};

init_effects =  {
	
	while {true} do {		

		if (cameraView == "GUNNER" && celo_cope_special_power_enabled) then {

			celo_cope_special_power_activated = true;

			if (accTime > 0.4) then {
				setAccTime (accTime - 0.1);

				"radialBlur" ppEffectAdjust [0.03,0.04,0.05,0.07];
				"radialBlur" ppEffectEnable true;
				"radialBlur" ppEffectCommit 1;

				"colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0.0, 0.0], [1.8, 1.8, 0.5, 0.7],  [0.199, 0.587, 0.114, 0.0]];  
				"colorCorrections" ppEffectCommit 1;   
				"colorCorrections" ppEffectEnable true;

			};
		} else {
			if (accTime < 1) then {
				setAccTime (accTime + 0.1);

				"radialBlur" ppEffectEnable false;
				"radialBlur" ppEffectCommit 0;

				1 call celo_fnc_default_look;

			};
		};
		sleep 0.1;
	};
};


_camera_pos_3 = {
	_camera = _this;

	_camera camPrepareTarget [65359.10,77246.63,366.78];
	_camera camPreparePos [538.61,1099.42,46.53];
	_camera camPrepareFOV 0.700;
	_camera camCommitPrepared 0;

	0 fadeMusic 0;
	
	playMusic ["CELO_Cope_Track_Mezi4",0];
	5 fadeMusic 1;
	cutText["","BLACK IN",5];

	_camera camPrepareTarget [26186.77,97746.05,438.75];
	_camera camPreparePos [554.64,1088.67,9.12];
	_camera camPrepareFOV 0.485;
	_camera camCommitPrepared 14;
	sleep 12;
	2 fadeMusic 0;
	cutText["","BLACK OUT",2];
	sleep 2;
};


_camera_pos_4 = {
	_camera = _this;

	_camera camPrepareTarget [-89476.21,-27840.47,68.84];
	_camera camPreparePos [4747.43,5654.47,26.51];
	_camera camPrepareFOV 0.700;
	_camera camCommitPrepared 0;

	0 fadeMusic 0;

	playMusic ["CELO_Cope_Track_Mezi4",20];
	5 fadeMusic 1;
	cutText["","BLACK IN",5];

	_camera camPrepareTarget [-94055.45,20954.23,180.16];
	_camera camPreparePos [4759.67,5605.77,12.25];
	_camera camPrepareFOV 0.700;
	_camera camCommitPrepared 14;

	sleep 12;
	2 fadeMusic 0;
	cutText["","BLACK OUT",2];
	sleep 2;
};


_camera_pos_6 = {
	_camera = _this;

	_camera camPrepareTarget [10291.63,112531.72,-2.12];
	_camera camPreparePos [10781.70,12532.91,7.07];
	_camera camPrepareFOV 0.700;
	_camera camCommitPrepared 0;

	0 fadeMusic 0;

	playMusic ["CELO_Cope_Track_Mezi4",45];
	5 fadeMusic 1;
	cutText["","BLACK IN",5];

	_camera camPrepareTarget [-61794.29,80397.47,-11311.89];
	_camera camPreparePos [10810.28,12545.40,10.44];
	_camera camPrepareFOV 0.519;
	_camera camCommitPrepared 14;

	sleep 12;
	2 fadeMusic 0;
	cutText["","BLACK OUT",2];
	sleep 2;	
};

_camera_pos_1 = {

	_camera = _this;

	_camera camPrepareTarget [-45186.55,71462.80,-45051.65];
	_camera camPreparePos [11428.59,2431.36,44.75];
	_camera camPrepareFOV 0.700;
	_camera camCommitPrepared 0;

	0 fadeMusic 0;
	playMusic ["CELO_Cope_Track_Mezi4",70];
	5 fadeMusic 1;
	cutText["","BLACK IN",5];

	_camera camPrepareTarget [-34165.66,91089.90,7839.21];
	_camera camPreparePos [11416.57,2421.56,11.48];
	_camera camPrepareFOV 0.700;
	_camera camCommitPrepared 14;

	sleep 12;
	2 fadeMusic 0;
	cutText["","BLACK OUT",2];
	sleep 2;

};

_camera_pos_5 = {

	_camera = _this;

	_camera camPrepareTarget [77212.54,76118.66,218.58];
	_camera camPreparePos [1068.97,11317.63,44.47];
	_camera camPrepareFOV 0.700;
	_camera camCommitPrepared 0;

	0 fadeMusic 0;
	playMusic ["CELO_Cope_Track_Mezi4",3];
	5 fadeMusic 1;
	cutText["","BLACK IN",5];

	_camera camPrepareTarget [77212.54,76118.66,218.58];
	_camera camPreparePos [1009.58,11376.39,17.13];
	_camera camPrepareFOV 0.700;
	_camera camCommitPrepared 20;

	sleep 18;
	2 fadeMusic 0;
	cutText["","BLACK OUT",2];
	sleep 2;

};

_camera_pos_2 = {

	_camera = _this;

	_camera camPrepareTarget [-68941.87,49759.77,-33112.14];
	_camera camPreparePos [11501.30,482.66,19.90];
	_camera camPrepareFOV 0.700;
	_camera camCommitPrepared 0;

	0 fadeMusic 0;
	playMusic ["CELO_Cope_Track_Mezi4",20];
	5 fadeMusic 1;
	cutText["","BLACK IN",5];

	_camera camPrepareTarget [-68941.87,49759.77,-33112.14];
	_camera camPreparePos [11704.27,337.93,15.49];
	_camera camPrepareFOV 0.700;
	_camera camCommitPrepared 26;

	sleep 23;
	2 fadeMusic 0;
	cutText["","BLACK OUT",2];
	sleep 2;


};

_camera_pos_7 = {

	_camera = _this;

	_camera camPrepareTarget [-38611.20,85189.17,-34419.36];
	_camera camPreparePos [4962.18,2151.90,46.58];
	_camera camPrepareFOV 0.700;
	_camera camCommitPrepared 0;

	0 fadeMusic 0;
	playMusic ["CELO_Cope_Track_Mezi4",61];
	5 fadeMusic 1;
	cutText["","BLACK IN",5];

	_camera camPrepareTarget [9770.16,97226.48,30854.20];
	_camera camPreparePos [4918.21,2137.21,5.46];
	_camera camPrepareFOV 0.700;
	_camera camCommitPrepared 23;

	sleep 21;
	2 fadeMusic 0;
	cutText["","BLACK OUT",2];
	sleep 2;

};

mission_config = [
	["part3","start_3","reaction_type_3",65,[e3_1,e3_2,e3_3,e3_4,e3_5,e3_6,e3_7,e3_8,e3_9],"CELO_Cope_Track_6",47,laptop3,_camera_pos_3],
	["part4","start_4","reaction_type_1",65,[e4_1,e4_2,e4_3,e4_4,e4_5,e4_6,e4_7],"CELO_Cope_Track_7",265,laptop4,_camera_pos_4],
	["part6","start_6","reaction_type_1",80,[e6_1,e6_2,e6_3,e6_4,e6_5,e6_6,e6_7,e6_8,e6_9,e6_10,e6_11,e6_12,e6_13],"CELO_Cope_Track_1",350,laptop6,_camera_pos_6],
	["part1","start_1","reaction_type_2",150,[e1_1,e1_2,e1_3,e1_4,e1_5,e1_6,e1_7,e1_8,e1_9,e1_10,e1_12,e1_14,e1_15,e1_16],"CELO_Cope_Track_4",312,laptop1,_camera_pos_1],
	["part5","start_5","reaction_type_1",80,[e5_1,e5_2,e5_3,e5_4,e5_5,e5_6,e5_7,e5_8,e5_9,e5_10,e5_11,e5_12,e5_13],"CELO_Cope_Track_5",47,laptop5,_camera_pos_5],
	["part2","start_2","reaction_type_2",240,[e2_1,e2_2,e2_3,e2_4,e2_5,e2_6,e2_7,e2_8,e2_9,e2_10,e2_11,e2_12,e2_13,e2_14,e2_15,e2_16,e2_17,e2_18],"CELO_Cope_Track_3",333,laptop2,_camera_pos_2],
	["part7","start_7","reaction_type_1",185,[e7_1,e7_2,e7_3,e7_4,e1_5,e7_6,e7_7,e7_8,e7_9,e7_10,e7_11,e7_12,e7_13,e7_14,e7_15,e7_16,e7_17,e7_18,e7_19],"CELO_Cope_Track_2",5,laptop7,_camera_pos_7]
];


init_revenge = {	
	cutText["","BLACK IN",99999999];		
	
	celo_cope_special_power_enabled = true;
	cutText["","BLACK IN",2];
	//playmusic "CELO_Cope_Track_1";
	_ehPlayerKilled = player addEventHandler ["killed", {0 spawn { sleep 0.4; loadgame; }}];
	
	// zacname part 4 a obtiznosti 45
	//celo_difficulty_time_koef = 45;

	[mission_config,0] spawn init_part;

	0 spawn init_effects;

	enableSaving false;

};

init_part = {

	playMusic "";

	//section_ended = false;

	_config = _this # 0;
	_part_index = _this # 1;

	_part_config = _config # _part_index;

	
	_part_camera = _part_config # 8;

	_camera = "camera" camCreate [0,0,10];
	_camera cameraEffect ["internal", "BACK"];	

	_camera call _part_camera;

	_camera cameraEffect ["Terminate","back"];
	camDestroy _camera;
	
	celo_cope_special_power_activated = false;

	scopeName (_part_config # 0);

	player setpos getMarkerPos [(_part_config # 1),true];
	player setdir (_part_config # 6);
	player setDammage 0;
	player setVelocity [0,0,0];

	_reaction_type = (_part_config # 2);

	_power_script = [_part_config # 3,_part_config # 5] spawn init_power_effects;

	cutText["","BLACK IN",2];

	enableSaving true;
	savegame;	
	enableSaving false;

	_e = (_part_config # 4);
	(_part_config # 7) setObjectTextureGlobal [0,""];
	[	
		_part_config # 7, // target
		"Turn off computer", //title
		"", //idleIcon
		"", //progressIcon 
		"_this distance _target < 2",  //conditionShow
		"_caller distance _target < 2", //conditionProgress
		{
		}, //codeStart
		{}, //codeProgress
		{

			(_this#0) setObjectTextureGlobal [0, "#(argb,1,1,1)color(0,0,0,0)"];
			[(_this#0),(_this#3)#0] spawn {				
				_target = _this select 0;
				_units = _this select 1;		
				_alarm = createSoundSource ["Sound_Alarm", position _target, [], 0];
				{_x domove getPosATL player; _x setSkill 0.7; _x enableAI "PATH" } foreach _units;
				while {{alive _x} count _units > 0} do {
					{_x domove getPosATL player } foreach _units;
					sleep 1;
				};
				deleteVehicle _alarm; 
			}

		}, // codeCompleted
		{}, //codeInterurupted
		[_e], //arguments
		2 //duration
	] call BIS_fnc_holdActionAdd;

	{_x setSkill 0.2} foreach _e;
	{_x setSkill ["aimingSpeed", 0.1]} foreach _e;
	{_x setUnitRecoilCoefficient 10} foreach _e;
	{_x setUnitPos "UP"} foreach _e;
	{_x forceWalk true} foreach _e;
	{_x disableAI "PATH"} foreach _e;	
	{_x setSpeaker "Male01POL"} foreach _e;
	{removeHeadgear _x;_x addHeadgear "H_Hat_Tinfoil_F"} foreach _e;
	{removeGoggles _x;_x addGoggles "G_Blindfold_01_white_F"} foreach _e;

	while {true} do {

		_player_z = getPosATL player # 2;

		{
			_unit = _x;
		  
			_z = getPosATL _x # 2;

			switch (_reaction_type) do { 
				case "reaction_type_1" : {   
					if ((_unit distance player < 4) && (_unit knowsAbout player > 1.3) && (getPosATL _unit # 2) < 2 ) then {
						_unit enableAI "PATH";
						_unit setSkill 0.1;
						//_unit setUnitPos "MIDDLE";
					};
				}; 
				case "reaction_type_2" : {   
					if (((_unit distance player < 8) && (_unit knowsAbout player > 1)) || (_unit distance player < 5)) then {
						_unit enableAI "PATH";
						_unit setSkill 0.1;
					};
				}; 
				case "reaction_type_3" : {
					if (_unit distance player < 5) then {
						_unit doWatch getPosATL player;
					};
					if (_player_z > _z + 1) then {
						_unit enableAI "PATH";
						_unit setSkill 0.1;
						_unit domove getPosATL player;
					};
				}; 
				default {   
					if ((_unit distance player < 8) && (_unit knowsAbout player > 1)) then {
						_unit enableAI "PATH";
						_unit setSkill 0.25;
						_unit reveal player;
					};
				}; 
			};

			//if ({alive _x} count _e == 0) then {
			if (/*section_ended && */({alive _x} count _e == 0)) then {
				terminate _power_script;
				[_config,_part_config,_part_index] spawn {
					_config = _this # 0;
					_part_config = _this # 1;
					_new_index = ((_this # 2) + 1);
					cutText["","BLACK OUT",1];		
					1 fadeMusic 0;
					1 fadeSound 0;
					sleep 2;

					if ((_new_index) < (count _config) ) then {
						// another part
						0 fadeMusic 1;
						2 fadeSound 1;
						[_config,_new_index] spawn init_part;

					} else {
						//all done
						celo_end_of_mission = true;
						sleep 1;
						markAsFinishedOnSteam;
						activateKey "klic_celo_copes_revenge3";
						"end1" call BIS_fnc_endMission;
					};

				};
				true breakOut (_part_config # 0);	
			};


		} forEach _e;

		sleep 1.5;
	};

};

0 spawn init_revenge;
