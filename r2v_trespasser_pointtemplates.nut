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
::overlay_stuff <- function()
{
	local logic_relay1 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "aliveblu_checker,Trigger,,0.1,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION1"
	})

	local logic_relay2 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "overlay_command_relay,Trigger,,0.21,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION2"
	})

	local point_clientcommand3 = SpawnEntityFromTable("point_clientcommand", {
	    targetname = "commandme"
	})

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

	local filter_activator_name5 = SpawnEntityFromTable("filter_activator_name", {
	    targetname = "filter_aliveblu_overlay",
	    filtername = "aliveblu",
	    "OnPass#1": "overlay_command_relay,Enable,,0,-1",
	    "OnFail#2": "overlay_command_relay,Disable,,0,-1",
	    "OnFail#3": "clear_overlay_brush,Enable,,0,-1"
	})

	local logic_relay6 = SpawnEntityFromTable("logic_relay", {
	    targetname = "aliveblu_checker",
	    spawnflags = 2,
	    "OnTrigger#1": "!self,Trigger,,0.1,-1",
	    "OnTrigger#2": "filter_aliveblu_overlay,TestActivator,!activator,0,-1"
	})

}
::ModelandScale_FailSafe_Scout <- function()
{
	local logic_relay7 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activatorSetCustomModelWithClassAnimationsmodels/player/scout.mdl0.1-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION3"
	})

}
::ModelandScale_FailSafe_Soldier <- function()
{
	local logic_relay8 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activatorSetCustomModelWithClassAnimationsmodels/player/soldier.mdl0.1-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION4"
	})

}
::ModelandScale_FailSafe_Pyro <- function()
{
	local logic_relay9 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activatorSetCustomModelWithClassAnimationsmodels/player/pyro.mdl0.1-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION5"
	})

}
::ModelandScale_FailSafe_Demo <- function()
{
	local logic_relay10 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activatorSetCustomModelWithClassAnimationsmodels/player/demo.mdl0.1-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION6"
	})

}
::ModelandScale_FailSafe_Heavy <- function()
{
	local logic_relay11 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activatorSetCustomModelWithClassAnimationsmodels/player/heavy.mdl0.1-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION7"
	})

}
::ModelandScale_FailSafe_Engie <- function()
{
	local logic_relay12 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activatorSetCustomModelWithClassAnimationsmodels/player/engineer.mdl0.1-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION8"
	})

}
::ModelandScale_FailSafe_Medic <- function()
{
	local logic_relay13 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activatorSetCustomModelWithClassAnimationsmodels/player/medic.mdl0.1-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION9"
	})

}
::ModelandScale_FailSafe_Sniper <- function()
{
	local logic_relay14 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activatorSetCustomModelWithClassAnimationsmodels/player/sniper.mdl0.1-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION10"
	})

}
::ModelandScale_FailSafe_Spy <- function()
{
	local logic_relay15 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activatorSetCustomModelWithClassAnimationsmodels/player/spy.mdl0.1-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION11"
	})

}
::reviveredasblu_player <- function()
{
	local logic_relay16 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "lastcounter,subtract,1,0.0,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION1"
	})

	local logic_relay17 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "lastcounter,add,1,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION12"
	})

	local logic_relay18 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "users,trigger,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION13"
	})

	local logic_relay19 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activator,addoutput,targetname deadred,0.0,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION2"
	})

	local logic_relay20 = SpawnEntityFromTable("logic_relay", {
	    targetname = "users",
	    "ontrigger#1": "!activator,addoutput,onuser1 !selfRunScriptCodeself.AddCustomAttribute(`cancel falling damage`, 1, -1)0-1,0,-1",
	    "ontrigger#2": "!activator,addoutput,onuser1 !selfRunScriptCodeself.RemoveCustomAttribute(`cancel falling damage`)5-1,0,-1"
	})

}
::reviveredasblu <- function()
{
	local logic_relay21 = SpawnEntityFromTable("logic_relay", {
	    targetname = "newlifetoblu",
	    "ontrigger#1": "redtargetname,disable,,0,-1",
	    "ontrigger#2": "deadredtele,enable,,0,-1",
	    "ontrigger#3": "deadred,$forcerespawndead,,0.05,-1",
	    "ontrigger#4": "redtargetname,enable,,0.5,-1",
	    "ontrigger#5": "deadredtele,disable,,0.5,-1"
	})

	local filter_activator_name22 = SpawnEntityFromTable("filter_activator_name", {
	    targetname = "filter_deadred",
	    filtername = "deadred"
	})

	local filter_activator_name23 = SpawnEntityFromTable("filter_activator_name", {
	    targetname = "filter_aliveblu_no",
	    negated = 1,
	    filtername = "aliveblu"
	})

	local filter_activator_name24 = SpawnEntityFromTable("filter_activator_name", {
	    targetname = "filter_aliveblu",
	    filtername = "aliveblu"
	})

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
	    "onstarttouch#10": "!activator,$weaponswitchslot,2,0,-1",
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
::p_tankcolored <- function()
{
	local logic_relay26 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activator,color,0 0 0,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION14"
	})

}
::p_money <- function()
{
	local info_particle_system27 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "money",
	    effect_name = "mvm_cash_embers",
	    flag_as_weather = 0,
	    start_active = 1
	})

}
::p_kaboom <- function()
{
	local info_particle_system28 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "kaboom",
	    effect_name = "firesmoke_collumnP",
	    flag_as_weather = 0,
	    start_active = 0
	})

}
::p_rock_pusher <- function()
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
::p_crash <- function()
{
	local info_particle_system29 = SpawnEntityFromTable("info_particle_system", {
	    effect_name = "hightower_smoke",
	    flag_as_weather = 0,
	    start_active = 1
	})

}
::p_barnaclehead <- function()
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

}
::p_virofix <- function()
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

	local filter_tf_bot_has_tag32 = SpawnEntityFromTable("filter_tf_bot_has_tag", {
	    Negated = "Allow entities that match criteria",
	    require_all_tags = 1,
	    tags = "bot_virophage",
	    targetname = "filter_virophage"
	})

	local info_target33 = SpawnEntityFromTable("info_target", {
	    targetname = "jumptarget_barrel",
	    origin = Vector(675, 282, 144)
	})

}
::p_virofix2 <- function()
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

	local info_target35 = SpawnEntityFromTable("info_target", {
	    targetname = "jumptarget_generator",
	    origin = Vector(34, 1248, 250)
	})

}
::p_spawnfix <- function()
{
	local func_brush_brush11 = SpawnEntityFromTable("func_brush", {
	    mins = "-32 -64 -398",
	    maxs = "32 64 398"
	})
	func_brush_brush11.KeyValueFromInt("solid", 2)
	func_brush_brush11.KeyValueFromString("mins", "-32 -64 -398")
	func_brush_brush11.KeyValueFromString("maxs", "32 64 398")

}
::sentry_collision_template <- function()
{
	local logic_timer36 = SpawnEntityFromTable("logic_timer", {
	    refiretime = 3,
	    "ontimer#1": "obj_sentrygunRunScriptCodeNetProps.SetPropINVALID(self, `m_CollisionGroup`, 3)0-1"
	})

}
::p_skullhead <- function()
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

}
::p_fade1 <- function()
{
	local env_fade38 = SpawnEntityFromTable("env_fade", {
	    targetname = "fade",
	    angles = QAngle(0, 0, 0),
	    duration = 3,
	    rendercolor = "0 0 0",
	    spawnflags = 8
	})

}
::p_fade2 <- function()
{
	local env_fade39 = SpawnEntityFromTable("env_fade", {
	    targetname = "fade2",
	    angles = QAngle(0, 0, 0),
	    duration = 3,
	    rendercolor = "0 0 0",
	    spawnflags = 1
	})

}
::p_fade3 <- function()
{
	local env_fade40 = SpawnEntityFromTable("env_fade", {
	    targetname = "fade3",
	    angles = QAngle(0, 0, 0),
	    duration = 10,
	    rendercolor = "85 0 0",
	    spawnflags = 1
	})

}
::p_fade4 <- function()
{
	local env_fade41 = SpawnEntityFromTable("env_fade", {
	    targetname = "fade4",
	    angles = QAngle(0, 0, 0),
	    duration = 6,
	    rendercolor = "0 0 0",
	    spawnflags = 1
	})

}
::p_fade5 <- function()
{
	local env_fade42 = SpawnEntityFromTable("env_fade", {
	    targetname = "fade5",
	    angles = QAngle(0, 0, 0),
	    duration = 1,
	    rendercolor = "0 0 0",
	    spawnflags = 1
	})

}
::p_finale_facer <- function()
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

}
::p_finale_facerblu <- function()
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

}
::p_teleporter_brush <- function()
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
::p_teleporter_brush_finale <- function()
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
::p_teleporter <- function()
{
	local info_teleport_destination45 = SpawnEntityFromTable("info_teleport_destination", {
	    targetname = "info_tele",
	    origin = Vector(550, 292, 250),
	    angles = QAngle(0, 90, 0)
	})

}
::p_teleporterfinale <- function()
{
	local info_teleport_destination46 = SpawnEntityFromTable("info_teleport_destination", {
	    targetname = "parachute_tele",
	    origin = Vector(628, -752, 1165),
	    angles = QAngle(90, 90, 0)
	})

}
::p_lastbot <- function()
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
::p_voice <- function()
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
::p_newlife <- function()
{
	local game_forcerespawn47 = SpawnEntityFromTable("game_forcerespawn", {
	    targetname = "NEWLIFE"
	})

	local logic_relay48 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "bots_win,Kill,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION15"
	})

}
::p_chat1 <- function()
{
	local training_annotation49 = SpawnEntityFromTable("training_annotation", {
	    targetname = "signchat",
	    display_text = "Every death comes with a $250 toll, pardner.",
	    lifetime = 8,
	    origin = Vector(945, 1600, 275)
	})

}
::p_signbomb <- function()
{
	local training_annotation50 = SpawnEntityFromTable("training_annotation", {
	    targetname = "signbomb",
	    display_text = "The Corrupted have brought in a nuclear bomb!",
	    lifetime = 8,
	    origin = Vector(-1180, -486, 203)
	})

}
::p_badsign <- function()
{
	local training_annotation51 = SpawnEntityFromTable("training_annotation", {
	    targetname = "badsign",
	    display_text = "If this cabinet does not work, the mission will be broken. Please try another server if so",
	    lifetime = 8,
	    origin = Vector(727, 1300, 310)
	})

}
::p_sign666 <- function()
{
	local training_annotation52 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign666",
	    display_text = "If you become infected you must hide to recover!",
	    lifetime = 8,
	    origin = Vector(10, 1235, 165)
	})

}
::p_sign0 <- function()
{
	local training_annotation53 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign0",
	    display_text = "YOU ARE THE LAST...",
	    lifetime = 10,
	    origin = Vector(10, 1235, 165)
	})

}
::p_sign1 <- function()
{
	local training_annotation54 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign1",
	    display_text = "Running out in the open will slow you down",
	    lifetime = 8,
	    origin = Vector(-680, -139, 66)
	})

}
::p_sign2 <- function()
{
	local training_annotation55 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign2",
	    display_text = "They come...",
	    lifetime = 5,
	    origin = Vector(0, 121, 53)
	})

}
::p_sign3 <- function()
{
	local training_annotation56 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign3",
	    display_text = "CHECKPOINT - The shop is open...",
	    lifetime = 56.25,
	    origin = Vector(856, 1530, 360)
	})

}
::p_sign4 <- function()
{
	local training_annotation57 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign4",
	    display_text = 5,
	    lifetime = 1,
	    origin = Vector(856, 1530, 360)
	})

}
::p_sign5 <- function()
{
	local training_annotation58 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign5",
	    display_text = 4,
	    lifetime = 1,
	    origin = Vector(856, 1530, 360)
	})

}
::p_sign6 <- function()
{
	local training_annotation59 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign6",
	    display_text = 3,
	    lifetime = 1,
	    origin = Vector(856, 1530, 360)
	})

}
::p_sign7 <- function()
{
	local training_annotation60 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign7",
	    display_text = 2,
	    lifetime = 1,
	    origin = Vector(856, 1530, 360)
	})

}
::p_sign8 <- function()
{
	local training_annotation61 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign8",
	    display_text = 1,
	    lifetime = 1,
	    origin = Vector(856, 1530, 360)
	})

}
::p_sign9 <- function()
{
	local training_annotation62 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign9",
	    display_text = "Secure the landing zone to escape!",
	    lifetime = 15,
	    origin = Vector(622, -942, 151)
	})

}
::p_sign10 <- function()
{
	local training_annotation63 = SpawnEntityFromTable("training_annotation", {
	    targetname = "sign10",
	    display_text = "Reinforcements have arrived!",
	    lifetime = 10,
	    origin = Vector(685, -685, 925)
	})

}
::p_leap <- function()
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

}
::p_leap_tele <- function()
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

}
::p_deskblock <- function()
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
::p_engiblock <- function()
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
::p_survrelay1 <- function()
{
	local logic_relay68 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "SURVIVORAISTART",
	    "OnTrigger#1": "player,$ChangeAttributes,Shop,0,-1"
	})

}
::p_survrelay2 <- function()
{
	local logic_relay69 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "SURVIVORAIEND",
	    "OnTrigger#1": "player,$ChangeAttributes,Defense,0,-1"
	})

}
::p_survrelay3 <- function()
{
	local logic_relay70 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "SURVIVORAIEXIT",
	    "OnTrigger#1": "player,$ChangeAttributes,Exit,0,-1"
	})

}
::p_introcam <- function()
{
	local logic_relay71 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "introcam",
	    "OnTrigger#1": "camera4,$EnableAll,,0,-1",
	    "OnTrigger#2": "camera4,$DisableAll,,3,-1"
	})

}
::p_beginrelay <- function()
{
	local tf_point_nav_interface72 = SpawnEntityFromTable("tf_point_nav_interface", {
	    targetname = "nav_refresh"
	})

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

}
::p_cabinet <- function()
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

	local filter_tf_bot_has_tag75 = SpawnEntityFromTable("filter_tf_bot_has_tag", {
	    Negated = 0,
	    require_all_tags = 1,
	    tags = "noregen",
	    targetname = "filter_redbot"
	})

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
::p_spawnremover1 <- function()
{
	local logic_relay76 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "door_1,kill,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION16"
	})

}
::p_spawnremover2 <- function()
{
	local logic_relay77 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "spawn_red,kill,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION17"
	})

}
::p_spawnremover3 <- function()
{
	local logic_relay78 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "func_respawnroomvisualizer,kill,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION18"
	})

}
::p_leet <- function()
{
	local obj_dispenser79 = SpawnEntityFromTable("obj_dispenser", {
	    targetname = "superdisp",
	    origin = Vector(0, 0, 0),
	    teamnum = 2,
	    SolidToPlayer = 0,
	    defaultupgrade = 0,
	    lightingorigin = "spawnbot_surprise2"
	})

	local logic_relay80 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "superdisp,skin,1,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION19"
	})

}
::p_leet2 <- function()
{
	local obj_dispenser81 = SpawnEntityFromTable("obj_dispenser", {
	    targetname = "superdisp2",
	    origin = Vector(0, 0, 0),
	    teamnum = 2,
	    SolidToPlayer = 0,
	    defaultupgrade = 0
	})

	local logic_relay82 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "superdisp2,skin,1,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION20"
	})

}
::p_mvm_beat <- function()
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

}
::viro_music <- function()
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

}
::lose_music <- function()
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

}
::lose_music2 <- function()
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

}
::r_virobeat <- function()
{
	local logic_relay90 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "viro_beaton",
	    "OnTrigger#1": "virospook,PlaySound,,0,-1"
	})

}
::r_virobeatoff <- function()
{
	local logic_relay91 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "viro_beatoff",
	    "OnTrigger#1": "virospook,StopSound,,0,-1"
	})

}
::r_beatson <- function()
{
	local logic_relay92 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "mvm_beaton",
	    "OnTrigger#1": "mvm_beat1,PlaySound,,0,-1"
	})

}
::r_beatsoff <- function()
{
	local logic_relay93 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "mvm_beatoff",
	    "OnTrigger#1": "mvm_beat1,StopSound,,0,-1"
	})

}
::r_cade_relay <- function()
{
	local logic_relay94 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "relay",
	    "OnTrigger#1": "shitcade_intro,SetAnimation,break2,0,-1",
	    "OnTrigger#2": "shitcade,Kill,,0.25,-1",
	    "OnTrigger#3": "shitcade_intro,Kill,,2.5,-1",
	    "OnTrigger#4": "permadeath_detect_player_spell,Enable,,0,-1"
	})

}
::r_cade_relay_lower <- function()
{
	local logic_relay95 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "relay2",
	    "OnTrigger#1": "barricade_level2,Kill,,0.25,-1"
	})

}
::r_cade_relay_window <- function()
{
	local logic_relay96 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "relay3",
	    "OnTrigger#1": "barricade_level1,Kill,,0.25,-1"
	})

}
::r_cade_relay_last <- function()
{
	local logic_relay97 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "relay4",
	    "OnTrigger#1": "barricade_level3,Kill,,0.25,-1"
	})

}
::r_respawn_relay <- function()
{
	local logic_relay98 = SpawnEntityFromTable("logic_relay", {
	    targetname = "life_relay",
	    "OnTrigger#1": "NEWLIFE,ForceTeamRespawn,2,0,-1"
	})

}
::p_shake <- function()
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

}
::p_shakelong <- function()
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

}
::p_rick <- function()
{
	local entity_soldier_statue101 = SpawnEntityFromTable("entity_soldier_statue", {
	    id = 3,
	    classname = "entity_soldier_statue",
	    origin = Vector(0, 0, 0),
	    disableshadows = 1,
	    lightingorigin = "spawnbot_surprise2"
	})

}
::p_shopengi <- function()
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

}
::p_shopitem1 <- function()
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

}
::p_shopitem2 <- function()
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

}
::p_shopitem3 <- function()
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

}
::p_shopitem4 <- function()
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

}
::p_shopitem5 <- function()
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

}
::p_spook <- function()
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

}
::p_spook2 <- function()
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

}
::p_spook3 <- function()
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

}
::p_viewblocker_window <- function()
{
	local func_brush_brush25 = SpawnEntityFromTable("func_brush", {
	    mins = "-320.5 -4 -144",
	    maxs = "320.5 4 144"
	})
	func_brush_brush25.KeyValueFromInt("solid", 2)
	func_brush_brush25.KeyValueFromString("mins", "-320.5 -4 -144")
	func_brush_brush25.KeyValueFromString("maxs", "320.5 4 144")

}
::p_plane <- function()
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

}
::p_musicmaker1 <- function()
{
	local env_entity_maker113 = SpawnEntityFromTable("env_entity_maker", {
	    targetname = "music_maker",
	    EntityTemplate = "lose_music"
	})

}
::p_musicmaker2 <- function()
{
	local env_entity_maker114 = SpawnEntityFromTable("env_entity_maker", {
	    targetname = "music_maker2",
	    EntityTemplate = "lose_music2"
	})

}
::p_planemaker <- function()
{
	local env_entity_maker115 = SpawnEntityFromTable("env_entity_maker", {
	    targetname = "plane_maker",
	    EntityTemplate = "p_plane"
	})

}
::p_cargodoor <- function()
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

}
::p_brushbug_fix <- function()
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
::p_cargoshop1 <- function()
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

}
::p_cargoshop2 <- function()
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

}
::p_cargoshop3 <- function()
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

}
::p_pusher <- function()
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

}
::p_pusher2 <- function()
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
::p_table <- function()
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

}
::p_table2 <- function()
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

}
::p_desk <- function()
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

}
::p_desk_intro <- function()
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

}
::p_chair_intro <- function()
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

}
::p_urn <- function()
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

}
::p_smallammo <- function()
{
	local item_ammopack_small127 = SpawnEntityFromTable("item_ammopack_small", {
	    classname = "item_ammopack_small",
	    disableshadows = 0
	})

}
::p_smallammoskin <- function()
{
	local item_ammopack_small128 = SpawnEntityFromTable("item_ammopack_small", {
	    powerup_model = "models/weapons/w_models/w_rocket.mdl",
	    disableshadows = 0
	})

}
::p_mediumammo <- function()
{
	local item_ammopack_medium129 = SpawnEntityFromTable("item_ammopack_medium", {
	    classname = "item_ammopack_medium",
	    disableshadows = 0
	})

}
::p_fullammo <- function()
{
	local item_ammopack_full130 = SpawnEntityFromTable("item_ammopack_full", {
	    classname = "item_ammopack_full",
	    disableshadows = 0
	})

}
::p_smallmedkit <- function()
{
	local item_healthkit_small131 = SpawnEntityFromTable("item_healthkit_small", {
	    classname = "item_healthkit_small"
	})

}
::p_smallmedkitskin <- function()
{
	local item_healthkit_small132 = SpawnEntityFromTable("item_healthkit_small", {
	    classname = "item_healthkit_small",
	    powerup_model = "models/items/medkit_small_bday.mdl"
	})

}
::p_mediumkit <- function()
{
	local item_healthkit_medium133 = SpawnEntityFromTable("item_healthkit_medium", {
	    classname = "item_healthkit_medium"
	})

}
::p_fullkit <- function()
{
	local item_healthpack_medium134 = SpawnEntityFromTable("item_healthpack_medium", {
	    classname = "item_healthkit_full",
	    disableshadows = 0
	})

}
::p_beam <- function()
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

}
::p_stair <- function()
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

}
::p_chair <- function()
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

}
::p_box_intro <- function()
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

}
::p_box <- function()
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

}
::p_bookcase <- function()
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

}
::p_bookcase3 <- function()
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

}
::p_monstercage <- function()
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

}
::p_barrel <- function()
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

}
::p_beer <- function()
{
	local func_wall_brush29 = SpawnEntityFromTable("func_wall", {
	    mins = "-49 -65 -224",
	    maxs = "49 65 224"
	})
	func_wall_brush29.KeyValueFromInt("solid", 2)
	func_wall_brush29.KeyValueFromString("mins", "-49 -65 -224")
	func_wall_brush29.KeyValueFromString("maxs", "49 65 224")

}
::p_brokenstairs_clip <- function()
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
::p_crate <- function()
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

}
::p_ledgefix_left <- function()
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
::p_ledgefix_right <- function()
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
::p_crate2 <- function()
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

}
::p_tomb <- function()
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

}
::p_heli <- function()
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

}
::p_cratesmall <- function()
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

}
::p_crate_intro <- function()
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

}
::p_shitcade <- function()
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

}
::p_shitcade2 <- function()
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

}
::p_barricade_level1 <- function()
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

}
::p_barricade_nolevel <- function()
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

}
::p_barricade_nolevel2 <- function()
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

}
::p_barricade_nolevel3 <- function()
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

}
::p_barricade_level2 <- function()
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

}
::p_barricade_level3a <- function()
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

}
::p_barricade_level3b <- function()
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

}
::p_barricade_plate2 <- function()
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

}
::p_barricade_plate3 <- function()
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

}
::p_zombie <- function()
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

}
::p_hhhteleporter <- function()
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

	local filter_activator_class163 = SpawnEntityFromTable("filter_activator_class", {
	    filterclass = "headless_hatman",
	    targetname = "filter_headless"
	})

}
::p_slower0 <- function()
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
::p_slower1 <- function()
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
::p_slower2 <- function()
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
::p_slower3 <- function()
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
::p_slower4 <- function()
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
::p_slower5 <- function()
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
::p_slower6 <- function()
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
::p_slower7 <- function()
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
::p_slower8 <- function()
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
::p_slower9 <- function()
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
::p_controlpoint <- function()
{
	local prop_dynamic164 = SpawnEntityFromTable("prop_dynamic", {
	    model = "models/props_gameplay/cap_point_base.mdl",
	    targetname = "cap_base",
	    solid = 0,
	    skin = 0
	})

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

	local game_round_win167 = SpawnEntityFromTable("game_round_win", {
	    classname = "game_round_win",
	    force_map_reset = 0,
	    switch_teams = 0,
	    targetname = "red_win",
	    TeamNum = 2
	})

	local logic_relay168 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "cap_area,SetControlPoint,cap_point,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION21"
	})

	local logic_relay169 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "cap_master,RoundSpawn,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION22"
	})

}
::p_cover <- function()
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

}
::p_pointmaker <- function()
{
	local env_entity_maker172 = SpawnEntityFromTable("env_entity_maker", {
	    targetname = "point_maker",
	    EntityTemplate = "p_controlpoint"
	})

}
::p_pointmaker2 <- function()
{
	local env_entity_maker173 = SpawnEntityFromTable("env_entity_maker", {
	    targetname = "point_maker2",
	    EntityTemplate = "p_leet2"
	})

}
::p_shutter_pusher <- function()
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
::p_shutter_pusher2 <- function()
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
::p_brokenwall_pusher <- function()
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
::p_brokenwall_pusher2 <- function()
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
::p_yeet_failsafe <- function()
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

}
::p_yeet <- function()
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
::p_yeet2 <- function()
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
::p_yeet3 <- function()
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

}
::p_yeet4 <- function()
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
::p_mapblock <- function()
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
::p_bonus <- function()
{
	local filter_tf_bot_has_tag176 = SpawnEntityFromTable("filter_tf_bot_has_tag", {
	    negated = 1,
	    require_all_tags = 1,
	    tags = "bot_notplayer",
	    targetname = "filter_notplayer"
	})

	local filter_multi177 = SpawnEntityFromTable("filter_multi", {
	    targetname = "filter_redplayer",
	    filter01 = "filter_red",
	    filter02 = "filter_notplayer"
	})

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

	local math_counter179 = SpawnEntityFromTable("math_counter", {
	    targetname = "lastcounter",
	    max = 6,
	    "outvalue#1": "lastcountercompare,setvaluecompare,,0,-1"
	})

	local logic_compare180 = SpawnEntityFromTable("logic_compare", {
	    targetname = "lastcountercompare",
	    comparevalue = 1,
	    "ongreaterthan#1": "lastdisable_relay,trigger,,0,-1",
	    "ongreaterthan#2": "enable_lastenable_relay,trigger,,0,-1",
	    "onequalto#3": "lastenable_relay,trigger,,0,-1",
	    "onequalto#4": "lastdisable_relay,enable,,0,-1"
	})

	local logic_relay181 = SpawnEntityFromTable("logic_relay", {
	    targetname = "enable_lastenable_relay",
	    startdisabled = 1,
	    "ontrigger#1": "lastenable_relay,enable,,0,-1",
	    "onspawn#2": "wave_start_relay,addoutput,ontrigger enable_lastenable_relay:enable::0:-1,0,-1",
	    "onspawn#3": "wave_start_relay,addoutput,ontrigger lastenable_relay:enable::0:-1,0,-1",
	    "onspawn#4": "wave_start_relay,addoutput,ontrigger lastcountercompare:compare::1:-1,0,-1"
	})

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

}
::p_fog <- function()
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
::p_navblocker <- function()
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

}
::p_navblocker2 <- function()
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
::p_survmoveup <- function()
{
	local info_target187 = SpawnEntityFromTable("info_target", {
	    targetname = "moveup"
	})

}
::p_survmoveup2 <- function()
{
	local info_target188 = SpawnEntityFromTable("info_target", {
	    targetname = "moveup2"
	})

}
::p_survmoveup3 <- function()
{
	local info_target189 = SpawnEntityFromTable("info_target", {
	    targetname = "moveup3"
	})

}
::p_survshop1 <- function()
{
	local info_target190 = SpawnEntityFromTable("info_target", {
	    targetname = "target_shop1"
	})

}
::p_survshop2 <- function()
{
	local info_target191 = SpawnEntityFromTable("info_target", {
	    targetname = "target_shop2"
	})

}
::p_survshop3 <- function()
{
	local info_target192 = SpawnEntityFromTable("info_target", {
	    targetname = "target_shop3"
	})

}
::p_keepertarget <- function()
{
	local info_target193 = SpawnEntityFromTable("info_target", {
	    targetname = "target_keeper"
	})

}
::p_marketgardener <- function()
{
	local info_target194 = SpawnEntityFromTable("info_target", {
	    targetname = "target_mg"
	})

}
::p_marketgardener2 <- function()
{
	local info_target195 = SpawnEntityFromTable("info_target", {
	    targetname = "target_mg2"
	})

}
::p_marketgardener3 <- function()
{
	local info_target196 = SpawnEntityFromTable("info_target", {
	    targetname = "target_mg3"
	})

}
::p_marketgardener4 <- function()
{
	local info_target197 = SpawnEntityFromTable("info_target", {
	    targetname = "target_mg4"
	})

}
::p_tank <- function()
{
	local info_target198 = SpawnEntityFromTable("info_target", {
	    targetname = "target_tank"
	})

}
::p_tankgo <- function()
{
	local info_target199 = SpawnEntityFromTable("info_target", {
	    targetname = "target_tankgo"
	})

}
::p_threaten <- function()
{
	local logic_relay200 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "threat",
	    "OnTrigger#1": "player*RunScriptCodeClientPrint(self, 4, `KILL KILL KILL KILL KILL KILL`)0-1"
	})

}
::p_threaten2 <- function()
{
	local logic_relay201 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "threat2",
	    "OnTrigger#1": "player*RunScriptCodeClientPrint(self, 4, `LAST CHANCE FOR PURCHASES`)0-1"
	})

}
::p_fogold <- function()
{
	local logic_relay202 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "fog_old",
	    "OnTrigger#1": "player*,SetFogController,fog_controller,0.01,-1"
	})

}
::p_nohud1 <- function()
{
	local logic_relay203 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "hudbgone",
	    "OnTrigger#1": "player*,SetHUDVisibility,0,0,-1"
	})

}
::p_nohud2 <- function()
{
	local logic_relay204 = SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    targetname = "hudcome",
	    "OnTrigger#1": "player*,SetHUDVisibility,1,0,-1"
	})

}
::p_spawns <- function()
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
::p_screen <- function()
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

}
::p_screenblu <- function()
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

}
::p_plank <- function()
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

}
::p_plank2 <- function()
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

}
::p_camera <- function()
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

}
::p_camera2 <- function()
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

}
::p_camera3 <- function()
{
	local point_viewcontrol211 = SpawnEntityFromTable("point_viewcontrol", {
	    moveto = "camera_path2",
	    targetname = "camera3",
	    origin = Vector(253, -196, 59),
	    angles = QAngle(5.98, -53.51, 0)
	})

}
::p_camera4 <- function()
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

}
::p_nuke <- function()
{
	local game_round_win213 = SpawnEntityFromTable("game_round_win", {
	    origin = Vector(-1611.31, 4748.55, 169.35),
	    TeamNum = 3,
	    targetname = "bots_win",
	    switch_teams = 0,
	    force_map_reset = 1,
	    classname = "game_round_win"
	})

	local env_fade214 = SpawnEntityFromTable("env_fade", {
	    targetname = "fadenuke2",
	    angles = QAngle(0, 0, 0),
	    duration = 100,
	    rendercolor = "255 255 255",
	    renderamt = 50,
	    spawnflags = 0
	})

	local env_fade215 = SpawnEntityFromTable("env_fade", {
	    targetname = "fadenuke",
	    angles = QAngle(0, 0, 0),
	    duration = 5,
	    holdtime = 5,
	    rendercolor = "0 0 0",
	    spawnflags = 9
	})

	local env_viewpunch216 = SpawnEntityFromTable("env_viewpunch", {
	    punchangle = "-90 0 0",
	    radius = 9999,
	    spawnflags = 3,
	    targetname = "punch",
	    origin = Vector(1184, 512, 388)
	})

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

	local logic_relay224 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "capturezone_blu,AddOutput,OnCapture nuke_relay:Trigger:0:-1,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION24"
	})

}
::p_switcharoo1 <- function()
{
	local logic_relay225 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activator,$RemoveItem,Darwin's Danger Shield,0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION25"
	})

	local logic_relay226 = SpawnEntityFromTable("logic_relay", {
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION26"
	})

}
::p_switcharoo2 <- function()
{
	local logic_relay227 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activator,$RemoveItem,The Razorback,0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION27"
	})

	local logic_relay228 = SpawnEntityFromTable("logic_relay", {
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION28"
	})

}
::p_switcharoo3 <- function()
{
	local logic_relay229 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activator,$RemoveItem,The Cozy Camper,0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION29"
	})

	local logic_relay230 = SpawnEntityFromTable("logic_relay", {
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION30"
	})

}
