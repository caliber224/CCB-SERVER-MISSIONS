/*
    By:Laoguiuncle
	  2019.05.18
	QQ:275691975

*/

waitUntil {(getPlayerUID player) != ""};

_uid = getPlayerUID player;

_UIDList = ["123456789","123456789","123456789"];


/* _UIDList = call compileFinal preProcessFile"whitelist.txt"; */

if !(_uid in _UIDList) then{["permission",false,false] call BIS_fnc_endMission;};






/* 
/////////////////////////////////////////////////////////////////////////////////////////////////

请到任务内找 description.ext 并将如下内容添加，请注意你的文件里是否存在重复的 class CfgDebriefing
class CfgDebriefing
{

	class notinwhitelist
	{
		title = "此栏位需要白名单";
		subtitle = "你不在此栏位的白名单呢";
		description = "请加QQ群寻求帮助";
		pictureBackground = "";
		picture = "";
		pictureColor[] = {0,0.3,0.6,1};
	};
};

/////////////////////////////////////////////////////////////////////////////////////////////////
 */