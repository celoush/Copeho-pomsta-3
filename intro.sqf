//#include "debug_console.hpp";
//[e1] call BIS_fnc_cameraOld;
//exitWith {};

"test_EmptyObjectForFireBig" createVehicle position source1;
"test_EmptyObjectForFireBig" createVehicle position source2;
"test_EmptyObjectForFireBig" createVehicle position source3;

"colorCorrections" ppEffectEnable true;
"colorCorrections" ppEffectAdjust [1.0, 1.0, 0.0,[1.0, 1.0, 1.0, 0.0],[1.0, 1.0, 0.9, 0.35],[0.3,0.3,0.3,-0.1]];
"colorCorrections" ppEffectCommit 0;

_e = [e1,e2,e3,e4,e5,e6,e7];
{_x setUnitPos "UP";_x setBehaviour "SAFE";_x disableAI "MOVE";_x disableAI "TARGET"} foreach _e;
{removeHeadgear _x;_x addHeadgear "H_Hat_Tinfoil_F"} foreach _e;
{removeGoggles _x;_x addGoggles "G_Blindfold_01_white_F"} foreach _e;
{_x setSpeaker "Male01POL"} foreach _e;

cope setUnitPos "UP";

cutText["","BLACK IN",99999999];
0 fadeSound 0;
0 fadeMusic 0;

_camera = "camera" camCreate [4995.54,11218.69,3.86];
_camera cameraEffect ["internal", "BACK"];	

_camera camPrepareTarget [28012.00,84476.77,-65527.59];
_camera camPreparePos [11920.19,8879.38,141.37];
_camera camPrepareFOV 0.793;
_camera camCommitPrepared 0;

sleep 1;
cutText["","BLACK IN",20];
2 fadeMusic 1;
playMusic "CELO_Cope_Track_Intro";


_camera camPrepareTarget [28012.00,84476.77,-65527.59];
_camera camPreparePos [12284.13,10586.33,65.83];
_camera camPrepareFOV 0.578;
_camera camCommitPrepared 65;
 
sleep 64.5;

_camera camPrepareTarget [32016.25,103288.86,-32554.36];
_camera camPreparePos [12331.87,10810.23,23.08];
_camera camPrepareFOV 0.578;
_camera camCommitPrepared 15;

//_camera camPrepareTarget [-52791.41,86696.52,-206.49];
//_camera camPreparePos [12365.87,10837.89,7.90];
//_camera camPrepareFOV 0.700;

//_camera camPrepareTarget [73584.04,67372.63,-55195.61];
//_camera camPreparePos [12299.84,10837.17,41.58];
//_camera camPrepareFOV 0.700;

//_camera camCommitPrepared 0;
sleep 13;

cutText["","BLACK OUT",2];

sleep 2;

_camera camPrepareTarget [-34926.68,95746.95,23585.16];
_camera camPreparePos [12345.77,10861.46,0.89];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

cutText["","BLACK IN",2];

;comment "23:19:41";
_camera camPrepareTarget [40400.46,103874.36,23636.25];
_camera camPreparePos [12330.94,10856.21,1.41];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 12;

sleep 10;
cutText["","BLACK OUT",2];

_camera camPrepareTarget [-64362.05,-53257.84,-2550.91];
_camera camPreparePos [12342.67,10865.34,1.46];
_camera camPrepareFOV 0.661;
_camera camCommitPrepared 0;

cutText["","BLACK IN",2];
sleep 6;
cutText["","BLACK OUT",2];
sleep 2;

_camera camPrepareTarget [10871.23,110160.69,11634.94];
_camera camPreparePos [12338.37,10861.80,1.50];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

cutText["","BLACK IN",2];

_camera camPrepareTarget [10871.23,110160.69,11634.94];
_camera camPreparePos [12338.61,10750.44,0.61];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 28;

sleep 20;

cutText["","BLACK OUT",2];

sleep 2;

//["Paste",["Enoch",[5057.96,11187.6,6.96472],296.165,0.75,[0.745045,0],0,0,1170,0.211962,0,1,-0.105393,1.27966]] call bis_fnc_camera;

0 fadeSound 0;

/*_camera camPrepareTarget [-82507.38,59088.30,7103.45];
_camera camPreparePos [5190.35,11112.26,9.65];
_camera camPrepareFOV 0.686;
_camera camCommitPrepared 95;
*/

/*titleText [localize "STR_CELO_title1","PLAIN",3];
sleep 6;
titleText [localize "STR_CELO_title2","PLAIN",3];
sleep 6;
titleText [localize "STR_CELO_title3","PLAIN",3];*/

titleRsc ["titlesceloush", "PLAIN"];
sleep 6;
titleRsc ["titlesuvadi", "PLAIN"];
sleep 6;
titleRsc ["titlesorb", "PLAIN"];

6 fadeMusic 0;
sleep 11;

endMission "END1";