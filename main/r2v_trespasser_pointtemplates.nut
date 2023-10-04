::GiveWeapon <- function(player, classname, itemid, model)
{
	if (model != null && (classname == "tf_wearable" || classname == "tf_wearable_demoshield" || classname == "tf_wearable_razorback"))
	{
		local wearable = Entities.CreateByClassname(classname);
		NetProps.SetPropInt(wearable, "m_nModelIndex", PrecacheModel(model));
		NetProps.SetPropBool(wearable, "m_bValidatedAttachedEntity", true);
		NetProps.SetPropBool(wearable, "m_AttributeManager.m_Item.m_bInitialized", true);
		NetProps.SetPropEntity(wearable, "m_hOwnerEntity", player);
		wearable.SetOwner(player);
		wearable.DispatchSpawn();
		EntFireByHandle(wearable, "SetParent", "!activator", 0.0, player, player);
		NetProps.SetPropInt(wearable, "m_fEffects", 129);
		for (local i = 0; i < 7; i++)
		{
			local heldWeapon = GetPropEntityArray(player, "m_hMyWeapons", i);
			if (heldWeapon == null) 
				continue;
			if (heldWeapon.GetSlot() != wearable.GetSlot()) 
				continue;
			heldWeapon.Destroy();
			SetPropEntityArray(player, "m_hMyWeapons", wearable, i);
			break;
		}
		return wearable;
	} else {
		local weapon = Entities.CreateByClassname(classname);
		SetPropInt(weapon, "m_AttributeManager.m_Item.m_iItemDefinitionIndex", itemid);
		SetPropBool(weapon, "m_AttributeManager.m_Item.m_bInitialized", true);
		SetPropBool(weapon, "m_bValidatedAttachedEntity", true);
		Entities.DispatchSpawn(weapon);
		for (local i = 0; i < 7; i++)
		{
			local heldWeapon = GetPropEntityArray(player, "m_hMyWeapons", i);
			if (heldWeapon == null) 
				continue;
			if (heldWeapon.GetSlot() != weapon.GetSlot()) 
				continue;
			heldWeapon.Destroy();
			SetPropEntityArray(player, "m_hMyWeapons", weapon, i);
			break;
		}
		player.Weapon_Equip(weapon);
	}
	return weapon;
}
::WeaponSwitchSlot <- function(slot, player) {
	for (local i = 0; i < 7; i++) {
		local weapon = GetPropEntityArray(player, "m_hMyWeapons", i);
		if (weapon.GetSlot() == slot) player.Weapon_Switch(weapon);
		break;
	}
}
::r2v_events <- {}
::r2v_events.OnGameEvent_teamplay_round_start <- function(params)
{
	if (Entities.FindByClassname(null, "point_populator_interface") != null) return
	SpawnEntityFromTable("point_populator_interface", { targetname = "pop_interface" })
}
__CollectGameEventCallbacks(::r2v_events)

::overlay_stuff <- function(org, ang)
{
	local logic_relay1 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "aliveblu_checker,Trigger,,0.1,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION1"
	})
	logic_relay1.SetOrigin(org)
	logic_relay1.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay2 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "overlay_command_relay,Trigger,,0.21,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION2"
	})
	logic_relay2.SetOrigin(org)
	logic_relay2.SetAngles(ang[0], ang[1], ang[2])

	local point_clientcommand3 = SpawnEntityFromTable("point_clientcommand", {
	    targetname = "commandme"
	})
	point_clientcommand3.SetOrigin(org)
	point_clientcommand3.SetAngles(ang[0], ang[1], ang[2])

	local trigger_multiple_brush1 = SpawnEntityFromTable("trigger_multiple", {
	    spawnflags = 1,
	    StartDisabled = 1,
	    mins = "-1 -1 -1",
	    maxs = "1 1 1",
	    origin = Vector(0, 0, 30),
	    "OnStartTouch#1": "commandme,Command,r_screenoverlay ~,0,-1",
	    "OnStartTouch#2": "!self,Kill,,0.1,-1"
	})
	trigger_multiple_brush1.KeyValueFromInt("solid", 2)
	trigger_multiple_brush1.KeyValueFromString("mins", "-1 -1 -1")
	trigger_multiple_brush1.KeyValueFromString("maxs", "1 1 1")

	local logic_relay4 = SpawnEntityFromTable("logic_relay", {
	    targetname = "overlay_command_relay",
	    "OnTrigger#1": "commandme,Command,r_screenoverlay effects/combine_binocoverlay,0,-1",
	    StartDisabled = 1
	})
	logic_relay4.SetOrigin(org)
	logic_relay4.SetAngles(ang[0], ang[1], ang[2])

	local filter_activator_name5 = SpawnEntityFromTable("filter_activator_name", {
	    targetname = "filter_aliveblu_overlay",
	    filtername = "aliveblu",
	    "OnPass#1": "overlay_command_relay,Enable,,0,-1",
	    "OnFail#2": "overlay_command_relay,Disable,,0,-1",
	    "OnFail#3": "clear_overlay_brush,Enable,,0,-1"
	})
	filter_activator_name5.SetOrigin(org)
	filter_activator_name5.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay6 = SpawnEntityFromTable("logic_relay", {
	    targetname = "aliveblu_checker",
	    spawnflags = 2,
	    "OnTrigger#1": "!self,Trigger,,0.1,-1",
	    "OnTrigger#2": "filter_aliveblu_overlay,TestActivator,!activator,0,-1"
	})
	logic_relay6.SetOrigin(org)
	logic_relay6.SetAngles(ang[0], ang[1], ang[2])

}
::ModelandScale_FailSafe_Scout <- function(org, ang)
{
	local logic_relay7 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activatorSetCustomModelWithClassAnimationsmodels/player/scout.mdl0.1-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION3"
	})
	logic_relay7.SetOrigin(org)
	logic_relay7.SetAngles(ang[0], ang[1], ang[2])

}
::ModelandScale_FailSafe_Soldier <- function(org, ang)
{
	local logic_relay8 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activatorSetCustomModelWithClassAnimationsmodels/player/soldier.mdl0.1-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION4"
	})
	logic_relay8.SetOrigin(org)
	logic_relay8.SetAngles(ang[0], ang[1], ang[2])

}
::ModelandScale_FailSafe_Pyro <- function(org, ang)
{
	local logic_relay9 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activatorSetCustomModelWithClassAnimationsmodels/player/pyro.mdl0.1-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION5"
	})
	logic_relay9.SetOrigin(org)
	logic_relay9.SetAngles(ang[0], ang[1], ang[2])

}
::ModelandScale_FailSafe_Demo <- function(org, ang)
{
	local logic_relay10 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activatorSetCustomModelWithClassAnimationsmodels/player/demo.mdl0.1-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION6"
	})
	logic_relay10.SetOrigin(org)
	logic_relay10.SetAngles(ang[0], ang[1], ang[2])

}
::ModelandScale_FailSafe_Heavy <- function(org, ang)
{
	local logic_relay11 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activatorSetCustomModelWithClassAnimationsmodels/player/heavy.mdl0.1-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION7"
	})
	logic_relay11.SetOrigin(org)
	logic_relay11.SetAngles(ang[0], ang[1], ang[2])

}
::ModelandScale_FailSafe_Engie <- function(org, ang)
{
	local logic_relay12 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activatorSetCustomModelWithClassAnimationsmodels/player/engineer.mdl0.1-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION8"
	})
	logic_relay12.SetOrigin(org)
	logic_relay12.SetAngles(ang[0], ang[1], ang[2])

}
::ModelandScale_FailSafe_Medic <- function(org, ang)
{
	local logic_relay13 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activatorSetCustomModelWithClassAnimationsmodels/player/medic.mdl0.1-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION9"
	})
	logic_relay13.SetOrigin(org)
	logic_relay13.SetAngles(ang[0], ang[1], ang[2])

}
::ModelandScale_FailSafe_Sniper <- function(org, ang)
{
	local logic_relay14 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activatorSetCustomModelWithClassAnimationsmodels/player/sniper.mdl0.1-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION10"
	})
	logic_relay14.SetOrigin(org)
	logic_relay14.SetAngles(ang[0], ang[1], ang[2])

}
::ModelandScale_FailSafe_Spy <- function(org, ang)
{
	local logic_relay15 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activatorSetCustomModelWithClassAnimationsmodels/player/spy.mdl0.1-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION11"
	})
	logic_relay15.SetOrigin(org)
	logic_relay15.SetAngles(ang[0], ang[1], ang[2])

}
::reviveredasblu_player <- function(org, ang)
{
	local logic_relay16 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "lastcounter,subtract,1,0.0,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION1"
	})
	logic_relay16.SetOrigin(org)
	logic_relay16.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay17 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "lastcounter,add,1,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION12"
	})
	logic_relay17.SetOrigin(org)
	logic_relay17.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay18 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "users,trigger,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION13"
	})
	logic_relay18.SetOrigin(org)
	logic_relay18.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay19 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activator,addoutput,targetname deadred,0.0,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION2"
	})
	logic_relay19.SetOrigin(org)
	logic_relay19.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay20 = SpawnEntityFromTable("logic_relay", {
	    targetname = "users",
	    "ontrigger#1": "!activator,addoutput,onuser1 !selfRunScriptCodeself.AddCustomAttribute(`cancel falling damage`, 1, -1)0-1,0,-1",
	    "ontrigger#2": "!activator,addoutput,onuser1 !selfRunScriptCodeself.RemoveCustomAttribute(`cancel falling damage`)5-1,0,-1"
	})
	logic_relay20.SetOrigin(org)
	logic_relay20.SetAngles(ang[0], ang[1], ang[2])

}
::reviveredasblu <- function(org, ang)
{
	local logic_relay21 = SpawnEntityFromTable("logic_relay", {
	    targetname = "newlifetoblu",
	    "ontrigger#1": "redtargetname,disable,,0,-1",
	    "ontrigger#2": "deadredtele,enable,,0,-1",
	    "ontrigger#3": "deadred,$forcerespawndead,,0.05,-1",
	    "ontrigger#4": "redtargetname,enable,,0.5,-1",
	    "ontrigger#5": "deadredtele,disable,,0.5,-1"
	})
	logic_relay21.SetOrigin(org)
	logic_relay21.SetAngles(ang[0], ang[1], ang[2])

	local filter_activator_name22 = SpawnEntityFromTable("filter_activator_name", {
	    targetname = "filter_deadred",
	    filtername = "deadred"
	})
	filter_activator_name22.SetOrigin(org)
	filter_activator_name22.SetAngles(ang[0], ang[1], ang[2])

	local filter_activator_name23 = SpawnEntityFromTable("filter_activator_name", {
	    targetname = "filter_aliveblu_no",
	    negated = 1,
	    filtername = "aliveblu"
	})
	filter_activator_name23.SetOrigin(org)
	filter_activator_name23.SetAngles(ang[0], ang[1], ang[2])

	local filter_activator_name24 = SpawnEntityFromTable("filter_activator_name", {
	    targetname = "filter_aliveblu",
	    filtername = "aliveblu"
	})
	filter_activator_name24.SetOrigin(org)
	filter_activator_name24.SetAngles(ang[0], ang[1], ang[2])

	local trigger_multiple_brush2 = SpawnEntityFromTable("trigger_multiple", {
	    mins = "-152 -368 -160",
	    maxs = "152 368 160",
	    origin = Vector(856, 1280, 352),
	    filtername = "filter_deadred",
	    spawnflags = 1,
	    "onstarttouch#1": "!activator,addoutput,targetname alivered,0,-1"
	})
	trigger_multiple_brush2.KeyValueFromInt("solid", 2)
	trigger_multiple_brush2.KeyValueFromString("mins", "-152 -368 -160")
	trigger_multiple_brush2.KeyValueFromString("maxs", "152 368 160")

	local trigger_teleport_brush3 = SpawnEntityFromTable("trigger_teleport", {
	    mins = "-152 -368 -160",
	    maxs = "152 368 160",
	    origin = Vector(856, 1280, 352),
	    spawnflags = 1,
	    filtername = "filter_deadred",
	    target = "bluspawnpoint",
	    startdisabled = 1
	})
	trigger_teleport_brush3.KeyValueFromInt("solid", 2)
	trigger_teleport_brush3.KeyValueFromString("mins", "-152 -368 -160")
	trigger_teleport_brush3.KeyValueFromString("maxs", "152 368 160")

	local info_teleport_destination25 = SpawnEntityFromTable("info_teleport_destination", {
	    targetname = "bluspawnpoint",
	    origin = Vector(-1885, -561, 60)
	})
	info_teleport_destination25.SetOrigin(org)
	info_teleport_destination25.SetAngles(ang[0], ang[1], ang[2])

	local trigger_multiple_brush4 = SpawnEntityFromTable("trigger_multiple", {
	    origin = Vector(-1885, -561, 60),
	    mins = "-64 -64 -64",
	    maxs = "64 64 64",
	    spawnflags = 1,
	    "onstarttouch#1": "!activator,addoutput,targetname aliveblu,0,-1",
	    "onstarttouch#2": "!activatorRunScriptCodeself.AddCond(43)0-1",
	    "onstarttouch#3": "!activatorRunScriptCodeself.AddCond(114)0-1",
	    "onstarttouch#4": "!activator,$weaponstripslot,0,0,-1",
	    "onstarttouch#5": "!activator,$weaponstripslot,1,0,-1",
	    "onstarttouch#6": "!activator,$weaponstripslot,3,0,-1",
	    "onstarttouch#7": "!activator,$weaponstripslot,4,0,-1",
	    "onstarttouch#8": "!activator,$weaponstripslot,5,0,-1",
	    "onstarttouch#9": "!activator,$weaponstripslot,6,0,-1",
	    "onstarttouch#10": "!activatorRunScriptCodeWeaponSwitchSlot(2, self)0-1",
	    "onstarttouch#11": "!activatorRunScriptCodeself.AddCustomAttribute(`SET BONUS: special dsp`, 38, -1)0-1",
	    "onstarttouch#12": "!activatorRunScriptCodeself.AddCustomAttribute(`damage penalty`, 0.5, -1)0-1",
	    "onstarttouch#13": "!activatorRunScriptCodeself.AddCustomAttribute(`increased jump height`, 1, -1)0-1",
	    "onstarttouch#14": "!activatorRunScriptCodeself.AddCustomAttribute(`dmg taken from crit reduced`, 1, -1)0-1",
	    "onstarttouch#15": "!activatorSetCustomModelWithClassAnimationsmodels/bots/soldier/bot_soldier_gibby.mdl0.1-1"
	})
	trigger_multiple_brush4.KeyValueFromInt("solid", 2)
	trigger_multiple_brush4.KeyValueFromString("mins", "-64 -64 -64")
	trigger_multiple_brush4.KeyValueFromString("maxs", "64 64 64")

	local trigger_stun_brush5 = SpawnEntityFromTable("trigger_stun", {
	    origin = Vector(0, 1440, 228),
	    mins = "-9999 -9999 -9999",
	    maxs = "9999 9999 9999",
	    move_speed_reduction = 0.75,
	    stun_effects = 1,
	    stun_duration = 6,
	    spawnflags = 1
	})
	trigger_stun_brush5.KeyValueFromInt("solid", 2)
	trigger_stun_brush5.KeyValueFromString("mins", "-9999 -9999 -9999")
	trigger_stun_brush5.KeyValueFromString("maxs", "9999 9999 9999")

}
::p_tankcolored <- function(org, ang)
{
	local logic_relay26 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activator,color,0 0 0,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION14"
	})
	logic_relay26.SetOrigin(org)
	logic_relay26.SetAngles(ang[0], ang[1], ang[2])

}
::p_money <- function(org, ang)
{
	local info_particle_system27 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "money",
	    effect_name = "mvm_cash_embers",
	    flag_as_weather = 0,
	    start_active = 1
	})
	info_particle_system27.SetOrigin(org)
	info_particle_system27.SetAngles(ang[0], ang[1], ang[2])

}
::p_kaboom <- function(org, ang)
{
	local info_particle_system28 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "kaboom",
	    effect_name = "firesmoke_collumnP",
	    flag_as_weather = 0,
	    start_active = 0
	})
	info_particle_system28.SetOrigin(org)
	info_particle_system28.SetAngles(ang[0], ang[1], ang[2])

}
::p_rock_pusher <- function(org, ang)
{
	local trigger_push_brush6 = SpawnEntityFromTable("trigger_push", {
	    origin = Vector(-1088, 984, 48),
	    mins = "-112 -40 -144",
	    maxs = "112 40 144",
	    pushdir = "0 -75 0",
	    spawnflags = 1,
	    speed = 180,
	    targetname = "rock_pusher"
	})
	trigger_push_brush6.KeyValueFromInt("solid", 2)
	trigger_push_brush6.KeyValueFromString("mins", "-112 -40 -144")
	trigger_push_brush6.KeyValueFromString("maxs", "112 40 144")

}
::p_crash <- function(org, ang)
{
	local info_particle_system29 = SpawnEntityFromTable("info_particle_system", {
	    effect_name = "hightower_smoke",
	    flag_as_weather = 0,
	    start_active = 1
	})
	info_particle_system29.SetOrigin(org)
	info_particle_system29.SetAngles(ang[0], ang[1], ang[2])

}
::p_barnaclehead <- function(org, ang)
{
	local prop_dynamic30 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "barnacle1",
	    model = "models/bornacle.mdl",
	    rendercolor = "100 100 100",
	    modelscale = 4,
	    solid = 0,
	    angles = QAngle(0, 0, -180),
	    origin = Vector(0, 0, 5),
	    disableshadows = 1,
	    DefaultAnim = "chew_humanoid"
	})
	prop_dynamic30.SetOrigin(org)
	prop_dynamic30.SetAngles(ang[0], ang[1], ang[2])

}
::p_virofix <- function(org, ang)
{
	local trigger_push_brush7 = SpawnEntityFromTable("trigger_push", {
	    filtername = "filter_virophage",
	    origin = Vector(641, 304, -49),
	    mins = "-50 -42 -124",
	    maxs = "50 42 124",
	    pushdir = "-60 -35 0",
	    spawnflags = 1,
	    speed = 1000,
	    StartDisabled = 1,
	    targetname = "barrel_pusher"
	})
	trigger_push_brush7.KeyValueFromInt("solid", 2)
	trigger_push_brush7.KeyValueFromString("mins", "-50 -42 -124")
	trigger_push_brush7.KeyValueFromString("maxs", "50 42 124")

	local trigger_catapult_brush8 = SpawnEntityFromTable("trigger_catapult", {
	    useThresholdCheck = 0,
	    useExactVelocity = 0,
	    upperThreshold = 0.3,
	    StartDisabled = 0,
	    spawnflags = 3,
	    playerSpeed = 350,
	    physicsSpeed = 325,
	    origin = Vector(641, 304, -49),
	    mins = "-50 -42 -15",
	    maxs = "50 42 15",
	    onlyVelocityCheck = 0,
	    lowerThreshold = 0.15,
	    launchTarget = "jumptarget_barrel",
	    launchDirection = "-90 0 -90",
	    filtername = "filter_virophage",
	    exactVelocityChoiceType = 0,
	    entryAngleTolerance = 0.0,
	    applyAngularImpulse = 0,
	    AirCtrlSupressionTime = -1.0,
	    "OnCatapulted#1": "barrel_pusher,Enable,,0.15,-1",
	    "OnCatapulted#2": "barrel_pusher,Disable,,0.5,-1",
	    "OnCatapulted#3": "catapult_buffer,Trigger,,0,-1"
	})
	trigger_catapult_brush8.KeyValueFromInt("solid", 2)
	trigger_catapult_brush8.KeyValueFromString("mins", "-50 -42 -15")
	trigger_catapult_brush8.KeyValueFromString("maxs", "50 42 15")

	local logic_relay31 = SpawnEntityFromTable("logic_relay", {
	    targetname = "catapult_buffer",
	    "OnTrigger#1": "jump_barrel,Disable,,0,-1",
	    "OnTrigger#2": "jump_barrel,Enable,,2,-1"
	})
	logic_relay31.SetOrigin(org)
	logic_relay31.SetAngles(ang[0], ang[1], ang[2])

	local filter_tf_bot_has_tag32 = SpawnEntityFromTable("filter_tf_bot_has_tag", {
	    Negated = "Allow entities that match criteria",
	    require_all_tags = 1,
	    tags = "bot_virophage",
	    targetname = "filter_virophage"
	})
	filter_tf_bot_has_tag32.SetOrigin(org)
	filter_tf_bot_has_tag32.SetAngles(ang[0], ang[1], ang[2])

	local info_target33 = SpawnEntityFromTable("info_target", {
	    targetname = "jumptarget_barrel",
	    origin = Vector(675, 282, 144)
	})
	info_target33.SetOrigin(org)
	info_target33.SetAngles(ang[0], ang[1], ang[2])

}
::p_virofix2 <- function(org, ang)
{
	local trigger_multiple_brush9 = SpawnEntityFromTable("trigger_multiple", {
	    spawnflags = 1,
	    StartDisabled = 0,
	    filtername = "filter_red",
	    mins = "-66 -45 -96",
	    maxs = "66 45 96",
	    origin = Vector(3, 1232, 160),
	    "OnStartTouch#1": "jump_generator,Enable,,0,-1",
	    "OnEndTouch#2": "jump_generator,Disable,,0.5,-1",
	    "OnEndTouch#3": "jump_generator_relay,CancelPending,0.5"
	})
	trigger_multiple_brush9.KeyValueFromInt("solid", 2)
	trigger_multiple_brush9.KeyValueFromString("mins", "-66 -45 -96")
	trigger_multiple_brush9.KeyValueFromString("maxs", "66 45 96")

	local trigger_catapult_brush10 = SpawnEntityFromTable("trigger_catapult", {
	    useThresholdCheck = 0,
	    useExactVelocity = 0,
	    upperThreshold = 0.3,
	    StartDisabled = 0,
	    spawnflags = 3,
	    playerSpeed = 350,
	    physicsSpeed = 325,
	    origin = Vector(-24, 1231, 83),
	    mins = "-85 -45 -18",
	    maxs = "85 45 18",
	    onlyVelocityCheck = 0,
	    lowerThreshold = 0.15,
	    launchTarget = "jumptarget_generator",
	    launchDirection = "-90 0 0",
	    filtername = "filter_virophage",
	    exactVelocityChoiceType = 0,
	    entryAngleTolerance = 0.0,
	    applyAngularImpulse = 0,
	    AirCtrlSupressionTime = -1.0,
	    StartDisabled = 1,
	    "OnCatapulted#1": "jump_generator_relay,Trigger,,0,-1"
	})
	trigger_catapult_brush10.KeyValueFromInt("solid", 2)
	trigger_catapult_brush10.KeyValueFromString("mins", "-85 -45 -18")
	trigger_catapult_brush10.KeyValueFromString("maxs", "85 45 18")

	local logic_relay34 = SpawnEntityFromTable("logic_relay", {
	    targetname = "jump_generator_relay",
	    "OnTrigger#1": "jump_generator,Disable,,0,-1",
	    "OnTrigger#2": "jump_generator,Enable,,3,-1"
	})
	logic_relay34.SetOrigin(org)
	logic_relay34.SetAngles(ang[0], ang[1], ang[2])

	local info_target35 = SpawnEntityFromTable("info_target", {
	    targetname = "jumptarget_generator",
	    origin = Vector(34, 1248, 250)
	})
	info_target35.SetOrigin(org)
	info_target35.SetAngles(ang[0], ang[1], ang[2])

}
::p_spawnfix <- function(org, ang)
{
	local func_brush_brush11 = SpawnEntityFromTable("func_brush", {
	    mins = "-32 -64 -398",
	    maxs = "32 64 398"
	})
	func_brush_brush11.KeyValueFromInt("solid", 2)
	func_brush_brush11.KeyValueFromString("mins", "-32 -64 -398")
	func_brush_brush11.KeyValueFromString("maxs", "32 64 398")

}
::sentry_collision_template <- function(org, ang)
{
	local logic_timer36 = SpawnEntityFromTable("logic_timer", {
	    refiretime = 3,
	    "ontimer#1": "obj_sentrygunRunScriptCodeNetProps.SetPropInt(self, `m_CollisionGroup`, 3)0-1"
	})
	logic_timer36.SetOrigin(org)
	logic_timer36.SetAngles(ang[0], ang[1], ang[2])

}
::p_skullhead <- function(org, ang)
{
	local prop_dynamic37 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "skull1",
	    model = "models/props_viaduct_event/skull_island01.mdl",
	    rendercolor = "100 100 100",
	    modelscale = 0.075,
	    solid = 0,
	    angles = QAngle(0, 90, 45),
	    origin = Vector(10, 0, 100),
	    disableshadows = 1,
	    lightingorigin = "barnacle1"
	})
	prop_dynamic37.SetOrigin(org)
	prop_dynamic37.SetAngles(ang[0], ang[1], ang[2])

}
::p_fade1 <- function(org, ang)
{
	local env_fade38 = SpawnEntityFromTable("env_fade", {
	    targetname = "fade",
	    angles = QAngle(0, 0, 0),
	    duration = 3,
	    rendercolor = "0 0 0",
	    spawnflags = 8
	})
	env_fade38.SetOrigin(org)
	env_fade38.SetAngles(ang[0], ang[1], ang[2])

}
::p_fade2 <- function(org, ang)
{
	local env_fade39 = SpawnEntityFromTable("env_fade", {
	    targetname = "fade2",
	    angles = QAngle(0, 0, 0),
	    duration = 3,
	    rendercolor = "0 0 0",
	    spawnflags = 1
	})
	env_fade39.SetOrigin(org)
	env_fade39.SetAngles(ang[0], ang[1], ang[2])

}
::p_fade3 <- function(org, ang)
{
	local env_fade40 = SpawnEntityFromTable("env_fade", {
	    targetname = "fade3",
	    angles = QAngle(0, 0, 0),
	    duration = 10,
	    rendercolor = "85 0 0",
	    spawnflags = 1
	})
	env_fade40.SetOrigin(org)
	env_fade40.SetAngles(ang[0], ang[1], ang[2])

}
::p_fade4 <- function(org, ang)
{
	local env_fade41 = SpawnEntityFromTable("env_fade", {
	    targetname = "fade4",
	    angles = QAngle(0, 0, 0),
	    duration = 6,
	    rendercolor = "0 0 0",
	    spawnflags = 1
	})
	env_fade41.SetOrigin(org)
	env_fade41.SetAngles(ang[0], ang[1], ang[2])

}
::p_fade5 <- function(org, ang)
{
	local env_fade42 = SpawnEntityFromTable("env_fade", {
	    targetname = "fade5",
	    angles = QAngle(0, 0, 0),
	    duration = 1,
	    rendercolor = "0 0 0",
	    spawnflags = 1
	})
	env_fade42.SetOrigin(org)
	env_fade42.SetAngles(ang[0], ang[1], ang[2])

}
::p_finale_facer <- function(org, ang)
{
	local trigger_teleport_brush12 = SpawnEntityFromTable("trigger_teleport", {
	    mins = "-3392 -3392 -704",
	    maxs = "3392 3392 704",
	    origin = Vector(768, 768, 576),
	    spawnflags = 1,
	    StartDisabled = 1,
	    target = "finale_face_target",
	    filtername = "filter_red",
	    "OnStartTouch#1": "cheese,Kill,,0,-1"
	})
	trigger_teleport_brush12.KeyValueFromInt("solid", 2)
	trigger_teleport_brush12.KeyValueFromString("mins", "-3392 -3392 -704")
	trigger_teleport_brush12.KeyValueFromString("maxs", "3392 3392 704")

	local info_target43 = SpawnEntityFromTable("info_target", {
	    targetname = "finale_face_target",
	    origin = Vector(617, -609, 0),
	    angles = QAngle(5.98, -53.51, 0)
	})
	info_target43.SetOrigin(org)
	info_target43.SetAngles(ang[0], ang[1], ang[2])

}
::p_finale_facerblu <- function(org, ang)
{
	local trigger_teleport_brush13 = SpawnEntityFromTable("trigger_teleport", {
	    mins = "-3392 -3392 -704",
	    maxs = "3392 3392 704",
	    origin = Vector(768, 768, 576),
	    spawnflags = 1,
	    StartDisabled = 1,
	    target = "finale_face_target2",
	    filtername = "filter_blu",
	    "OnStartTouch#1": "cheese2,Kill,,0,-1"
	})
	trigger_teleport_brush13.KeyValueFromInt("solid", 2)
	trigger_teleport_brush13.KeyValueFromString("mins", "-3392 -3392 -704")
	trigger_teleport_brush13.KeyValueFromString("maxs", "3392 3392 704")

	local info_target44 = SpawnEntityFromTable("info_target", {
	    targetname = "finale_face_target2",
	    origin = Vector(413, -280, 0),
	    angles = QAngle(5.98, -53.51, 0)
	})
	info_target44.SetOrigin(org)
	info_target44.SetAngles(ang[0], ang[1], ang[2])

}
::p_teleporter_brush <- function(org, ang)
{
	local trigger_teleport_brush14 = SpawnEntityFromTable("trigger_teleport", {
	    mins = "-224 -452 -576",
	    maxs = "224 452 576",
	    origin = Vector(-160, 3132, 704),
	    spawnflags = 1,
	    StartDisabled = 0,
	    target = "info_tele"
	})
	trigger_teleport_brush14.KeyValueFromInt("solid", 2)
	trigger_teleport_brush14.KeyValueFromString("mins", "-224 -452 -576")
	trigger_teleport_brush14.KeyValueFromString("maxs", "224 452 576")

}
::p_teleporter_brush_finale <- function(org, ang)
{
	local trigger_teleport_brush15 = SpawnEntityFromTable("trigger_teleport", {
	    mins = "-224 -452 -576",
	    maxs = "224 452 576",
	    origin = Vector(-160, 3132, 704),
	    spawnflags = 1,
	    StartDisabled = 1,
	    target = "parachute_tele"
	})
	trigger_teleport_brush15.KeyValueFromInt("solid", 2)
	trigger_teleport_brush15.KeyValueFromString("mins", "-224 -452 -576")
	trigger_teleport_brush15.KeyValueFromString("maxs", "224 452 576")

}
::p_teleporter <- function(org, ang)
{
	local info_teleport_destination45 = SpawnEntityFromTable("info_teleport_destination", {
	    targetname = "info_tele",
	    origin = Vector(550, 292, 250),
	    angles = QAngle(0, 90, 0)
	})
	info_teleport_destination45.SetOrigin(org)
	info_teleport_destination45.SetAngles(ang[0], ang[1], ang[2])

}
::p_teleporterfinale <- function(org, ang)
{
	local info_teleport_destination46 = SpawnEntityFromTable("info_teleport_destination", {
	    targetname = "parachute_tele",
	    origin = Vector(628, -752, 1165),
	    angles = QAngle(90, 90, 0)
	})
	info_teleport_destination46.SetOrigin(org)
	info_teleport_destination46.SetAngles(ang[0], ang[1], ang[2])

}
::p_lastbot <- function(org, ang)
{
	local trigger_multiple_brush16 = SpawnEntityFromTable("trigger_multiple", {
	    mins = "-224 -452 -576",
	    maxs = "224 452 576",
	    origin = Vector(-160, 3132, 704),
	    spawnflags = 1,
	    StartDisabled = 1,
	    "OnStartTouch#1": "!activator,addoutput,targetname victory,0,-1"
	})
	trigger_multiple_brush16.KeyValueFromInt("solid", 2)
	trigger_multiple_brush16.KeyValueFromString("mins", "-224 -452 -576")
	trigger_multiple_brush16.KeyValueFromString("maxs", "224 452 576")

}
::p_voice <- function(org, ang)
{
	local trigger_multiple_brush17 = SpawnEntityFromTable("trigger_multiple", {
	    mins = "-8000 -8000 -1000",
	    maxs = "8000 8000 1000",
	    StartDisabled = 1,
	    spawnflags = 1,
	    "OnStartTouch#1": "!activator,SpeakResponseConcept,tlk_player_go,1,-1",
	    "OnStartTouch#2": "gogogo,Disable,,2,-1",
	    "OnStartTouch#3": "gogogo,Enable,,3,-1",
	    filtername = "filter_red"
	})
	trigger_multiple_brush17.KeyValueFromInt("solid", 2)
	trigger_multiple_brush17.KeyValueFromString("mins", "-8000 -8000 -1000")
	trigger_multiple_brush17.KeyValueFromString("maxs", "8000 8000 1000")

}
::p_newlife <- function(org, ang)
{
	local game_forcerespawn47 = SpawnEntityFromTable("game_forcerespawn", {
	    targetname = "NEWLIFE"
	})
	game_forcerespawn47.SetOrigin(org)
	game_forcerespawn47.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay48 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "bots_win,Kill,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION15"
	})
	logic_relay48.SetOrigin(org)
	logic_relay48.SetAngles(ang[0], ang[1], ang[2])

}
::p_chat1 <- function(org, ang)
{
	local training_annotation49 = SpawnEntityFromTable("training_annotation", {
	    targetname = "signchat",
	    display_text = "Every death comes with a $250 toll, pardner.",
	    lifetime = 8,
	    origin = Vector(945, 1600, 275)
	})
	training_annotation49.SetOrigin(org)
	training_annotation49.SetAngles(ang[0], ang[1], ang[2])

}
::p_signbomb <- function(org, ang)
{
	local training_annotation50 = SpawnEntityFromTable("training_annotation", {
	    targetname = "signbomb",
	    display_text = "The Corrupted have brought in a nuclear bomb!",
	    lifetime = 8,
	    origin = Vector(-1180, -486, 203)
	})
	training_annotation50.SetOrigin(org)
	training_annotation50.SetAngles(ang[0], ang[1], ang[2])

}
::p_badsign <- function(org, ang)
{
	local training_annotation51 = SpawnEntityFromTable("training_annotation", {
	    targetname = "badsign",
	    display_text = "If this cabinet does not work, the mission will be broken. Please try another server if so",
	    lifetime = 8,
	    origin = Vector(727, 1300, 310)
	})
	training_annotation51.SetOrigin(org)
	training_annotation51.SetAngles(ang[0], ang[1], ang[2])

}
::p_sign666 <- function(org, ang)
{
	local training_annotation52 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign666",
	    display_text = "If you become infected you must hide to recover!",
	    lifetime = 8,
	    origin = Vector(10, 1235, 165)
	})
	training_annotation52.SetOrigin(org)
	training_annotation52.SetAngles(ang[0], ang[1], ang[2])

}
::p_sign0 <- function(org, ang)
{
	local training_annotation53 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign0",
	    display_text = "YOU ARE THE LAST...",
	    lifetime = 10,
	    origin = Vector(10, 1235, 165)
	})
	training_annotation53.SetOrigin(org)
	training_annotation53.SetAngles(ang[0], ang[1], ang[2])

}
::p_sign1 <- function(org, ang)
{
	local training_annotation54 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign1",
	    display_text = "Running out in the open will slow you down",
	    lifetime = 8,
	    origin = Vector(-680, -139, 66)
	})
	training_annotation54.SetOrigin(org)
	training_annotation54.SetAngles(ang[0], ang[1], ang[2])

}
::p_sign2 <- function(org, ang)
{
	local training_annotation55 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign2",
	    display_text = "They come...",
	    lifetime = 5,
	    origin = Vector(0, 121, 53)
	})
	training_annotation55.SetOrigin(org)
	training_annotation55.SetAngles(ang[0], ang[1], ang[2])

}
::p_sign3 <- function(org, ang)
{
	local training_annotation56 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign3",
	    display_text = "CHECKPOINT - The shop is open...",
	    lifetime = 56.25,
	    origin = Vector(856, 1530, 360)
	})
	training_annotation56.SetOrigin(org)
	training_annotation56.SetAngles(ang[0], ang[1], ang[2])

}
::p_sign4 <- function(org, ang)
{
	local training_annotation57 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign4",
	    display_text = 5,
	    lifetime = 1,
	    origin = Vector(856, 1530, 360)
	})
	training_annotation57.SetOrigin(org)
	training_annotation57.SetAngles(ang[0], ang[1], ang[2])

}
::p_sign5 <- function(org, ang)
{
	local training_annotation58 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign5",
	    display_text = 4,
	    lifetime = 1,
	    origin = Vector(856, 1530, 360)
	})
	training_annotation58.SetOrigin(org)
	training_annotation58.SetAngles(ang[0], ang[1], ang[2])

}
::p_sign6 <- function(org, ang)
{
	local training_annotation59 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign6",
	    display_text = 3,
	    lifetime = 1,
	    origin = Vector(856, 1530, 360)
	})
	training_annotation59.SetOrigin(org)
	training_annotation59.SetAngles(ang[0], ang[1], ang[2])

}
::p_sign7 <- function(org, ang)
{
	local training_annotation60 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign7",
	    display_text = 2,
	    lifetime = 1,
	    origin = Vector(856, 1530, 360)
	})
	training_annotation60.SetOrigin(org)
	training_annotation60.SetAngles(ang[0], ang[1], ang[2])

}
::p_sign8 <- function(org, ang)
{
	local training_annotation61 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign8",
	    display_text = 1,
	    lifetime = 1,
	    origin = Vector(856, 1530, 360)
	})
	training_annotation61.SetOrigin(org)
	training_annotation61.SetAngles(ang[0], ang[1], ang[2])

}
::p_sign9 <- function(org, ang)
{
	local training_annotation62 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign9",
	    display_text = "Secure the landing zone to escape!",
	    lifetime = 15,
	    origin = Vector(622, -942, 151)
	})
	training_annotation62.SetOrigin(org)
	training_annotation62.SetAngles(ang[0], ang[1], ang[2])

}
::p_sign10 <- function(org, ang)
{
	local training_annotation63 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign10",
	    display_text = "Reinforcements have arrived!",
	    lifetime = 10,
	    origin = Vector(685, -685, 925)
	})
	training_annotation63.SetOrigin(org)
	training_annotation63.SetAngles(ang[0], ang[1], ang[2])

}
::p_leap <- function(org, ang)
{
	local trigger_catapult_brush18 = SpawnEntityFromTable("trigger_catapult", {
	    useThresholdCheck = 0,
	    useExactVelocity = 0,
	    upperThreshold = 0.3,
	    StartDisabled = 0,
	    spawnflags = 3,
	    playerSpeed = 475,
	    physicsSpeed = 450,
	    origin = Vector(0, 598, 36),
	    mins = "-160 -22 -134",
	    maxs = "160 22 134",
	    onlyVelocityCheck = 0,
	    lowerThreshold = 0.15,
	    launchTarget = "jumptarget_column",
	    launchDirection = "-90 0 0",
	    filtername = "filter_leaper",
	    exactVelocityChoiceType = 0,
	    entryAngleTolerance = 0.0,
	    applyAngularImpulse = 0,
	    AirCtrlSupressionTime = -1.0,
	    "OnCatapulted#1": "!self,Disable,,0,-1",
	    "OnCatapulted#2": "!self,Enable,,1.5,-1"
	})
	trigger_catapult_brush18.KeyValueFromInt("solid", 2)
	trigger_catapult_brush18.KeyValueFromString("mins", "-160 -22 -134")
	trigger_catapult_brush18.KeyValueFromString("maxs", "160 22 134")

	local info_target64 = SpawnEntityFromTable("info_target", {
	    targetname = "jumptarget_column",
	    origin = Vector(0, 598, 330)
	})
	info_target64.SetOrigin(org)
	info_target64.SetAngles(ang[0], ang[1], ang[2])

	local trigger_catapult_brush19 = SpawnEntityFromTable("trigger_catapult", {
	    origin = Vector(-178, 974, -28),
	    mins = "-50 -50 -100",
	    maxs = "50 50 100",
	    useThresholdCheck = 0,
	    useExactVelocity = 0,
	    upperThreshold = 0.3,
	    StartDisabled = 0,
	    spawnflags = 3,
	    playerSpeed = 475,
	    physicsSpeed = 450,
	    onlyVelocityCheck = 0,
	    lowerThreshold = 0.15,
	    launchTarget = "jumptarget_stairs",
	    launchDirection = "-90 0 0",
	    filtername = "filter_leaper",
	    exactVelocityChoiceType = 0,
	    entryAngleTolerance = 0.0,
	    applyAngularImpulse = 0,
	    AirCtrlSupressionTime = -1.0,
	    "OnCatapulted#1": "!self,Disable,,0,-1",
	    "OnCatapulted#2": "!self,Enable,,1.5,-1"
	})
	trigger_catapult_brush19.KeyValueFromInt("solid", 2)
	trigger_catapult_brush19.KeyValueFromString("mins", "-50 -50 -100")
	trigger_catapult_brush19.KeyValueFromString("maxs", "50 50 100")

	local info_target65 = SpawnEntityFromTable("info_target", {
	    targetname = "jumptarget_stairs",
	    origin = Vector(-170, 1000, 180)
	})
	info_target65.SetOrigin(org)
	info_target65.SetAngles(ang[0], ang[1], ang[2])

}
::p_leap_tele <- function(org, ang)
{
	local trigger_teleport_brush20 = SpawnEntityFromTable("trigger_teleport", {
	    mins = "-134.5 -0.5 -217.5",
	    maxs = "134.5 0.5 217.5",
	    origin = Vector(231.5, 1279.5, 147.5),
	    spawnflags = 1,
	    filtername = "filter_leaper",
	    target = "leap_telehere",
	    "OnStartTouch#1": "leap_tele,Disable,,0,-1",
	    "OnStartTouch#2": "leap_tele,Enable,,2.5,-1",
	    "OnStartTouch#3": "leap_tele2,Disable,,0,-1",
	    "OnStartTouch#4": "leap_tele2,Enable,,2.5,-1"
	})
	trigger_teleport_brush20.KeyValueFromInt("solid", 2)
	trigger_teleport_brush20.KeyValueFromString("mins", "-134.5 -0.5 -217.5")
	trigger_teleport_brush20.KeyValueFromString("maxs", "134.5 0.5 217.5")

	local info_target66 = SpawnEntityFromTable("info_target", {
	    targetname = "leap_telehere",
	    origin = Vector(225, 1451, 459)
	})
	info_target66.SetOrigin(org)
	info_target66.SetAngles(ang[0], ang[1], ang[2])

	local trigger_teleport_brush21 = SpawnEntityFromTable("trigger_teleport", {
	    mins = "-134.5 -0.5 -217.5",
	    maxs = "134.5 0.5 217.5",
	    origin = Vector(233.5, 1288.5, 147.5),
	    spawnflags = 1,
	    filtername = "filter_leaper",
	    target = "leap_telehere2",
	    "OnStartTouch#1": "leap_tele,Disable,,0,-1",
	    "OnStartTouch#2": "leap_tele,Enable,,2.5,-1",
	    "OnStartTouch#3": "leap_tele2,Disable,,0,-1",
	    "OnStartTouch#4": "leap_tele2,Enable,,2.5,-1"
	})
	trigger_teleport_brush21.KeyValueFromInt("solid", 2)
	trigger_teleport_brush21.KeyValueFromString("mins", "-134.5 -0.5 -217.5")
	trigger_teleport_brush21.KeyValueFromString("maxs", "134.5 0.5 217.5")

	local info_target67 = SpawnEntityFromTable("info_target", {
	    targetname = "leap_telehere2",
	    origin = Vector(225, 1184, 459)
	})
	info_target67.SetOrigin(org)
	info_target67.SetAngles(ang[0], ang[1], ang[2])

}
::p_deskblock <- function(org, ang)
{
	local func_nobuild_brush22 = SpawnEntityFromTable("func_nobuild", {
	    mins = "-76 -63 -29",
	    maxs = "76 63 29",
	    AllowTeleporters = 0,
	    AllowSentry = 0,
	    AllowDispenser = 0
	})
	func_nobuild_brush22.KeyValueFromInt("solid", 2)
	func_nobuild_brush22.KeyValueFromString("mins", "-76 -63 -29")
	func_nobuild_brush22.KeyValueFromString("maxs", "76 63 29")

}
::p_engiblock <- function(org, ang)
{
	local func_nobuild_brush23 = SpawnEntityFromTable("func_nobuild", {
	    mins = "-8000 -8000 -1000",
	    maxs = "8000 8000 1000",
	    AllowTeleporters = 1,
	    AllowSentry = 1,
	    AllowDispenser = 1
	})
	func_nobuild_brush23.KeyValueFromInt("solid", 2)
	func_nobuild_brush23.KeyValueFromString("mins", "-8000 -8000 -1000")
	func_nobuild_brush23.KeyValueFromString("maxs", "8000 8000 1000")

}
::p_survrelay1 <- function(org, ang)
{
	local logic_relay68 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "SURVIVORAISTART",
	    "OnTrigger#1": "point_populator_interfaceChangeBotAttributesShop0-1"
	})
	logic_relay68.SetOrigin(org)
	logic_relay68.SetAngles(ang[0], ang[1], ang[2])

}
::p_survrelay2 <- function(org, ang)
{
	local logic_relay69 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "SURVIVORAIEND",
	    "OnTrigger#1": "point_populator_interfaceChangeBotAttributesDefense0-1"
	})
	logic_relay69.SetOrigin(org)
	logic_relay69.SetAngles(ang[0], ang[1], ang[2])

}
::p_survrelay3 <- function(org, ang)
{
	local logic_relay70 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "SURVIVORAIEXIT",
	    "OnTrigger#1": "point_populator_interfaceChangeBotAttributesExit0-1"
	})
	logic_relay70.SetOrigin(org)
	logic_relay70.SetAngles(ang[0], ang[1], ang[2])

}
::p_introcam <- function(org, ang)
{
	local logic_relay71 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "introcam",
	    "OnTrigger#1": "camera4,$EnableAll,,0,-1",
	    "OnTrigger#2": "camera4,$DisableAll,,3,-1"
	})
	logic_relay71.SetOrigin(org)
	logic_relay71.SetAngles(ang[0], ang[1], ang[2])

}
::p_beginrelay <- function(org, ang)
{
	local tf_point_nav_interface72 = SpawnEntityFromTable("tf_point_nav_interface", {
	    targetname = "nav_refresh"
	})
	tf_point_nav_interface72.SetOrigin(org)
	tf_point_nav_interface72.SetAngles(ang[0], ang[1], ang[2])

	local logic_auto73 = SpawnEntityFromTable("logic_auto", {
	    "OnMapSpawn#1": "aliveblu,addoutput,targetname alivered,0,-1",
	    "OnMapSpawn#2": "nav_refresh,RecomputeBlockers,,0.1,-1",
	    "OnMapSpawn#3": "func_upgradestation,AddOutput,targetname station,0,-1",
	    "OnMapSpawn#4": "team_control_point_master,AddOutput,targetname hudthing,0,-1",
	    "OnMapSpawn#5": "team_control_point_master,AddOutput,custom_position_x 2,0,-1",
	    "OnMapSpawn#6": "team_control_point_master,RoundSpawn,,0.1,-1",
	    "OnMapSpawn#7": "func_movelinear,Kill,,0,-1",
	    "OnMapSpawn#8": "func_movelinear,Kill,,0,-1",
	    "OnMapSpawn#9": "func_movelinear,Kill,,0,-1",
	    "OnMapSpawn#10": "func_movelinear,Kill,,0,-1",
	    "OnMapSpawn#11": "func_movelinear,Kill,,0,-1",
	    "OnMapSpawn#12": "func_movelinear,Kill,,0,-1",
	    "OnMapSpawn#13": "gate_door_trigger*,Kill,,0,-1",
	    "OnMapSpawn#14": "station,Enable,,0,-1",
	    "OnMapSpawn#15": "cab,Enable,,0,-1",
	    "OnMapSpawn#16": "fog_old,Trigger,,0,-1",
	    "OnMapSpawn#17": "overlay,StartOverlays,,0,-1",
	    "OnMapSpawn#18": "overlay,StopOverlays,,0.1,-1",
	    "OnMapSpawn#19": "hudcome,Trigger,,0,-1",
	    "OnMapSpawn#20": "camera2,$EnableAll,,0,-1",
	    "OnMapSpawn#21": "camera2,$DisableAll,,1,-1",
	    "OnSpawn#22": "player,addoutput,targetname ,0,-1",
	    "OnMapSpawn#23": "camera2,kill,,2,-1",
	    "OnMapSpawn#24": "signchat,Show,,2,-1",
	    "OnMapSpawn#25": "badsign,Show,,12,-1",
	    "OnMapSpawn#26": "playerSetCustomModelWithClassAnimations-1",
	    "OnMapSpawn#27": "shopgear,setattached,fam,0,-1",
	    "OnMapSpawn#28": "shopgear,setlightingorigin,fam,0,-1"
	})
	logic_auto73.SetOrigin(org)
	logic_auto73.SetAngles(ang[0], ang[1], ang[2])

}
::p_cabinet <- function(org, ang)
{
	local prop_dynamic74 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "locker_model",
	    model = "models/props_gameplay/resupply_locker.mdl",
	    solid = 0,
	    angles = QAngle(0, 0, 0),
	    disableshadows = 1,
	    rendermode = 1,
	    renderamt = 125
	})
	prop_dynamic74.SetOrigin(org)
	prop_dynamic74.SetAngles(ang[0], ang[1], ang[2])

	local filter_tf_bot_has_tag75 = SpawnEntityFromTable("filter_tf_bot_has_tag", {
	    Negated = 0,
	    require_all_tags = 1,
	    tags = "noregen",
	    targetname = "filter_redbot"
	})
	filter_tf_bot_has_tag75.SetOrigin(org)
	filter_tf_bot_has_tag75.SetAngles(ang[0], ang[1], ang[2])

	local func_regenerate_brush24 = SpawnEntityFromTable("func_regenerate", {
	    associatedmodel = "locker_model",
	    TeamNum = 2,
	    origin = Vector(136, 112, 160),
	    mins = "-152 -468 -160",
	    maxs = "152 468 160",
	    "OnStartTouchAll#1": "locker_model,SetAnimation,open,0,-1",
	    "OnEndTouchAll#2": "locker_model,SetAnimation,close,0,-1"
	})
	func_regenerate_brush24.KeyValueFromInt("solid", 2)
	func_regenerate_brush24.KeyValueFromString("mins", "-152 -468 -160")
	func_regenerate_brush24.KeyValueFromString("maxs", "152 468 160")

}
::p_spawnremover1 <- function(org, ang)
{
	local logic_relay76 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "door_1,kill,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION16"
	})
	logic_relay76.SetOrigin(org)
	logic_relay76.SetAngles(ang[0], ang[1], ang[2])

}
::p_spawnremover2 <- function(org, ang)
{
	local logic_relay77 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "spawn_red,kill,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION17"
	})
	logic_relay77.SetOrigin(org)
	logic_relay77.SetAngles(ang[0], ang[1], ang[2])

}
::p_spawnremover3 <- function(org, ang)
{
	local logic_relay78 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "func_respawnroomvisualizer,kill,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION18"
	})
	logic_relay78.SetOrigin(org)
	logic_relay78.SetAngles(ang[0], ang[1], ang[2])

}
::p_leet <- function(org, ang)
{
	local obj_dispenser79 = SpawnEntityFromTable("obj_dispenser", {
	    targetname = "superdisp",
	    origin = Vector(0, 0, 0),
	    teamnum = 2,
	    SolidToPlayer = 0,
	    defaultupgrade = 0,
	    lightingorigin = "spawnbot_surprise2"
	})
	obj_dispenser79.SetOrigin(org)
	obj_dispenser79.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay80 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "superdisp,skin,1,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION19"
	})
	logic_relay80.SetOrigin(org)
	logic_relay80.SetAngles(ang[0], ang[1], ang[2])

}
::p_leet2 <- function(org, ang)
{
	local obj_dispenser81 = SpawnEntityFromTable("obj_dispenser", {
	    targetname = "superdisp2",
	    origin = Vector(0, 0, 0),
	    teamnum = 2,
	    SolidToPlayer = 0,
	    defaultupgrade = 0
	})
	obj_dispenser81.SetOrigin(org)
	obj_dispenser81.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay82 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "superdisp2,skin,1,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION20"
	})
	logic_relay82.SetOrigin(org)
	logic_relay82.SetAngles(ang[0], ang[1], ang[2])

}
::p_mvm_beat <- function(org, ang)
{
	local ambient_generic83 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "mvm_beat1",
	    origin = Vector(440, 48, 128),
	    volstart = 10,
	    spinup = 125,
	    spindown = 70,
	    spawnflags = 17,
	    radius = 99999,
	    preset = 0,
	    pitchstart = 70,
	    pitch = 125,
	    message = "#music/mvm_class_menu_bg.wav",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 7.5,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0
	})
	ambient_generic83.SetOrigin(org)
	ambient_generic83.SetAngles(ang[0], ang[1], ang[2])

}
::viro_music <- function(org, ang)
{
	local ambient_generic84 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "virospook",
	    origin = Vector(440, 48, 128),
	    volstart = 7.5,
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 17,
	    radius = 99999,
	    preset = 0,
	    pitchstart = 105,
	    pitch = 105,
	    message = "#ambient/atmosphere/sewer_air1.wav",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 7.5,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0
	})
	ambient_generic84.SetOrigin(org)
	ambient_generic84.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic85 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "virospook2",
	    origin = Vector(440, 48, 128),
	    volstart = 10,
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 17,
	    radius = 99999,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "#ambient/atmosphere/sewer_air1.wav",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 5,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0
	})
	ambient_generic85.SetOrigin(org)
	ambient_generic85.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic86 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "osprey",
	    origin = Vector(440, 48, 128),
	    volstart = 5,
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 17,
	    radius = 99999,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "#trespasser/ap_rotor4.wav",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 5,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0
	})
	ambient_generic86.SetOrigin(org)
	ambient_generic86.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic87 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "horizon",
	    origin = Vector(440, 48, 128),
	    volstart = 10,
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 17,
	    radius = 99999,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "#trespasser/zombiefinalequiet.mp3",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 10,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0
	})
	ambient_generic87.SetOrigin(org)
	ambient_generic87.SetAngles(ang[0], ang[1], ang[2])

}
::lose_music <- function(org, ang)
{
	local ambient_generic88 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "gameover",
	    origin = Vector(440, 48, 128),
	    volstart = 0,
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 33,
	    radius = 99999,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "#music/ravenholm_1.mp3",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 6,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0
	})
	ambient_generic88.SetOrigin(org)
	ambient_generic88.SetAngles(ang[0], ang[1], ang[2])

}
::lose_music2 <- function(org, ang)
{
	local ambient_generic89 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "gameover2",
	    origin = Vector(440, 48, 128),
	    volstart = 0,
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 33,
	    radius = 99999,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "#music/ravenholm_1.mp3",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 6,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0
	})
	ambient_generic89.SetOrigin(org)
	ambient_generic89.SetAngles(ang[0], ang[1], ang[2])

}
::r_virobeat <- function(org, ang)
{
	local logic_relay90 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "viro_beaton",
	    "OnTrigger#1": "virospook,PlaySound,,0,-1"
	})
	logic_relay90.SetOrigin(org)
	logic_relay90.SetAngles(ang[0], ang[1], ang[2])

}
::r_virobeatoff <- function(org, ang)
{
	local logic_relay91 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "viro_beatoff",
	    "OnTrigger#1": "virospook,StopSound,,0,-1"
	})
	logic_relay91.SetOrigin(org)
	logic_relay91.SetAngles(ang[0], ang[1], ang[2])

}
::r_beatson <- function(org, ang)
{
	local logic_relay92 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "mvm_beaton",
	    "OnTrigger#1": "mvm_beat1,PlaySound,,0,-1"
	})
	logic_relay92.SetOrigin(org)
	logic_relay92.SetAngles(ang[0], ang[1], ang[2])

}
::r_beatsoff <- function(org, ang)
{
	local logic_relay93 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "mvm_beatoff",
	    "OnTrigger#1": "mvm_beat1,StopSound,,0,-1"
	})
	logic_relay93.SetOrigin(org)
	logic_relay93.SetAngles(ang[0], ang[1], ang[2])

}
::r_cade_relay <- function(org, ang)
{
	local logic_relay94 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "relay",
	    "OnTrigger#1": "shitcade_intro,SetAnimation,break2,0,-1",
	    "OnTrigger#2": "shitcade,Kill,,0.25,-1",
	    "OnTrigger#3": "shitcade_intro,Kill,,2.5,-1",
	    "OnTrigger#4": "permadeath_detect_player_spell,Enable,,0,-1"
	})
	logic_relay94.SetOrigin(org)
	logic_relay94.SetAngles(ang[0], ang[1], ang[2])

}
::r_cade_relay_lower <- function(org, ang)
{
	local logic_relay95 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "relay2",
	    "OnTrigger#1": "barricade_level2,Kill,,0.25,-1"
	})
	logic_relay95.SetOrigin(org)
	logic_relay95.SetAngles(ang[0], ang[1], ang[2])

}
::r_cade_relay_window <- function(org, ang)
{
	local logic_relay96 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "relay3",
	    "OnTrigger#1": "barricade_level1,Kill,,0.25,-1"
	})
	logic_relay96.SetOrigin(org)
	logic_relay96.SetAngles(ang[0], ang[1], ang[2])

}
::r_cade_relay_last <- function(org, ang)
{
	local logic_relay97 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "relay4",
	    "OnTrigger#1": "barricade_level3,Kill,,0.25,-1"
	})
	logic_relay97.SetOrigin(org)
	logic_relay97.SetAngles(ang[0], ang[1], ang[2])

}
::r_respawn_relay <- function(org, ang)
{
	local logic_relay98 = SpawnEntityFromTable("logic_relay", {
	    targetname = "life_relay",
	    "OnTrigger#1": "NEWLIFE,ForceTeamRespawn,2,0,-1"
	})
	logic_relay98.SetOrigin(org)
	logic_relay98.SetAngles(ang[0], ang[1], ang[2])

}
::p_shake <- function(org, ang)
{
	local env_shake99 = SpawnEntityFromTable("env_shake", {
	    id = 3,
	    classname = "env_shake",
	    amplitude = 255,
	    duration = 1,
	    frequency = 255,
	    radius = 50000,
	    spawnflags = 5,
	    targetname = "shakeit",
	    origin = Vector(-189.888, 17.0933, 65)
	})
	env_shake99.SetOrigin(org)
	env_shake99.SetAngles(ang[0], ang[1], ang[2])

}
::p_shakelong <- function(org, ang)
{
	local env_shake100 = SpawnEntityFromTable("env_shake", {
	    id = 3,
	    classname = "env_shake",
	    amplitude = 255,
	    duration = 3,
	    frequency = 255,
	    radius = 50000,
	    spawnflags = 5,
	    targetname = "shakeit2",
	    origin = Vector(-189.888, 17.0933, 65)
	})
	env_shake100.SetOrigin(org)
	env_shake100.SetAngles(ang[0], ang[1], ang[2])

}
::p_rick <- function(org, ang)
{
	local entity_soldier_statue101 = SpawnEntityFromTable("entity_soldier_statue", {
	    id = 3,
	    classname = "entity_soldier_statue",
	    origin = Vector(0, 0, 0),
	    disableshadows = 1,
	    lightingorigin = "spawnbot_surprise2"
	})
	entity_soldier_statue101.SetOrigin(org)
	entity_soldier_statue101.SetAngles(ang[0], ang[1], ang[2])

}
::p_shopengi <- function(org, ang)
{
	local prop_dynamic102 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "fam",
	    classname = "prop_dynamic",
	    DefaultAnim = "competitive_loserstate_idle",
	    angles = QAngle(0, 0, 0),
	    DisableBoneFollowers = 1,
	    disablereceiveshadows = 0,
	    disableshadows = 1,
	    ExplodeDamage = 0,
	    ExplodeRadius = 0,
	    fademaxdist = 0,
	    fademindist = -1.0,
	    fadescale = 1,
	    MaxAnimTime = 10,
	    maxdxlevel = 0,
	    MinAnimTime = 5,
	    mindxlevel = 0,
	    modelscale = 1,
	    PerformanceMode = 0,
	    pressuredelay = 0,
	    RandomAnimation = 0,
	    renderamt = 255,
	    renderfx = 0,
	    rendermode = 0,
	    SetBodyGroup = 1,
	    skin = 0,
	    solid = 0,
	    spawnflags = 0,
	    origin = Vector(0, 0, 0),
	    model = "models/player/engineer.mdl"
	})
	prop_dynamic102.SetOrigin(org)
	prop_dynamic102.SetAngles(ang[0], ang[1], ang[2])

}
::p_shopitem1 <- function(org, ang)
{
	local prop_dynamic_ornament103 = SpawnEntityFromTable("prop_dynamic_ornament", {
	    targetname = "shopgear",
	    classname = "prop_dynamic_ornament",
	    DisableBoneFollowers = 1,
	    disableshadows = 1,
	    solid = 0,
	    spawnflags = 256,
	    initialowner = "fam",
	    model = "models/workshop/player/items/engineer/jul13_king_pants/jul13_king_pants.mdl"
	})
	prop_dynamic_ornament103.SetOrigin(org)
	prop_dynamic_ornament103.SetAngles(ang[0], ang[1], ang[2])

}
::p_shopitem2 <- function(org, ang)
{
	local prop_dynamic_ornament104 = SpawnEntityFromTable("prop_dynamic_ornament", {
	    targetname = "shopgear",
	    classname = "prop_dynamic_ornament",
	    DisableBoneFollowers = 1,
	    disableshadows = 1,
	    solid = 0,
	    spawnflags = 256,
	    initialowner = "fam",
	    model = "models/workshop/player/items/engineer/spr17_double_observatory/spr17_double_observatory.mdl"
	})
	prop_dynamic_ornament104.SetOrigin(org)
	prop_dynamic_ornament104.SetAngles(ang[0], ang[1], ang[2])

}
::p_shopitem3 <- function(org, ang)
{
	local prop_dynamic_ornament105 = SpawnEntityFromTable("prop_dynamic_ornament", {
	    targetname = "shopgear",
	    classname = "prop_dynamic_ornament",
	    DisableBoneFollowers = 1,
	    disableshadows = 1,
	    solid = 0,
	    spawnflags = 256,
	    initialowner = "fam",
	    model = "models/workshop/player/items/all_class/fall17_jungle_ops/fall17_jungle_ops_engineer.mdl"
	})
	prop_dynamic_ornament105.SetOrigin(org)
	prop_dynamic_ornament105.SetAngles(ang[0], ang[1], ang[2])

}
::p_shopitem4 <- function(org, ang)
{
	local prop_dynamic_ornament106 = SpawnEntityFromTable("prop_dynamic_ornament", {
	    targetname = "shopgear",
	    classname = "prop_dynamic_ornament",
	    DisableBoneFollowers = 1,
	    disableshadows = 1,
	    solid = 0,
	    spawnflags = 256,
	    color = "124 108 87",
	    model = "models/workshop/player/items/all_class/fall2013_the_cuban_coverup/fall2013_the_cuban_coverup_engineer.mdl"
	})
	prop_dynamic_ornament106.SetOrigin(org)
	prop_dynamic_ornament106.SetAngles(ang[0], ang[1], ang[2])

}
::p_shopitem5 <- function(org, ang)
{
	local prop_dynamic_ornament107 = SpawnEntityFromTable("prop_dynamic_ornament", {
	    targetname = "shopgear",
	    classname = "prop_dynamic_ornament",
	    DisableBoneFollowers = 1,
	    disableshadows = 1,
	    solid = 0,
	    spawnflags = 256,
	    initialowner = "fam",
	    model = "models/workshop/player/items/engineer/all_work_and_no_plaid/all_work_and_no_plaid.mdl"
	})
	prop_dynamic_ornament107.SetOrigin(org)
	prop_dynamic_ornament107.SetAngles(ang[0], ang[1], ang[2])

}
::p_spook <- function(org, ang)
{
	local prop_dynamic108 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "bro",
	    classname = "prop_dynamic",
	    DefaultAnim = "stand_loser",
	    angles = QAngle(0, 0, 0),
	    DisableBoneFollowers = 1,
	    disablereceiveshadows = 0,
	    disableshadows = 1,
	    startdisabled = 1,
	    ExplodeDamage = 0,
	    ExplodeRadius = 0,
	    fademaxdist = 0,
	    fademindist = -1.0,
	    fadescale = 1,
	    MaxAnimTime = 10,
	    maxdxlevel = 0,
	    MinAnimTime = 5,
	    mindxlevel = 0,
	    modelscale = 1,
	    PerformanceMode = 0,
	    pressuredelay = 0,
	    RandomAnimation = 0,
	    renderamt = 255,
	    renderfx = 0,
	    rendermode = 0,
	    SetBodyGroup = 0,
	    skin = 1,
	    solid = 0,
	    spawnflags = 0,
	    origin = Vector(0, 0, 0),
	    model = "models/bots/skeleton_sniper/skeleton_sniper.mdl"
	})
	prop_dynamic108.SetOrigin(org)
	prop_dynamic108.SetAngles(ang[0], ang[1], ang[2])

}
::p_spook2 <- function(org, ang)
{
	local prop_dynamic109 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "bro2",
	    classname = "prop_dynamic",
	    DefaultAnim = "taunt_russian",
	    angles = QAngle(0, 0, 0),
	    DisableBoneFollowers = 1,
	    disablereceiveshadows = 0,
	    disableshadows = 1,
	    startdisabled = 1,
	    ExplodeDamage = 0,
	    ExplodeRadius = 0,
	    fademaxdist = 0,
	    fademindist = -1.0,
	    fadescale = 1,
	    MaxAnimTime = 10,
	    maxdxlevel = 0,
	    MinAnimTime = 5,
	    mindxlevel = 0,
	    modelscale = 1,
	    PerformanceMode = 0,
	    pressuredelay = 0,
	    RandomAnimation = 0,
	    renderamt = 255,
	    renderfx = 0,
	    rendermode = 0,
	    SetBodyGroup = 0,
	    skin = 1,
	    solid = 0,
	    spawnflags = 0,
	    origin = Vector(0, 0, 0),
	    model = "models/bots/skeleton_sniper/skeleton_sniper.mdl"
	})
	prop_dynamic109.SetOrigin(org)
	prop_dynamic109.SetAngles(ang[0], ang[1], ang[2])

}
::p_spook3 <- function(org, ang)
{
	local prop_dynamic110 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "bro3",
	    classname = "prop_dynamic",
	    DefaultAnim = "layer_taunt_i_see_you_primary",
	    angles = QAngle(0, 0, 0),
	    DisableBoneFollowers = 1,
	    disablereceiveshadows = 0,
	    disableshadows = 1,
	    startdisabled = 1,
	    ExplodeDamage = 0,
	    ExplodeRadius = 0,
	    fademaxdist = 0,
	    fademindist = -1.0,
	    fadescale = 1,
	    MaxAnimTime = 10,
	    maxdxlevel = 0,
	    MinAnimTime = 5,
	    mindxlevel = 0,
	    modelscale = 1,
	    PerformanceMode = 0,
	    pressuredelay = 0,
	    RandomAnimation = 0,
	    renderamt = 255,
	    renderfx = 0,
	    rendermode = 0,
	    SetBodyGroup = 0,
	    skin = 1,
	    solid = 0,
	    spawnflags = 0,
	    origin = Vector(0, 0, 0),
	    model = "models/bots/skeleton_sniper/skeleton_sniper.mdl"
	})
	prop_dynamic110.SetOrigin(org)
	prop_dynamic110.SetAngles(ang[0], ang[1], ang[2])

}
::p_viewblocker_window <- function(org, ang)
{
	local func_brush_brush25 = SpawnEntityFromTable("func_brush", {
	    mins = "-320.5 -4 -144",
	    maxs = "320.5 4 144"
	})
	func_brush_brush25.KeyValueFromInt("solid", 2)
	func_brush_brush25.KeyValueFromString("mins", "-320.5 -4 -144")
	func_brush_brush25.KeyValueFromString("maxs", "320.5 4 144")

}
::p_plane <- function(org, ang)
{
	local prop_dynamic111 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "plane",
	    classname = "prop_dynamic",
	    model = "models/tf2enhancedmodels/cargoplane_enh.mdl",
	    disableshadows = 1,
	    modelscale = 2,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0,
	    origin = Vector(1900, -745, -109),
	    angles = QAngle(0, -5, 0)
	})
	prop_dynamic111.SetOrigin(org)
	prop_dynamic111.SetAngles(ang[0], ang[1], ang[2])

	local obj_sentrygun112 = SpawnEntityFromTable("obj_sentrygun", {
	    targetname = "planesentry",
	    origin = Vector(750, -645, 41),
	    angles = QAngle(0, -175, 180),
	    teamnum = 2,
	    spawnflags = 14,
	    SolidToPlayer = 0,
	    defaultupgrade = 0,
	    modelscale = 0.75
	})
	obj_sentrygun112.SetOrigin(org)
	obj_sentrygun112.SetAngles(ang[0], ang[1], ang[2])

}
::p_musicmaker1 <- function(org, ang)
{
	local env_entity_maker113 = SpawnEntityFromTable("env_entity_maker", {
	    targetname = "music_maker",
	    EntityTemplate = "lose_music"
	})
	env_entity_maker113.SetOrigin(org)
	env_entity_maker113.SetAngles(ang[0], ang[1], ang[2])

}
::p_musicmaker2 <- function(org, ang)
{
	local env_entity_maker114 = SpawnEntityFromTable("env_entity_maker", {
	    targetname = "music_maker2",
	    EntityTemplate = "lose_music2"
	})
	env_entity_maker114.SetOrigin(org)
	env_entity_maker114.SetAngles(ang[0], ang[1], ang[2])

}
::p_planemaker <- function(org, ang)
{
	local env_entity_maker115 = SpawnEntityFromTable("env_entity_maker", {
	    targetname = "plane_maker",
	    EntityTemplate = "p_plane"
	})
	env_entity_maker115.SetOrigin(org)
	env_entity_maker115.SetAngles(ang[0], ang[1], ang[2])

}
::p_cargodoor <- function(org, ang)
{
	local prop_dynamic116 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "cargodoor",
	    classname = "prop_dynamic",
	    model = "models/props_vehicles/train_flatcar_container.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0
	})
	prop_dynamic116.SetOrigin(org)
	prop_dynamic116.SetAngles(ang[0], ang[1], ang[2])

}
::p_brushbug_fix <- function(org, ang)
{
	local trigger_multiple_brush26 = SpawnEntityFromTable("trigger_multiple", {
	    origin = Vector(136, 112, 160),
	    mins = "-152 -468 -160",
	    maxs = "152 468 160",
	    spawnflags = 1,
	    startdisabled = 1,
	    "onstarttouch#1": "cargodoor,kill,,0,-1",
	    "onstarttouch#2": "!self,disable,,0,-1",
	    "onstarttouch#3": "!self,kill,,0.1,-1"
	})
	trigger_multiple_brush26.KeyValueFromInt("solid", 2)
	trigger_multiple_brush26.KeyValueFromString("mins", "-152 -468 -160")
	trigger_multiple_brush26.KeyValueFromString("maxs", "152 468 160")

}
::p_cargoshop1 <- function(org, ang)
{
	local prop_dynamic117 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "cargoshop1",
	    classname = "prop_dynamic",
	    model = "models/props_vehicles/train_flatcar_container.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 1,
	    solid = 6,
	    spawnflags = 0,
	    lightingorigin = "desk",
	    startdisabled = 1
	})
	prop_dynamic117.SetOrigin(org)
	prop_dynamic117.SetAngles(ang[0], ang[1], ang[2])

}
::p_cargoshop2 <- function(org, ang)
{
	local prop_dynamic118 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "cargoshop2",
	    classname = "prop_dynamic",
	    model = "models/props_vehicles/train_flatcar_container.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 1,
	    solid = 6,
	    spawnflags = 0,
	    lightingorigin = "desk",
	    startdisabled = 1
	})
	prop_dynamic118.SetOrigin(org)
	prop_dynamic118.SetAngles(ang[0], ang[1], ang[2])

}
::p_cargoshop3 <- function(org, ang)
{
	local prop_dynamic119 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "cargoshop3",
	    classname = "prop_dynamic",
	    model = "models/props_island/yeti_cell_door.mdl",
	    disableshadows = 1,
	    modelscale = 1.5,
	    SetBodyGroup = 0,
	    skin = 1,
	    solid = 6,
	    spawnflags = 0,
	    lightingorigin = "item_ammopack_large",
	    startdisabled = 1
	})
	prop_dynamic119.SetOrigin(org)
	prop_dynamic119.SetAngles(ang[0], ang[1], ang[2])

}
::p_pusher <- function(org, ang)
{
	local trigger_push_brush27 = SpawnEntityFromTable("trigger_push", {
	    filtername = "filter_leaper",
	    origin = Vector(-192, 1072, 0),
	    mins = "-53 -29 -64",
	    maxs = "53 29 64",
	    pushdir = "0 165 0",
	    spawnflags = 1,
	    speed = 200,
	    StartDisabled = 0,
	    targetname = "pusher"
	})
	trigger_push_brush27.KeyValueFromInt("solid", 2)
	trigger_push_brush27.KeyValueFromString("mins", "-53 -29 -64")
	trigger_push_brush27.KeyValueFromString("maxs", "53 29 64")

	local filter_tf_bot_has_tag120 = SpawnEntityFromTable("filter_tf_bot_has_tag", {
	    Negated = "Allow entities that match criteria",
	    require_all_tags = 1,
	    tags = "bot_leaper",
	    targetname = "filter_leaper"
	})
	filter_tf_bot_has_tag120.SetOrigin(org)
	filter_tf_bot_has_tag120.SetAngles(ang[0], ang[1], ang[2])

}
::p_pusher2 <- function(org, ang)
{
	local trigger_push_brush28 = SpawnEntityFromTable("trigger_push", {
	    filtername = "filter_virophage",
	    origin = Vector(-1224, 2167, 736),
	    mins = "-74 -62 -544",
	    maxs = "74 62 544",
	    pushdir = "0 -145 0",
	    spawnflags = 1,
	    speed = 200,
	    StartDisabled = 0,
	    targetname = "pusher2"
	})
	trigger_push_brush28.KeyValueFromInt("solid", 2)
	trigger_push_brush28.KeyValueFromString("mins", "-74 -62 -544")
	trigger_push_brush28.KeyValueFromString("maxs", "74 62 544")

}
::p_table <- function(org, ang)
{
	local prop_dynamic121 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "table",
	    classname = "prop_dynamic",
	    model = "models/props_swamp/picnic_table.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0
	})
	prop_dynamic121.SetOrigin(org)
	prop_dynamic121.SetAngles(ang[0], ang[1], ang[2])

}
::p_table2 <- function(org, ang)
{
	local prop_dynamic122 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "table",
	    classname = "prop_dynamic",
	    model = "models/props_swamp/picnic_table.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 0,
	    spawnflags = 0
	})
	prop_dynamic122.SetOrigin(org)
	prop_dynamic122.SetAngles(ang[0], ang[1], ang[2])

}
::p_desk <- function(org, ang)
{
	local prop_dynamic123 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "desk",
	    classname = "prop_dynamic",
	    model = "models/props_medieval/bar_table.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 1,
	    solid = 0,
	    spawnflags = 0
	})
	prop_dynamic123.SetOrigin(org)
	prop_dynamic123.SetAngles(ang[0], ang[1], ang[2])

}
::p_desk_intro <- function(org, ang)
{
	local prop_dynamic124 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "shitcade",
	    classname = "prop_dynamic",
	    model = "models/props_medieval/bar_table.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 1,
	    solid = 6,
	    spawnflags = 0
	})
	prop_dynamic124.SetOrigin(org)
	prop_dynamic124.SetAngles(ang[0], ang[1], ang[2])

}
::p_chair_intro <- function(org, ang)
{
	local prop_dynamic125 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "shitcade",
	    classname = "prop_dynamic",
	    model = "models/props_manor/chair_01.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0
	})
	prop_dynamic125.SetOrigin(org)
	prop_dynamic125.SetAngles(ang[0], ang[1], ang[2])

}
::p_urn <- function(org, ang)
{
	local prop_dynamic126 = SpawnEntityFromTable("prop_dynamic", {
	    classname = "prop_dynamic",
	    model = "models/props_manor/vase_01.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0
	})
	prop_dynamic126.SetOrigin(org)
	prop_dynamic126.SetAngles(ang[0], ang[1], ang[2])

}
::p_smallammo <- function(org, ang)
{
	local item_ammopack_small127 = SpawnEntityFromTable("item_ammopack_small", {
	    classname = "item_ammopack_small",
	    disableshadows = 0
	})
	item_ammopack_small127.SetOrigin(org)
	item_ammopack_small127.SetAngles(ang[0], ang[1], ang[2])

}
::p_smallammoskin <- function(org, ang)
{
	local item_ammopack_small128 = SpawnEntityFromTable("item_ammopack_small", {
	    powerup_model = "models/weapons/w_models/w_rocket.mdl",
	    disableshadows = 0
	})
	item_ammopack_small128.SetOrigin(org)
	item_ammopack_small128.SetAngles(ang[0], ang[1], ang[2])

}
::p_mediumammo <- function(org, ang)
{
	local item_ammopack_medium129 = SpawnEntityFromTable("item_ammopack_medium", {
	    classname = "item_ammopack_medium",
	    disableshadows = 0
	})
	item_ammopack_medium129.SetOrigin(org)
	item_ammopack_medium129.SetAngles(ang[0], ang[1], ang[2])

}
::p_fullammo <- function(org, ang)
{
	local item_ammopack_full130 = SpawnEntityFromTable("item_ammopack_full", {
	    classname = "item_ammopack_full",
	    disableshadows = 0
	})
	item_ammopack_full130.SetOrigin(org)
	item_ammopack_full130.SetAngles(ang[0], ang[1], ang[2])

}
::p_smallmedkit <- function(org, ang)
{
	local item_healthkit_small131 = SpawnEntityFromTable("item_healthkit_small", {
	    classname = "item_healthkit_small"
	})
	item_healthkit_small131.SetOrigin(org)
	item_healthkit_small131.SetAngles(ang[0], ang[1], ang[2])

}
::p_smallmedkitskin <- function(org, ang)
{
	local item_healthkit_small132 = SpawnEntityFromTable("item_healthkit_small", {
	    classname = "item_healthkit_small",
	    powerup_model = "models/items/medkit_small_bday.mdl"
	})
	item_healthkit_small132.SetOrigin(org)
	item_healthkit_small132.SetAngles(ang[0], ang[1], ang[2])

}
::p_mediumkit <- function(org, ang)
{
	local item_healthkit_medium133 = SpawnEntityFromTable("item_healthkit_medium", {
	    classname = "item_healthkit_medium"
	})
	item_healthkit_medium133.SetOrigin(org)
	item_healthkit_medium133.SetAngles(ang[0], ang[1], ang[2])

}
::p_fullkit <- function(org, ang)
{
	local item_healthpack_medium134 = SpawnEntityFromTable("item_healthpack_medium", {
	    classname = "item_healthkit_full",
	    disableshadows = 0
	})
	item_healthpack_medium134.SetOrigin(org)
	item_healthpack_medium134.SetAngles(ang[0], ang[1], ang[2])

}
::p_beam <- function(org, ang)
{
	local prop_dynamic135 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "beam",
	    classname = "prop_dynamic",
	    model = "models/props_farm/wood_pile.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0
	})
	prop_dynamic135.SetOrigin(org)
	prop_dynamic135.SetAngles(ang[0], ang[1], ang[2])

}
::p_stair <- function(org, ang)
{
	local prop_dynamic136 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "stair",
	    classname = "prop_dynamic",
	    model = "models/props_coalmines/scaffolding1.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 0,
	    spawnflags = 0,
	    lightingorigin = "info_tele"
	})
	prop_dynamic136.SetOrigin(org)
	prop_dynamic136.SetAngles(ang[0], ang[1], ang[2])

}
::p_chair <- function(org, ang)
{
	local prop_dynamic137 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "chair",
	    classname = "prop_dynamic",
	    model = "models/props_spytech/chair.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 1,
	    solid = 0,
	    spawnflags = 0
	})
	prop_dynamic137.SetOrigin(org)
	prop_dynamic137.SetAngles(ang[0], ang[1], ang[2])

}
::p_box_intro <- function(org, ang)
{
	local prop_dynamic138 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "shitcade",
	    classname = "prop_dynamic",
	    model = "models/props_manor/cardboard_box_set_01.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0
	})
	prop_dynamic138.SetOrigin(org)
	prop_dynamic138.SetAngles(ang[0], ang[1], ang[2])

}
::p_box <- function(org, ang)
{
	local prop_dynamic139 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "box",
	    classname = "prop_dynamic",
	    model = "models/props_manor/cardboard_box_set_01.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 1,
	    solid = 6,
	    spawnflags = 0
	})
	prop_dynamic139.SetOrigin(org)
	prop_dynamic139.SetAngles(ang[0], ang[1], ang[2])

}
::p_bookcase <- function(org, ang)
{
	local prop_dynamic140 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "bookcase",
	    classname = "prop_dynamic",
	    model = "models/props_manor/bookcase_132_03.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 1,
	    solid = 6,
	    spawnflags = 0
	})
	prop_dynamic140.SetOrigin(org)
	prop_dynamic140.SetAngles(ang[0], ang[1], ang[2])

}
::p_bookcase3 <- function(org, ang)
{
	local prop_dynamic141 = SpawnEntityFromTable("prop_dynamic", {
	    classname = "prop_dynamic",
	    model = "models/props_manor/bookcase_132_03.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 1,
	    solid = 0,
	    spawnflags = 0
	})
	prop_dynamic141.SetOrigin(org)
	prop_dynamic141.SetAngles(ang[0], ang[1], ang[2])

}
::p_monstercage <- function(org, ang)
{
	local prop_dynamic142 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "monstercage",
	    classname = "prop_dynamic",
	    model = "models/props_island/small_yeti_container01.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0
	})
	prop_dynamic142.SetOrigin(org)
	prop_dynamic142.SetAngles(ang[0], ang[1], ang[2])

}
::p_barrel <- function(org, ang)
{
	local prop_dynamic143 = SpawnEntityFromTable("prop_dynamic", {
	    classname = "prop_dynamic",
	    model = "models/props_medical/beer_barrels.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0
	})
	prop_dynamic143.SetOrigin(org)
	prop_dynamic143.SetAngles(ang[0], ang[1], ang[2])

}
::p_beer <- function(org, ang)
{
	local func_wall_brush29 = SpawnEntityFromTable("func_wall", {
	    mins = "-49 -65 -224",
	    maxs = "49 65 224"
	})
	func_wall_brush29.KeyValueFromInt("solid", 2)
	func_wall_brush29.KeyValueFromString("mins", "-49 -65 -224")
	func_wall_brush29.KeyValueFromString("maxs", "49 65 224")

}
::p_brokenstairs_clip <- function(org, ang)
{
	local func_wall_brush30 = SpawnEntityFromTable("func_wall", {
	    mins = "-36 -32 -77",
	    maxs = "36 32 77"
	})
	func_wall_brush30.KeyValueFromInt("solid", 2)
	func_wall_brush30.KeyValueFromString("mins", "-36 -32 -77")
	func_wall_brush30.KeyValueFromString("maxs", "36 32 77")

	local func_wall_brush31 = SpawnEntityFromTable("func_wall", {
	    mins = "-32 -32 -95",
	    maxs = "32 32 95"
	})
	func_wall_brush31.KeyValueFromInt("solid", 2)
	func_wall_brush31.KeyValueFromString("mins", "-32 -32 -95")
	func_wall_brush31.KeyValueFromString("maxs", "32 32 95")

	local func_wall_brush32 = SpawnEntityFromTable("func_wall", {
	    mins = "-38 -32 -111",
	    maxs = "38 32 111"
	})
	func_wall_brush32.KeyValueFromInt("solid", 2)
	func_wall_brush32.KeyValueFromString("mins", "-38 -32 -111")
	func_wall_brush32.KeyValueFromString("maxs", "38 32 111")

	local func_wall_brush33 = SpawnEntityFromTable("func_wall", {
	    mins = "-19 -32 -124",
	    maxs = "19 32 124"
	})
	func_wall_brush33.KeyValueFromInt("solid", 2)
	func_wall_brush33.KeyValueFromString("mins", "-19 -32 -124")
	func_wall_brush33.KeyValueFromString("maxs", "19 32 124")

	local func_wall_brush34 = SpawnEntityFromTable("func_wall", {
	    mins = "-4 -24 -112",
	    maxs = "4 24 112"
	})
	func_wall_brush34.KeyValueFromInt("solid", 2)
	func_wall_brush34.KeyValueFromString("mins", "-4 -24 -112")
	func_wall_brush34.KeyValueFromString("maxs", "4 24 112")

	local func_wall_brush35 = SpawnEntityFromTable("func_wall", {
	    mins = "-4 -16 -112",
	    maxs = "4 16 112"
	})
	func_wall_brush35.KeyValueFromInt("solid", 2)
	func_wall_brush35.KeyValueFromString("mins", "-4 -16 -112")
	func_wall_brush35.KeyValueFromString("maxs", "4 16 112")

	local func_wall_brush36 = SpawnEntityFromTable("func_wall", {
	    mins = "-4 -8 -112",
	    maxs = "4 8 112"
	})
	func_wall_brush36.KeyValueFromInt("solid", 2)
	func_wall_brush36.KeyValueFromString("mins", "-4 -8 -112")
	func_wall_brush36.KeyValueFromString("maxs", "4 8 112")

}
::p_crate <- function(org, ang)
{
	local prop_dynamic144 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "crate",
	    classname = "prop_dynamic",
	    model = "models/props_2fort/miningcrate001.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0,
	    minhealthdmg = 9999
	})
	prop_dynamic144.SetOrigin(org)
	prop_dynamic144.SetAngles(ang[0], ang[1], ang[2])

}
::p_ledgefix_left <- function(org, ang)
{
	local func_brush_brush37 = SpawnEntityFromTable("func_brush", {
	    mins = "-112 -8 -104",
	    maxs = "112 8 104"
	})
	func_brush_brush37.KeyValueFromInt("solid", 2)
	func_brush_brush37.KeyValueFromString("mins", "-112 -8 -104")
	func_brush_brush37.KeyValueFromString("maxs", "112 8 104")

	local func_brush_brush38 = SpawnEntityFromTable("func_brush", {
	    mins = "-8 -112 -120",
	    maxs = "8 112 120"
	})
	func_brush_brush38.KeyValueFromInt("solid", 2)
	func_brush_brush38.KeyValueFromString("mins", "-8 -112 -120")
	func_brush_brush38.KeyValueFromString("maxs", "8 112 120")

	local func_brush_brush39 = SpawnEntityFromTable("func_brush", {
	    mins = "-112 -8 -104",
	    maxs = "112 8 104"
	})
	func_brush_brush39.KeyValueFromInt("solid", 2)
	func_brush_brush39.KeyValueFromString("mins", "-112 -8 -104")
	func_brush_brush39.KeyValueFromString("maxs", "112 8 104")

}
::p_ledgefix_right <- function(org, ang)
{
	local func_brush_brush40 = SpawnEntityFromTable("func_brush", {
	    mins = "-112 -8 -104",
	    maxs = "112 8 104"
	})
	func_brush_brush40.KeyValueFromInt("solid", 2)
	func_brush_brush40.KeyValueFromString("mins", "-112 -8 -104")
	func_brush_brush40.KeyValueFromString("maxs", "112 8 104")

	local func_brush_brush41 = SpawnEntityFromTable("func_brush", {
	    mins = "-8 -112 -120",
	    maxs = "8 112 120"
	})
	func_brush_brush41.KeyValueFromInt("solid", 2)
	func_brush_brush41.KeyValueFromString("mins", "-8 -112 -120")
	func_brush_brush41.KeyValueFromString("maxs", "8 112 120")

	local func_brush_brush42 = SpawnEntityFromTable("func_brush", {
	    mins = "-112 -8 -104",
	    maxs = "112 8 104"
	})
	func_brush_brush42.KeyValueFromInt("solid", 2)
	func_brush_brush42.KeyValueFromString("mins", "-112 -8 -104")
	func_brush_brush42.KeyValueFromString("maxs", "112 8 104")

}
::p_crate2 <- function(org, ang)
{
	local prop_dynamic145 = SpawnEntityFromTable("prop_dynamic", {
	    classname = "prop_dynamic",
	    model = "models/props_2fort/miningcrate001.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 0,
	    spawnflags = 0,
	    lightingorigin = "spawnbot_surprise2",
	    minhealthdmg = 9999
	})
	prop_dynamic145.SetOrigin(org)
	prop_dynamic145.SetAngles(ang[0], ang[1], ang[2])

}
::p_tomb <- function(org, ang)
{
	local prop_dynamic146 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "tomb",
	    classname = "prop_dynamic",
	    model = "models/props_2fort/miningcrate001.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0,
	    minhealthdmg = 9999
	})
	prop_dynamic146.SetOrigin(org)
	prop_dynamic146.SetAngles(ang[0], ang[1], ang[2])

}
::p_heli <- function(org, ang)
{
	local prop_dynamic147 = SpawnEntityFromTable("prop_dynamic", {
	    classname = "prop_dynamic",
	    model = "models/props_island/island_helicopter.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 0,
	    spawnflags = 0
	})
	prop_dynamic147.SetOrigin(org)
	prop_dynamic147.SetAngles(ang[0], ang[1], ang[2])

}
::p_cratesmall <- function(org, ang)
{
	local prop_dynamic148 = SpawnEntityFromTable("prop_dynamic", {
	    classname = "prop_dynamic",
	    model = "models/props_2fort/miningcrate002.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0,
	    minhealthdmg = 9999
	})
	prop_dynamic148.SetOrigin(org)
	prop_dynamic148.SetAngles(ang[0], ang[1], ang[2])

}
::p_crate_intro <- function(org, ang)
{
	local prop_dynamic149 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "shitcade",
	    classname = "prop_dynamic",
	    model = "models/props_2fort/miningcrate001.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0,
	    minhealthdmg = 9999
	})
	prop_dynamic149.SetOrigin(org)
	prop_dynamic149.SetAngles(ang[0], ang[1], ang[2])

}
::p_shitcade <- function(org, ang)
{
	local prop_dynamic150 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "shitcade_intro",
	    classname = "prop_dynamic",
	    model = "models/props_medieval/tank_entrance_rottenburg.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 0,
	    spawnflags = 0,
	    DefaultAnim = "idle"
	})
	prop_dynamic150.SetOrigin(org)
	prop_dynamic150.SetAngles(ang[0], ang[1], ang[2])

}
::p_shitcade2 <- function(org, ang)
{
	local prop_dynamic151 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "shitcade",
	    classname = "prop_dynamic",
	    model = "models/props_harbor/plates_harbor4.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0
	})
	prop_dynamic151.SetOrigin(org)
	prop_dynamic151.SetAngles(ang[0], ang[1], ang[2])

}
::p_barricade_level1 <- function(org, ang)
{
	local prop_dynamic152 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "barricade_level1",
	    classname = "prop_dynamic",
	    model = "models/props_coalmines/wood_fence_64.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0
	})
	prop_dynamic152.SetOrigin(org)
	prop_dynamic152.SetAngles(ang[0], ang[1], ang[2])

}
::p_barricade_nolevel <- function(org, ang)
{
	local prop_dynamic153 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "barricade_level",
	    classname = "prop_dynamic",
	    model = "models/props_coalmines/wood_fence_256.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0
	})
	prop_dynamic153.SetOrigin(org)
	prop_dynamic153.SetAngles(ang[0], ang[1], ang[2])

}
::p_barricade_nolevel2 <- function(org, ang)
{
	local prop_dynamic154 = SpawnEntityFromTable("prop_dynamic", {
	    classname = "prop_dynamic",
	    model = "models/props_coalmines/wood_fence_short_64.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0
	})
	prop_dynamic154.SetOrigin(org)
	prop_dynamic154.SetAngles(ang[0], ang[1], ang[2])

}
::p_barricade_nolevel3 <- function(org, ang)
{
	local prop_dynamic155 = SpawnEntityFromTable("prop_dynamic", {
	    classname = "prop_dynamic",
	    model = "models/props_coalmines/wood_fence_short_64.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 0,
	    spawnflags = 0
	})
	prop_dynamic155.SetOrigin(org)
	prop_dynamic155.SetAngles(ang[0], ang[1], ang[2])

}
::p_barricade_level2 <- function(org, ang)
{
	local prop_dynamic156 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "barricade_level2",
	    classname = "prop_dynamic",
	    model = "models/props_coalmines/wood_fence_256.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0
	})
	prop_dynamic156.SetOrigin(org)
	prop_dynamic156.SetAngles(ang[0], ang[1], ang[2])

}
::p_barricade_level3a <- function(org, ang)
{
	local prop_dynamic157 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "barricade_level3",
	    classname = "prop_dynamic",
	    model = "models/props_coalmines/wood_fence_256.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0
	})
	prop_dynamic157.SetOrigin(org)
	prop_dynamic157.SetAngles(ang[0], ang[1], ang[2])

}
::p_barricade_level3b <- function(org, ang)
{
	local prop_dynamic158 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "barricade_level3",
	    classname = "prop_dynamic",
	    model = "models/props_coalmines/wood_fence_128.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0
	})
	prop_dynamic158.SetOrigin(org)
	prop_dynamic158.SetAngles(ang[0], ang[1], ang[2])

}
::p_barricade_plate2 <- function(org, ang)
{
	local prop_dynamic159 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "barricade_level2",
	    classname = "prop_dynamic",
	    model = "models/props_harbor/plates_harbor4.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0
	})
	prop_dynamic159.SetOrigin(org)
	prop_dynamic159.SetAngles(ang[0], ang[1], ang[2])

}
::p_barricade_plate3 <- function(org, ang)
{
	local prop_dynamic160 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "barricade_level3",
	    classname = "prop_dynamic",
	    model = "models/props_harbor/plates_harbor4.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0
	})
	prop_dynamic160.SetOrigin(org)
	prop_dynamic160.SetAngles(ang[0], ang[1], ang[2])

}
::p_zombie <- function(org, ang)
{
	local prop_dynamic161 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "zombie",
	    classname = "prop_dynamic",
	    model = "models/zombie/poison.mdl",
	    DefaultAnim = "idle01",
	    DisableBoneFollowers = 1,
	    RandomAnimation = 0,
	    disableshadows = 0,
	    modelscale = 3,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0
	})
	prop_dynamic161.SetOrigin(org)
	prop_dynamic161.SetAngles(ang[0], ang[1], ang[2])

}
::p_hhhteleporter <- function(org, ang)
{
	local trigger_teleport_brush43 = SpawnEntityFromTable("trigger_teleport", {
	    origin = Vector(0, 2176, 48),
	    filtername = "filter_headless",
	    mins = "-384 -160 -80",
	    maxs = "384 160 80",
	    spawnflags = 64,
	    StartDisabled = 0,
	    target = "hhhtele2",
	    "OnStartTouch#1": "hhhtele1,Disable,,0,-1",
	    "OnStartTouch#2": "hhhtele1,Enable,,5,-1"
	})
	trigger_teleport_brush43.KeyValueFromInt("solid", 2)
	trigger_teleport_brush43.KeyValueFromString("mins", "-384 -160 -80")
	trigger_teleport_brush43.KeyValueFromString("maxs", "384 160 80")

	local info_teleport_destination162 = SpawnEntityFromTable("info_teleport_destination", {
	    targetname = "hhhtele2",
	    origin = Vector(300, 2395, 200),
	    angles = QAngle(0, 90, 0)
	})
	info_teleport_destination162.SetOrigin(org)
	info_teleport_destination162.SetAngles(ang[0], ang[1], ang[2])

	local filter_activator_class163 = SpawnEntityFromTable("filter_activator_class", {
	    filterclass = "headless_hatman",
	    targetname = "filter_headless"
	})
	filter_activator_class163.SetOrigin(org)
	filter_activator_class163.SetAngles(ang[0], ang[1], ang[2])

}
::p_slower0 <- function(org, ang)
{
	local trigger_stun_brush44 = SpawnEntityFromTable("trigger_stun", {
	    TeamNum = 0,
	    targetname = "slower0",
	    stun_type = 0,
	    stun_effects = 1,
	    stun_duration = 1,
	    StartDisabled = 1,
	    spawnflags = 1,
	    origin = Vector(0, 2176, 48),
	    move_speed_reduction = 0.65,
	    filtername = "filter_redplayer",
	    classname = "trigger_stun",
	    mins = "-8000 -8000 -1000",
	    maxs = "8000 8000 1000",
	    solid = 3
	})
	trigger_stun_brush44.KeyValueFromInt("solid", 2)
	trigger_stun_brush44.KeyValueFromString("mins", "-8000 -8000 -1000")
	trigger_stun_brush44.KeyValueFromString("maxs", "8000 8000 1000")

}
::p_slower1 <- function(org, ang)
{
	local trigger_stun_brush45 = SpawnEntityFromTable("trigger_stun", {
	    TeamNum = 0,
	    targetname = "slower1",
	    stun_type = 0,
	    stun_effects = 1,
	    stun_duration = 1,
	    StartDisabled = 0,
	    spawnflags = 1,
	    origin = Vector(0, 2176, 48),
	    move_speed_reduction = 0.85,
	    filtername = "filter_red",
	    classname = "trigger_stun",
	    mins = "-384 -160 -80",
	    maxs = "384 160 80",
	    solid = 3
	})
	trigger_stun_brush45.KeyValueFromInt("solid", 2)
	trigger_stun_brush45.KeyValueFromString("mins", "-384 -160 -80")
	trigger_stun_brush45.KeyValueFromString("maxs", "384 160 80")

}
::p_slower2 <- function(org, ang)
{
	local trigger_stun_brush46 = SpawnEntityFromTable("trigger_stun", {
	    TeamNum = 0,
	    targetname = "slower2",
	    stun_type = 0,
	    stun_effects = 1,
	    stun_duration = 1,
	    StartDisabled = 0,
	    spawnflags = 1,
	    origin = Vector(-288, 2528, 280),
	    move_speed_reduction = 0.85,
	    filtername = "filter_red",
	    classname = "trigger_stun",
	    mins = "-480 -128 -104",
	    maxs = "480 128 104",
	    solid = 3
	})
	trigger_stun_brush46.KeyValueFromInt("solid", 2)
	trigger_stun_brush46.KeyValueFromString("mins", "-480 -128 -104")
	trigger_stun_brush46.KeyValueFromString("maxs", "480 128 104")

}
::p_slower3 <- function(org, ang)
{
	local trigger_stun_brush47 = SpawnEntityFromTable("trigger_stun", {
	    TeamNum = 0,
	    targetname = "slower3",
	    stun_type = 0,
	    stun_effects = 1,
	    stun_duration = 1,
	    StartDisabled = 0,
	    spawnflags = 1,
	    origin = Vector(-864, 2176, 280),
	    move_speed_reduction = 0.85,
	    filtername = "filter_red",
	    classname = "trigger_stun",
	    mins = "-448 -192 -104",
	    maxs = "448 192 104",
	    solid = 3
	})
	trigger_stun_brush47.KeyValueFromInt("solid", 2)
	trigger_stun_brush47.KeyValueFromString("mins", "-448 -192 -104")
	trigger_stun_brush47.KeyValueFromString("maxs", "448 192 104")

}
::p_slower4 <- function(org, ang)
{
	local trigger_stun_brush48 = SpawnEntityFromTable("trigger_stun", {
	    TeamNum = 0,
	    targetname = "slower4",
	    stun_type = 0,
	    stun_effects = 1,
	    stun_duration = 1,
	    StartDisabled = 0,
	    spawnflags = 1,
	    origin = Vector(-1024, 1648, 280),
	    move_speed_reduction = 0.85,
	    filtername = "filter_red",
	    classname = "trigger_stun",
	    mins = "-288 -336 -104",
	    maxs = "288 336 104",
	    solid = 3
	})
	trigger_stun_brush48.KeyValueFromInt("solid", 2)
	trigger_stun_brush48.KeyValueFromString("mins", "-288 -336 -104")
	trigger_stun_brush48.KeyValueFromString("maxs", "288 336 104")

}
::p_slower5 <- function(org, ang)
{
	local trigger_stun_brush49 = SpawnEntityFromTable("trigger_stun", {
	    TeamNum = 0,
	    targetname = "slower5",
	    stun_type = 0,
	    stun_effects = 1,
	    stun_duration = 1,
	    StartDisabled = 0,
	    spawnflags = 1,
	    origin = Vector(-1320, 1196, 280),
	    move_speed_reduction = 0.85,
	    filtername = "filter_red",
	    classname = "trigger_stun",
	    mins = "-104 -140 -104",
	    maxs = "104 140 104",
	    solid = 3
	})
	trigger_stun_brush49.KeyValueFromInt("solid", 2)
	trigger_stun_brush49.KeyValueFromString("mins", "-104 -140 -104")
	trigger_stun_brush49.KeyValueFromString("maxs", "104 140 104")

}
::p_slower6 <- function(org, ang)
{
	local trigger_stun_brush50 = SpawnEntityFromTable("trigger_stun", {
	    TeamNum = 0,
	    targetname = "slower6",
	    stun_type = 0,
	    stun_effects = 1,
	    stun_duration = 1,
	    StartDisabled = 0,
	    spawnflags = 1,
	    origin = Vector(-1024, 96, -7),
	    move_speed_reduction = 0.85,
	    filtername = "filter_red",
	    classname = "trigger_stun",
	    mins = "-288 -928 -104",
	    maxs = "288 928 104",
	    solid = 3
	})
	trigger_stun_brush50.KeyValueFromInt("solid", 2)
	trigger_stun_brush50.KeyValueFromString("mins", "-288 -928 -104")
	trigger_stun_brush50.KeyValueFromString("maxs", "288 928 104")

}
::p_slower7 <- function(org, ang)
{
	local trigger_stun_brush51 = SpawnEntityFromTable("trigger_stun", {
	    TeamNum = 0,
	    targetname = "slower7",
	    stun_type = 0,
	    stun_effects = 1,
	    stun_duration = 1,
	    StartDisabled = 0,
	    spawnflags = 1,
	    origin = Vector(624, -656, -56),
	    move_speed_reduction = 0.85,
	    filtername = "filter_red",
	    classname = "trigger_stun",
	    mins = "-1360 -528 -55",
	    maxs = "1360 528 55",
	    solid = 3
	})
	trigger_stun_brush51.KeyValueFromInt("solid", 2)
	trigger_stun_brush51.KeyValueFromString("mins", "-1360 -528 -55")
	trigger_stun_brush51.KeyValueFromString("maxs", "1360 528 55")

}
::p_slower8 <- function(org, ang)
{
	local trigger_stun_brush52 = SpawnEntityFromTable("trigger_stun", {
	    TeamNum = 0,
	    targetname = "slower8",
	    stun_type = 0,
	    stun_effects = 1,
	    stun_duration = 1,
	    StartDisabled = 0,
	    spawnflags = 1,
	    origin = Vector(1520, 416, -7),
	    move_speed_reduction = 0.85,
	    filtername = "filter_red",
	    classname = "trigger_stun",
	    mins = "-784 -544 -104",
	    maxs = "784 544 104",
	    solid = 3
	})
	trigger_stun_brush52.KeyValueFromInt("solid", 2)
	trigger_stun_brush52.KeyValueFromString("mins", "-784 -544 -104")
	trigger_stun_brush52.KeyValueFromString("maxs", "784 544 104")

}
::p_slower9 <- function(org, ang)
{
	local trigger_stun_brush53 = SpawnEntityFromTable("trigger_stun", {
	    TeamNum = 0,
	    targetname = "slower9",
	    stun_type = 0,
	    stun_effects = 1,
	    stun_duration = 1,
	    StartDisabled = 0,
	    spawnflags = 1,
	    origin = Vector(608, 64, -7),
	    move_speed_reduction = 0.85,
	    filtername = "filter_red",
	    classname = "trigger_stun",
	    mins = "-96 -160 -104",
	    maxs = "96 160 104",
	    solid = 3
	})
	trigger_stun_brush53.KeyValueFromInt("solid", 2)
	trigger_stun_brush53.KeyValueFromString("mins", "-96 -160 -104")
	trigger_stun_brush53.KeyValueFromString("maxs", "96 160 104")

}
::p_controlpoint <- function(org, ang)
{
	local prop_dynamic164 = SpawnEntityFromTable("prop_dynamic", {
	    model = "models/props_gameplay/cap_point_base.mdl",
	    targetname = "cap_base",
	    solid = 0,
	    skin = 0
	})
	prop_dynamic164.SetOrigin(org)
	prop_dynamic164.SetAngles(ang[0], ang[1], ang[2])

	local trigger_capture_area_brush54 = SpawnEntityFromTable("trigger_capture_area", {
	    area_cap_point = "cap_point",
	    area_time_to_cap = 60,
	    StartDisabled = 0,
	    targetname = "cap_area",
	    team_cancap_2 = 1,
	    team_cancap_3 = 0,
	    team_numcap_2 = 1,
	    team_numcap_3 = 1,
	    team_spawn_2 = 0,
	    team_spawn_3 = 0,
	    team_startcap_2 = 1,
	    team_startcap_3 = 1,
	    mins = "-128 -128 -128",
	    maxs = "128 128 128",
	    origin = Vector(-60.706001, -2106.440430, 392.092560),
	    spawnflags = 1,
	    "OnCapTeam1#1": "boss_deploy_relay,Trigger,,10,-1"
	})
	trigger_capture_area_brush54.KeyValueFromInt("solid", 2)
	trigger_capture_area_brush54.KeyValueFromString("mins", "-128 -128 -128")
	trigger_capture_area_brush54.KeyValueFromString("maxs", "128 128 128")

	local team_control_point165 = SpawnEntityFromTable("team_control_point", {
	    classname = "team_control_point",
	    angles = QAngle(0, 0, 0),
	    point_default_owner = 0,
	    point_group = 0,
	    point_index = 2,
	    point_printname = "your escape!",
	    point_start_locked = 0,
	    point_warn_on_cap = 0,
	    point_warn_sound = "misc/null.wav",
	    random_owner_on_restart = 0,
	    spawnflags = 4,
	    StartDisabled = 0,
	    targetname = "cap_point",
	    team_bodygroup_0 = 3,
	    team_bodygroup_2 = 1,
	    team_bodygroup_3 = 1,
	    team_icon_0 = "sprites/obj_icons/icon_obj_neutral",
	    team_icon_2 = "sprites/obj_icons/icon_obj_red",
	    team_icon_3 = "sprites/obj_icons/icon_obj_blu",
	    team_model_0 = "models/effects/cappoint_hologram.mdl",
	    team_model_2 = "models/effects/cappoint_hologram.mdl",
	    team_model_3 = "models/effects/cappoint_hologram.mdl",
	    team_previouspoint_2_0 = "cap_point",
	    team_timedpoints_2 = 0,
	    team_timedpoints_3 = 0,
	    origin = Vector(0, 0, 4)
	})
	team_control_point165.SetOrigin(org)
	team_control_point165.SetAngles(ang[0], ang[1], ang[2])

	local team_control_point_master166 = SpawnEntityFromTable("team_control_point_master", {
	    classname = "team_control_point_master",
	    cpm_restrict_team_cap_win = 1,
	    custom_position_x = 0.35,
	    caplayout = "2,0 1",
	    custom_position_y = 0.91,
	    partial_cap_points_rate = 0,
	    play_all_rounds = 0,
	    score_style = 0,
	    StartDisabled = 0,
	    switch_teams = 0,
	    targetname = "cap_master",
	    team_base_icon_2 = "sprites/obj_icons/icon_base_red",
	    team_base_icon_3 = "sprites/obj_icons/icon_base_blu"
	})
	team_control_point_master166.SetOrigin(org)
	team_control_point_master166.SetAngles(ang[0], ang[1], ang[2])

	local game_round_win167 = SpawnEntityFromTable("game_round_win", {
	    classname = "game_round_win",
	    force_map_reset = 0,
	    switch_teams = 0,
	    targetname = "red_win",
	    TeamNum = 2
	})
	game_round_win167.SetOrigin(org)
	game_round_win167.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay168 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "cap_area,SetControlPoint,cap_point,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION21"
	})
	logic_relay168.SetOrigin(org)
	logic_relay168.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay169 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "cap_master,RoundSpawn,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION22"
	})
	logic_relay169.SetOrigin(org)
	logic_relay169.SetAngles(ang[0], ang[1], ang[2])

}
::p_cover <- function(org, ang)
{
	local prop_dynamic170 = SpawnEntityFromTable("prop_dynamic", {
	    classname = "prop_dynamic",
	    model = "models/props_2fort/miningcrate001.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0,
	    Origin = "478 -852 -85",
	    Angles = "0 105 10",
	    minhealthdmg = 9999
	})
	prop_dynamic170.SetOrigin(org)
	prop_dynamic170.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic171 = SpawnEntityFromTable("prop_dynamic", {
	    classname = "prop_dynamic",
	    model = "models/props_2fort/miningcrate001.mdl",
	    disableshadows = 1,
	    modelscale = 1,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0,
	    Origin = "458 -852 -43",
	    Angles = "0 105 10",
	    minhealthdmg = 9999
	})
	prop_dynamic171.SetOrigin(org)
	prop_dynamic171.SetAngles(ang[0], ang[1], ang[2])

}
::p_pointmaker <- function(org, ang)
{
	local env_entity_maker172 = SpawnEntityFromTable("env_entity_maker", {
	    targetname = "point_maker",
	    EntityTemplate = "p_controlpoint"
	})
	env_entity_maker172.SetOrigin(org)
	env_entity_maker172.SetAngles(ang[0], ang[1], ang[2])

}
::p_pointmaker2 <- function(org, ang)
{
	local env_entity_maker173 = SpawnEntityFromTable("env_entity_maker", {
	    targetname = "point_maker2",
	    EntityTemplate = "p_leet2"
	})
	env_entity_maker173.SetOrigin(org)
	env_entity_maker173.SetAngles(ang[0], ang[1], ang[2])

}
::p_shutter_pusher <- function(org, ang)
{
	local trigger_push_brush55 = SpawnEntityFromTable("trigger_push", {
	    origin = Vector(232, 249, 521),
	    mins = "-456 -7 -7.5",
	    maxs = "456 7 7.5",
	    pushdir = "0 -90 0",
	    spawnflags = 1,
	    speed = 400,
	    targetname = "shutter_pusher"
	})
	trigger_push_brush55.KeyValueFromInt("solid", 2)
	trigger_push_brush55.KeyValueFromString("mins", "-456 -7 -7.5")
	trigger_push_brush55.KeyValueFromString("maxs", "456 7 7.5")

}
::p_shutter_pusher2 <- function(org, ang)
{
	local trigger_push_brush56 = SpawnEntityFromTable("trigger_push", {
	    origin = Vector(125, 244, 345),
	    mins = "-349 -12.5 -168.5",
	    maxs = "349 12.5 168.5",
	    pushdir = "0 -90 0",
	    spawnflags = 1,
	    speed = 400,
	    targetname = "shutter_pusher"
	})
	trigger_push_brush56.KeyValueFromInt("solid", 2)
	trigger_push_brush56.KeyValueFromString("mins", "-349 -12.5 -168.5")
	trigger_push_brush56.KeyValueFromString("maxs", "349 12.5 168.5")

}
::p_brokenwall_pusher <- function(org, ang)
{
	local trigger_push_brush57 = SpawnEntityFromTable("trigger_push", {
	    origin = Vector(388, 2182, 587),
	    mins = "-4 -5.5 -85",
	    maxs = "4 5.5 85",
	    pushdir = "0 90 0",
	    spawnflags = 1,
	    speed = 250,
	    targetname = "brokenwall_pusher"
	})
	trigger_push_brush57.KeyValueFromInt("solid", 2)
	trigger_push_brush57.KeyValueFromString("mins", "-4 -5.5 -85")
	trigger_push_brush57.KeyValueFromString("maxs", "4 5.5 85")

}
::p_brokenwall_pusher2 <- function(org, ang)
{
	local trigger_push_brush58 = SpawnEntityFromTable("trigger_push", {
	    origin = Vector(-388, 1761, 365),
	    mins = "-4 -163.5 -57.5",
	    maxs = "4 163.5 57.5",
	    pushdir = "0 180 0",
	    spawnflags = 1,
	    speed = 400,
	    targetname = "brokenwall_pusher"
	})
	trigger_push_brush58.KeyValueFromInt("solid", 2)
	trigger_push_brush58.KeyValueFromString("mins", "-4 -163.5 -57.5")
	trigger_push_brush58.KeyValueFromString("maxs", "4 163.5 57.5")

	local trigger_push_brush59 = SpawnEntityFromTable("trigger_push", {
	    origin = Vector(-408, 1616, 430),
	    mins = "-24 -15.5 -40.5",
	    maxs = "24 15.5 40.5",
	    pushdir = "0 135 0",
	    spawnflags = 1,
	    speed = 400,
	    targetname = "brokenwall_pusher"
	})
	trigger_push_brush59.KeyValueFromInt("solid", 2)
	trigger_push_brush59.KeyValueFromString("mins", "-24 -15.5 -40.5")
	trigger_push_brush59.KeyValueFromString("maxs", "24 15.5 40.5")

}
::p_yeet_failsafe <- function(org, ang)
{
	local trigger_teleport_brush60 = SpawnEntityFromTable("trigger_teleport", {
	    mins = "-82.5 -41 -20",
	    maxs = "82.5 41 20",
	    origin = Vector(0, 488, 212),
	    spawnflags = 1,
	    filtername = "filter_red",
	    target = "yeet_failsafe_target"
	})
	trigger_teleport_brush60.KeyValueFromInt("solid", 2)
	trigger_teleport_brush60.KeyValueFromString("mins", "-82.5 -41 -20")
	trigger_teleport_brush60.KeyValueFromString("maxs", "82.5 41 20")

	local info_target174 = SpawnEntityFromTable("info_target", {
	    targetname = "yeet_failsafe_target",
	    origin = Vector(0, 488, 300),
	    angles = QAngle(0, 90, 0)
	})
	info_target174.SetOrigin(org)
	info_target174.SetAngles(ang[0], ang[1], ang[2])

}
::p_yeet <- function(org, ang)
{
	local func_forcefield_brush61 = SpawnEntityFromTable("func_forcefield", {
	    mins = "-82.5 -41 -20.5",
	    maxs = "82.5 41 20.5",
	    TeamNum = 3,
	    targetname = "desk_barrier",
	    StartDisabled = 0
	})
	func_forcefield_brush61.KeyValueFromInt("solid", 2)
	func_forcefield_brush61.KeyValueFromString("mins", "-82.5 -41 -20.5")
	func_forcefield_brush61.KeyValueFromString("maxs", "82.5 41 20.5")

}
::p_yeet2 <- function(org, ang)
{
	local trigger_push_brush62 = SpawnEntityFromTable("trigger_push", {
	    mins = "-16 -156 -16",
	    maxs = "16 156 16",
	    pushdir = "0 0 0",
	    speed = 50,
	    StartDisabled = 0,
	    spawnflags = 1,
	    filtername = "filter_redplayer",
	    parentname = "yeetrotate"
	})
	trigger_push_brush62.KeyValueFromInt("solid", 2)
	trigger_push_brush62.KeyValueFromString("mins", "-16 -156 -16")
	trigger_push_brush62.KeyValueFromString("maxs", "16 156 16")

	local func_rotating_brush63 = SpawnEntityFromTable("func_rotating", {
	    origin = Vector(400, 1040, 191),
	    mins = "-8 -8 -8",
	    maxs = "8 8 8",
	    fanfriction = 100,
	    maxspeed = 50,
	    rendermode = 10,
	    spawnflags = 65
	})
	func_rotating_brush63.KeyValueFromInt("solid", 2)
	func_rotating_brush63.KeyValueFromString("mins", "-8 -8 -8")
	func_rotating_brush63.KeyValueFromString("maxspeed", "50")

}
::p_yeet3 <- function(org, ang)
{
	local trigger_catapult_brush64 = SpawnEntityFromTable("trigger_catapult", {
	    useThresholdCheck = 0,
	    useExactVelocity = 0,
	    upperThreshold = 0.3,
	    StartDisabled = 0,
	    spawnflags = 3,
	    playerSpeed = 475,
	    physicsSpeed = 450,
	    origin = Vector(400, 1040, -19),
	    mins = "-64 -64 -45",
	    maxs = "64 64 45",
	    onlyVelocityCheck = 0,
	    lowerThreshold = 0.15,
	    launchTarget = "jumptarget_lonepillar",
	    launchDirection = "-90 0 0",
	    filtername = "filter_leaper",
	    exactVelocityChoiceType = 0,
	    entryAngleTolerance = 0.0,
	    applyAngularImpulse = 0,
	    AirCtrlSupressionTime = -1.0,
	    "OnCatapulted#1": "!self,Disable,,0,-1",
	    "OnCatapulted#2": "!self,Enable,,3,-1"
	})
	trigger_catapult_brush64.KeyValueFromInt("solid", 2)
	trigger_catapult_brush64.KeyValueFromString("mins", "-64 -64 -45")
	trigger_catapult_brush64.KeyValueFromString("maxs", "64 64 45")

	local info_target175 = SpawnEntityFromTable("info_target", {
	    targetname = "jumptarget_lonepillar",
	    origin = Vector(400, 1040, 315)
	})
	info_target175.SetOrigin(org)
	info_target175.SetAngles(ang[0], ang[1], ang[2])

}
::p_yeet4 <- function(org, ang)
{
	local trigger_push_brush65 = SpawnEntityFromTable("trigger_push", {
	    origin = Vector(416, -1056, 576),
	    mins = "-32 -32 -704",
	    maxs = "32 32 704",
	    pushdir = "0 -35 0",
	    spawnflags = 1,
	    speed = 500,
	    StartDisabled = 0,
	    filtername = "filter_red",
	    targetname = "pusherrr"
	})
	trigger_push_brush65.KeyValueFromInt("solid", 2)
	trigger_push_brush65.KeyValueFromString("mins", "-32 -32 -704")
	trigger_push_brush65.KeyValueFromString("maxs", "32 32 704")

}
::p_mapblock <- function(org, ang)
{
	local func_forcefield_brush66 = SpawnEntityFromTable("func_forcefield", {
	    mins = "-288 -62 -704",
	    maxs = "288 62 704",
	    TeamNum = 3,
	    targetname = "top_barrier",
	    StartDisabled = 0
	})
	func_forcefield_brush66.KeyValueFromInt("solid", 2)
	func_forcefield_brush66.KeyValueFromString("mins", "-288 -62 -704")
	func_forcefield_brush66.KeyValueFromString("maxs", "288 62 704")

}
::p_bonus <- function(org, ang)
{
	local filter_tf_bot_has_tag176 = SpawnEntityFromTable("filter_tf_bot_has_tag", {
	    negated = 1,
	    require_all_tags = 1,
	    tags = "bot_notplayer",
	    targetname = "filter_notplayer"
	})
	filter_tf_bot_has_tag176.SetOrigin(org)
	filter_tf_bot_has_tag176.SetAngles(ang[0], ang[1], ang[2])

	local filter_multi177 = SpawnEntityFromTable("filter_multi", {
	    targetname = "filter_redplayer",
	    filter01 = "filter_red",
	    filter02 = "filter_notplayer"
	})
	filter_multi177.SetOrigin(org)
	filter_multi177.SetAngles(ang[0], ang[1], ang[2])

	local trigger_add_tf_player_condition_brush67 = SpawnEntityFromTable("trigger_add_tf_player_condition", {
	    condition = 40,
	    duration = 2,
	    filtername = "filter_redplayer",
	    startdisabled = 1,
	    origin = Vector(768, 768, 576),
	    mins = "-3328 -3328 -704",
	    maxs = "3328 3328 704",
	    spawnflags = 1
	})
	trigger_add_tf_player_condition_brush67.KeyValueFromInt("solid", 2)
	trigger_add_tf_player_condition_brush67.KeyValueFromString("mins", "-3328 -3328 -704")
	trigger_add_tf_player_condition_brush67.KeyValueFromString("maxs", "3328 3328 704")

	local logic_timer178 = SpawnEntityFromTable("logic_timer", {
	    targetname = "lastcritsrefire",
	    refiretime = 1,
	    startdisabled = 1,
	    "ontimer#1": "lastcrits,enable,,0,-1",
	    "ontimer#2": "lastcrits,disable,,0.5,-1"
	})
	logic_timer178.SetOrigin(org)
	logic_timer178.SetAngles(ang[0], ang[1], ang[2])

	local math_counter179 = SpawnEntityFromTable("math_counter", {
	    targetname = "lastcounter",
	    max = 6,
	    "outvalue#1": "lastcountercompare,setvaluecompare,,0,-1"
	})
	math_counter179.SetOrigin(org)
	math_counter179.SetAngles(ang[0], ang[1], ang[2])

	local logic_compare180 = SpawnEntityFromTable("logic_compare", {
	    targetname = "lastcountercompare",
	    comparevalue = 1,
	    "ongreaterthan#1": "lastdisable_relay,trigger,,0,-1",
	    "ongreaterthan#2": "enable_lastenable_relay,trigger,,0,-1",
	    "onequalto#3": "lastenable_relay,trigger,,0,-1",
	    "onequalto#4": "lastdisable_relay,enable,,0,-1"
	})
	logic_compare180.SetOrigin(org)
	logic_compare180.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay181 = SpawnEntityFromTable("logic_relay", {
	    targetname = "enable_lastenable_relay",
	    startdisabled = 1,
	    "ontrigger#1": "lastenable_relay,enable,,0,-1",
	    "onspawn#2": "wave_start_relay,addoutput,ontrigger enable_lastenable_relay:enable::0:-1,0,-1",
	    "onspawn#3": "wave_start_relay,addoutput,ontrigger lastenable_relay:enable::0:-1,0,-1",
	    "onspawn#4": "wave_start_relay,addoutput,ontrigger lastcountercompare:compare::1:-1,0,-1"
	})
	logic_relay181.SetOrigin(org)
	logic_relay181.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay182 = SpawnEntityFromTable("logic_relay", {
	    targetname = "lastenable_relay",
	    startdisabled = 1,
	    "ontrigger#1": "!self,disable,,0,-1",
	    "ontrigger#2": "lastcritsrefire,enable,,1.5,-1",
	    "ontrigger#3": "slower0,enable,,2.5,-1",
	    "ontrigger#4": "gameover,playsound,,0,-1",
	    "ontrigger#5": "gameover2,playsound,,0,-1",
	    "ontrigger#6": "sign0,show,,2.5,-1",
	    "ontrigger#7": "virospook,playsound,,2.5,-1",
	    "ontrigger#8": "playerRunScriptCodeself.AddCustomAttribute(`mult dmg vs tanks`, 3, -1)0-1",
	    "ontrigger#9": "obj_dispenser,removehealth,9999,2.5,-1",
	    "ontrigger#10": "obj_sentrygun,removehealth,9999,2.5,-1",
	    "ontrigger#11": "obj_teleporter,removehealth,9999,2.5,-1"
	})
	logic_relay182.SetOrigin(org)
	logic_relay182.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay183 = SpawnEntityFromTable("logic_relay", {
	    targetname = "lastdisable_relay",
	    startdisabled = 1,
	    "ontrigger#1": "!self,disable,,0,-1",
	    "ontrigger#2": "lastcritsrefire,disable,,0,-1",
	    "ontrigger#3": "slower0,disable,,0,-1",
	    "ontrigger#4": "gameover,stopsound,,0,-1",
	    "ontrigger#5": "gameover2,stopsound,,0,-1",
	    "ontrigger#6": "sign0,hide,,0,-1",
	    "ontrigger#7": "virospook,stopsound,,0,-1",
	    "ontrigger#8": "playerRunScriptCodeself.AddCustomAttribute(`mult dmg vs tanks`, 1, -1)0-1"
	})
	logic_relay183.SetOrigin(org)
	logic_relay183.SetAngles(ang[0], ang[1], ang[2])

}
::p_fog <- function(org, ang)
{
	local env_fog_controller184 = SpawnEntityFromTable("env_fog_controller", {
	    farz = -1.0,
	    fogblend = 1,
	    fogcolor = "24 25 36",
	    fogcolor2 = "18 20 24",
	    fogdir = "1 0 0",
	    fogenable = 1,
	    fogend = 750,
	    foglerptime = 2,
	    fogmaxdensity = 1,
	    fogstart = 1,
	    spawnflags = 1,
	    targetname = "mist"
	})
	env_fog_controller184.SetOrigin(org)
	env_fog_controller184.SetAngles(ang[0], ang[1], ang[2])

	local sky_camera185 = SpawnEntityFromTable("sky_camera", {
	    fogmaxdensity = 1,
	    origin = Vector(0, 0, -1392),
	    angles = QAngle(0, 0, 0),
	    fogcolor = "0 0 0",
	    fogcolor2 = "0 0 0",
	    fogdir = "1 0 0",
	    fogenable = 1,
	    fogend = 1,
	    fogstart = 1,
	    scale = 16,
	    targetname = "mist_camera"
	})
	sky_camera185.SetOrigin(org)
	sky_camera185.SetAngles(ang[0], ang[1], ang[2])

	local trigger_multiple_brush68 = SpawnEntityFromTable("trigger_multiple", {
	    origin = Vector(1847, -4007, 71),
	    mins = "-9999 -9999 -9999",
	    maxs = "9999 9999 9999",
	    StartDisabled = 1,
	    spawnflags = 1,
	    "OnStartTouch#1": "!activator,SetFogController,mist,0.01,-1"
	})
	trigger_multiple_brush68.KeyValueFromInt("solid", 2)
	trigger_multiple_brush68.KeyValueFromString("mins", "-9999 -9999 -9999")
	trigger_multiple_brush68.KeyValueFromString("maxs", "9999 9999 9999")

}
::p_navblocker <- function(org, ang)
{
	local func_nav_blocker_brush69 = SpawnEntityFromTable("func_nav_blocker", {
	    start_disabled = 0,
	    mins = "-224 -222 -650",
	    maxs = "224 222 650",
	    origin = Vector(-1632, -77, 405),
	    team = -2.0
	})
	func_nav_blocker_brush69.KeyValueFromInt("solid", 2)
	func_nav_blocker_brush69.KeyValueFromString("mins", "-224 -222 -650")
	func_nav_blocker_brush69.KeyValueFromString("maxs", "224 222 650")

	local logic_relay186 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "nav_blocker,BlockNav,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION23"
	})
	logic_relay186.SetOrigin(org)
	logic_relay186.SetAngles(ang[0], ang[1], ang[2])

}
::p_navblocker2 <- function(org, ang)
{
	local func_brush_brush70 = SpawnEntityFromTable("func_brush", {
	    mins = "-224 -50 -650",
	    maxs = "224 50 650",
	    origin = Vector(-1632, -77, 405),
	    TeamNum = 2,
	    targetname = "back_barrier",
	    StartDisabled = 0
	})
	func_brush_brush70.KeyValueFromInt("solid", 2)
	func_brush_brush70.KeyValueFromString("mins", "-224 -50 -650")
	func_brush_brush70.KeyValueFromString("maxs", "224 50 650")

}
::p_survmoveup <- function(org, ang)
{
	local info_target187 = SpawnEntityFromTable("info_target", {
	    targetname = "moveup"
	})
	info_target187.SetOrigin(org)
	info_target187.SetAngles(ang[0], ang[1], ang[2])

}
::p_survmoveup2 <- function(org, ang)
{
	local info_target188 = SpawnEntityFromTable("info_target", {
	    targetname = "moveup2"
	})
	info_target188.SetOrigin(org)
	info_target188.SetAngles(ang[0], ang[1], ang[2])

}
::p_survmoveup3 <- function(org, ang)
{
	local info_target189 = SpawnEntityFromTable("info_target", {
	    targetname = "moveup3"
	})
	info_target189.SetOrigin(org)
	info_target189.SetAngles(ang[0], ang[1], ang[2])

}
::p_survshop1 <- function(org, ang)
{
	local info_target190 = SpawnEntityFromTable("info_target", {
	    targetname = "target_shop1"
	})
	info_target190.SetOrigin(org)
	info_target190.SetAngles(ang[0], ang[1], ang[2])

}
::p_survshop2 <- function(org, ang)
{
	local info_target191 = SpawnEntityFromTable("info_target", {
	    targetname = "target_shop2"
	})
	info_target191.SetOrigin(org)
	info_target191.SetAngles(ang[0], ang[1], ang[2])

}
::p_survshop3 <- function(org, ang)
{
	local info_target192 = SpawnEntityFromTable("info_target", {
	    targetname = "target_shop3"
	})
	info_target192.SetOrigin(org)
	info_target192.SetAngles(ang[0], ang[1], ang[2])

}
::p_keepertarget <- function(org, ang)
{
	local info_target193 = SpawnEntityFromTable("info_target", {
	    targetname = "target_keeper"
	})
	info_target193.SetOrigin(org)
	info_target193.SetAngles(ang[0], ang[1], ang[2])

}
::p_marketgardener <- function(org, ang)
{
	local info_target194 = SpawnEntityFromTable("info_target", {
	    targetname = "target_mg"
	})
	info_target194.SetOrigin(org)
	info_target194.SetAngles(ang[0], ang[1], ang[2])

}
::p_marketgardener2 <- function(org, ang)
{
	local info_target195 = SpawnEntityFromTable("info_target", {
	    targetname = "target_mg2"
	})
	info_target195.SetOrigin(org)
	info_target195.SetAngles(ang[0], ang[1], ang[2])

}
::p_marketgardener3 <- function(org, ang)
{
	local info_target196 = SpawnEntityFromTable("info_target", {
	    targetname = "target_mg3"
	})
	info_target196.SetOrigin(org)
	info_target196.SetAngles(ang[0], ang[1], ang[2])

}
::p_marketgardener4 <- function(org, ang)
{
	local info_target197 = SpawnEntityFromTable("info_target", {
	    targetname = "target_mg4"
	})
	info_target197.SetOrigin(org)
	info_target197.SetAngles(ang[0], ang[1], ang[2])

}
::p_tank <- function(org, ang)
{
	local info_target198 = SpawnEntityFromTable("info_target", {
	    targetname = "target_tank"
	})
	info_target198.SetOrigin(org)
	info_target198.SetAngles(ang[0], ang[1], ang[2])

}
::p_tankgo <- function(org, ang)
{
	local info_target199 = SpawnEntityFromTable("info_target", {
	    targetname = "target_tankgo"
	})
	info_target199.SetOrigin(org)
	info_target199.SetAngles(ang[0], ang[1], ang[2])

}
::p_threaten <- function(org, ang)
{
	local logic_relay200 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "threat",
	    "OnTrigger#1": "player*RunScriptCodeClientPrint(self, 4, `KILL KILL KILL KILL KILL KILL`)0-1"
	})
	logic_relay200.SetOrigin(org)
	logic_relay200.SetAngles(ang[0], ang[1], ang[2])

}
::p_threaten2 <- function(org, ang)
{
	local logic_relay201 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "threat2",
	    "OnTrigger#1": "player*RunScriptCodeClientPrint(self, 4, `LAST CHANCE FOR PURCHASES`)0-1"
	})
	logic_relay201.SetOrigin(org)
	logic_relay201.SetAngles(ang[0], ang[1], ang[2])

}
::p_fogold <- function(org, ang)
{
	local logic_relay202 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "fog_old",
	    "OnTrigger#1": "player*,SetFogController,fog_controller,0.01,-1"
	})
	logic_relay202.SetOrigin(org)
	logic_relay202.SetAngles(ang[0], ang[1], ang[2])

}
::p_nohud1 <- function(org, ang)
{
	local logic_relay203 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "hudbgone",
	    "OnTrigger#1": "player*,SetHUDVisibility,0,0,-1"
	})
	logic_relay203.SetOrigin(org)
	logic_relay203.SetAngles(ang[0], ang[1], ang[2])

}
::p_nohud2 <- function(org, ang)
{
	local logic_relay204 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "hudcome",
	    "OnTrigger#1": "player*,SetHUDVisibility,1,0,-1"
	})
	logic_relay204.SetOrigin(org)
	logic_relay204.SetAngles(ang[0], ang[1], ang[2])

}
::p_spawns <- function(org, ang)
{
	local func_forcefield_brush71 = SpawnEntityFromTable("func_forcefield", {
	    mins = "-224 -20 -464",
	    maxs = "224 20 464",
	    TeamNum = 3,
	    targetname = "back_barrier",
	    StartDisabled = 0
	})
	func_forcefield_brush71.KeyValueFromInt("solid", 2)
	func_forcefield_brush71.KeyValueFromString("mins", "-224 -20 -464")
	func_forcefield_brush71.KeyValueFromString("maxs", "224 20 464")

	local func_forcefield_brush72 = SpawnEntityFromTable("func_forcefield", {
	    mins = "-4 -156 -448",
	    maxs = "4 156 448",
	    TeamNum = 3,
	    targetname = "back_right_barrier",
	    StartDisabled = 0
	})
	func_forcefield_brush72.KeyValueFromInt("solid", 2)
	func_forcefield_brush72.KeyValueFromString("mins", "-4 -156 -448")
	func_forcefield_brush72.KeyValueFromString("maxs", "4 156 448")

	local func_forcefield_brush73 = SpawnEntityFromTable("func_forcefield", {
	    mins = "-80 -4 -448",
	    maxs = "80 4 448",
	    TeamNum = 3,
	    targetname = "back_right_barrier",
	    StartDisabled = 0
	})
	func_forcefield_brush73.KeyValueFromInt("solid", 2)
	func_forcefield_brush73.KeyValueFromString("mins", "-80 -4 -448")
	func_forcefield_brush73.KeyValueFromString("maxs", "80 4 448")

	local func_forcefield_brush74 = SpawnEntityFromTable("func_forcefield", {
	    mins = "-16 -320 -704",
	    maxs = "16 320 704",
	    TeamNum = 3,
	    targetname = "front_barrier",
	    StartDisabled = 0
	})
	func_forcefield_brush74.KeyValueFromInt("solid", 2)
	func_forcefield_brush74.KeyValueFromString("mins", "-16 -320 -704")
	func_forcefield_brush74.KeyValueFromString("maxs", "16 320 704")

	local func_forcefield_brush75 = SpawnEntityFromTable("func_forcefield", {
	    mins = "-16 -192 -704",
	    maxs = "16 192 704",
	    TeamNum = 3,
	    targetname = "front_right_barrier",
	    StartDisabled = 0
	})
	func_forcefield_brush75.KeyValueFromInt("solid", 2)
	func_forcefield_brush75.KeyValueFromString("mins", "-16 -192 -704")
	func_forcefield_brush75.KeyValueFromString("maxs", "16 192 704")

	local func_forcefield_brush76 = SpawnEntityFromTable("func_forcefield", {
	    mins = "-56 -113 -704",
	    maxs = "56 113 704",
	    TeamNum = 3,
	    targetname = "front_left_barrier",
	    StartDisabled = 0
	})
	func_forcefield_brush76.KeyValueFromInt("solid", 2)
	func_forcefield_brush76.KeyValueFromString("mins", "-56 -113 -704")
	func_forcefield_brush76.KeyValueFromString("maxs", "56 113 704")

	local func_forcefield_brush77 = SpawnEntityFromTable("func_forcefield", {
	    mins = "-56 -84 -704",
	    maxs = "56 84 704",
	    TeamNum = 3,
	    targetname = "front_left_barrier",
	    StartDisabled = 0
	})
	func_forcefield_brush77.KeyValueFromInt("solid", 2)
	func_forcefield_brush77.KeyValueFromString("mins", "-56 -84 -704")
	func_forcefield_brush77.KeyValueFromString("maxs", "56 84 704")

	local func_forcefield_brush78 = SpawnEntityFromTable("func_forcefield", {
	    mins = "-56 -86 -704",
	    maxs = "56 86 704",
	    TeamNum = 3,
	    targetname = "front_left_barrier",
	    StartDisabled = 0
	})
	func_forcefield_brush78.KeyValueFromInt("solid", 2)
	func_forcefield_brush78.KeyValueFromString("mins", "-56 -86 -704")
	func_forcefield_brush78.KeyValueFromString("maxs", "56 86 704")

	local func_forcefield_brush79 = SpawnEntityFromTable("func_forcefield", {
	    mins = "-47 -222 -632",
	    maxs = "47 222 632",
	    TeamNum = 3,
	    targetname = "back_left_barrier",
	    StartDisabled = 0
	})
	func_forcefield_brush79.KeyValueFromInt("solid", 2)
	func_forcefield_brush79.KeyValueFromString("mins", "-47 -222 -632")
	func_forcefield_brush79.KeyValueFromString("maxs", "47 222 632")

	local func_forcefield_brush80 = SpawnEntityFromTable("func_forcefield", {
	    mins = "-75 -46 -632",
	    maxs = "75 46 632",
	    TeamNum = 3,
	    targetname = "back_left_barrier",
	    StartDisabled = 0
	})
	func_forcefield_brush80.KeyValueFromInt("solid", 2)
	func_forcefield_brush80.KeyValueFromString("mins", "-75 -46 -632")
	func_forcefield_brush80.KeyValueFromString("maxs", "75 46 632")

}
::p_screen <- function(org, ang)
{
	local env_screenoverlay205 = SpawnEntityFromTable("env_screenoverlay", {
	    targetname = "overlay",
	    OverlayName1 = "effects/stealth_overlay.vmt",
	    OverlayTime1 = 1.0,
	    OverlayTime2 = 1.0,
	    OverlayTime3 = 1.0,
	    OverlayTime4 = 1.0,
	    OverlayTime5 = 1.0,
	    OverlayTime6 = 1.0,
	    OverlayTime7 = 1.0,
	    OverlayTime8 = 1.0,
	    OverlayTime9 = 1.0,
	    OverlayTime10 = 1.0
	})
	env_screenoverlay205.SetOrigin(org)
	env_screenoverlay205.SetAngles(ang[0], ang[1], ang[2])

}
::p_screenblu <- function(org, ang)
{
	local env_screenoverlay206 = SpawnEntityFromTable("env_screenoverlay", {
	    targetname = "overlayrobo",
	    OverlayName1 = "effects/combine_binocoverlay",
	    OverlayTime1 = 1.0,
	    OverlayTime2 = 1.0,
	    OverlayTime3 = 1.0,
	    OverlayTime4 = 1.0,
	    OverlayTime5 = 1.0,
	    OverlayTime6 = 1.0,
	    OverlayTime7 = 1.0,
	    OverlayTime8 = 1.0,
	    OverlayTime9 = 1.0,
	    OverlayTime10 = 1.0
	})
	env_screenoverlay206.SetOrigin(org)
	env_screenoverlay206.SetAngles(ang[0], ang[1], ang[2])

}
::p_plank <- function(org, ang)
{
	local prop_dynamic207 = SpawnEntityFromTable("prop_dynamic", {
	    id = 3,
	    classname = "prop_dynamic",
	    angles = QAngle(0, 0, 0),
	    DisableBoneFollowers = 0,
	    disablereceiveshadows = 0,
	    disableshadows = 1,
	    ExplodeDamage = 0,
	    ExplodeRadius = 0,
	    fademaxdist = 0,
	    fademindist = -1.0,
	    fadescale = 1,
	    MaxAnimTime = 10,
	    maxdxlevel = 0,
	    MinAnimTime = 5,
	    mindxlevel = 0,
	    model = "models/props_2fort/corrugated_metal003.mdl",
	    modelscale = 1,
	    PerformanceMode = 0,
	    pressuredelay = 0,
	    RandomAnimation = 0,
	    renderamt = 255,
	    renderfx = 0,
	    rendermode = 0,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0,
	    origin = Vector(0, 0, 0),
	    lightingorigin = "spawnbot_surprise2"
	})
	prop_dynamic207.SetOrigin(org)
	prop_dynamic207.SetAngles(ang[0], ang[1], ang[2])

}
::p_plank2 <- function(org, ang)
{
	local prop_dynamic208 = SpawnEntityFromTable("prop_dynamic", {
	    id = 3,
	    classname = "prop_dynamic",
	    angles = QAngle(0, 0, 0),
	    DisableBoneFollowers = 0,
	    disablereceiveshadows = 0,
	    disableshadows = 1,
	    ExplodeDamage = 0,
	    ExplodeRadius = 0,
	    fademaxdist = 0,
	    fademindist = -1.0,
	    fadescale = 1,
	    MaxAnimTime = 10,
	    maxdxlevel = 0,
	    MinAnimTime = 5,
	    mindxlevel = 0,
	    model = "models/props_farm/stairs_wood001b.mdl",
	    modelscale = 1,
	    PerformanceMode = 0,
	    pressuredelay = 0,
	    RandomAnimation = 0,
	    renderamt = 255,
	    renderfx = 0,
	    rendermode = 0,
	    SetBodyGroup = 0,
	    skin = 0,
	    solid = 6,
	    spawnflags = 0,
	    origin = Vector(0, 0, 0),
	    lightingorigin = "spawnbot_surprise2"
	})
	prop_dynamic208.SetOrigin(org)
	prop_dynamic208.SetAngles(ang[0], ang[1], ang[2])

}
::p_camera <- function(org, ang)
{
	local point_viewcontrol209 = SpawnEntityFromTable("point_viewcontrol", {
	    acceleration = 0,
	    deceleration = 0,
	    interpolatepositiontoplayer = 0,
	    spawnflags = 0,
	    speed = 0,
	    wait = 10,
	    targetname = "camera",
	    origin = Vector(-1619, -580, 988),
	    angles = QAngle(23.32, 39.84, 0)
	})
	point_viewcontrol209.SetOrigin(org)
	point_viewcontrol209.SetAngles(ang[0], ang[1], ang[2])

}
::p_camera2 <- function(org, ang)
{
	local point_viewcontrol210 = SpawnEntityFromTable("point_viewcontrol", {
	    acceleration = 0,
	    deceleration = 0,
	    interpolatepositiontoplayer = 0,
	    spawnflags = 128,
	    speed = 0,
	    wait = 10,
	    targetname = "camera2",
	    origin = Vector(800, 1056, 267),
	    angles = QAngle(0, 90, 0)
	})
	point_viewcontrol210.SetOrigin(org)
	point_viewcontrol210.SetAngles(ang[0], ang[1], ang[2])

}
::p_camera3 <- function(org, ang)
{
	local point_viewcontrol211 = SpawnEntityFromTable("point_viewcontrol", {
	    moveto = "camera_path2",
	    targetname = "camera3",
	    origin = Vector(253, -196, 59),
	    angles = QAngle(5.98, -53.51, 0)
	})
	point_viewcontrol211.SetOrigin(org)
	point_viewcontrol211.SetAngles(ang[0], ang[1], ang[2])

}
::p_camera4 <- function(org, ang)
{
	local point_viewcontrol212 = SpawnEntityFromTable("point_viewcontrol", {
	    acceleration = 0,
	    deceleration = 0,
	    interpolatepositiontoplayer = 0,
	    spawnflags = 128,
	    speed = 0,
	    wait = 10,
	    targetname = "camera4",
	    origin = Vector(-257, 402, 430),
	    angles = QAngle(22, 60, 0)
	})
	point_viewcontrol212.SetOrigin(org)
	point_viewcontrol212.SetAngles(ang[0], ang[1], ang[2])

}
::p_nuke <- function(org, ang)
{
	local game_round_win213 = SpawnEntityFromTable("game_round_win", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    TeamNum = 3,
	    targetname = "bots_win",
	    switch_teams = 0,
	    force_map_reset = 1,
	    classname = "game_round_win"
	})
	game_round_win213.SetOrigin(org)
	game_round_win213.SetAngles(ang[0], ang[1], ang[2])

	local env_fade214 = SpawnEntityFromTable("env_fade", {
	    targetname = "fadenuke2",
	    angles = QAngle(0, 0, 0),
	    duration = 100,
	    rendercolor = "255 255 255",
	    renderamt = 50,
	    spawnflags = 0
	})
	env_fade214.SetOrigin(org)
	env_fade214.SetAngles(ang[0], ang[1], ang[2])

	local env_fade215 = SpawnEntityFromTable("env_fade", {
	    targetname = "fadenuke",
	    angles = QAngle(0, 0, 0),
	    duration = 5,
	    holdtime = 5,
	    rendercolor = "0 0 0",
	    spawnflags = 9
	})
	env_fade215.SetOrigin(org)
	env_fade215.SetAngles(ang[0], ang[1], ang[2])

	local env_viewpunch216 = SpawnEntityFromTable("env_viewpunch", {
	    punchangle = "-90 0 0",
	    radius = 9999,
	    spawnflags = 3,
	    targetname = "punch",
	    origin = Vector(1184, 512, 388)
	})
	env_viewpunch216.SetOrigin(org)
	env_viewpunch216.SetAngles(ang[0], ang[1], ang[2])

	local trigger_hurt_brush81 = SpawnEntityFromTable("trigger_hurt", {
	    origin = Vector(0, 0, 0),
	    angles = QAngle(-45, -90, 0),
	    mins = "-8000 -8000 -1000",
	    maxs = "8000 8000 1000",
	    nodmgforce = 0,
	    damagetype = 1048576,
	    damagemodel = 0,
	    damagecap = 0,
	    damage = 99999,
	    StartDisabled = 1,
	    spawnflags = 64
	})
	trigger_hurt_brush81.KeyValueFromInt("solid", 2)
	trigger_hurt_brush81.KeyValueFromString("mins", "-8000 -8000 -1000")
	trigger_hurt_brush81.KeyValueFromString("maxs", "8000 8000 1000")

	local ambient_generic217 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "explode1",
	    origin = Vector(440, 48, 128),
	    volstart = 0,
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 33,
	    radius = 99999,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "ambient/explosions/explode_9.wav",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 10,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0
	})
	ambient_generic217.SetOrigin(org)
	ambient_generic217.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic218 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "explode2",
	    origin = Vector(440, 48, 128),
	    volstart = 0,
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 33,
	    radius = 99999,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "ambient/explosions/citadel_end_explosion1.wav",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 10,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0
	})
	ambient_generic218.SetOrigin(org)
	ambient_generic218.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic219 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "explode3",
	    origin = Vector(440, 48, 128),
	    volstart = 0,
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 33,
	    radius = 99999,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "ambient/explosions/citadel_end_explosion1.wav",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 10,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0
	})
	ambient_generic219.SetOrigin(org)
	ambient_generic219.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic220 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "explode3",
	    origin = Vector(440, 48, 128),
	    volstart = 0,
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 33,
	    radius = 99999,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "items/cart_explode.wav",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 10,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0
	})
	ambient_generic220.SetOrigin(org)
	ambient_generic220.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic221 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "explode4",
	    origin = Vector(440, 48, 128),
	    volstart = 0,
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 33,
	    radius = 99999,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "#music/stingers/hl1_stinger_song8.mp3",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 10,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0
	})
	ambient_generic221.SetOrigin(org)
	ambient_generic221.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic222 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "explode5",
	    origin = Vector(440, 48, 128),
	    volstart = 0,
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 33,
	    radius = 99999,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "#music/stingers/hl1_stinger_song8.mp3",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 10,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0
	})
	ambient_generic222.SetOrigin(org)
	ambient_generic222.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay223 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "nuke_relay",
	    "OnTrigger#1": "lastenable_relay,kill,0,-1",
	    "OnTrigger#2": "punch,ViewPunch,,0,1",
	    "OnTrigger#3": "kaboom,Start,,0,1",
	    "OnTrigger#4": "player,igniteplayer,,0,1",
	    "OnTrigger#5": "shakeit,StartShake,,0,-1",
	    "OnTrigger#6": "shakeit2,StartShake,,0,-1",
	    "OnTrigger#7": "explode1,PlaySound,,0,-1",
	    "OnTrigger#8": "explode2,PlaySound,,0,-1",
	    "OnTrigger#9": "explode3,PlaySound,,0,-1",
	    "OnTrigger#10": "explode4,PlaySound,,3,-1",
	    "OnTrigger#11": "explode5,PlaySound,,3,-1",
	    "OnTrigger#12": "ded,Enable,,0.25,-1",
	    "OnTrigger#13": "hudbgone,Trigger,,0.5,-1",
	    "OnTrigger#14": "camera,$EnableAll,,0.5,-1",
	    "OnTrigger#15": "camera,$DisableAll,,5.25,-1",
	    "OnTrigger#16": "hudcome,Trigger,,5.25,-1",
	    "OnTrigger#17": "obj_dispenser,RemoveHealth,5000,0.25,-1",
	    "OnTrigger#18": "obj_sentrygun,RemoveHealth,5000,0.25,-1",
	    "OnTrigger#19": "obj_teleporter,RemoveHealth,5000,0.25,-1"
	})
	logic_relay223.SetOrigin(org)
	logic_relay223.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay224 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "capturezone_blu,AddOutput,OnCapture nuke_relay:Trigger:0:-1,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION24"
	})
	logic_relay224.SetOrigin(org)
	logic_relay224.SetAngles(ang[0], ang[1], ang[2])

}
::p_switcharoo1 <- function(org, ang)
{
	local logic_relay225 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activator,$RemoveItem,Darwin's Danger Shield,0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION25"
	})
	logic_relay225.SetOrigin(org)
	logic_relay225.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay226 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)0-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION26"
	})
	logic_relay226.SetOrigin(org)
	logic_relay226.SetAngles(ang[0], ang[1], ang[2])

}
::p_switcharoo2 <- function(org, ang)
{
	local logic_relay227 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activator,$RemoveItem,The Razorback,0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION27"
	})
	logic_relay227.SetOrigin(org)
	logic_relay227.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay228 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)0-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION28"
	})
	logic_relay228.SetOrigin(org)
	logic_relay228.SetAngles(ang[0], ang[1], ang[2])

}
::p_switcharoo3 <- function(org, ang)
{
	local logic_relay229 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activator,$RemoveItem,The Cozy Camper,0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION29"
	})
	logic_relay229.SetOrigin(org)
	logic_relay229.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay230 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)0-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION30"
	})
	logic_relay230.SetOrigin(org)
	logic_relay230.SetAngles(ang[0], ang[1], ang[2])

}
::SpawnTemplate "p_brushbug_fix" <- function(org, ang)
{
	local 231 = SpawnEntityFromTable("", {
	    SpawnTemplate = "p_brushbug_fix",
	    SpawnTemplate = "reviveredasblu",
	    SpawnTemplate = "p_beginrelay",
	    SpawnTemplate = "p_spawnremover1",
	    SpawnTemplate = "p_spawnremover2",
	    SpawnTemplate = "p_spawnremover3",
	    SpawnTemplate = "p_shake",
	    SpawnTemplate = "p_shakelong",
	    SpawnTemplate = "p_rock_pusher",
	    Name = "p_voice"
	})
	231.SetOrigin(org)
	231.SetAngles(ang[0], ang[1], ang[2])

}
::SpawnTemplate <- function(org, ang)
{
	local 232 = SpawnEntityFromTable("", {
	    Name = "p_lastbot"
	})
	232.SetOrigin(org)
	232.SetAngles(ang[0], ang[1], ang[2])

	local 233 = SpawnEntityFromTable("", {
	    Name = "p_camera"
	})
	233.SetOrigin(org)
	233.SetAngles(ang[0], ang[1], ang[2])

	local 234 = SpawnEntityFromTable("", {
	    Name = "p_camera2"
	})
	234.SetOrigin(org)
	234.SetAngles(ang[0], ang[1], ang[2])

	local 235 = SpawnEntityFromTable("", {
	    Name = "p_camera3"
	})
	235.SetOrigin(org)
	235.SetAngles(ang[0], ang[1], ang[2])

	local 236 = SpawnEntityFromTable("", {
	    Name = "p_camera4"
	})
	236.SetOrigin(org)
	236.SetAngles(ang[0], ang[1], ang[2])

	local 237 = SpawnEntityFromTable("", {
	    Name = "p_pointmaker",
	    Origin = "626 -942 -85",
	    Angles = "0 0 0"
	})
	237.SetOrigin(org)
	237.SetAngles(ang[0], ang[1], ang[2])

	local 238 = SpawnEntityFromTable("", {
	    Name = "p_pointmaker2",
	    Origin = "500 -985 -80",
	    Angles = "0 25 0"
	})
	238.SetOrigin(org)
	238.SetAngles(ang[0], ang[1], ang[2])

	local 239 = SpawnEntityFromTable("", {
	    
	})
	239.SetOrigin(org)
	239.SetAngles(ang[0], ang[1], ang[2])

	local 240 = SpawnEntityFromTable("", {
	    
	})
	240.SetOrigin(org)
	240.SetAngles(ang[0], ang[1], ang[2])

	local 241 = SpawnEntityFromTable("", {
	    
	})
	241.SetOrigin(org)
	241.SetAngles(ang[0], ang[1], ang[2])

	local 242 = SpawnEntityFromTable("", {
	    
	})
	242.SetOrigin(org)
	242.SetAngles(ang[0], ang[1], ang[2])

	local 243 = SpawnEntityFromTable("", {
	    
	})
	243.SetOrigin(org)
	243.SetAngles(ang[0], ang[1], ang[2])

	local 244 = SpawnEntityFromTable("", {
	    
	})
	244.SetOrigin(org)
	244.SetAngles(ang[0], ang[1], ang[2])

	local 245 = SpawnEntityFromTable("", {
	    
	})
	245.SetOrigin(org)
	245.SetAngles(ang[0], ang[1], ang[2])

	local 246 = SpawnEntityFromTable("", {
	    
	})
	246.SetOrigin(org)
	246.SetAngles(ang[0], ang[1], ang[2])

	local 247 = SpawnEntityFromTable("", {
	    
	})
	247.SetOrigin(org)
	247.SetAngles(ang[0], ang[1], ang[2])

	local 248 = SpawnEntityFromTable("", {
	    
	})
	248.SetOrigin(org)
	248.SetAngles(ang[0], ang[1], ang[2])

	local 249 = SpawnEntityFromTable("", {
	    
	})
	249.SetOrigin(org)
	249.SetAngles(ang[0], ang[1], ang[2])

	local 250 = SpawnEntityFromTable("", {
	    
	})
	250.SetOrigin(org)
	250.SetAngles(ang[0], ang[1], ang[2])

	local 251 = SpawnEntityFromTable("", {
	    
	})
	251.SetOrigin(org)
	251.SetAngles(ang[0], ang[1], ang[2])

	local 252 = SpawnEntityFromTable("", {
	    
	})
	252.SetOrigin(org)
	252.SetAngles(ang[0], ang[1], ang[2])

	local 253 = SpawnEntityFromTable("", {
	    
	})
	253.SetOrigin(org)
	253.SetAngles(ang[0], ang[1], ang[2])

	local 254 = SpawnEntityFromTable("", {
	    
	})
	254.SetOrigin(org)
	254.SetAngles(ang[0], ang[1], ang[2])

	local 255 = SpawnEntityFromTable("", {
	    
	})
	255.SetOrigin(org)
	255.SetAngles(ang[0], ang[1], ang[2])

	local 256 = SpawnEntityFromTable("", {
	    
	})
	256.SetOrigin(org)
	256.SetAngles(ang[0], ang[1], ang[2])

	local 257 = SpawnEntityFromTable("", {
	    
	})
	257.SetOrigin(org)
	257.SetAngles(ang[0], ang[1], ang[2])

	local 258 = SpawnEntityFromTable("", {
	    
	})
	258.SetOrigin(org)
	258.SetAngles(ang[0], ang[1], ang[2])

	local 259 = SpawnEntityFromTable("", {
	    
	})
	259.SetOrigin(org)
	259.SetAngles(ang[0], ang[1], ang[2])

	local 260 = SpawnEntityFromTable("", {
	    
	})
	260.SetOrigin(org)
	260.SetAngles(ang[0], ang[1], ang[2])

	local 261 = SpawnEntityFromTable("", {
	    
	})
	261.SetOrigin(org)
	261.SetAngles(ang[0], ang[1], ang[2])

	local 262 = SpawnEntityFromTable("", {
	    
	})
	262.SetOrigin(org)
	262.SetAngles(ang[0], ang[1], ang[2])

	local 263 = SpawnEntityFromTable("", {
	    
	})
	263.SetOrigin(org)
	263.SetAngles(ang[0], ang[1], ang[2])

	local 264 = SpawnEntityFromTable("", {
	    
	})
	264.SetOrigin(org)
	264.SetAngles(ang[0], ang[1], ang[2])

	local 265 = SpawnEntityFromTable("", {
	    
	})
	265.SetOrigin(org)
	265.SetAngles(ang[0], ang[1], ang[2])

	local 266 = SpawnEntityFromTable("", {
	    
	})
	266.SetOrigin(org)
	266.SetAngles(ang[0], ang[1], ang[2])

	local 267 = SpawnEntityFromTable("", {
	    
	})
	267.SetOrigin(org)
	267.SetAngles(ang[0], ang[1], ang[2])

	local 268 = SpawnEntityFromTable("", {
	    
	})
	268.SetOrigin(org)
	268.SetAngles(ang[0], ang[1], ang[2])

	local 269 = SpawnEntityFromTable("", {
	    
	})
	269.SetOrigin(org)
	269.SetAngles(ang[0], ang[1], ang[2])

	local 270 = SpawnEntityFromTable("", {
	    
	})
	270.SetOrigin(org)
	270.SetAngles(ang[0], ang[1], ang[2])

	local 271 = SpawnEntityFromTable("", {
	    
	})
	271.SetOrigin(org)
	271.SetAngles(ang[0], ang[1], ang[2])

	local 272 = SpawnEntityFromTable("", {
	    
	})
	272.SetOrigin(org)
	272.SetAngles(ang[0], ang[1], ang[2])

	local 273 = SpawnEntityFromTable("", {
	    
	})
	273.SetOrigin(org)
	273.SetAngles(ang[0], ang[1], ang[2])

	local 274 = SpawnEntityFromTable("", {
	    Origin = "0 1163 70",
	    Angles = "0 -90 0"
	})
	274.SetOrigin(org)
	274.SetAngles(ang[0], ang[1], ang[2])

	local 275 = SpawnEntityFromTable("", {
	    Origin = "0 560 -55",
	    Angles = "0 -90 0"
	})
	275.SetOrigin(org)
	275.SetAngles(ang[0], ang[1], ang[2])

	local 276 = SpawnEntityFromTable("", {
	    Origin = "0 -240 -80",
	    Angles = "0 -90 0"
	})
	276.SetOrigin(org)
	276.SetAngles(ang[0], ang[1], ang[2])

	local 277 = SpawnEntityFromTable("", {
	    Origin = "0 80 -80",
	    Angles = "-35 -90 0"
	})
	277.SetOrigin(org)
	277.SetAngles(ang[0], ang[1], ang[2])

	local 278 = SpawnEntityFromTable("", {
	    Origin = "0 1792 178",
	    Angles = "0 90 0"
	})
	278.SetOrigin(org)
	278.SetAngles(ang[0], ang[1], ang[2])

	local 279 = SpawnEntityFromTable("", {
	    Origin = "532 2522 267",
	    Angles = "0 45 0"
	})
	279.SetOrigin(org)
	279.SetAngles(ang[0], ang[1], ang[2])

	local 280 = SpawnEntityFromTable("", {
	    Origin = "-835 1705 200",
	    Angles = "0 90 0"
	})
	280.SetOrigin(org)
	280.SetAngles(ang[0], ang[1], ang[2])

	local 281 = SpawnEntityFromTable("", {
	    Origin = "852 1445 200",
	    Angles = "0 180 0"
	})
	281.SetOrigin(org)
	281.SetAngles(ang[0], ang[1], ang[2])

	local 282 = SpawnEntityFromTable("", {
	    
	})
	282.SetOrigin(org)
	282.SetAngles(ang[0], ang[1], ang[2])

	local 283 = SpawnEntityFromTable("", {
	    
	})
	283.SetOrigin(org)
	283.SetAngles(ang[0], ang[1], ang[2])

	local 284 = SpawnEntityFromTable("", {
	    
	})
	284.SetOrigin(org)
	284.SetAngles(ang[0], ang[1], ang[2])

	local 285 = SpawnEntityFromTable("", {
	    
	})
	285.SetOrigin(org)
	285.SetAngles(ang[0], ang[1], ang[2])

	local 286 = SpawnEntityFromTable("", {
	    
	})
	286.SetOrigin(org)
	286.SetAngles(ang[0], ang[1], ang[2])

	local 287 = SpawnEntityFromTable("", {
	    
	})
	287.SetOrigin(org)
	287.SetAngles(ang[0], ang[1], ang[2])

	local 288 = SpawnEntityFromTable("", {
	    
	})
	288.SetOrigin(org)
	288.SetAngles(ang[0], ang[1], ang[2])

	local 289 = SpawnEntityFromTable("", {
	    Origin = "0 380 267"
	})
	289.SetOrigin(org)
	289.SetAngles(ang[0], ang[1], ang[2])

	local 290 = SpawnEntityFromTable("", {
	    Origin = "-647 465 267"
	})
	290.SetOrigin(org)
	290.SetAngles(ang[0], ang[1], ang[2])

	local 291 = SpawnEntityFromTable("", {
	    Origin = "626 -942 -90"
	})
	291.SetOrigin(org)
	291.SetAngles(ang[0], ang[1], ang[2])

	local 292 = SpawnEntityFromTable("", {
	    Origin = "800 1514 267"
	})
	292.SetOrigin(org)
	292.SetAngles(ang[0], ang[1], ang[2])

	local 293 = SpawnEntityFromTable("", {
	    Origin = "870 1514 267"
	})
	293.SetOrigin(org)
	293.SetAngles(ang[0], ang[1], ang[2])

	local 294 = SpawnEntityFromTable("", {
	    Origin = "940 1514 267"
	})
	294.SetOrigin(org)
	294.SetAngles(ang[0], ang[1], ang[2])

	local 295 = SpawnEntityFromTable("", {
	    Origin = "0 676 10"
	})
	295.SetOrigin(org)
	295.SetAngles(ang[0], ang[1], ang[2])

	local 296 = SpawnEntityFromTable("", {
	    Origin = "-5 1113 139"
	})
	296.SetOrigin(org)
	296.SetAngles(ang[0], ang[1], ang[2])

	local 297 = SpawnEntityFromTable("", {
	    Origin = "0 1432 267"
	})
	297.SetOrigin(org)
	297.SetAngles(ang[0], ang[1], ang[2])

	local 298 = SpawnEntityFromTable("", {
	    Origin = "706 -700 0"
	})
	298.SetOrigin(org)
	298.SetAngles(ang[0], ang[1], ang[2])

	local 299 = SpawnEntityFromTable("", {
	    
	})
	299.SetOrigin(org)
	299.SetAngles(ang[0], ang[1], ang[2])

	local 300 = SpawnEntityFromTable("", {
	    
	})
	300.SetOrigin(org)
	300.SetAngles(ang[0], ang[1], ang[2])

	local 301 = SpawnEntityFromTable("", {
	    Origin = "620 1430 267"
	})
	301.SetOrigin(org)
	301.SetAngles(ang[0], ang[1], ang[2])

	local 302 = SpawnEntityFromTable("", {
	    Origin = "0 488 192"
	})
	302.SetOrigin(org)
	302.SetAngles(ang[0], ang[1], ang[2])

	local 303 = SpawnEntityFromTable("", {
	    
	})
	303.SetOrigin(org)
	303.SetAngles(ang[0], ang[1], ang[2])

	local 304 = SpawnEntityFromTable("", {
	    
	})
	304.SetOrigin(org)
	304.SetAngles(ang[0], ang[1], ang[2])

	local 305 = SpawnEntityFromTable("", {
	    
	})
	305.SetOrigin(org)
	305.SetAngles(ang[0], ang[1], ang[2])

	local 306 = SpawnEntityFromTable("", {
	    
	})
	306.SetOrigin(org)
	306.SetAngles(ang[0], ang[1], ang[2])

	local 307 = SpawnEntityFromTable("", {
	    
	})
	307.SetOrigin(org)
	307.SetAngles(ang[0], ang[1], ang[2])

	local 308 = SpawnEntityFromTable("", {
	    
	})
	308.SetOrigin(org)
	308.SetAngles(ang[0], ang[1], ang[2])

	local 309 = SpawnEntityFromTable("", {
	    
	})
	309.SetOrigin(org)
	309.SetAngles(ang[0], ang[1], ang[2])

	local 310 = SpawnEntityFromTable("", {
	    
	})
	310.SetOrigin(org)
	310.SetAngles(ang[0], ang[1], ang[2])

	local 311 = SpawnEntityFromTable("", {
	    
	})
	311.SetOrigin(org)
	311.SetAngles(ang[0], ang[1], ang[2])

	local 312 = SpawnEntityFromTable("", {
	    
	})
	312.SetOrigin(org)
	312.SetAngles(ang[0], ang[1], ang[2])

	local 313 = SpawnEntityFromTable("", {
	    
	})
	313.SetOrigin(org)
	313.SetAngles(ang[0], ang[1], ang[2])

	local 314 = SpawnEntityFromTable("", {
	    Name = "p_fade1"
	})
	314.SetOrigin(org)
	314.SetAngles(ang[0], ang[1], ang[2])

	local 315 = SpawnEntityFromTable("", {
	    Name = "p_fade2"
	})
	315.SetOrigin(org)
	315.SetAngles(ang[0], ang[1], ang[2])

	local 316 = SpawnEntityFromTable("", {
	    Name = "p_fade3"
	})
	316.SetOrigin(org)
	316.SetAngles(ang[0], ang[1], ang[2])

	local 317 = SpawnEntityFromTable("", {
	    Name = "p_fade4"
	})
	317.SetOrigin(org)
	317.SetAngles(ang[0], ang[1], ang[2])

	local 318 = SpawnEntityFromTable("", {
	    Name = "p_fade5"
	})
	318.SetOrigin(org)
	318.SetAngles(ang[0], ang[1], ang[2])

	local 319 = SpawnEntityFromTable("", {
	    Name = "p_shutter_pusher"
	})
	319.SetOrigin(org)
	319.SetAngles(ang[0], ang[1], ang[2])

	local 320 = SpawnEntityFromTable("", {
	    Name = "p_shutter_pusher2"
	})
	320.SetOrigin(org)
	320.SetAngles(ang[0], ang[1], ang[2])

	local 321 = SpawnEntityFromTable("", {
	    Name = "p_brokenwall_pusher"
	})
	321.SetOrigin(org)
	321.SetAngles(ang[0], ang[1], ang[2])

	local 322 = SpawnEntityFromTable("", {
	    Name = "p_ledgefix_left"
	})
	322.SetOrigin(org)
	322.SetAngles(ang[0], ang[1], ang[2])

	local 323 = SpawnEntityFromTable("", {
	    Name = "p_ledgefix_right"
	})
	323.SetOrigin(org)
	323.SetAngles(ang[0], ang[1], ang[2])

	local 324 = SpawnEntityFromTable("", {
	    Name = "p_brokenwall_pusher2"
	})
	324.SetOrigin(org)
	324.SetAngles(ang[0], ang[1], ang[2])

	local 325 = SpawnEntityFromTable("", {
	    Name = "p_yeet_failsafe"
	})
	325.SetOrigin(org)
	325.SetAngles(ang[0], ang[1], ang[2])

	local 326 = SpawnEntityFromTable("", {
	    Name = "p_yeet"
	})
	326.SetOrigin(org)
	326.SetAngles(ang[0], ang[1], ang[2])

	local 327 = SpawnEntityFromTable("", {
	    Name = "p_yeet2"
	})
	327.SetOrigin(org)
	327.SetAngles(ang[0], ang[1], ang[2])

	local 328 = SpawnEntityFromTable("", {
	    Name = "p_yeet3"
	})
	328.SetOrigin(org)
	328.SetAngles(ang[0], ang[1], ang[2])

	local 329 = SpawnEntityFromTable("", {
	    Name = "p_yeet4"
	})
	329.SetOrigin(org)
	329.SetAngles(ang[0], ang[1], ang[2])

	local 330 = SpawnEntityFromTable("", {
	    Name = "p_mapblock"
	})
	330.SetOrigin(org)
	330.SetAngles(ang[0], ang[1], ang[2])

	local 331 = SpawnEntityFromTable("", {
	    Name = "viro_music"
	})
	331.SetOrigin(org)
	331.SetAngles(ang[0], ang[1], ang[2])

	local 332 = SpawnEntityFromTable("", {
	    Name = "p_hhhteleporter"
	})
	332.SetOrigin(org)
	332.SetAngles(ang[0], ang[1], ang[2])

	local 333 = SpawnEntityFromTable("", {
	    Name = "p_teleporter_brush"
	})
	333.SetOrigin(org)
	333.SetAngles(ang[0], ang[1], ang[2])

	local 334 = SpawnEntityFromTable("", {
	    Name = "p_teleporter_brush_finale"
	})
	334.SetOrigin(org)
	334.SetAngles(ang[0], ang[1], ang[2])

	local 335 = SpawnEntityFromTable("", {
	    Name = "p_finale_facer"
	})
	335.SetOrigin(org)
	335.SetAngles(ang[0], ang[1], ang[2])

	local 336 = SpawnEntityFromTable("", {
	    Name = "p_finale_facerblu"
	})
	336.SetOrigin(org)
	336.SetAngles(ang[0], ang[1], ang[2])

	local 337 = SpawnEntityFromTable("", {
	    Name = "p_teleporter"
	})
	337.SetOrigin(org)
	337.SetAngles(ang[0], ang[1], ang[2])

	local 338 = SpawnEntityFromTable("", {
	    Name = "p_teleporterfinale"
	})
	338.SetOrigin(org)
	338.SetAngles(ang[0], ang[1], ang[2])

	local 339 = SpawnEntityFromTable("", {
	    Name = "p_beer"
	})
	339.SetOrigin(org)
	339.SetAngles(ang[0], ang[1], ang[2])

	local 340 = SpawnEntityFromTable("", {
	    Name = "p_brokenstairs_clip"
	})
	340.SetOrigin(org)
	340.SetAngles(ang[0], ang[1], ang[2])

	local 341 = SpawnEntityFromTable("", {
	    Name = "p_barrel",
	    Origin = "647 375 189",
	    Angles = "0 180 0"
	})
	341.SetOrigin(org)
	341.SetAngles(ang[0], ang[1], ang[2])

	local 342 = SpawnEntityFromTable("", {
	    Name = "p_barrel",
	    Origin = "660 375 189",
	    Angles = "0 -180 0"
	})
	342.SetOrigin(org)
	342.SetAngles(ang[0], ang[1], ang[2])

	local 343 = SpawnEntityFromTable("", {
	    Name = "r_cade_relay_last",
	    Origin = "720 1280 192",
	    Angles = "0 0 0"
	})
	343.SetOrigin(org)
	343.SetAngles(ang[0], ang[1], ang[2])

	local 344 = SpawnEntityFromTable("", {
	    Name = "p_shitcade",
	    Origin = "0 250 -85",
	    Angles = "0 180 0"
	})
	344.SetOrigin(org)
	344.SetAngles(ang[0], ang[1], ang[2])

	local 345 = SpawnEntityFromTable("", {
	    Name = "p_shitcade2",
	    Origin = "75 250 -85",
	    Angles = "0 90 0"
	})
	345.SetOrigin(org)
	345.SetAngles(ang[0], ang[1], ang[2])

	local 346 = SpawnEntityFromTable("", {
	    Name = "p_shitcade2",
	    Origin = "-75 250 -85",
	    Angles = "0 90 0"
	})
	346.SetOrigin(org)
	346.SetAngles(ang[0], ang[1], ang[2])

	local 347 = SpawnEntityFromTable("", {
	    Name = "p_shitcade2",
	    Origin = "75 240 -85",
	    Angles = "0 -90 0"
	})
	347.SetOrigin(org)
	347.SetAngles(ang[0], ang[1], ang[2])

	local 348 = SpawnEntityFromTable("", {
	    Name = "p_shitcade2",
	    Origin = "-75 240 -85",
	    Angles = "0 -90 0"
	})
	348.SetOrigin(org)
	348.SetAngles(ang[0], ang[1], ang[2])

	local 349 = SpawnEntityFromTable("", {
	    Name = "p_box_intro",
	    Origin = "9 320 -25",
	    Angles = "0 -15 0"
	})
	349.SetOrigin(org)
	349.SetAngles(ang[0], ang[1], ang[2])

	local 350 = SpawnEntityFromTable("", {
	    Name = "p_crate_intro",
	    Origin = "45 380 -65",
	    Angles = "0 90 0"
	})
	350.SetOrigin(org)
	350.SetAngles(ang[0], ang[1], ang[2])

	local 351 = SpawnEntityFromTable("", {
	    Name = "p_crate_intro",
	    Origin = "-30 380 -65",
	    Angles = "0 110 0"
	})
	351.SetOrigin(org)
	351.SetAngles(ang[0], ang[1], ang[2])

	local 352 = SpawnEntityFromTable("", {
	    Name = "p_chair_intro",
	    Origin = "0 300 60",
	    Angles = "130 0 0"
	})
	352.SetOrigin(org)
	352.SetAngles(ang[0], ang[1], ang[2])

	local 353 = SpawnEntityFromTable("", {
	    Name = "p_chair_intro",
	    Origin = "-33 320 64",
	    Angles = "170 180 0"
	})
	353.SetOrigin(org)
	353.SetAngles(ang[0], ang[1], ang[2])

	local 354 = SpawnEntityFromTable("", {
	    Name = "p_chair_intro",
	    Origin = "127 332 -65",
	    Angles = "-30 90 0"
	})
	354.SetOrigin(org)
	354.SetAngles(ang[0], ang[1], ang[2])

	local 355 = SpawnEntityFromTable("", {
	    Name = "p_chair_intro",
	    Origin = "-100 332 -65",
	    Angles = "-30 90 0"
	})
	355.SetOrigin(org)
	355.SetAngles(ang[0], ang[1], ang[2])

	local 356 = SpawnEntityFromTable("", {
	    Name = "p_desk_intro",
	    Origin = "9 320 -65",
	    Angles = "0 0 0"
	})
	356.SetOrigin(org)
	356.SetAngles(ang[0], ang[1], ang[2])

	local 357 = SpawnEntityFromTable("", {
	    Name = "p_table2",
	    Origin = "-184 1000 -65",
	    Angles = "0 0 0"
	})
	357.SetOrigin(org)
	357.SetAngles(ang[0], ang[1], ang[2])

	local 358 = SpawnEntityFromTable("", {
	    Name = "p_crate",
	    Origin = "-164 1007 -17",
	    Angles = "0 90 0"
	})
	358.SetOrigin(org)
	358.SetAngles(ang[0], ang[1], ang[2])

	local 359 = SpawnEntityFromTable("", {
	    Name = "p_crate",
	    Origin = "-197 993 -65",
	    Angles = "0 90 0"
	})
	359.SetOrigin(org)
	359.SetAngles(ang[0], ang[1], ang[2])

	local 360 = SpawnEntityFromTable("", {
	    Name = "p_plank2",
	    Origin = "-223 1600 220",
	    Angles = "0 90 0"
	})
	360.SetOrigin(org)
	360.SetAngles(ang[0], ang[1], ang[2])

	local 361 = SpawnEntityFromTable("", {
	    Name = "p_plank2",
	    Origin = "-287 1600 220",
	    Angles = "0 90 0"
	})
	361.SetOrigin(org)
	361.SetAngles(ang[0], ang[1], ang[2])

	local 362 = SpawnEntityFromTable("", {
	    Name = "p_plank",
	    Origin = "-300 1575 205",
	    Angles = "45 90 90"
	})
	362.SetOrigin(org)
	362.SetAngles(ang[0], ang[1], ang[2])

	local 363 = SpawnEntityFromTable("", {
	    Name = "p_plank",
	    Origin = "-250 1575 205",
	    Angles = "45 90 90"
	})
	363.SetOrigin(org)
	363.SetAngles(ang[0], ang[1], ang[2])

	local 364 = SpawnEntityFromTable("", {
	    Name = "p_plank",
	    Origin = "-350 1575 205",
	    Angles = "45 90 90"
	})
	364.SetOrigin(org)
	364.SetAngles(ang[0], ang[1], ang[2])

	local 365 = SpawnEntityFromTable("", {
	    Name = "p_table",
	    Origin = "462 854 -65",
	    Angles = "0 90 0"
	})
	365.SetOrigin(org)
	365.SetAngles(ang[0], ang[1], ang[2])

	local 366 = SpawnEntityFromTable("", {
	    Name = "p_desk_intro",
	    Origin = "19 315 -25",
	    Angles = "0 0 90"
	})
	366.SetOrigin(org)
	366.SetAngles(ang[0], ang[1], ang[2])

	local 367 = SpawnEntityFromTable("", {
	    Name = "p_barricade_nolevel",
	    Origin = "-650 250 -85",
	    Angles = "0 180 0"
	})
	367.SetOrigin(org)
	367.SetAngles(ang[0], ang[1], ang[2])

	local 368 = SpawnEntityFromTable("", {
	    Name = "p_bookcase",
	    Origin = "555 792 -65",
	    Angles = "0 -90 0"
	})
	368.SetOrigin(org)
	368.SetAngles(ang[0], ang[1], ang[2])

	local 369 = SpawnEntityFromTable("", {
	    Name = "p_barricade_nolevel2",
	    Origin = "390 2050 285",
	    Angles = "90 90 0"
	})
	369.SetOrigin(org)
	369.SetAngles(ang[0], ang[1], ang[2])

	local 370 = SpawnEntityFromTable("", {
	    Name = "p_barricade_nolevel3",
	    Origin = "390 1925 345",
	    Angles = "-90 90 0"
	})
	370.SetOrigin(org)
	370.SetAngles(ang[0], ang[1], ang[2])

	local 371 = SpawnEntityFromTable("", {
	    Name = "r_cade_relay",
	    Origin = "720 1280 192",
	    Angles = "0 0 0"
	})
	371.SetOrigin(org)
	371.SetAngles(ang[0], ang[1], ang[2])

	local 372 = SpawnEntityFromTable("", {
	    Name = "r_cade_relay_lower",
	    Origin = "720 1280 192",
	    Angles = "0 0 0"
	})
	372.SetOrigin(org)
	372.SetAngles(ang[0], ang[1], ang[2])

	local 373 = SpawnEntityFromTable("", {
	    Name = "r_cade_relay_window",
	    Origin = "720 1280 192",
	    Angles = "0 0 0"
	})
	373.SetOrigin(org)
	373.SetAngles(ang[0], ang[1], ang[2])

	local 374 = SpawnEntityFromTable("", {
	    Name = "r_respawn_relay",
	    Origin = "720 1280 192",
	    Angles = "0 0 0"
	})
	374.SetOrigin(org)
	374.SetAngles(ang[0], ang[1], ang[2])

	local 375 = SpawnEntityFromTable("", {
	    Name = "p_newlife"
	})
	375.SetOrigin(org)
	375.SetAngles(ang[0], ang[1], ang[2])

	local 376 = SpawnEntityFromTable("", {
	    Name = "p_cabinet",
	    Origin = "720 1296 192",
	    Angles = "0 0 0"
	})
	376.SetOrigin(org)
	376.SetAngles(ang[0], ang[1], ang[2])

	local 377 = SpawnEntityFromTable("", {
	    Name = "p_shopengi",
	    Origin = "945 1616 192",
	    Angles = "0 -90 0"
	})
	377.SetOrigin(org)
	377.SetAngles(ang[0], ang[1], ang[2])

	local 378 = SpawnEntityFromTable("", {
	    Name = "p_spook",
	    Origin = "578 235 215",
	    Angles = "0 90 0"
	})
	378.SetOrigin(org)
	378.SetAngles(ang[0], ang[1], ang[2])

	local 379 = SpawnEntityFromTable("", {
	    Name = "p_spook2",
	    Origin = "520 220 225",
	    Angles = "0 90 0"
	})
	379.SetOrigin(org)
	379.SetAngles(ang[0], ang[1], ang[2])

	local 380 = SpawnEntityFromTable("", {
	    Name = "p_spook3",
	    Origin = "570 220 195",
	    Angles = "0 90 0"
	})
	380.SetOrigin(org)
	380.SetAngles(ang[0], ang[1], ang[2])

	local 381 = SpawnEntityFromTable("", {
	    Name = "p_cargodoor",
	    Origin = "636 1435 190",
	    Angles = "0 -90 0"
	})
	381.SetOrigin(org)
	381.SetAngles(ang[0], ang[1], ang[2])

	local 382 = SpawnEntityFromTable("", {
	    Name = "p_cargoshop1",
	    Origin = "936 1603 198",
	    Angles = "0 180 0"
	})
	382.SetOrigin(org)
	382.SetAngles(ang[0], ang[1], ang[2])

	local 383 = SpawnEntityFromTable("", {
	    Name = "p_cargoshop2",
	    Origin = "936 1603 335",
	    Angles = "0 180 0"
	})
	383.SetOrigin(org)
	383.SetAngles(ang[0], ang[1], ang[2])

	local 384 = SpawnEntityFromTable("", {
	    Name = "p_cargoshop3",
	    Origin = "855 1520 255",
	    Angles = "0 -90 0"
	})
	384.SetOrigin(org)
	384.SetAngles(ang[0], ang[1], ang[2])

	local 385 = SpawnEntityFromTable("", {
	    Name = "p_desk",
	    Origin = "0 488 192",
	    Angles = "0 0 0"
	})
	385.SetOrigin(org)
	385.SetAngles(ang[0], ang[1], ang[2])

	local 386 = SpawnEntityFromTable("", {
	    Name = "p_rick",
	    Origin = "0 -35 788",
	    Angles = "0 -90 0"
	})
	386.SetOrigin(org)
	386.SetAngles(ang[0], ang[1], ang[2])

	local 387 = SpawnEntityFromTable("", {
	    Name = "p_barricade_level1",
	    Origin = "575 252 277",
	    Angles = "0 180 0"
	})
	387.SetOrigin(org)
	387.SetAngles(ang[0], ang[1], ang[2])

	local 388 = SpawnEntityFromTable("", {
	    Name = "p_barricade_level1",
	    Origin = "515 252 277",
	    Angles = "0 0 0"
	})
	388.SetOrigin(org)
	388.SetAngles(ang[0], ang[1], ang[2])

	local 389 = SpawnEntityFromTable("", {
	    Name = "p_barricade_level2",
	    Origin = "-698 900 -65",
	    Angles = "0 90 0"
	})
	389.SetOrigin(org)
	389.SetAngles(ang[0], ang[1], ang[2])

	local 390 = SpawnEntityFromTable("", {
	    Name = "p_barricade_plate2",
	    Origin = "-715 810 -65",
	    Angles = "0 0 0"
	})
	390.SetOrigin(org)
	390.SetAngles(ang[0], ang[1], ang[2])

	local 391 = SpawnEntityFromTable("", {
	    Name = "p_barricade_level2",
	    Origin = "-710 350 -50",
	    Angles = "0 -90 0"
	})
	391.SetOrigin(org)
	391.SetAngles(ang[0], ang[1], ang[2])

	local 392 = SpawnEntityFromTable("", {
	    Name = "p_barricade_level2",
	    Origin = "700 415 -65",
	    Angles = "0 -90 0"
	})
	392.SetOrigin(org)
	392.SetAngles(ang[0], ang[1], ang[2])

	local 393 = SpawnEntityFromTable("", {
	    Name = "p_barricade_plate2",
	    Origin = "720 515 -65",
	    Angles = "0 180 0"
	})
	393.SetOrigin(org)
	393.SetAngles(ang[0], ang[1], ang[2])

	local 394 = SpawnEntityFromTable("", {
	    Name = "p_barricade_plate2",
	    Origin = "700 515 -85",
	    Angles = "0 0 0"
	})
	394.SetOrigin(org)
	394.SetAngles(ang[0], ang[1], ang[2])

	local 395 = SpawnEntityFromTable("", {
	    Name = "p_barricade_level3a",
	    Origin = "-475 1610 240",
	    Angles = "0 0 0"
	})
	395.SetOrigin(org)
	395.SetAngles(ang[0], ang[1], ang[2])

	local 396 = SpawnEntityFromTable("", {
	    Name = "p_barricade_plate3",
	    Origin = "-540 1640 185",
	    Angles = "0 -90 0"
	})
	396.SetOrigin(org)
	396.SetAngles(ang[0], ang[1], ang[2])

	local 397 = SpawnEntityFromTable("", {
	    Name = "p_barricade_level3a",
	    Origin = "500 1610 310",
	    Angles = "0 180 0"
	})
	397.SetOrigin(org)
	397.SetAngles(ang[0], ang[1], ang[2])

	local 398 = SpawnEntityFromTable("", {
	    Name = "p_barricade_plate3",
	    Origin = "540 1640 185",
	    Angles = "0 -90 0"
	})
	398.SetOrigin(org)
	398.SetAngles(ang[0], ang[1], ang[2])

	local 399 = SpawnEntityFromTable("", {
	    Name = "p_barricade_level3b",
	    Origin = "-225 1600 350",
	    Angles = "0 0 0"
	})
	399.SetOrigin(org)
	399.SetAngles(ang[0], ang[1], ang[2])

	local 400 = SpawnEntityFromTable("", {
	    Name = "p_barricade_level3a",
	    Origin = "-715 1280 280",
	    Angles = "0 90 0"
	})
	400.SetOrigin(org)
	400.SetAngles(ang[0], ang[1], ang[2])

	local 401 = SpawnEntityFromTable("", {
	    Name = "p_barricade_plate3",
	    Origin = "-735 1150 185",
	    Angles = "0 0 0"
	})
	401.SetOrigin(org)
	401.SetAngles(ang[0], ang[1], ang[2])

	local 402 = SpawnEntityFromTable("", {
	    Name = "p_box",
	    Origin = "-630 550 192",
	    Angles = "0 -25 0"
	})
	402.SetOrigin(org)
	402.SetAngles(ang[0], ang[1], ang[2])

	local 403 = SpawnEntityFromTable("", {
	    Name = "p_fullkit",
	    Origin = "697 617 350",
	    Angles = "90 180 0"
	})
	403.SetOrigin(org)
	403.SetAngles(ang[0], ang[1], ang[2])

	local 404 = SpawnEntityFromTable("", {
	    Name = "p_fullammo",
	    Origin = "-697 895 350",
	    Angles = "90 0 0"
	})
	404.SetOrigin(org)
	404.SetAngles(ang[0], ang[1], ang[2])

	local 405 = SpawnEntityFromTable("", {
	    Name = "p_mediumkit",
	    Origin = "-655 1225 30",
	    Angles = "0 0 0"
	})
	405.SetOrigin(org)
	405.SetAngles(ang[0], ang[1], ang[2])

	local 406 = SpawnEntityFromTable("", {
	    Name = "p_mediumammo",
	    Origin = "-84 1258 80",
	    Angles = "0 0 0"
	})
	406.SetOrigin(org)
	406.SetAngles(ang[0], ang[1], ang[2])

	local 407 = SpawnEntityFromTable("", {
	    Name = "p_mediumammo",
	    Origin = "400 1039 176",
	    Angles = "0 0 0"
	})
	407.SetOrigin(org)
	407.SetAngles(ang[0], ang[1], ang[2])

	local 408 = SpawnEntityFromTable("", {
	    Name = "p_smallammo",
	    Origin = "20 498 230",
	    Angles = "0 0 0"
	})
	408.SetOrigin(org)
	408.SetAngles(ang[0], ang[1], ang[2])

	local 409 = SpawnEntityFromTable("", {
	    Name = "p_smallammo",
	    Origin = "-20 498 230",
	    Angles = "0 0 0"
	})
	409.SetOrigin(org)
	409.SetAngles(ang[0], ang[1], ang[2])

	local 410 = SpawnEntityFromTable("", {
	    Name = "p_smallammo",
	    Origin = "0 474 230",
	    Angles = "0 0 0"
	})
	410.SetOrigin(org)
	410.SetAngles(ang[0], ang[1], ang[2])

	local 411 = SpawnEntityFromTable("", {
	    Name = "p_smallammo",
	    Origin = "-671 1436 192",
	    Angles = "0 0 0"
	})
	411.SetOrigin(org)
	411.SetAngles(ang[0], ang[1], ang[2])

	local 412 = SpawnEntityFromTable("", {
	    Name = "p_smallammo",
	    Origin = "-671 1462 192",
	    Angles = "0 0 0"
	})
	412.SetOrigin(org)
	412.SetAngles(ang[0], ang[1], ang[2])

	local 413 = SpawnEntityFromTable("", {
	    Name = "p_smallammo",
	    Origin = "-671 1410 192",
	    Angles = "0 0 0"
	})
	413.SetOrigin(org)
	413.SetAngles(ang[0], ang[1], ang[2])

	local 414 = SpawnEntityFromTable("", {
	    Name = "p_fullammo",
	    Origin = "444 262 93",
	    Angles = "90 90 0"
	})
	414.SetOrigin(org)
	414.SetAngles(ang[0], ang[1], ang[2])

	local 415 = SpawnEntityFromTable("", {
	    Name = "p_smallammoskin",
	    Origin = "1130 2525 212",
	    Angles = "-90 0 0"
	})
	415.SetOrigin(org)
	415.SetAngles(ang[0], ang[1], ang[2])

	local 416 = SpawnEntityFromTable("", {
	    Name = "p_smallammoskin",
	    Origin = "1130 2505 212",
	    Angles = "-90 0 0"
	})
	416.SetOrigin(org)
	416.SetAngles(ang[0], ang[1], ang[2])

	local 417 = SpawnEntityFromTable("", {
	    Name = "p_smallammoskin",
	    Origin = "1130 2545 212",
	    Angles = "-90 0 0"
	})
	417.SetOrigin(org)
	417.SetAngles(ang[0], ang[1], ang[2])

	local 418 = SpawnEntityFromTable("", {
	    Name = "p_smallmedkitskin",
	    Origin = "1115 2525 192",
	    Angles = "0 0 0"
	})
	418.SetOrigin(org)
	418.SetAngles(ang[0], ang[1], ang[2])

	local 419 = SpawnEntityFromTable("", {
	    Name = "p_smallmedkitskin",
	    Origin = "1115 2505 192",
	    Angles = "0 0 0"
	})
	419.SetOrigin(org)
	419.SetAngles(ang[0], ang[1], ang[2])

	local 420 = SpawnEntityFromTable("", {
	    Name = "p_smallmedkitskin",
	    Origin = "1115 2545 192",
	    Angles = "0 0 0"
	})
	420.SetOrigin(org)
	420.SetAngles(ang[0], ang[1], ang[2])

	local 421 = SpawnEntityFromTable("", {
	    Name = "p_fullkit",
	    Origin = "554 793 93",
	    Angles = "90 -90 0"
	})
	421.SetOrigin(org)
	421.SetAngles(ang[0], ang[1], ang[2])

	local 422 = SpawnEntityFromTable("", {
	    Name = "p_smallmedkit",
	    Origin = "20 298 192",
	    Angles = "0 0 0"
	})
	422.SetOrigin(org)
	422.SetAngles(ang[0], ang[1], ang[2])

	local 423 = SpawnEntityFromTable("", {
	    Name = "p_smallmedkit",
	    Origin = "-20 298 192",
	    Angles = "0 0 0"
	})
	423.SetOrigin(org)
	423.SetAngles(ang[0], ang[1], ang[2])

	local 424 = SpawnEntityFromTable("", {
	    Name = "p_smallmedkit",
	    Origin = "0 325 192",
	    Angles = "0 0 0"
	})
	424.SetOrigin(org)
	424.SetAngles(ang[0], ang[1], ang[2])

	local 425 = SpawnEntityFromTable("", {
	    Name = "p_smallmedkit",
	    Origin = "671 971 -65",
	    Angles = "0 0 0"
	})
	425.SetOrigin(org)
	425.SetAngles(ang[0], ang[1], ang[2])

	local 426 = SpawnEntityFromTable("", {
	    Name = "p_smallmedkit",
	    Origin = "671 945 -65",
	    Angles = "0 0 0"
	})
	426.SetOrigin(org)
	426.SetAngles(ang[0], ang[1], ang[2])

	local 427 = SpawnEntityFromTable("", {
	    Name = "p_smallmedkit",
	    Origin = "671 919 -65",
	    Angles = "0 0 0"
	})
	427.SetOrigin(org)
	427.SetAngles(ang[0], ang[1], ang[2])

	local 428 = SpawnEntityFromTable("", {
	    Name = "p_smallammo",
	    Origin = "671 893 -65",
	    Angles = "0 0 0"
	})
	428.SetOrigin(org)
	428.SetAngles(ang[0], ang[1], ang[2])

	local 429 = SpawnEntityFromTable("", {
	    Name = "p_smallammo",
	    Origin = "671 867 -65",
	    Angles = "0 0 0"
	})
	429.SetOrigin(org)
	429.SetAngles(ang[0], ang[1], ang[2])

	local 430 = SpawnEntityFromTable("", {
	    Name = "p_smallammo",
	    Origin = "671 841 -65",
	    Angles = "0 0 0"
	})
	430.SetOrigin(org)
	430.SetAngles(ang[0], ang[1], ang[2])

	local 431 = SpawnEntityFromTable("", {
	    Name = "p_chair",
	    Origin = "0 450 192",
	    Angles = "0 90 0"
	})
	431.SetOrigin(org)
	431.SetAngles(ang[0], ang[1], ang[2])

	local 432 = SpawnEntityFromTable("", {
	    Name = "p_bookcase3",
	    Origin = "339 1270 -45",
	    Angles = "0 -90 -25"
	})
	432.SetOrigin(org)
	432.SetAngles(ang[0], ang[1], ang[2])

	local 433 = SpawnEntityFromTable("", {
	    Name = "p_bookcase",
	    Origin = "447 265 -65",
	    Angles = "0 90 0"
	})
	433.SetOrigin(org)
	433.SetAngles(ang[0], ang[1], ang[2])

	local 434 = SpawnEntityFromTable("", {
	    Name = "p_bookcase",
	    Origin = "-696 895 192",
	    Angles = "0 0 0"
	})
	434.SetOrigin(org)
	434.SetAngles(ang[0], ang[1], ang[2])

	local 435 = SpawnEntityFromTable("", {
	    Name = "p_bookcase",
	    Origin = "696 620 192",
	    Angles = "0 180 0"
	})
	435.SetOrigin(org)
	435.SetAngles(ang[0], ang[1], ang[2])

	local 436 = SpawnEntityFromTable("", {
	    Name = "p_stair",
	    Origin = "710 250 105",
	    Angles = "0 90 0"
	})
	436.SetOrigin(org)
	436.SetAngles(ang[0], ang[1], ang[2])

	local 437 = SpawnEntityFromTable("", {
	    Name = "p_monstercage",
	    Origin = "-655 1225 -65",
	    Angles = "0 90 0"
	})
	437.SetOrigin(org)
	437.SetAngles(ang[0], ang[1], ang[2])

	local 438 = SpawnEntityFromTable("", {
	    Name = "p_crate",
	    Origin = "-597 1245 -65",
	    Angles = "0 180 0"
	})
	438.SetOrigin(org)
	438.SetAngles(ang[0], ang[1], ang[2])

	local 439 = SpawnEntityFromTable("", {
	    Name = "p_crate",
	    Origin = "-660 1146 -65",
	    Angles = "0 90 0"
	})
	439.SetOrigin(org)
	439.SetAngles(ang[0], ang[1], ang[2])

	local 440 = SpawnEntityFromTable("", {
	    Name = "p_heli",
	    Origin = "1200 3200 500",
	    Angles = "36 90 0"
	})
	440.SetOrigin(org)
	440.SetAngles(ang[0], ang[1], ang[2])

	local 441 = SpawnEntityFromTable("", {
	    Name = "p_crash",
	    Origin = "1200 3500 500",
	    Name = "p_crate",
	    Origin = "275 2350 100",
	    Angles = "5 90 -5"
	})
	441.SetOrigin(org)
	441.SetAngles(ang[0], ang[1], ang[2])

	local 442 = SpawnEntityFromTable("", {
	    Name = "p_zombie",
	    Origin = "562 1600 -140",
	    Angles = "0 -90 0"
	})
	442.SetOrigin(org)
	442.SetAngles(ang[0], ang[1], ang[2])

	local 443 = SpawnEntityFromTable("", {
	    Name = "p_beam",
	    Origin = "562 1500 -50",
	    Angles = "0 -90 0"
	})
	443.SetOrigin(org)
	443.SetAngles(ang[0], ang[1], ang[2])

	local 444 = SpawnEntityFromTable("", {
	    Name = "p_beam",
	    Origin = "562 1500 -25",
	    Angles = "0 90 0"
	})
	444.SetOrigin(org)
	444.SetAngles(ang[0], ang[1], ang[2])

	local 445 = SpawnEntityFromTable("", {
	    Name = "p_slower0"
	})
	445.SetOrigin(org)
	445.SetAngles(ang[0], ang[1], ang[2])

	local 446 = SpawnEntityFromTable("", {
	    Name = "p_slower1"
	})
	446.SetOrigin(org)
	446.SetAngles(ang[0], ang[1], ang[2])

	local 447 = SpawnEntityFromTable("", {
	    Name = "p_slower2"
	})
	447.SetOrigin(org)
	447.SetAngles(ang[0], ang[1], ang[2])

	local 448 = SpawnEntityFromTable("", {
	    Name = "p_slower3"
	})
	448.SetOrigin(org)
	448.SetAngles(ang[0], ang[1], ang[2])

	local 449 = SpawnEntityFromTable("", {
	    Name = "p_slower4"
	})
	449.SetOrigin(org)
	449.SetAngles(ang[0], ang[1], ang[2])

	local 450 = SpawnEntityFromTable("", {
	    Name = "p_slower5"
	})
	450.SetOrigin(org)
	450.SetAngles(ang[0], ang[1], ang[2])

	local 451 = SpawnEntityFromTable("", {
	    Name = "p_slower6"
	})
	451.SetOrigin(org)
	451.SetAngles(ang[0], ang[1], ang[2])

	local 452 = SpawnEntityFromTable("", {
	    Name = "p_slower7"
	})
	452.SetOrigin(org)
	452.SetAngles(ang[0], ang[1], ang[2])

	local 453 = SpawnEntityFromTable("", {
	    Name = "p_slower8"
	})
	453.SetOrigin(org)
	453.SetAngles(ang[0], ang[1], ang[2])

	local 454 = SpawnEntityFromTable("", {
	    Name = "p_slower9"
	})
	454.SetOrigin(org)
	454.SetAngles(ang[0], ang[1], ang[2])

	local 455 = SpawnEntityFromTable("", {
	    Name = "p_leet",
	    Origin = "-152 1255 -65",
	    Angles = "0 45 0"
	})
	455.SetOrigin(org)
	455.SetAngles(ang[0], ang[1], ang[2])

	local 456 = SpawnEntityFromTable("", {
	    Name = "p_leet",
	    Origin = "345 1662 187",
	    Angles = "0 180 0"
	})
	456.SetOrigin(org)
	456.SetAngles(ang[0], ang[1], ang[2])

	local 457 = SpawnEntityFromTable("", {
	    Name = "p_crate2",
	    Origin = "345 1640 150",
	    Angles = "0 0 0"
	})
	457.SetOrigin(org)
	457.SetAngles(ang[0], ang[1], ang[2])

}
