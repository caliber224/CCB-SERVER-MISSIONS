/*
*	The module_cleanUp configuration file.
*	You can change the variables below to whatever suits your mission best.
*
*	The radius is specified meters.
*	Timers are specified in seconds.
*/

///////////////////////////////
// 清弃车辆 //
///////////////////////////////
pvpfw_cleanup_cleanAbandonded = true; // 真的还是假的，取决于你是否想要丢弃被丢弃的车辆
pvpfw_cleanup_abandonedFromFaction = ["OPF_F","IND_F"]; //这些派别的车辆将被清理干净。
pvpfw_cleanUp_abandonRadius = 200; // 如果没有单位比指定的距离更近，则移除倒计时将开始。
pvpfw_cleanup_abandondTimer = 180; // 车辆在规定时间后将被移走。
pvpfw_cleanUp_dontCleanUpAround = ["respawn_west","respawn_east","respawn_civilian","respawn_vehicle_guerrila"]; //不要清理废弃的车辆在这些标记周围
pvpfw_cleanUp_dontCleanUpAroundDistance = 500; // 如果车辆在上述标记中的一个范围内，请不要清洗。

//////////////////////////////
// 清洁销毁车辆 //
//////////////////////////////
pvpfw_cleanUp_vehicleRadius = 5000; // 被毁车辆清理定时器将启动，如果没有单位比这个更接近
pvpfw_cleanUp_vehicleTimer = 60;

//////////////////
// 删除尸体//
//////////////////
pvpfw_cleanUp_bodyTimer = 1800; // 在指定秒数后，物体将被移除。

/////////////////////////////////
//     删除武器持有者     //
// 地面上的武器/弹药 //
/////////////////////////////////
#define __pvpfw_cleanUp_cleanWeaponHolders //如果你不希望武器持有者被清理，就评论这条线。
pvpfw_cleanUp_weaponHolderRadius = 5; // 武器清理清理倒计时将开始，如果没有一个单位比这个更近。
pvpfw_cleanUp_weaponHolderTimer = 10; // 武器持有者将在这段时间被删除

///////////////////////////////
// 清除毁坏的建筑物 //
///////////////////////////////
//#define __pvpfw_cleanUp_cleanRuins //如果你不想毁坏被毁的建筑物，请评论这条线。
pvpfw_cleanUp_ruinRadius = 100; // 如果没有实体在指定的范围内，则被摧毁的建筑物将被删除。

// Advanced
//#define __pvpfw_cleanUp_cleanExtra //如果不需要检查下面的对象，请注释此行
pvpfw_cleanUp_chemLightTimer = 300; //有效地覆盖默认为900秒的chemlight弹药对象的最大值timeToLive
pvpfw_cleanUp_pipeBombTimer = 1800; //有效地设置一个时间橄榄限制所有炸药，可以远程触发

//////////////////////
// 自定义条件 //
//////////////////////

//#define __pvpfw_cleanUp_customCondition //如果您不需要检查自定义条件（很可能），请注释此行。

//定义自定义你的空调。
//的对象会通过这两个功能是必须的，这威胁到它的回报或褶皱

pvpfw_cleanUp_customCondition = {
	private["_object","_return"];
	_object = _this;
	_return = false;
	
	// example code, that would return true for all objects, that are vehicles
	if (_object in vehicles) then{
		_return = true;
	};
	
	_return
};

// Define your custom removal script.
// This is what happens, when the custom condition returned true.

pvpfw_cleanUp_customRemoveScript = {
	private["_object"];
	_object = _this;
	
	deleteVehicle _object;
	diag_log format["#PVPFW module_cleanup: deleting object with custom condition %1",typeOf _object];
};