cutText["","BLACK IN",99999999];
0 fadeSound 0;
0 fadeMusic 0;

_camera = "camera" camCreate [4995.54,11218.69,3.86];
_camera cameraEffect ["internal", "BACK"];	

_camera camPrepareTarget [-82507.38,59088.30,7103.45];
_camera camPreparePos [4995.54,11218.69,3.86];
_camera camPrepareFOV 0.300;
_camera camCommitPrepared 0;

_camera camPrepareTarget [-82507.38,59088.30,7103.45];
_camera camPreparePos [5068.23,11178.93,7.86];
_camera camPrepareFOV 0.686;
_camera camCommitPrepared 75;

cutText["","BLACK IN",99999999];
sleep 2;
cutText["","BLACK IN",8];

2 fadeMusic 1;
playMusic "CELO_Cope_Track_Outro";

//["Paste",["Enoch",[5057.96,11187.6,6.96472],296.165,0.75,[0.745045,0],0,0,1170,0.211962,0,1,-0.105393,1.27966]] call bis_fnc_camera;

0 fadeSound 0;

sleep 42.75;

_camera camPrepareTarget [-82507.38,59088.30,7103.45];
_camera camPreparePos [5190.35,11112.26,9.65];
_camera camPrepareFOV 0.686;
_camera camCommitPrepared 95;

sleep 10;

titleRsc ["titleskonec", "BLACK OUT",15];

25 fadeMusic 0;

sleep 27;

endMission "END1";