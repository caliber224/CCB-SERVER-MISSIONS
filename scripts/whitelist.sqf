_uidp=getplayerUID player;
_UIDList = [
	"76561198095138052",
	"76561198812529419",
	"76561198075061580",
	"76561198313861865",
	"76561198305173191",
	"76561198004559460",
	"76561198109528074",
	"76561198040985462",
	"76561198806432985",
	"76561198319730156",
	"76561198281326352",
	"76561198309035857",
	"76561198338925449",
	"76561198097139731",
	"76561198171346931"
];//军官白名单
_UIDList2 = [
	"76561198407549249",
	"76561198319730156",
	"76561198342036539",
	"76561198309768861",
	"76561198435532811",
	"76561198840776942",
	"76561198153456000",
	"76561198407547746",
	"76561198142633093",
	"76561198183820050",
	"76561198321296960",
	"76561198360128303",
	"76561198273650726",
	"76561198171346931"   //huohai
];//飞行员白名单



_uid=getplayerUID co;
if (!(_uid in _UIDList)&&(_uidp==_uid)) then{endMission "permission";};

_uid2=getplayerUID p1;
//_uidp=getplayerUID player;
if (!(_uid2 in _UIDList2)&&(_uidp==_uid2)) then{endMission "permission";};

_uid3=getplayerUID p2;
//_uidp=getplayerUID player;
if (!(_uid3 in _UIDList2)&&(_uidp==_uid3)) then{endMission "permission";};

_uid4=getplayerUID p3;
//_uidp=getplayerUID player;
if (!(_uid4 in _UIDList2)&&(_uidp==_uid4)) then{endMission "permission";};

_uid5=getplayerUID p4;
//_uidp=getplayerUID player;
if (!(_uid5 in _UIDList2)&&(_uidp==_uid5)) then{endMission "permission";};

_uid6=getplayerUID p5;
//_uidp=getplayerUID player;
if (!(_uid6 in _UIDList2)&&(_uidp==_uid6)) then{endMission "permission";};


//以下为注释，请在前面添加
/*
示例：
_uid6=getplayerUID p6;   p6为单位变量名，编辑器里可以定义
//_uidp=getplayerUID player;
if (!(_uid6 in _UIDList2)&&(_uidp==_uid6)) then{endMission "permission";};  '_uid6'要记得更改。这里的endMission后的missions需要在description.ext中定义


