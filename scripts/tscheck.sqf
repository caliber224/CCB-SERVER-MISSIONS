_tsname=call TFAR_fnc_getTeamSpeakServerName;
_servername="Arma3 CNMS&CCB";
if !(_tsname ==_servername) then{endMission "ts";};