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

::corelogic <- function(org, ang)
{
	local logic_auto1 = SpawnEntityFromTable("logic_auto", {
	    targetname = "mainrelay",
	    "OnMapSpawn#1": "wave_finished_relay,Kill,,0,-1",
	    "OnMapSpawn#2": "door_red_large_win_*,Open,,0,-1",
	    "OnMapSpawn#3": "trigger_multiple,Kill,,0,-1",
	    "OnMapSpawn#4": "trigger_push,Kill,,0,-1",
	    "OnMapSpawn#5": "ufo_*,Kill,,0,-1",
	    "OnMapSpawn#6": "trigger_catapult,Kill,,0,-1",
	    "OnMapSpawn#7": "red_respawnroom1,Kill,,0,-1",
	    "OnMapSpawn#8": "bombpath_arrows_*,Kill,,0,-1",
	    "OnMapSpawn#9": "m0*,Kill,,0,-1",
	    "OnMapSpawn#10": "m10,Kill,,0,-1",
	    "OnMapSpawn#11": "@bb144 -584 0 472 384 160@func_respawnroomvisualizer,Kill,,0,-1",
	    "OnMapSpawn#12": "relay_attributes,Kill,,0,-1",
	    "OnMapSpawn#13": "relay_invisible,Kill,,0,-1",
	    "OnMapSpawn#14": "player,$RemoveOutput,effects,1,-1",
	    "OnMapSpawn#15": "player,$RemoveOutput,effects,2,-1",
	    "OnMapSpawn#16": "player,$RemoveOutput,renderfx,0,-1",
	    "OnMapSpawn#17": "merasmus_*,Kill,,0,-1",
	    "OnMapSpawn#18": "wave_start_relay,AddOutput,OnTrigger gameover:Enable:0:-1",
	    "OnMapSpawn#19": "realtimer,trigger,,0,-1",
	    "OnMapSpawn#20": "ee_bool,disable,,0,-1",
	    "OnMapSpawn#21": "wave_start_relay,AddOutput,OnTrigger respawn_relay:Trigger:0:-1",
	    "OnMapSpawn#22": "fog_controller,AddOutput,spawnflags 1:0:-1",
	    "OnMapSpawn#23": "fog_controller,AddOutput,farz -1:0:-1",
	    "OnMapSpawn#24": "player,$ResetExtraItems,,0,-1",
	    "OnMapSpawn#25": "tf_objective_resourceRunScriptCodeNetProps.SetPropString(self, `m_iszMvMPopfileName`, `Bauernhof Der Toten`)0-1",
	    "OnMapSpawn#26": "wave_start_relay,AddOutput,OnTrigger LMA:Enable:0:-1",
	    "OnMapSpawn#27": "func_flagdetectionzone,AddOutput,alarm 0",
	    "OnMapSpawn#28": "wave_start_relay,AddOutput,OnTrigger DUMMY_*:Kill:0:-1",
	    "OnMapSpawn#29": "wave_start_relay,AddOutput,OnTrigger tutorial_relay2:Disable:0:-1",
	    "OnMapSpawn#30": "wave_start_relay,AddOutput,OnTrigger hints_*:Kill:0:-1",
	    "OnMapSpawn#31": "wave_start_relay,AddOutput,OnTrigger tutorial_*:Kill:0:-1",
	    "OnMapSpawn#32": "wave_start_relay,AddOutput,OnTrigger dumpster_hint:Show:2:-1",
	    "OnMapSpawn#33": "wave_start_relay,AddOutput,OnTrigger navman:RecomputeBlockers:0:-1",
	    "OnMapSpawn#34": "wave_start_relay,AddOutput,OnTrigger navman:RecomputeBlockers:1:-1",
	    "OnMapSpawn#35": "wave_start_relay,AddOutput,OnTrigger navman:RecomputeBlockers:2:-1"
	})
	logic_auto1.SetOrigin(org)
	logic_auto1.SetAngles(ang[0], ang[1], ang[2])

	local tf_point_nav_interface2 = SpawnEntityFromTable("tf_point_nav_interface", {
	    targetname = "navman"
	})
	tf_point_nav_interface2.SetOrigin(org)
	tf_point_nav_interface2.SetAngles(ang[0], ang[1], ang[2])

	local func_button_brush1 = SpawnEntityFromTable("func_button", {
	    origin = Vector("2168, 40, 13604"),
	    mins = "-12 -10 -6",
	    maxs = "24 10 6",
	    rendermode = 10,
	    movedir = "0 180 0",
	    spawnflags = 513,
	    damagefilter = "filter_redteam",
	    speed = 5,
	    wait = 20,
	    sounds = 3,
	    targetname = "revive_button",
	    "OnPressed#1": "popscript,$revivelogic,!activator,0,-1"
	})
	func_button_brush1.KeyValueFromInt("solid", 2)
	func_button_brush1.KeyValueFromString("mins", "-12 -10 -6")
	func_button_brush1.KeyValueFromString("maxs", "24 10 6")

	local game_forcerespawn3 = SpawnEntityFromTable("game_forcerespawn", {
	    targetname = "respawner"
	})
	game_forcerespawn3.SetOrigin(org)
	game_forcerespawn3.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay4 = SpawnEntityFromTable("logic_relay", {
	    targetname = "respawn_relay",
	    "OnTrigger#1": "respawner,ForceTeamRespawn,2,0,-1"
	})
	logic_relay4.SetOrigin(org)
	logic_relay4.SetAngles(ang[0], ang[1], ang[2])

	local trigger_hurt_brush2 = SpawnEntityFromTable("trigger_hurt", {
	    damage = 4500,
	    spawnflags = 1,
	    mins = "-9999 -9999 -9999",
	    maxs = "9999 9999 9999",
	    startdisabled = 1,
	    targetname = "hologram_nuke_hurt",
	    filtername = "filter_notred",
	    origin = Vector("0, 0, 0")
	})
	trigger_hurt_brush2.KeyValueFromInt("solid", 2)
	trigger_hurt_brush2.KeyValueFromString("mins", "-9999 -9999 -9999")
	trigger_hurt_brush2.KeyValueFromString("maxs", "9999 9999 9999")

	local filter_activator_tfteam5 = SpawnEntityFromTable("filter_activator_tfteam", {
	    targetname = "filter_notred",
	    teamnum = 2,
	    negated = 1
	})
	filter_activator_tfteam5.SetOrigin(org)
	filter_activator_tfteam5.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay6 = SpawnEntityFromTable("logic_relay", {
	    targetname = "wave_output_clear",
	    "OnTrigger#1": "player,$RemoveOutput,$OnDamageReceived,0,-1",
	    "OnTrigger#2": "player,$RemoveOutput,$OnDeath,0,-1",
	    "OnTrigger#3": "fog_controller,SetStartDist,600,,-1",
	    "OnTrigger#4": "fog_controller,SetEndDist,4000,,-1",
	    "OnTrigger#5": "fog_controller,SetColor,0 0 0,,-1",
	    "OnTrigger#6": "tf_objective_resourceRunScriptCodeNetProps.SetPropInt(self, `m_nMannVsMachineWaveCount`, 0)-1"
	})
	logic_relay6.SetOrigin(org)
	logic_relay6.SetAngles(ang[0], ang[1], ang[2])

	local math_counter7 = SpawnEntityFromTable("math_counter", {
	    targetname = "roundscleared",
	    startvalue = 0,
	    "outValue#1": "survivalcheck,SetValueCompare,,0,-1",
	    "outValue#2": "playerRunScriptCodeClientPrint(self, 4, ``)0-1"
	})
	math_counter7.SetOrigin(org)
	math_counter7.SetAngles(ang[0], ang[1], ang[2])

	local logic_compare8 = SpawnEntityFromTable("logic_compare", {
	    targetname = "survivalcheck",
	    initialValue = 0,
	    CompareValue = 4,
	    "OnEqualTo#1": "playerRunScriptCodeself.AddCurrency(1500)-1",
	    "OnEqualTo#2": "playerRunScriptCodeClientPrint(self, 4, `You've received a 1500 Survival Bonus!`)-1",
	    "OnEqualTo#3": "roundscleared,SetValue,0,,-1",
	    "OnEqualTo#4": "survivalcheck,SetValue,0,,-1"
	})
	logic_compare8.SetOrigin(org)
	logic_compare8.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic9 = SpawnEntityFromTable("prop_dynamic", {
	    model = "models/player/demo.mdl",
	    disableshadows = 1,
	    solid = 0,
	    targetname = "ee_demo",
	    defaultanim = "crouch_LOSER",
	    origin = Vector("-428, 2300, -2"),
	    angles = QAngle("0, 315, 0")
	})
	prop_dynamic9.SetOrigin(org)
	prop_dynamic9.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic_ornament10 = SpawnEntityFromTable("prop_dynamic_ornament", {
	    targetname = "ee_bool",
	    spawnflags = 256,
	    model = "models\weapons\c_models\c_bottle\c_bottle.mdl",
	    disableshadows = 1,
	    startdisabled = 1,
	    origin = Vector("-428, 2300, -2"),
	    lightingorigin = "ee_demo",
	    InitialOwner = "ee_demo"
	})
	prop_dynamic_ornament10.SetOrigin(org)
	prop_dynamic_ornament10.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic_ornament11 = SpawnEntityFromTable("prop_dynamic_ornament", {
	    targetname = "ee_shiv",
	    spawnflags = 256,
	    model = "models/workshop_partner/weapons/c_models/c_prinny_knife/c_prinny_knife.mdl",
	    disableshadows = 1,
	    startdisabled = 0,
	    origin = Vector("-428, 2300, -2"),
	    lightingorigin = "ee_demo",
	    InitialOwner = "ee_demo"
	})
	prop_dynamic_ornament11.SetOrigin(org)
	prop_dynamic_ornament11.SetAngles(ang[0], ang[1], ang[2])

	local func_flagdetectionzone_brush3 = SpawnEntityFromTable("func_flagdetectionzone", {
	    startdisabled = 0,
	    targetname = "ee_detector",
	    mins = "-5 -5 -24",
	    maxs = "5 5 24",
	    origin = Vector("-413, 2282, 22"),
	    "OnStartTouchFlag#1": "ee_beerflag,ForceResetAndDisableSilent,,-1",
	    "OnStartTouchFlag#2": "ee_beerflag,Kill,,1,-1",
	    "OnStartTouchFlag#3": "ee_demo,SetAnimation,taunt03,0,-1",
	    "OnStartTouchFlag#4": "ee_bool,Enable,,0,-1",
	    "OnStartTouchFlag#5": "ee_shiv,Disable,,0,-1",
	    "OnStartTouchFlag#6": "ee_bool,Kill,,4,-1",
	    "OnStartTouchFlag#7": "ee_shiv,Enable,,4,-1",
	    "OnStartTouchFlag#8": "ee_demo,SetAnimation,taunt04,4,-1",
	    "OnStartTouchFlag#9": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })6.5-1",
	    "OnStartTouchFlag#10": "popscript,$GiveSuperShank,!activator,6.5,-1",
	    "OnStartTouchFlag#11": "!activatorRunScriptCodeClientPrint(self, 4, `Tavish has given you his Super Shank!`)6.5-1",
	    "OnStartTouchFlag#12": "ee_shiv,Kill,,7,-1",
	    "OnStartTouchFlag#13": "ee_demo,SetAnimation,taunt_woohoo,7,-1",
	    "OnStartTouchFlag#14": "ee_demo,Kill,,8,-1"
	})
	func_flagdetectionzone_brush3.KeyValueFromInt("solid", 2)
	func_flagdetectionzone_brush3.KeyValueFromString("mins", "-5 -5 -24")
	func_flagdetectionzone_brush3.KeyValueFromString("maxs", "5 5 24")

	local item_teamflag12 = SpawnEntityFromTable("item_teamflag", {
	    targetname = "ee_beerflag",
	    startdisabled = 1,
	    flag_model = "models/player/items/taunts/beer_crate/beer_crate.mdl",
	    origin = Vector("2029, 333, 101"),
	    returntime = 60000,
	    "OnPickup#1": "!self,setteam,3,,-1",
	    "OnDrop#2": "!self,ForceResetAndDisableSilent,,-1",
	    "OnDrop#3": "!self,Kill,,1,-1"
	})
	item_teamflag12.SetOrigin(org)
	item_teamflag12.SetAngles(ang[0], ang[1], ang[2])

}
::Spawn_things <- function(org, ang)
{
	local prop_dynamic13 = SpawnEntityFromTable("prop_dynamic", {
	    model = "models/props/mvm_shadows/spawnroom.mdl",
	    disableshadows = 1,
	    solid = 6,
	    origin = Vector("320, -32, 32"),
	    angles = QAngle("0, 270, 0")
	})
	prop_dynamic13.SetOrigin(org)
	prop_dynamic13.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic14 = SpawnEntityFromTable("prop_dynamic", {
	    model = "models/props_gameplay/door_grate003_bottom.mdl",
	    disableshadows = 1,
	    solid = 6,
	    origin = Vector("133, 0, -6"),
	    angles = QAngle("90, 0, 0")
	})
	prop_dynamic14.SetOrigin(org)
	prop_dynamic14.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic15 = SpawnEntityFromTable("prop_dynamic", {
	    model = "models/props_gameplay/door_grate003_bottom.mdl",
	    disableshadows = 1,
	    solid = 6,
	    origin = Vector("59, 0, -6"),
	    angles = QAngle("90, 180, 0")
	})
	prop_dynamic15.SetOrigin(org)
	prop_dynamic15.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic16 = SpawnEntityFromTable("prop_dynamic", {
	    model = "models/props_viaduct_event/fog_plane03.mdl",
	    disableshadows = 1,
	    solid = 0,
	    modelscale = 2,
	    rendercolor = "103 103 103",
	    origin = Vector("-838, -2608, 1634"),
	    angles = QAngle("0, 0, -180")
	})
	prop_dynamic16.SetOrigin(org)
	prop_dynamic16.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic17 = SpawnEntityFromTable("prop_dynamic", {
	    model = "models/props_viaduct_event/fog_plane03.mdl",
	    disableshadows = 1,
	    solid = 0,
	    modelscale = 2,
	    rendercolor = "103 103 103",
	    origin = Vector("-854, 2690, 1634"),
	    angles = QAngle("0, 0, -180")
	})
	prop_dynamic17.SetOrigin(org)
	prop_dynamic17.SetAngles(ang[0], ang[1], ang[2])

	local func_forcefield_brush4 = SpawnEntityFromTable("func_forcefield", {
	    StartDisabled = 0,
	    TeamNum = 3,
	    mins = "-240 -608 -8",
	    maxs = "240 608 8",
	    origin = Vector("256, 16, 768")
	})
	func_forcefield_brush4.KeyValueFromInt("solid", 2)
	func_forcefield_brush4.KeyValueFromString("mins", "-240 -608 -8")
	func_forcefield_brush4.KeyValueFromString("maxs", "240 608 8")

	local trigger_teleport_brush5 = SpawnEntityFromTable("trigger_teleport", {
	    StartDisabled = 1,
	    filtername = "filter_redteam",
	    spawnflags = 1,
	    target = "warp_target",
	    targetname = "red_spawn_warp",
	    mins = "-232 -448 -16",
	    maxs = "232 448 3000",
	    origin = Vector("264, -96, 0")
	})
	trigger_teleport_brush5.KeyValueFromInt("solid", 2)
	trigger_teleport_brush5.KeyValueFromString("mins", "-232 -448 -16")
	trigger_teleport_brush5.KeyValueFromString("maxs", "232 448 3000")

	local func_forcefield_brush6 = SpawnEntityFromTable("func_forcefield", {
	    StartDisabled = 0,
	    TeamNum = 3,
	    mins = "-240 -192 -284",
	    maxs = "240 192 284",
	    origin = Vector("256, -400, 492")
	})
	func_forcefield_brush6.KeyValueFromInt("solid", 2)
	func_forcefield_brush6.KeyValueFromString("mins", "-240 -192 -284")
	func_forcefield_brush6.KeyValueFromString("maxs", "240 192 284")

	local func_forcefield_brush7 = SpawnEntityFromTable("func_forcefield", {
	    StartDisabled = 0,
	    TeamNum = 3,
	    mins = "-240 -136 -16",
	    maxs = "240 136 3000",
	    origin = Vector("256, 488, 224")
	})
	func_forcefield_brush7.KeyValueFromInt("solid", 2)
	func_forcefield_brush7.KeyValueFromString("mins", "-240 -136 -16")
	func_forcefield_brush7.KeyValueFromString("maxs", "240 136 3000")

	local info_teleport_destination18 = SpawnEntityFromTable("info_teleport_destination", {
	    targetname = "warp_target",
	    angles = QAngle("0, 270, 0"),
	    origin = Vector("322, -629, 40")
	})
	info_teleport_destination18.SetOrigin(org)
	info_teleport_destination18.SetAngles(ang[0], ang[1], ang[2])

	local info_teleport_destination19 = SpawnEntityFromTable("info_teleport_destination", {
	    targetname = "warp_target",
	    angles = QAngle("0, 90, 0"),
	    origin = Vector("258, 428, 40")
	})
	info_teleport_destination19.SetOrigin(org)
	info_teleport_destination19.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic20 = SpawnEntityFromTable("ambient_generic", {
	    health = 8,
	    message = "ambient\atmosphere\thunder1.wav",
	    radius = 20,
	    spawnflags = 49,
	    targetname = "atmos_1"
	})
	ambient_generic20.SetOrigin(org)
	ambient_generic20.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic21 = SpawnEntityFromTable("ambient_generic", {
	    health = 8,
	    message = "ambient\atmosphere\thunder2.wav",
	    radius = 20,
	    spawnflags = 49,
	    targetname = "atmos_2"
	})
	ambient_generic21.SetOrigin(org)
	ambient_generic21.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic22 = SpawnEntityFromTable("ambient_generic", {
	    health = 8,
	    message = "ambient\atmosphere\thunder3.wav",
	    radius = 20,
	    spawnflags = 49,
	    targetname = "atmos_3"
	})
	ambient_generic22.SetOrigin(org)
	ambient_generic22.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic23 = SpawnEntityFromTable("ambient_generic", {
	    health = 8,
	    message = "ambient\wind_gust2.wav",
	    radius = 20,
	    spawnflags = 49,
	    targetname = "atmos_4"
	})
	ambient_generic23.SetOrigin(org)
	ambient_generic23.SetAngles(ang[0], ang[1], ang[2])

	local logic_case24 = SpawnEntityFromTable("logic_case", {
	    targetname = "thunderpick",
	    "OnCase01#1": "atmos_1,PlaySound,,0,-1",
	    "OnCase02#2": "atmos_2,PlaySound,,0,-1",
	    "OnCase03#3": "atmos_3,PlaySound,,0,-1",
	    "OnCase04#4": "atmos_4,PlaySound,,0,-1"
	})
	logic_case24.SetOrigin(org)
	logic_case24.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer25 = SpawnEntityFromTable("logic_timer", {
	    userandomtime = 1,
	    lowerrandombound = 10,
	    upperrandombound = 25,
	    "OnTimer#1": "thunderpick,PickRandom,,0,-1"
	})
	logic_timer25.SetOrigin(org)
	logic_timer25.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay26 = SpawnEntityFromTable("logic_relay", {
	    targetname = "stage_start",
	    "OnTrigger#1": "powerup_timer,Enable,,0,-1",
	    "OnTrigger#2": "roundcounter,add,1,0,-1",
	    "OnTrigger#3": "realtimer,trigger,,0,-1",
	    "OnTrigger#4": "realtimer,trigger,,0.23,-1",
	    "OnTrigger#5": "navman,RecomputeBlockers,,2,-1",
	    "OnTrigger#6": "navman,RecomputeBlockers,,3,-1",
	    "OnTrigger#7": "navman,RecomputeBlockers,,4,-1"
	})
	logic_relay26.SetOrigin(org)
	logic_relay26.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay27 = SpawnEntityFromTable("logic_relay", {
	    targetname = "stage_start_finale",
	    "OnTrigger#1": "finale_snd,PlaySound,,0,-1"
	})
	logic_relay27.SetOrigin(org)
	logic_relay27.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay28 = SpawnEntityFromTable("logic_relay", {
	    targetname = "stage_clear",
	    "OnTrigger#1": "roundclear_snd,PlaySound,,-1",
	    "OnTrigger#2": "relay_enemycount_reset,Trigger,,-1",
	    "OnTrigger#3": "medicbonus_relay,Trigger,,-1",
	    "OnTrigger#4": "respawner,ForceTeamRespawn,2,0.7,-1",
	    "OnTrigger#5": "realtimer,trigger,,0.23,-1",
	    "OnTrigger#6": "powerup_timer,Disable,,0,-1",
	    "OnTrigger#7": "hologram_*,Disable,,0,-1",
	    "OnTrigger#8": "plate,skin,0,0,-1",
	    "OnTrigger#9": "roundscleared,Add,1,0,0"
	})
	logic_relay28.SetOrigin(org)
	logic_relay28.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay29 = SpawnEntityFromTable("logic_relay", {
	    targetname = "stage_clear_finale",
	    "OnTrigger#1": "roundclear_snd,PlaySound,,-1",
	    "OnTrigger#2": "relay_enemycount_reset,Trigger,,-1",
	    "OnTrigger#3": "medicbonus_relay,Trigger,,-1",
	    "OnTrigger#4": "respawner,ForceTeamRespawn,2,0.7,-1",
	    "OnTrigger#5": "realtimer,trigger,,0.23,-1",
	    "OnTrigger#6": "powerup_timer,Disable,,0,-1",
	    "OnTrigger#7": "hologram_*,Disable,,0,-1",
	    "OnTrigger#8": "plate,skin,0,0,-1",
	    "OnTrigger#9": "roundscleared,Add,1,0,0"
	})
	logic_relay29.SetOrigin(org)
	logic_relay29.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay30 = SpawnEntityFromTable("logic_relay", {
	    targetname = "medicbonus_relay"
	})
	logic_relay30.SetOrigin(org)
	logic_relay30.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic31 = SpawnEntityFromTable("prop_dynamic", {
	    model = "models/props_viaduct_event/underworld_sky01.mdl",
	    targetname = "bossfog_dome",
	    disableshadows = 1,
	    startdisabled = 1,
	    solid = 0,
	    scale = 1,
	    angles = QAngle("0, 90, 0"),
	    origin = Vector("0, 0, 0")
	})
	prop_dynamic31.SetOrigin(org)
	prop_dynamic31.SetAngles(ang[0], ang[1], ang[2])

	local env_fog_controller32 = SpawnEntityFromTable("env_fog_controller", {
	    targetname = "fog_bossround",
	    fogcolor = "129 130 180",
	    fogcolor2 = "131 132 177",
	    fogenable = 1,
	    fogstart = -1000.0,
	    fogend = 9000
	})
	env_fog_controller32.SetOrigin(org)
	env_fog_controller32.SetAngles(ang[0], ang[1], ang[2])

	local env_fade33 = SpawnEntityFromTable("env_fade", {
	    targetname = "bossfog_fadein",
	    duration = 5,
	    rendercolor = "34 38 33",
	    renderamt = 255
	})
	env_fade33.SetOrigin(org)
	env_fade33.SetAngles(ang[0], ang[1], ang[2])

	local env_fade34 = SpawnEntityFromTable("env_fade", {
	    targetname = "bossfog_fadeout",
	    duration = 5,
	    rendercolor = "34 38 33",
	    spawnflags = 1,
	    renderamt = 255
	})
	env_fade34.SetOrigin(org)
	env_fade34.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay35 = SpawnEntityFromTable("logic_relay", {
	    targetname = "bossstage_start",
	    "OnTrigger#1": "door_red_large_win_*,Close,,0,-1",
	    "OnTrigger#2": "red_spawn_warp,Enable,,0,-1",
	    "OnTrigger#3": "roundcounter,add,1,0,-1",
	    "OnTrigger#4": "realtimer,trigger,,0,-1",
	    "OnTrigger#5": "realtimer,trigger,,0.23,-1",
	    "OnTrigger#6": "bossfog_fadein,Fade,0,-1",
	    "OnTrigger#7": "bossfog_fadeout,Fade,,5,-1",
	    "OnTrigger#8": "bossfog_dome,Enable,,5,-1",
	    "OnTrigger#9": "fog_controller,SetStartDist,-15000,5,-1",
	    "OnTrigger#10": "fog_controller,SetEndDist,6000,5,-1",
	    "OnTrigger#11": "fog_controller,SetColor,34 38 33,5,-1",
	    "OnTrigger#12": "fog_controller,SetColorSecondary,34 38 33,5,-1",
	    "OnTrigger#13": "navman,RecomputeBlockers,,2,-1",
	    "OnTrigger#14": "navman,RecomputeBlockers,,3,-1",
	    "OnTrigger#15": "navman,RecomputeBlockers,,4,-1",
	    "OnTrigger#16": "tf_gamerulesPlayVORedshadows/announcer_bossround.mp37-1",
	    "OnTrigger#17": "tankround_snd,PlaySound,,14,-1",
	    "OnTrigger#18": "player,SpeakResponseConcept,TLK_MVM_TANK_CALLOUT,17.5,-1",
	    "OnTrigger#19": "player,SpeakResponseConcept,TLK_MVM_ATTACK_THE_TANK ,35,-1"
	})
	logic_relay35.SetOrigin(org)
	logic_relay35.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay36 = SpawnEntityFromTable("logic_relay", {
	    targetname = "bossstage_start_tread",
	    "OnTrigger#1": "door_red_large_win_*,Close,,0,-1",
	    "OnTrigger#2": "red_spawn_warp,Enable,,0,-1",
	    "OnTrigger#3": "roundcounter,add,1,0,-1",
	    "OnTrigger#4": "realtimer,trigger,,0,-1",
	    "OnTrigger#5": "realtimer,trigger,,0.23,-1",
	    "OnTrigger#6": "bossfog_fadein,Fade,0,-1",
	    "OnTrigger#7": "bossfog_fadeout,Fade,,5,-1",
	    "OnTrigger#8": "bossfog_dome,Enable,,5,-1",
	    "OnTrigger#9": "fog_controller,SetStartDist,-15000,5,-1",
	    "OnTrigger#10": "fog_controller,SetEndDist,6000,5,-1",
	    "OnTrigger#11": "fog_controller,SetColor,34 38 33,5,-1",
	    "OnTrigger#12": "fog_controller,SetColorSecondary,34 38 33,5,-1",
	    "OnTrigger#13": "navman,RecomputeBlockers,,2,-1",
	    "OnTrigger#14": "navman,RecomputeBlockers,,3,-1",
	    "OnTrigger#15": "navman,RecomputeBlockers,,4,-1",
	    "OnTrigger#16": "tf_gamerulesPlayVORedshadows/announcer_chuckle.mp37-1"
	})
	logic_relay36.SetOrigin(org)
	logic_relay36.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay37 = SpawnEntityFromTable("logic_relay", {
	    targetname = "bossstage_clear",
	    "OnTrigger#1": "tf_gamerulesPlayVORed#*shadows/bossround_end.mp30-1",
	    "OnTrigger#2": "relay_enemycount_reset,Trigger,,-1",
	    "OnTrigger#3": "medicbonus_relay,Trigger,,-1",
	    "OnTrigger#4": "respawner,ForceTeamRespawn,2,0.7,-1",
	    "OnTrigger#5": "tankround_snd,volume,0,0,-1",
	    "OnTrigger#6": "bossfight_snd,volume,0,0,-1",
	    "OnTrigger#7": "bossround_music,volume,0,0,-1",
	    "OnTrigger#8": "realtimer,trigger,,0.23,-1",
	    "OnTrigger#9": "powerup_timer,Disable,,0,-1",
	    "OnTrigger#10": "hologram_*,Disable,,0,-1",
	    "OnTrigger#11": "plate,skin,0,0,-1",
	    "OnTrigger#12": "red_spawn_warp,Disable,,0,-1",
	    "OnTrigger#13": "door_red_large_win_*,Open,,0,-1",
	    "OnTrigger#14": "bossfog_fadein,Fade,0,-1",
	    "OnTrigger#15": "bossfog_fadeout,Fade,,5,-1",
	    "OnTrigger#16": "bossfog_dome,Disable,,5,-1",
	    "OnTrigger#17": "roundscleared,Add,1,0,0",
	    "OnTrigger#18": "fog_controller,SetStartDist,600,5,-1",
	    "OnTrigger#19": "fog_controller,SetEndDist,4000,5,-1",
	    "OnTrigger#20": "ee_beerflag,Enable,,5,1",
	    "OnTrigger#21": "fog_controller,SetColor,0 0 0,5,-1",
	    "OnTrigger#22": "fog_controller,SetColorSecondary,255 255 255,5,-1"
	})
	logic_relay37.SetOrigin(org)
	logic_relay37.SetAngles(ang[0], ang[1], ang[2])

	local logic_branch38 = SpawnEntityFromTable("logic_branch", {
	    targetname = "tgun_check",
	    InitialValue = 0,
	    "OnFalse#1": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnFalse#2": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnFalse#3": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_ULTRARARE,0.6,-1",
	    "OnFalse#4": "!activatorRunScriptCodeClientPrint(self, 4, `You've received an Ãœberweapon: The Thunder Gun!`)0-1",
	    "OnFalse#5": "tgun_check,Toggle,,-1",
	    "OnTrue#6": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnTrue#7": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnTrue#8": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnTrue#9": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Double Barrel!`)0-1"
	})
	logic_branch38.SetOrigin(org)
	logic_branch38.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic39 = SpawnEntityFromTable("prop_dynamic", {
	    model = "models/props_forest/wood_stairs96.mdl",
	    disableshadows = 1,
	    solid = 6,
	    angles = QAngle("0, 180, 0"),
	    origin = Vector("928, 1544, 96")
	})
	prop_dynamic39.SetOrigin(org)
	prop_dynamic39.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic40 = SpawnEntityFromTable("prop_dynamic", {
	    model = "models/props_forest/wood_stairs96.mdl",
	    disableshadows = 1,
	    solid = 6,
	    angles = QAngle("0, 180, 0"),
	    origin = Vector("-571, 1924, 87")
	})
	prop_dynamic40.SetOrigin(org)
	prop_dynamic40.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic41 = SpawnEntityFromTable("prop_dynamic", {
	    model = "models/props_forest/wood_stairs96.mdl",
	    disableshadows = 1,
	    solid = 6,
	    angles = QAngle("0, 0, 0"),
	    origin = Vector("-568, 1914, 87")
	})
	prop_dynamic41.SetOrigin(org)
	prop_dynamic41.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic42 = SpawnEntityFromTable("prop_dynamic", {
	    model = "models/props_forest/wood_stairs96.mdl",
	    disableshadows = 1,
	    solid = 6,
	    angles = QAngle("0, 12, 0"),
	    origin = Vector("-1483, -1834, 60")
	})
	prop_dynamic42.SetOrigin(org)
	prop_dynamic42.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic43 = SpawnEntityFromTable("prop_dynamic", {
	    model = "models/props_forest/wood_stairs96.mdl",
	    disableshadows = 1,
	    solid = 6,
	    angles = QAngle("0, 192, 0"),
	    origin = Vector("-1492, -1827, 60")
	})
	prop_dynamic43.SetOrigin(org)
	prop_dynamic43.SetAngles(ang[0], ang[1], ang[2])

}
::Plate_Big <- function(org, ang)
{
	local func_rotating_brush8 = SpawnEntityFromTable("func_rotating", {
	    spawnflags = 65,
	    maxspeed = 48,
	    solidbsp = 0,
	    rendermode = 10,
	    targetname = "powerup_spinner",
	    origin = Vector("-540, -0, -164"),
	    mins = "-1 -1 -1",
	    maxs = "1 1 1"
	})
	func_rotating_brush8.KeyValueFromInt("solid", 2)
	func_rotating_brush8.KeyValueFromString("mins", "-1 -1 -1")
	func_rotating_brush8.KeyValueFromString("maxs", "1 1 1")

	local prop_dynamic44 = SpawnEntityFromTable("prop_dynamic", {
	    model = "models/props_gameplay/cap_point_base.mdl",
	    targetname = "plate",
	    origin = Vector("-540, -0, -182"),
	    disableshadows = 1,
	    solid = 6
	})
	prop_dynamic44.SetOrigin(org)
	prop_dynamic44.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic45 = SpawnEntityFromTable("prop_dynamic", {
	    model = "models/props_trainyard/cart_bomb_separate.mdl",
	    disableshadows = 1,
	    solid = 0,
	    targetname = "hologram_nuke",
	    rendermode = 1,
	    renderfx = 15,
	    startdisabled = 1,
	    rendercolor = "255 0 0",
	    parentname = "powerup_spinner",
	    angles = QAngle("0, 90, 0"),
	    origin = Vector("-540, -0, -128")
	})
	prop_dynamic45.SetOrigin(org)
	prop_dynamic45.SetAngles(ang[0], ang[1], ang[2])

	local env_shake46 = SpawnEntityFromTable("env_shake", {
	    amplitude = 16,
	    duration = 3,
	    frequency = 40,
	    radius = 48,
	    spawnflags = 1,
	    targetname = "nuke_shake"
	})
	env_shake46.SetOrigin(org)
	env_shake46.SetAngles(ang[0], ang[1], ang[2])

	local env_fade47 = SpawnEntityFromTable("env_fade", {
	    targetname = "nuke_fade",
	    duration = 1.3,
	    spawnflags = 1,
	    rendercolor = "255 255 255"
	})
	env_fade47.SetOrigin(org)
	env_fade47.SetAngles(ang[0], ang[1], ang[2])

	local trigger_add_tf_player_condition_brush9 = SpawnEntityFromTable("trigger_add_tf_player_condition", {
	    targetname = "hologram_nuke",
	    duration = 1,
	    filtername = "filter_redteam",
	    spawnflags = 1,
	    StartDisabled = 1,
	    condition = 23,
	    origin = Vector("-540, 2, -128"),
	    mins = "-26 -26 -26",
	    maxs = "26 26 26",
	    "OnStartTouchAll#1": "hologram_nuke,Disable,,-1",
	    "OnStartTouchAll#2": "hologram_nuke_snd,PlaySound,,-1",
	    "OnStartTouchAll#3": "nuke_shake,StartShake,,-1",
	    "OnStartTouchAll#4": "nuke_fade,Fade,,-1",
	    "OnStartTouchAll#5": "hologram_nuke_hurt,Enable,,0,-1",
	    "OnStartTouchAll#6": "hologram_nuke_hurt,Disable,,0.7,-1",
	    "OnStartTouchAll#7": "!activatorRunScriptCodeEmitSoundEx({sound_name = `shadows/powerup_nuke_01.mp3`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })1-1",
	    "OnStartTouchAll#8": "powerup_timer,Enable,,-1",
	    "OnStartTouchAll#9": "plate,skin,0,-1",
	    "OnStartTouchAll#10": "!activatorRunScriptCodeself.AddCurrency(400)3-1"
	})
	trigger_add_tf_player_condition_brush9.KeyValueFromInt("solid", 2)
	trigger_add_tf_player_condition_brush9.KeyValueFromString("mins", "-26 -26 -26")
	trigger_add_tf_player_condition_brush9.KeyValueFromString("maxs", "26 26 26")

	local ambient_generic48 = SpawnEntityFromTable("ambient_generic", {
	    health = 10,
	    message = ")misc/doomsday_missile_explosion.wav",
	    radius = 20,
	    pitch = 100,
	    spawnflags = 49,
	    targetname = "hologram_nuke_snd"
	})
	ambient_generic48.SetOrigin(org)
	ambient_generic48.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic49 = SpawnEntityFromTable("prop_dynamic", {
	    model = "models\props_mvm\mvm_human_skull.mdl",
	    disableshadows = 1,
	    skin = 1,
	    solid = 0,
	    modelscale = 3,
	    targetname = "hologram_instakill",
	    rendermode = 1,
	    renderfx = 15,
	    startdisabled = 1,
	    parentname = "powerup_spinner",
	    rendercolor = "255 0 0",
	    angles = QAngle("0, 0, 0"),
	    origin = Vector("-540, -0, -134")
	})
	prop_dynamic49.SetOrigin(org)
	prop_dynamic49.SetAngles(ang[0], ang[1], ang[2])

	local trigger_add_tf_player_condition_brush10 = SpawnEntityFromTable("trigger_add_tf_player_condition", {
	    targetname = "hologram_instakill",
	    duration = 1,
	    filtername = "filter_redteam",
	    spawnflags = 1,
	    StartDisabled = 1,
	    condition = 23,
	    origin = Vector("-540, 2, -128"),
	    mins = "-26 -26 -26",
	    maxs = "26 26 26",
	    "OnStartTouchAll#1": "hologram_instakill,Disable,,-1",
	    "OnStartTouchAll#2": "powerup_timer,Enable,,-1",
	    "OnStartTouchAll#3": "plate,skin,0,-1",
	    "OnStartTouchAll#4": "!activatorRunScriptCodeClientPrint(self, 4, `Instakill!`)0-1",
	    "OnStartTouchAll#5": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/powerup_pickup_crits.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })0-1",
	    "OnStartTouchAll#6": "!activatorRunScriptCodeEmitSoundEx({sound_name = `shadows/powerup_instagib.mp3`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })1-1",
	    "OnStartTouchAll#7": "!activatorRunScriptCodeself.AddCustomAttribute(`dmg current health`, 1, -1)-1",
	    "OnStartTouchAll#8": "!activatorRunScriptCodeself.AddCond(56)-1",
	    "OnStartTouchAll#9": "!activatorRunScriptCodeself.RemoveCustomAttribute(`dmg current health`)30-1",
	    "OnStartTouchAll#10": "!activatorRunScriptCodeself.RemoveCond(56)30-1"
	})
	trigger_add_tf_player_condition_brush10.KeyValueFromInt("solid", 2)
	trigger_add_tf_player_condition_brush10.KeyValueFromString("mins", "-26 -26 -26")
	trigger_add_tf_player_condition_brush10.KeyValueFromString("maxs", "26 26 26")

	local prop_dynamic50 = SpawnEntityFromTable("prop_dynamic", {
	    model = "models\props_gameplay\resupply_locker.mdl",
	    disableshadows = 1,
	    skin = 1,
	    solid = 0,
	    modelscale = 1,
	    targetname = "hologram_maxammo",
	    rendermode = 1,
	    renderfx = 15,
	    startdisabled = 1,
	    parentname = "powerup_spinner",
	    rendercolor = "255 0 0",
	    angles = QAngle("0, 0, 0"),
	    origin = Vector("-540, -0, -134")
	})
	prop_dynamic50.SetOrigin(org)
	prop_dynamic50.SetAngles(ang[0], ang[1], ang[2])

	local trigger_add_tf_player_condition_brush11 = SpawnEntityFromTable("trigger_add_tf_player_condition", {
	    targetname = "hologram_maxammo",
	    duration = 1,
	    filtername = "filter_redteam",
	    spawnflags = 1,
	    StartDisabled = 1,
	    condition = 23,
	    origin = Vector("-540, 2, -128"),
	    mins = "-26 -26 -26",
	    maxs = "26 26 26",
	    "OnStartTouchAll#1": "hologram_maxammo,Disable,,-1",
	    "OnStartTouchAll#2": "powerup_timer,Enable,,-1",
	    "OnStartTouchAll#3": "plate,skin,0,-1",
	    "OnStartTouchAll#4": "!activatorRunScriptCodeClientPrint(self, 4, `Max Ammo!`)0-1",
	    "OnStartTouchAll#5": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/powerup_pickup_agility.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })0-1",
	    "OnStartTouchAll#6": "!activatorRunScriptCodeEmitSoundEx({sound_name = `shadows/powerup_resupply_01.mp3`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })1-1",
	    "OnStartTouchAll#7": "!activator,$RefillAmmo,,-1"
	})
	trigger_add_tf_player_condition_brush11.KeyValueFromInt("solid", 2)
	trigger_add_tf_player_condition_brush11.KeyValueFromString("mins", "-26 -26 -26")
	trigger_add_tf_player_condition_brush11.KeyValueFromString("maxs", "26 26 26")

	local prop_dynamic51 = SpawnEntityFromTable("prop_dynamic", {
	    model = "models\items\currencypack_large.mdl",
	    disableshadows = 1,
	    skin = 1,
	    solid = 0,
	    modelscale = 1,
	    targetname = "hologram_money",
	    rendermode = 1,
	    renderfx = 15,
	    startdisabled = 1,
	    parentname = "powerup_spinner",
	    rendercolor = "255 0 0",
	    angles = QAngle("0, 0, 0"),
	    origin = Vector("-540, -0, -134")
	})
	prop_dynamic51.SetOrigin(org)
	prop_dynamic51.SetAngles(ang[0], ang[1], ang[2])

	local trigger_add_tf_player_condition_brush12 = SpawnEntityFromTable("trigger_add_tf_player_condition", {
	    targetname = "hologram_money",
	    duration = 1,
	    filtername = "filter_redteam",
	    spawnflags = 1,
	    StartDisabled = 1,
	    condition = 23,
	    origin = Vector("-540, 2, -128"),
	    mins = "-26 -26 -26",
	    maxs = "26 26 26",
	    "OnStartTouchAll#1": "hologram_money,Disable,,-1",
	    "OnStartTouchAll#2": "powerup_timer,Enable,,-1",
	    "OnStartTouchAll#3": "plate,skin,0,-1",
	    "OnStartTouchAll#4": "!activatorRunScriptCodeClientPrint(self, 4, `Bonus Points!`)0-1",
	    "OnStartTouchAll#5": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/powerup_pickup_agility.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })0-1",
	    "OnStartTouchAll#6": "!activatorRunScriptCodeEmitSoundEx({sound_name = `shadows/powerup_money_01.mp3`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })1-1",
	    "OnStartTouchAll#7": "!activatorRunScriptCodeself.AddCurrency(2000)-1"
	})
	trigger_add_tf_player_condition_brush12.KeyValueFromInt("solid", 2)
	trigger_add_tf_player_condition_brush12.KeyValueFromString("mins", "-26 -26 -26")
	trigger_add_tf_player_condition_brush12.KeyValueFromString("maxs", "26 26 26")

	local ambient_generic52 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "powerup_snd",
	    spawnflags = 48,
	    health = 10,
	    radius = 8000,
	    pitch = 80,
	    message = ")weapons\buffed_on.wav"
	})
	ambient_generic52.SetOrigin(org)
	ambient_generic52.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer53 = SpawnEntityFromTable("logic_timer", {
	    targetname = "powerup_timer",
	    StartDisabled = 1,
	    UseRandomTime = 1,
	    LowerRandomBound = 60,
	    UpperRandomBound = 85,
	    "OnTimer#1": "powerup_case,PickRandomShuffle,,-1",
	    "OnTimer#2": "powerup_timer,Disable,,-1",
	    "OnTimer#3": "powerup_snd,PlaySound,,-1",
	    "OnTimer#4": "plate,Skin,1,-1"
	})
	logic_timer53.SetOrigin(org)
	logic_timer53.SetAngles(ang[0], ang[1], ang[2])

	local logic_case54 = SpawnEntityFromTable("logic_case", {
	    targetname = "powerup_case",
	    "OnCase01#1": "hologram_instakill,Enable,,0,-1",
	    "OnCase02#2": "hologram_money,Enable,,0,-1",
	    "OnCase03#3": "hologram_maxammo,Enable,,0,-1",
	    "OnCase05#4": "hologram_nuke,Enable,,0,-1"
	})
	logic_case54.SetOrigin(org)
	logic_case54.SetAngles(ang[0], ang[1], ang[2])

}
::BuildingBlocks <- function(org, ang)
{
	local func_nobuild_brush13 = SpawnEntityFromTable("func_nobuild", {
	    AllowDispenser = 0,
	    AllowSentry = 0,
	    AllowTeleporters = 0,
	    StartDisabled = 0,
	    Teamnum = 2,
	    mins = "-42 -160 -99",
	    maxs = "42 160 99",
	    origin = Vector("698, 488, 63")
	})
	func_nobuild_brush13.KeyValueFromInt("solid", 2)
	func_nobuild_brush13.KeyValueFromString("mins", "-42 -160 -99")
	func_nobuild_brush13.KeyValueFromString("maxs", "42 160 99")

	local func_nobuild_brush14 = SpawnEntityFromTable("func_nobuild", {
	    AllowDispenser = 0,
	    AllowSentry = 0,
	    AllowTeleporters = 0,
	    StartDisabled = 0,
	    Teamnum = 2,
	    mins = "-70 -58 -99",
	    maxs = "70 58 99",
	    origin = Vector("914, 98, 63")
	})
	func_nobuild_brush14.KeyValueFromInt("solid", 2)
	func_nobuild_brush14.KeyValueFromString("mins", "-70 -58 -99")
	func_nobuild_brush14.KeyValueFromString("maxs", "70 58 99")

	local func_nobuild_brush15 = SpawnEntityFromTable("func_nobuild", {
	    AllowDispenser = 0,
	    AllowSentry = 0,
	    AllowTeleporters = 0,
	    StartDisabled = 0,
	    Teamnum = 2,
	    mins = "-62 -214 -99",
	    maxs = "62 214 99",
	    origin = Vector("1046, -58, 63")
	})
	func_nobuild_brush15.KeyValueFromInt("solid", 2)
	func_nobuild_brush15.KeyValueFromString("mins", "-62 -214 -99")
	func_nobuild_brush15.KeyValueFromString("maxs", "62 214 99")

	local func_nobuild_brush16 = SpawnEntityFromTable("func_nobuild", {
	    AllowDispenser = 0,
	    AllowSentry = 0,
	    AllowTeleporters = 0,
	    StartDisabled = 0,
	    Teamnum = 2,
	    mins = "-20 -48 -99",
	    maxs = "20 48 99",
	    origin = Vector("964, -224, 63")
	})
	func_nobuild_brush16.KeyValueFromInt("solid", 2)
	func_nobuild_brush16.KeyValueFromString("mins", "-20 -48 -99")
	func_nobuild_brush16.KeyValueFromString("maxs", "20 48 99")

	local func_nobuild_brush17 = SpawnEntityFromTable("func_nobuild", {
	    AllowDispenser = 0,
	    AllowSentry = 0,
	    AllowTeleporters = 0,
	    StartDisabled = 0,
	    Teamnum = 2,
	    mins = "-110 -157 -99",
	    maxs = "110 157 99",
	    origin = Vector("969, -928, 63")
	})
	func_nobuild_brush17.KeyValueFromInt("solid", 2)
	func_nobuild_brush17.KeyValueFromString("mins", "-110 -157 -99")
	func_nobuild_brush17.KeyValueFromString("maxs", "110 157 99")

	local func_nobuild_brush18 = SpawnEntityFromTable("func_nobuild", {
	    AllowDispenser = 0,
	    AllowSentry = 0,
	    AllowTeleporters = 0,
	    StartDisabled = 0,
	    Teamnum = 2,
	    mins = "-157 -38 -99",
	    maxs = "157 38 99",
	    origin = Vector("-465, -560, 92")
	})
	func_nobuild_brush18.KeyValueFromInt("solid", 2)
	func_nobuild_brush18.KeyValueFromString("mins", "-157 -38 -99")
	func_nobuild_brush18.KeyValueFromString("maxs", "157 38 99")

	local func_nobuild_brush19 = SpawnEntityFromTable("func_nobuild", {
	    AllowDispenser = 0,
	    AllowSentry = 0,
	    AllowTeleporters = 0,
	    StartDisabled = 0,
	    Teamnum = 2,
	    mins = "-59 -59 -61",
	    maxs = "59 59 61",
	    origin = Vector("-1525, -1141, 59")
	})
	func_nobuild_brush19.KeyValueFromInt("solid", 2)
	func_nobuild_brush19.KeyValueFromString("mins", "-59 -59 -61")
	func_nobuild_brush19.KeyValueFromString("maxs", "59 59 61")

	local func_nav_avoid_brush20 = SpawnEntityFromTable("func_nav_avoid", {
	    tags = "bigguyalert",
	    mins = "-106 -288 -26",
	    maxs = "106 288 26",
	    origin = Vector("-738, -1622, 18")
	})
	func_nav_avoid_brush20.KeyValueFromInt("solid", 2)
	func_nav_avoid_brush20.KeyValueFromString("mins", "-106 -288 -26")
	func_nav_avoid_brush20.KeyValueFromString("maxs", "106 288 26")

	local func_nav_avoid_brush21 = SpawnEntityFromTable("func_nav_avoid", {
	    tags = "bigguyalert",
	    mins = "-84 -68 -48",
	    maxs = "84 68 48",
	    origin = Vector("-556, -1916, 50")
	})
	func_nav_avoid_brush21.KeyValueFromInt("solid", 2)
	func_nav_avoid_brush21.KeyValueFromString("mins", "-84 -68 -48")
	func_nav_avoid_brush21.KeyValueFromString("maxs", "84 68 48")

	local func_nav_avoid_brush22 = SpawnEntityFromTable("func_nav_avoid", {
	    tags = "bigguyalert",
	    mins = "-384 -68 -48",
	    maxs = "384 68 48",
	    origin = Vector("-912, -1788, 45")
	})
	func_nav_avoid_brush22.KeyValueFromInt("solid", 2)
	func_nav_avoid_brush22.KeyValueFromString("mins", "-384 -68 -48")
	func_nav_avoid_brush22.KeyValueFromString("maxs", "384 68 48")

	local func_nav_avoid_brush23 = SpawnEntityFromTable("func_nav_avoid", {
	    tags = "bigguyalert",
	    mins = "-116 -24 -72",
	    maxs = "166 24 72",
	    origin = Vector("-220, 1842, 144")
	})
	func_nav_avoid_brush23.KeyValueFromInt("solid", 2)
	func_nav_avoid_brush23.KeyValueFromString("mins", "-116 -24 -72")
	func_nav_avoid_brush23.KeyValueFromString("maxs", "166 24 72")

	local func_nav_avoid_brush24 = SpawnEntityFromTable("func_nav_avoid", {
	    tags = "bigguyalert",
	    mins = "-116 -32 -72",
	    maxs = "166 32 72",
	    origin = Vector("-220, 1192, 144")
	})
	func_nav_avoid_brush24.KeyValueFromInt("solid", 2)
	func_nav_avoid_brush24.KeyValueFromString("mins", "-116 -32 -72")
	func_nav_avoid_brush24.KeyValueFromString("maxs", "166 32 72")

	local func_forcefield_brush25 = SpawnEntityFromTable("func_forcefield", {
	    StartDisabled = 0,
	    TeamNum = 3,
	    mins = "-64 -1472 -3168",
	    maxs = "64 1472 3168",
	    origin = Vector("-5184, 0, 2912")
	})
	func_forcefield_brush25.KeyValueFromInt("solid", 2)
	func_forcefield_brush25.KeyValueFromString("mins", "-64 -1472 -3168")
	func_forcefield_brush25.KeyValueFromString("maxs", "64 1472 3168")

	local func_forcefield_brush26 = SpawnEntityFromTable("func_forcefield", {
	    StartDisabled = 0,
	    TeamNum = 3,
	    mins = "-4575 -4384 -32",
	    maxs = "4575 4384 32",
	    origin = Vector("-671, 96, 1344")
	})
	func_forcefield_brush26.KeyValueFromInt("solid", 2)
	func_forcefield_brush26.KeyValueFromString("mins", "-4575 -4384 -32")
	func_forcefield_brush26.KeyValueFromString("maxs", "4575 4384 32")

	local func_forcefield_brush27 = SpawnEntityFromTable("func_forcefield", {
	    StartDisabled = 0,
	    TeamNum = 3,
	    mins = "-194 -209 -514",
	    maxs = "194 209 514",
	    origin = Vector("-800, -702, 798")
	})
	func_forcefield_brush27.KeyValueFromInt("solid", 2)
	func_forcefield_brush27.KeyValueFromString("mins", "-194 -209 -514")
	func_forcefield_brush27.KeyValueFromString("maxs", "194 209 514")

	local func_forcefield_brush28 = SpawnEntityFromTable("func_forcefield", {
	    StartDisabled = 0,
	    TeamNum = 3,
	    mins = "-96 -201.5 -480",
	    maxs = "96 201.5 480",
	    origin = Vector("-1088, -694, 832")
	})
	func_forcefield_brush28.KeyValueFromInt("solid", 2)
	func_forcefield_brush28.KeyValueFromString("mins", "-96 -201.5 -480")
	func_forcefield_brush28.KeyValueFromString("maxs", "96 201.5 480")

	local func_forcefield_brush29 = SpawnEntityFromTable("func_forcefield", {
	    StartDisabled = 0,
	    TeamNum = 3,
	    mins = "-192 -112 -560",
	    maxs = "192 112 560",
	    origin = Vector("192, -720, 752")
	})
	func_forcefield_brush29.KeyValueFromInt("solid", 2)
	func_forcefield_brush29.KeyValueFromString("mins", "-192 -112 -560")
	func_forcefield_brush29.KeyValueFromString("maxs", "192 112 560")

	local func_forcefield_brush30 = SpawnEntityFromTable("func_forcefield", {
	    StartDisabled = 0,
	    TeamNum = 3,
	    mins = "-736 -384 -8",
	    maxs = "736 384 8",
	    origin = Vector("256, 1536, 392")
	})
	func_forcefield_brush30.KeyValueFromInt("solid", 2)
	func_forcefield_brush30.KeyValueFromString("mins", "-736 -384 -8")
	func_forcefield_brush30.KeyValueFromString("maxs", "736 384 8")

	local func_forcefield_brush31 = SpawnEntityFromTable("func_forcefield", {
	    StartDisabled = 0,
	    TeamNum = 3,
	    mins = "-12 -132 -72",
	    maxs = "12 132 72",
	    origin = Vector("-1036, 692, 72")
	})
	func_forcefield_brush31.KeyValueFromInt("solid", 2)
	func_forcefield_brush31.KeyValueFromString("mins", "-12 -132 -72")
	func_forcefield_brush31.KeyValueFromString("maxs", "12 132 72")

	local func_forcefield_brush32 = SpawnEntityFromTable("func_forcefield", {
	    StartDisabled = 0,
	    TeamNum = 3,
	    mins = "-80 -4 -72",
	    maxs = "80 4 72",
	    origin = Vector("-960, 556, 72")
	})
	func_forcefield_brush32.KeyValueFromInt("solid", 2)
	func_forcefield_brush32.KeyValueFromString("mins", "-80 -4 -72")
	func_forcefield_brush32.KeyValueFromString("maxs", "80 4 72")

	local func_forcefield_brush33 = SpawnEntityFromTable("func_forcefield", {
	    StartDisabled = 0,
	    TeamNum = 3,
	    mins = "-48 -4 -48",
	    maxs = "48 4 48",
	    origin = Vector("-824, 556, 48")
	})
	func_forcefield_brush33.KeyValueFromInt("solid", 2)
	func_forcefield_brush33.KeyValueFromString("mins", "-48 -4 -48")
	func_forcefield_brush33.KeyValueFromString("maxs", "48 4 48")

	local func_forcefield_brush34 = SpawnEntityFromTable("func_forcefield", {
	    StartDisabled = 0,
	    TeamNum = 3,
	    mins = "-4 -88 -48",
	    maxs = "4 88 48",
	    origin = Vector("-780, 648, 48")
	})
	func_forcefield_brush34.KeyValueFromInt("solid", 2)
	func_forcefield_brush34.KeyValueFromString("mins", "-4 -88 -48")
	func_forcefield_brush34.KeyValueFromString("maxs", "4 88 48")

	local func_forcefield_brush35 = SpawnEntityFromTable("func_forcefield", {
	    StartDisabled = 0,
	    TeamNum = 3,
	    mins = "-20 -12 -48",
	    maxs = "20 12 48",
	    origin = Vector("-796, 748, 48")
	})
	func_forcefield_brush35.KeyValueFromInt("solid", 2)
	func_forcefield_brush35.KeyValueFromString("mins", "-20 -12 -48")
	func_forcefield_brush35.KeyValueFromString("maxs", "20 12 48")

	local func_forcefield_brush36 = SpawnEntityFromTable("func_forcefield", {
	    StartDisabled = 0,
	    TeamNum = 3,
	    mins = "-40 -12 -58",
	    maxs = "40 12 58",
	    origin = Vector("-856, 748, 58")
	})
	func_forcefield_brush36.KeyValueFromInt("solid", 2)
	func_forcefield_brush36.KeyValueFromString("mins", "-40 -12 -58")
	func_forcefield_brush36.KeyValueFromString("maxs", "40 12 58")

	local func_forcefield_brush37 = SpawnEntityFromTable("func_forcefield", {
	    StartDisabled = 0,
	    TeamNum = 3,
	    mins = "-9 -192 -96",
	    maxs = "9 192 96",
	    origin = Vector("7, 0, 96")
	})
	func_forcefield_brush37.KeyValueFromInt("solid", 2)
	func_forcefield_brush37.KeyValueFromString("mins", "-9 -192 -96")
	func_forcefield_brush37.KeyValueFromString("maxs", "9 192 96")

	local func_forcefield_brush38 = SpawnEntityFromTable("func_forcefield", {
	    StartDisabled = 0,
	    TeamNum = 3,
	    mins = "-194 -608 -414",
	    maxs = "194 608 414",
	    origin = Vector("128, -1856, 900")
	})
	func_forcefield_brush38.KeyValueFromInt("solid", 2)
	func_forcefield_brush38.KeyValueFromString("mins", "-194 -608 -414")
	func_forcefield_brush38.KeyValueFromString("maxs", "194 608 414")

}
::Pushblocks <- function(org, ang)
{
	local trigger_push_brush39 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 180 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("-1, 0, 194"),
	    mins = "-1 -192 -2",
	    maxs = "1 192 2"
	})
	trigger_push_brush39.KeyValueFromInt("solid", 2)
	trigger_push_brush39.KeyValueFromString("mins", "-1 -192 -2")
	trigger_push_brush39.KeyValueFromString("maxs", "1 192 2")

	local trigger_push_brush40 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 180 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("994, 992, 160"),
	    mins = "-32 -110 -11",
	    maxs = "32 110 11"
	})
	trigger_push_brush40.KeyValueFromInt("solid", 2)
	trigger_push_brush40.KeyValueFromString("mins", "-32 -110 -11")
	trigger_push_brush40.KeyValueFromString("maxs", "32 110 11")

	local trigger_push_brush41 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 0 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("696, 472, 158"),
	    mins = "-32 -72 -11",
	    maxs = "32 72 11"
	})
	trigger_push_brush41.KeyValueFromInt("solid", 2)
	trigger_push_brush41.KeyValueFromString("mins", "-32 -72 -11")
	trigger_push_brush41.KeyValueFromString("maxs", "32 72 11")

	local trigger_push_brush42 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 0 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("696, 364, 85"),
	    mins = "-32 -28 -11",
	    maxs = "32 28 11"
	})
	trigger_push_brush42.KeyValueFromInt("solid", 2)
	trigger_push_brush42.KeyValueFromString("mins", "-32 -28 -11")
	trigger_push_brush42.KeyValueFromString("maxs", "32 28 11")

	local trigger_push_brush43 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 0 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("696, 596, 85"),
	    mins = "-32 -28 -11",
	    maxs = "32 28 11"
	})
	trigger_push_brush43.KeyValueFromInt("solid", 2)
	trigger_push_brush43.KeyValueFromString("mins", "-32 -28 -11")
	trigger_push_brush43.KeyValueFromString("maxs", "32 28 11")

	local trigger_push_brush44 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 0 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("966, 88, 83"),
	    mins = "-32 -28 -11",
	    maxs = "32 28 11"
	})
	trigger_push_brush44.KeyValueFromInt("solid", 2)
	trigger_push_brush44.KeyValueFromString("mins", "-32 -28 -11")
	trigger_push_brush44.KeyValueFromString("maxs", "32 28 11")

	local trigger_push_brush45 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 0 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("892, 107, 83"),
	    mins = "-32 -28 -11",
	    maxs = "32 28 11"
	})
	trigger_push_brush45.KeyValueFromInt("solid", 2)
	trigger_push_brush45.KeyValueFromString("mins", "-32 -28 -11")
	trigger_push_brush45.KeyValueFromString("maxs", "32 28 11")

	local trigger_push_brush46 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 0 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("1024, -32, 83"),
	    mins = "-32 -72 -11",
	    maxs = "32 72 11"
	})
	trigger_push_brush46.KeyValueFromInt("solid", 2)
	trigger_push_brush46.KeyValueFromString("mins", "-32 -72 -11")
	trigger_push_brush46.KeyValueFromString("maxs", "32 72 11")

	local trigger_push_brush47 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 0 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("1056, -172, 97"),
	    mins = "32 -28 -11",
	    maxs = "32 28 11"
	})
	trigger_push_brush47.KeyValueFromInt("solid", 2)
	trigger_push_brush47.KeyValueFromString("mins", "32 -28 -11")
	trigger_push_brush47.KeyValueFromString("maxs", "32 28 11")

	local trigger_push_brush48 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 0 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("1000, -220, 97"),
	    mins = "32 -28 -11",
	    maxs = "32 28 11"
	})
	trigger_push_brush48.KeyValueFromInt("solid", 2)
	trigger_push_brush48.KeyValueFromString("mins", "32 -28 -11")
	trigger_push_brush48.KeyValueFromString("maxs", "32 28 11")

	local trigger_push_brush49 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 0 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("973, -915, 163"),
	    mins = "32 -28 -11",
	    maxs = "32 28 11"
	})
	trigger_push_brush49.KeyValueFromInt("solid", 2)
	trigger_push_brush49.KeyValueFromString("mins", "32 -28 -11")
	trigger_push_brush49.KeyValueFromString("maxs", "32 28 11")

	local trigger_push_brush50 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 0 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("917, -963, 163"),
	    mins = "32 -28 -11",
	    maxs = "32 28 11"
	})
	trigger_push_brush50.KeyValueFromInt("solid", 2)
	trigger_push_brush50.KeyValueFromString("mins", "32 -28 -11")
	trigger_push_brush50.KeyValueFromString("maxs", "32 28 11")

	local trigger_push_brush51 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 0 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("652, -468, 276"),
	    mins = "-10 -181 -12",
	    maxs = "10 181 12"
	})
	trigger_push_brush51.KeyValueFromInt("solid", 2)
	trigger_push_brush51.KeyValueFromString("mins", "-10 -181 -12")
	trigger_push_brush51.KeyValueFromString("maxs", "10 181 12")

	local trigger_push_brush52 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 0 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("1248, 1516, 204"),
	    mins = "-224 -12 -12",
	    maxs = "224 12 12"
	})
	trigger_push_brush52.KeyValueFromInt("solid", 2)
	trigger_push_brush52.KeyValueFromString("mins", "-224 -12 -12")
	trigger_push_brush52.KeyValueFromString("maxs", "224 12 12")

	local trigger_push_brush53 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 0 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("1680, 1500, 196"),
	    mins = "-208 -28 -20",
	    maxs = "208 28 20"
	})
	trigger_push_brush53.KeyValueFromInt("solid", 2)
	trigger_push_brush53.KeyValueFromString("mins", "-208 -28 -20")
	trigger_push_brush53.KeyValueFromString("maxs", "208 28 20")

	local trigger_push_brush54 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 0 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("1880, 1724, 196"),
	    mins = "-16 -196 -20",
	    maxs = "16 196 20"
	})
	trigger_push_brush54.KeyValueFromInt("solid", 2)
	trigger_push_brush54.KeyValueFromString("mins", "-16 -196 -20")
	trigger_push_brush54.KeyValueFromString("maxs", "16 196 20")

	local trigger_push_brush55 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 0 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("1908, 2120, 188"),
	    mins = "-12 -200 -28",
	    maxs = "12 200 28"
	})
	trigger_push_brush55.KeyValueFromInt("solid", 2)
	trigger_push_brush55.KeyValueFromString("mins", "-12 -200 -28")
	trigger_push_brush55.KeyValueFromString("maxs", "12 200 28")

	local trigger_push_brush56 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 0 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("522, -45, 396"),
	    mins = "-10 -483 -12",
	    maxs = "10 483 12"
	})
	trigger_push_brush56.KeyValueFromInt("solid", 2)
	trigger_push_brush56.KeyValueFromString("mins", "-10 -483 -12")
	trigger_push_brush56.KeyValueFromString("maxs", "10 483 12")

	local trigger_push_brush57 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 270 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("-1256, 488, 524"),
	    mins = "-48 -48 -12",
	    maxs = "48 48 12"
	})
	trigger_push_brush57.KeyValueFromInt("solid", 2)
	trigger_push_brush57.KeyValueFromString("mins", "-48 -48 -12")
	trigger_push_brush57.KeyValueFromString("maxs", "48 48 12")

	local trigger_push_brush58 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 270 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("-1278, 1475, 524"),
	    mins = "-48 -48 -12",
	    maxs = "48 48 12"
	})
	trigger_push_brush58.KeyValueFromInt("solid", 2)
	trigger_push_brush58.KeyValueFromString("mins", "-48 -48 -12")
	trigger_push_brush58.KeyValueFromString("maxs", "48 48 12")

	local trigger_push_brush59 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 270 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("-1747, 1473, 524"),
	    mins = "-48 -48 -12",
	    maxs = "48 48 12"
	})
	trigger_push_brush59.KeyValueFromInt("solid", 2)
	trigger_push_brush59.KeyValueFromString("mins", "-48 -48 -12")
	trigger_push_brush59.KeyValueFromString("maxs", "48 48 12")

	local trigger_push_brush60 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 270 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("-1713, 798, 524"),
	    mins = "-48 -48 -12",
	    maxs = "48 48 12"
	})
	trigger_push_brush60.KeyValueFromInt("solid", 2)
	trigger_push_brush60.KeyValueFromString("mins", "-48 -48 -12")
	trigger_push_brush60.KeyValueFromString("maxs", "48 48 12")

	local trigger_push_brush61 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 90 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("-2112, -574, 524"),
	    mins = "-48 -48 -12",
	    maxs = "48 48 12"
	})
	trigger_push_brush61.KeyValueFromInt("solid", 2)
	trigger_push_brush61.KeyValueFromString("mins", "-48 -48 -12")
	trigger_push_brush61.KeyValueFromString("maxs", "48 48 12")

	local trigger_push_brush62 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 90 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("-1577, -1785, 524"),
	    mins = "-48 -48 -12",
	    maxs = "48 48 12"
	})
	trigger_push_brush62.KeyValueFromInt("solid", 2)
	trigger_push_brush62.KeyValueFromString("mins", "-48 -48 -12")
	trigger_push_brush62.KeyValueFromString("maxs", "48 48 12")

	local trigger_push_brush63 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 90 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("-729, -1737, 524"),
	    mins = "-48 -48 -12",
	    maxs = "48 48 12"
	})
	trigger_push_brush63.KeyValueFromInt("solid", 2)
	trigger_push_brush63.KeyValueFromString("mins", "-48 -48 -12")
	trigger_push_brush63.KeyValueFromString("maxs", "48 48 12")

	local trigger_push_brush64 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 90 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("-320, -2530, 524"),
	    mins = "-48 -48 -12",
	    maxs = "48 48 12"
	})
	trigger_push_brush64.KeyValueFromInt("solid", 2)
	trigger_push_brush64.KeyValueFromString("mins", "-48 -48 -12")
	trigger_push_brush64.KeyValueFromString("maxs", "48 48 12")

	local trigger_push_brush65 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 90 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("738, -2496, 524"),
	    mins = "-48 -48 -12",
	    maxs = "48 48 12"
	})
	trigger_push_brush65.KeyValueFromInt("solid", 2)
	trigger_push_brush65.KeyValueFromString("mins", "-48 -48 -12")
	trigger_push_brush65.KeyValueFromString("maxs", "48 48 12")

	local trigger_push_brush66 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 45 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("-2226, -726, 232"),
	    mins = "-175 -175 -48",
	    maxs = "175 175 48"
	})
	trigger_push_brush66.KeyValueFromInt("solid", 2)
	trigger_push_brush66.KeyValueFromString("mins", "-175 -175 -48")
	trigger_push_brush66.KeyValueFromString("maxs", "175 175 48")

	local trigger_push_brush67 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 90 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("-466, -555, 84"),
	    mins = "-158 -43 -84",
	    maxs = "158 43 84"
	})
	trigger_push_brush67.KeyValueFromInt("solid", 2)
	trigger_push_brush67.KeyValueFromString("mins", "-158 -43 -84")
	trigger_push_brush67.KeyValueFromString("maxs", "158 43 84")

	local trigger_push_brush68 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 90 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("-1660, 1920, 274"),
	    mins = "-900 -3 -26",
	    maxs = "900 3 26"
	})
	trigger_push_brush68.KeyValueFromInt("solid", 2)
	trigger_push_brush68.KeyValueFromString("mins", "-900 -3 -26")
	trigger_push_brush68.KeyValueFromString("maxs", "900 3 26")

	local trigger_push_brush69 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 90 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("-400, -978, 146"),
	    mins = "-136 -9.5 -12",
	    maxs = "136 9.5 12"
	})
	trigger_push_brush69.KeyValueFromInt("solid", 2)
	trigger_push_brush69.KeyValueFromString("mins", "-136 -9.5 -12")
	trigger_push_brush69.KeyValueFromString("maxs", "136 9.5 12")

	local trigger_push_brush70 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 90 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("-272, -908, 146"),
	    mins = "-8 -60 12",
	    maxs = "8 60 12"
	})
	trigger_push_brush70.KeyValueFromInt("solid", 2)
	trigger_push_brush70.KeyValueFromString("mins", "-8 -60 12")
	trigger_push_brush70.KeyValueFromString("maxs", "8 60 12")

	local trigger_push_brush71 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 90 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("-68, -864, 146"),
	    mins = "-68 -48 12",
	    maxs = "68 48 12"
	})
	trigger_push_brush71.KeyValueFromInt("solid", 2)
	trigger_push_brush71.KeyValueFromString("mins", "-68 -48 12")
	trigger_push_brush71.KeyValueFromString("maxs", "68 48 12")

	local trigger_push_brush72 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 90 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("416, -1264, 372"),
	    mins = "-96 -16 -124",
	    maxs = "96 16 124"
	})
	trigger_push_brush72.KeyValueFromInt("solid", 2)
	trigger_push_brush72.KeyValueFromString("mins", "-96 -16 -124")
	trigger_push_brush72.KeyValueFromString("maxs", "96 16 124")

	local trigger_push_brush73 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 270 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("123, 2342, 205"),
	    mins = "-56 -78 -24",
	    maxs = "56 78 24"
	})
	trigger_push_brush73.KeyValueFromInt("solid", 2)
	trigger_push_brush73.KeyValueFromString("mins", "-56 -78 -24")
	trigger_push_brush73.KeyValueFromString("maxs", "56 78 24")

	local trigger_push_brush74 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 90 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("128, -1276, 220"),
	    mins = "-256 -4 -12",
	    maxs = "256 4 12"
	})
	trigger_push_brush74.KeyValueFromInt("solid", 2)
	trigger_push_brush74.KeyValueFromString("mins", "-256 -4 -12")
	trigger_push_brush74.KeyValueFromString("maxs", "256 4 12")

	local trigger_push_brush75 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 270 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("108, -1688, 390"),
	    mins = "-68 -8 -4",
	    maxs = "68 8 4"
	})
	trigger_push_brush75.KeyValueFromInt("solid", 2)
	trigger_push_brush75.KeyValueFromString("mins", "-68 -8 -4")
	trigger_push_brush75.KeyValueFromString("maxs", "68 8 4")

	local trigger_push_brush76 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 270 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("168, -1648, 390"),
	    mins = "-8 -32 -4",
	    maxs = "8 32 4"
	})
	trigger_push_brush76.KeyValueFromInt("solid", 2)
	trigger_push_brush76.KeyValueFromString("mins", "-8 -32 -4")
	trigger_push_brush76.KeyValueFromString("maxs", "8 32 4")

	local trigger_push_brush77 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 270 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    filtername = "filter_redteam",
	    origin = Vector("-72.5, -1856, 890.5"),
	    mins = "-10.5 -608 -421.5",
	    maxs = "10.5 608 421.5"
	})
	trigger_push_brush77.KeyValueFromInt("solid", 2)
	trigger_push_brush77.KeyValueFromString("mins", "-10.5 -608 -421.5")
	trigger_push_brush77.KeyValueFromString("maxs", "10.5 608 421.5")

}
::PlayersLeftLogic <- function(org, ang)
{
	local math_counter55 = SpawnEntityFromTable("math_counter", {
	    targetname = "playersLeftAlive",
	    startvalue = 0,
	    "outValue#1": "playerRunScriptCodeClientPrint(self, 4, ``)0-1",
	    "outValue#2": "wipeCheck,SetValueCompare,,0,-1"
	})
	math_counter55.SetOrigin(org)
	math_counter55.SetAngles(ang[0], ang[1], ang[2])

	local logic_compare56 = SpawnEntityFromTable("logic_compare", {
	    targetname = "wipeCheck",
	    initialValue = 0,
	    CompareValue = 0,
	    "OnEqualTo#1": "gameover,Trigger,,0,-1",
	    "OnGreaterThan#2": "gameover,CancelPending,,0,-1"
	})
	logic_compare56.SetOrigin(org)
	logic_compare56.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic57 = SpawnEntityFromTable("ambient_generic", {
	    health = 10,
	    message = "#*shadows/goodeffort.mp3",
	    radius = 20,
	    spawnflags = 49,
	    targetname = "fail_snd"
	})
	ambient_generic57.SetOrigin(org)
	ambient_generic57.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic58 = SpawnEntityFromTable("ambient_generic", {
	    health = 10,
	    message = "#*shadows/stage_clear.mp3",
	    radius = 20,
	    spawnflags = 49,
	    targetname = "roundclear_snd"
	})
	ambient_generic58.SetOrigin(org)
	ambient_generic58.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic59 = SpawnEntityFromTable("ambient_generic", {
	    health = 10,
	    message = "#*shadows/youdidit.mp3",
	    radius = 20,
	    spawnflags = 49,
	    targetname = "win_snd"
	})
	ambient_generic59.SetOrigin(org)
	ambient_generic59.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic60 = SpawnEntityFromTable("ambient_generic", {
	    health = 10,
	    message = "#*shadows/makeitcount.mp3",
	    radius = 20,
	    spawnflags = 49,
	    targetname = "finale_snd"
	})
	ambient_generic60.SetOrigin(org)
	ambient_generic60.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic61 = SpawnEntityFromTable("ambient_generic", {
	    health = 10,
	    message = "#*shadows/bossround_music.mp3",
	    radius = 20,
	    spawnflags = 49,
	    targetname = "tankround_snd"
	})
	ambient_generic61.SetOrigin(org)
	ambient_generic61.SetAngles(ang[0], ang[1], ang[2])

}
::PlayerTracker <- function(org, ang)
{
	local logic_relay62 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "playersLeftAlive,add,1,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION1"
	})
	logic_relay62.SetOrigin(org)
	logic_relay62.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay63 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "popscript,$playertracker,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION2"
	})
	logic_relay63.SetOrigin(org)
	logic_relay63.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay64 = SpawnEntityFromTable("logic_relay", {
	    $OnKilled = "playersLeftAlive,Subtract,1,0,0"
	})
	logic_relay64.SetOrigin(org)
	logic_relay64.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay65 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "popscript,$spawn_revive_marker,,0.0,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION1"
	})
	logic_relay65.SetOrigin(org)
	logic_relay65.SetAngles(ang[0], ang[1], ang[2])

}
::Revivemarker <- function(org, ang)
{
	local trigger_multiple_brush78 = SpawnEntityFromTable("trigger_multiple", {
	    targetname = "revive_trigger",
	    mins = "-36 -36 -36",
	    maxs = "36 36 36",
	    spawnflags = 1,
	    "OnStartTouch#1": "!activatorRunScriptCodeClientPrint(self, 4, `Hold Action key to revive your teammate`)0-1"
	})
	trigger_multiple_brush78.KeyValueFromInt("solid", 2)
	trigger_multiple_brush78.KeyValueFromString("mins", "-36 -36 -36")
	trigger_multiple_brush78.KeyValueFromString("maxs", "36 36 36")

	local logic_relay66 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "revive_trigger,DisableAndEndTouch,,0.0,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION2"
	})
	logic_relay66.SetOrigin(org)
	logic_relay66.SetAngles(ang[0], ang[1], ang[2])

}
::EnemyTracker <- function(org, ang)
{
	local logic_relay67 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activator,$RemoveOutput,$OnDeath,0.0,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION3"
	})
	logic_relay67.SetOrigin(org)
	logic_relay67.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay68 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "relay_enemycount_subtract,trigger,,0.0,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION4"
	})
	logic_relay68.SetOrigin(org)
	logic_relay68.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay69 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "relay_enemycount_add,trigger,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION3"
	})
	logic_relay69.SetOrigin(org)
	logic_relay69.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay70 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "popscript,$OnWaveSpawnBot,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION4"
	})
	logic_relay70.SetOrigin(org)
	logic_relay70.SetAngles(ang[0], ang[1], ang[2])

}
::Hulk_PT <- function(org, ang)
{
	local logic_relay71 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "hankerman,SetPlaybackRate,0,0.01,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION5"
	})
	logic_relay71.SetOrigin(org)
	logic_relay71.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay72 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "hankerman,Enable,,0.0,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION5"
	})
	logic_relay72.SetOrigin(org)
	logic_relay72.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay73 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "hankerman,SetPlaybackRate,1,0.02,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION6"
	})
	logic_relay73.SetOrigin(org)
	logic_relay73.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic74 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "hankerman",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(0, 0, 0),
	    DisableBoneFollowers = 1,
	    disableshadows = 0,
	    StartDisabled = 1,
	    skin = 1,
	    model = "models\kirillian\infected\hank_v4.mdl",
	    DefaultAnim = "Death",
	    ModelScale = 1.75,
	    solid = 0,
	    "OnAnimationDone#1": "!self,SetAnimation,deathpose_incap,0,-1",
	    "OnAnimationDone#2": "!self,SetPlaybackRate,0,,-1",
	    "OnAnimationDone#3": "hanked,start,,,-1",
	    "OnAnimationDone#4": "hanked,kill,,3,-1",
	    "OnAnimationDone#5": "!self,Kill,,,-1"
	})
	prop_dynamic74.SetOrigin(org)
	prop_dynamic74.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system75 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "hanked",
	    origin = Vector(0, 0, 48),
	    effect_name = "skull_island_explosion"
	})
	info_particle_system75.SetOrigin(org)
	info_particle_system75.SetAngles(ang[0], ang[1], ang[2])

}
::Crawler_PT <- function(org, ang)
{
	local trigger_push_brush79 = SpawnEntityFromTable("trigger_push", {
	    pushdir = "0 0 0",
	    spawnflags = 1,
	    speed = 1000,
	    filtername = "filter_crawler",
	    StartDisabled = 1,
	    targetname = "crawlerpush",
	    mins = "-24 -24 -24",
	    maxs = "24 24 24"
	})
	trigger_push_brush79.KeyValueFromInt("solid", 2)
	trigger_push_brush79.KeyValueFromString("mins", "-24 -24 -24")
	trigger_push_brush79.KeyValueFromString("maxs", "24 24 24")

	local ambient_generic76 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "crawler_hop_sfx",
	    spawnflags = 48,
	    health = 10,
	    radius = 14000,
	    pitch = 100,
	    message = ")player/pl_scout_jump1.wav"
	})
	ambient_generic76.SetOrigin(org)
	ambient_generic76.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer77 = SpawnEntityFromTable("logic_timer", {
	    refiretime = 14,
	    "OnTimer#1": "crawlerpush,Enable,,0,-1",
	    "OnTimer#2": "crawler_hop_sfx,PlaySound,,0,-1",
	    "OnTimer#3": "crawlerpush,Disable,,0.7,-1"
	})
	logic_timer77.SetOrigin(org)
	logic_timer77.SetAngles(ang[0], ang[1], ang[2])

	local filter_tf_bot_has_tag78 = SpawnEntityFromTable("filter_tf_bot_has_tag", {
	    targetname = "filter_crawler",
	    require_all_tags = 1,
	    tags = "crawler",
	    Negated = "Allow entities that match criteria"
	})
	filter_tf_bot_has_tag78.SetOrigin(org)
	filter_tf_bot_has_tag78.SetAngles(ang[0], ang[1], ang[2])

}
::Charger_PT <- function(org, ang)
{
	local logic_relay79 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "popscript,$chargerLogic,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION6"
	})
	logic_relay79.SetOrigin(org)
	logic_relay79.SetAngles(ang[0], ang[1], ang[2])

}
::Soldier_Tank <- function(org, ang)
{
	local logic_relay80 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "autotank_turret_weaponRunScriptCodeself.SetOwner()0.0-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION7"
	})
	logic_relay80.SetOrigin(org)
	logic_relay80.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic81 = SpawnEntityFromTable("prop_dynamic", {
	    angles = QAngle("0, 0, 0"),
	    origin = Vector("0, 0, -8"),
	    DisableBoneFollowers = 1,
	    disableshadows = 0,
	    model = "models/props_frontline/tank_animated.mdl",
	    DefaultAnim = "move_slow",
	    ModelScale = 0.55,
	    solid = 0,
	    skin = 1,
	    targetname = "autotank_body"
	})
	prop_dynamic81.SetOrigin(org)
	prop_dynamic81.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic82 = SpawnEntityFromTable("prop_dynamic", {
	    angles = QAngle("0, 0, 0"),
	    origin = Vector("0, 0, -8"),
	    DisableBoneFollowers = 1,
	    disableshadows = 0,
	    StartDisabled = 1,
	    model = "models\bots\soldier\bot_soldier.mdl",
	    DefaultAnim = "PRIMARY_stun_middle",
	    ModelScale = 1.75,
	    solid = 0,
	    skin = 1,
	    targetname = "autotank_gibby",
	    parentname = "autotank_body"
	})
	prop_dynamic82.SetOrigin(org)
	prop_dynamic82.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system83 = SpawnEntityFromTable("info_particle_system", {
	    angles = QAngle("0, 0, 0"),
	    origin = Vector("0, 0, 0"),
	    effect_name = "cinefx_goldrush",
	    start_active = 0,
	    targetname = "autotank_blast",
	    parentname = "autotank_body"
	})
	info_particle_system83.SetOrigin(org)
	info_particle_system83.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic84 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "autotank_deathsound",
	    spawnflags = 17,
	    health = 10,
	    radius = 18000,
	    pitch = 100,
	    message = ")shadows/treadkill_death.mp3",
	    parentname = "autotank_body"
	})
	ambient_generic84.SetOrigin(org)
	ambient_generic84.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic85 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "autotank_explosionsound",
	    spawnflags = 17,
	    health = 10,
	    radius = 18000,
	    pitch = 100,
	    message = ")mvm\mvm_tank_explode.wav",
	    parentname = "autotank_body"
	})
	ambient_generic85.SetOrigin(org)
	ambient_generic85.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system86 = SpawnEntityFromTable("info_particle_system", {
	    angles = QAngle("0, 180, 0"),
	    origin = Vector("-70, 38, 52"),
	    effect_name = "kartdamage_smoke4",
	    start_active = 1,
	    targetname = "autotank_smoke",
	    parentname = "autotank_body"
	})
	info_particle_system86.SetOrigin(org)
	info_particle_system86.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system87 = SpawnEntityFromTable("info_particle_system", {
	    angles = QAngle("0, 180, 0"),
	    origin = Vector("-70, -39, 52"),
	    effect_name = "kartdamage_smoke4",
	    start_active = 1,
	    targetname = "autotank_smoke",
	    parentname = "autotank_body"
	})
	info_particle_system87.SetOrigin(org)
	info_particle_system87.SetAngles(ang[0], ang[1], ang[2])

	local env_shake88 = SpawnEntityFromTable("env_shake", {
	    amplitude = 16,
	    duration = 1.5,
	    frequency = 2.5,
	    radius = 1500,
	    spawnflags = 1,
	    targetname = "autotank_shake"
	})
	env_shake88.SetOrigin(org)
	env_shake88.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic89 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "autotank_turret_ready",
	    spawnflags = 48,
	    health = 10,
	    radius = 18000,
	    pitch = 100,
	    message = ")vehicles/tank_readyfire1.wav",
	    parentname = "autotank_body"
	})
	ambient_generic89.SetOrigin(org)
	ambient_generic89.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic90 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "autotank_ragemode",
	    spawnflags = 48,
	    health = 10,
	    radius = 18000,
	    pitch = 100,
	    message = ")shadows/treadkill_rage.mp3",
	    parentname = "autotank_body"
	})
	ambient_generic90.SetOrigin(org)
	ambient_generic90.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic91 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "autotank_turret_shoot",
	    spawnflags = 48,
	    health = 10,
	    radius = 18000,
	    pitch = 100,
	    message = ")player\taunt_tank_shoot.wav",
	    parentname = "autotank_body"
	})
	ambient_generic91.SetOrigin(org)
	ambient_generic91.SetAngles(ang[0], ang[1], ang[2])

	local tf_point_weapon_mimic92 = SpawnEntityFromTable("tf_point_weapon_mimic", {
	    origin = Vector("125, 0, 59"),
	    damage = 75,
	    speedmin = 2200,
	    speedmax = 2200,
	    splashradius = 216,
	    targetname = "autotank_turret_weapon",
	    parentname = "autotank_body"
	})
	tf_point_weapon_mimic92.SetOrigin(org)
	tf_point_weapon_mimic92.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay93 = SpawnEntityFromTable("logic_relay", {
	    targetname = "autotank_turretshoot",
	    "OnTrigger#1": "autotank_turret_ready,PlaySound,,0,-1",
	    "OnTrigger#2": "autotank_body,SetAnimation,shoot_forward,1,-1",
	    "OnTrigger#3": "autotank_turret_weapon,Fireonce,,1.3,-1",
	    "OnTrigger#4": "autotank_turret_shoot,PlaySound,,1.3,-1"
	})
	logic_relay93.SetOrigin(org)
	logic_relay93.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay94 = SpawnEntityFromTable("logic_relay", {
	    targetname = "autotank_death",
	    "OnTrigger#1": "autotank_idle,StopSound,,0,-1",
	    "OnTrigger#2": "autotank_gibby,Enable,,0,-1",
	    "OnTrigger#3": "autotank_smoke,Stop,,0,-1",
	    "OnTrigger#4": "autotank_gibby,SetAnimation,PRIMARY_Stun_begin,0,-1",
	    "OnTrigger#5": "autotank_gibby,SetPlaybackRate,0.36,0.3,-1",
	    "OnTrigger#6": "autotank_deathsound,PlaySound,,0,-1",
	    "OnTrigger#7": "autotank_gibby,Disable,,3,-1",
	    "OnTrigger#8": "autotank_body,Disable,,3,-1",
	    "OnTrigger#9": "autotank_explosionsound,PlaySound,,3,-1",
	    "OnTrigger#10": "autotank_blast,Start,,3,-1",
	    "OnTrigger#11": "autotank_shake,StartShake,,3,-1",
	    "OnTrigger#12": "autotank_*,Kill,,8,-1"
	})
	logic_relay94.SetOrigin(org)
	logic_relay94.SetAngles(ang[0], ang[1], ang[2])

}
::Heavy_Boss <- function(org, ang)
{
	local prop_dynamic_ornament95 = SpawnEntityFromTable("prop_dynamic_ornament", {
	    InitialOwner = "blord",
	    spawnflags = 256,
	    DisableBoneFollowers = 1,
	    disableshadows = 1,
	    solid = 0,
	    targetname = "battlelord_cosmetics",
	    model = "models/workshop/player/items/soldier/hwn2015_hellmet/hwn2015_hellmet.mdl"
	})
	prop_dynamic_ornament95.SetOrigin(org)
	prop_dynamic_ornament95.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic_ornament96 = SpawnEntityFromTable("prop_dynamic_ornament", {
	    InitialOwner = "blord",
	    spawnflags = 256,
	    DisableBoneFollowers = 1,
	    disableshadows = 1,
	    solid = 0,
	    targetname = "battlelord_cosmetics",
	    model = "models/workshop/player/items/demo/sf14_deadking_pauldrons/sf14_deadking_pauldrons.mdl"
	})
	prop_dynamic_ornament96.SetOrigin(org)
	prop_dynamic_ornament96.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic_ornament97 = SpawnEntityFromTable("prop_dynamic_ornament", {
	    InitialOwner = "blord",
	    spawnflags = 256,
	    DisableBoneFollowers = 1,
	    disableshadows = 1,
	    solid = 0,
	    targetname = "battlelord_cosmetics",
	    model = "models/workshop/weapons/c_models/c_iron_curtain/c_iron_curtain.mdl"
	})
	prop_dynamic_ornament97.SetOrigin(org)
	prop_dynamic_ornament97.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay98 = SpawnEntityFromTable("logic_relay", {
	    targetname = "battlelord_cosmetics_relay",
	    "OnTrigger#1": "battlelord_cosmetics,TurnOff,,2,-1"
	})
	logic_relay98.SetOrigin(org)
	logic_relay98.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic99 = SpawnEntityFromTable("prop_dynamic", {
	    angles = QAngle("0, 0, 0"),
	    origin = Vector("0, 0, 0"),
	    DisableBoneFollowers = 1,
	    disableshadows = 0,
	    StartDisabled = 1,
	    model = "models\bots\heavy_boss\bot_heavy_boss.mdl",
	    DefaultAnim = "primary_death_01",
	    ModelScale = 1.75,
	    solid = 0,
	    skin = 1,
	    targetname = "blord"
	})
	prop_dynamic99.SetOrigin(org)
	prop_dynamic99.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic100 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "blord_deathsound",
	    spawnflags = 17,
	    health = 10,
	    radius = 18000,
	    pitch = 100,
	    message = ")shadows/battlelord_death.mp3",
	    parentname = "blord"
	})
	ambient_generic100.SetOrigin(org)
	ambient_generic100.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system101 = SpawnEntityFromTable("info_particle_system", {
	    angles = QAngle("0, 0, 0"),
	    origin = Vector("0, 0, 0"),
	    effect_name = "cinefx_goldrush",
	    start_active = 0,
	    targetname = "blord_blast",
	    parentname = "blord"
	})
	info_particle_system101.SetOrigin(org)
	info_particle_system101.SetAngles(ang[0], ang[1], ang[2])

	local env_shake102 = SpawnEntityFromTable("env_shake", {
	    amplitude = 16,
	    duration = 1.5,
	    frequency = 2.5,
	    radius = 1500,
	    spawnflags = 1,
	    targetname = "blord_shake"
	})
	env_shake102.SetOrigin(org)
	env_shake102.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic103 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "blord_explosionsound",
	    spawnflags = 17,
	    health = 10,
	    radius = 18000,
	    pitch = 100,
	    message = ")mvm\mvm_tank_explode.wav",
	    parentname = "blord"
	})
	ambient_generic103.SetOrigin(org)
	ambient_generic103.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay104 = SpawnEntityFromTable("logic_relay", {
	    targetname = "blord_death",
	    "OnTrigger#1": "blord,Enable,,0,-1",
	    "OnTrigger#2": "battlelord_cosmetics,TurnOn,,0,-1",
	    "OnTrigger#3": "blord,SetAnimation,primary_death_01,0,-1",
	    "OnTrigger#4": "blord_deathsound,PlaySound,,0,-1",
	    "OnTrigger#5": "blord,Disable,,3.4,-1",
	    "OnTrigger#6": "battlelord_cosmetics,kill,,3.4,-1",
	    "OnTrigger#7": "blord_explosionsound,PlaySound,,3.4,-1",
	    "OnTrigger#8": "blord_blast,Start,,3.4,-1",
	    "OnTrigger#9": "blord_shake,StartShake,,3.4,-1",
	    "OnTrigger#10": "blord_*,Kill,,8,-1"
	})
	logic_relay104.SetOrigin(org)
	logic_relay104.SetAngles(ang[0], ang[1], ang[2])

}
::tutorial <- function(org, ang)
{
	local logic_relay105 = SpawnEntityFromTable("logic_relay", {
	    spawnflags = 2,
	    targetname = "tutorial_relay",
	    "OnTrigger#1": "hints_1,Show,,0,-1",
	    "OnTrigger#2": "hints_2,Show,,4,-1",
	    "OnTrigger#3": "hints_3,Show,,8,-1",
	    "OnTrigger#4": "hints_4,Show,,12,-1",
	    "OnTrigger#5": "hints_5,Show,,16,-1",
	    "OnTrigger#6": "hints_6,Show,,20,-1",
	    "OnTrigger#7": "hints_7,Show,,24,-1",
	    "OnTrigger#8": "hints_8,Show,,28,-1",
	    "OnTrigger#9": "hints_9,Show,,32,-1",
	    "OnTrigger#10": "hints_10,Show,,36,-1",
	    "OnTrigger#11": "hints_11,Show,,40,-1",
	    "OnTrigger#12": "hints_12,Show,,44,-1",
	    "OnTrigger#13": "hints_15,Show,,48,-1",
	    "OnTrigger#14": "tutorial_relay2,Trigger,,52,-1"
	})
	logic_relay105.SetOrigin(org)
	logic_relay105.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay106 = SpawnEntityFromTable("logic_relay", {
	    spawnflags = 2,
	    targetname = "tutorial_relay2",
	    "OnTrigger#1": "tutorial_relay,Trigger,,0,-1"
	})
	logic_relay106.SetOrigin(org)
	logic_relay106.SetAngles(ang[0], ang[1], ang[2])

	local training_annotation107 = SpawnEntityFromTable("training_annotation", {
	    targetname = "hints_1",
	    display_text = "Money is earned only by dealing damage and killing enemies.",
	    lifetime = 4,
	    origin = Vector(328, -150, 52)
	})
	training_annotation107.SetOrigin(org)
	training_annotation107.SetAngles(ang[0], ang[1], ang[2])

	local training_annotation108 = SpawnEntityFromTable("training_annotation", {
	    targetname = "hints_2",
	    display_text = "Enemies become faster and stronger each round.",
	    lifetime = 4,
	    origin = Vector(328, -150, 52)
	})
	training_annotation108.SetOrigin(org)
	training_annotation108.SetAngles(ang[0], ang[1], ang[2])

	local training_annotation109 = SpawnEntityFromTable("training_annotation", {
	    targetname = "hints_3",
	    display_text = "You can purchase Perk Bonuses from vending machines around the map.",
	    lifetime = 4,
	    origin = Vector(328, -150, 52)
	})
	training_annotation109.SetOrigin(org)
	training_annotation109.SetAngles(ang[0], ang[1], ang[2])

	local training_annotation110 = SpawnEntityFromTable("training_annotation", {
	    targetname = "hints_4",
	    display_text = "Perk Bonuses are not permanent and are lost on death.",
	    lifetime = 4,
	    origin = Vector(328, -150, 52)
	})
	training_annotation110.SetOrigin(org)
	training_annotation110.SetAngles(ang[0], ang[1], ang[2])

	local training_annotation111 = SpawnEntityFromTable("training_annotation", {
	    targetname = "hints_5",
	    display_text = "Perk Bonuses stack with your weapon upgrades.",
	    lifetime = 4,
	    origin = Vector(328, -150, 52)
	})
	training_annotation111.SetOrigin(org)
	training_annotation111.SetAngles(ang[0], ang[1], ang[2])

	local training_annotation112 = SpawnEntityFromTable("training_annotation", {
	    targetname = "hints_6",
	    display_text = "Perk Bonuses do not stack per additional purchase.",
	    lifetime = 4,
	    origin = Vector(328, -150, 52)
	})
	training_annotation112.SetOrigin(org)
	training_annotation112.SetAngles(ang[0], ang[1], ang[2])

	local training_annotation113 = SpawnEntityFromTable("training_annotation", {
	    targetname = "hints_7",
	    display_text = "You can also receive random weapons from your local Weapons Dumpster.",
	    lifetime = 4,
	    origin = Vector(328, -150, 52)
	})
	training_annotation113.SetOrigin(org)
	training_annotation113.SetAngles(ang[0], ang[1], ang[2])

	local training_annotation114 = SpawnEntityFromTable("training_annotation", {
	    targetname = "hints_8",
	    display_text = "Weapons received are returned to you after death.",
	    lifetime = 4,
	    origin = Vector(328, -150, 52)
	})
	training_annotation114.SetOrigin(org)
	training_annotation114.SetAngles(ang[0], ang[1], ang[2])

	local training_annotation115 = SpawnEntityFromTable("training_annotation", {
	    targetname = "hints_9",
	    display_text = "Medics supply ammo and health to nearby teammates.",
	    lifetime = 4,
	    origin = Vector(328, -150, 52)
	})
	training_annotation115.SetOrigin(org)
	training_annotation115.SetAngles(ang[0], ang[1], ang[2])

	local training_annotation116 = SpawnEntityFromTable("training_annotation", {
	    targetname = "hints_10",
	    display_text = "Moving and crouching both affect your accuracy.",
	    lifetime = 4,
	    origin = Vector(328, -150, 52)
	})
	training_annotation116.SetOrigin(org)
	training_annotation116.SetAngles(ang[0], ang[1], ang[2])

	local training_annotation117 = SpawnEntityFromTable("training_annotation", {
	    targetname = "hints_11",
	    display_text = "Powerups have a chance to drop from zombies during waves.",
	    lifetime = 4,
	    origin = Vector(328, -150, 52)
	})
	training_annotation117.SetOrigin(org)
	training_annotation117.SetAngles(ang[0], ang[1], ang[2])

	local training_annotation118 = SpawnEntityFromTable("training_annotation", {
	    targetname = "hints_12",
	    display_text = "Powerups despawn after 30 seconds of being dropped.",
	    lifetime = 4,
	    origin = Vector(328, -150, 52)
	})
	training_annotation118.SetOrigin(org)
	training_annotation118.SetAngles(ang[0], ang[1], ang[2])

	local training_annotation119 = SpawnEntityFromTable("training_annotation", {
	    targetname = "hints_15",
	    display_text = "Players cannot join the game once it begins.",
	    lifetime = 4,
	    origin = Vector(328, -150, 52)
	})
	training_annotation119.SetOrigin(org)
	training_annotation119.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay120 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "tutorial_relay,Trigger,,4,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION8"
	})
	logic_relay120.SetOrigin(org)
	logic_relay120.SetAngles(ang[0], ang[1], ang[2])

}
::DummyMachines <- function(org, ang)
{
	local prop_dynamic121 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("477, -2103, 4"),
	    angles = QAngle("0, 270, 0"),
	    disableshadows = 0,
	    model = "models/props_misc/vending_machine_01.mdl",
	    solid = 6,
	    skin = 0,
	    targetname = "DUMMY_1"
	})
	prop_dynamic121.SetOrigin(org)
	prop_dynamic121.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic122 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("-1157, -597, -198"),
	    angles = QAngle("0, 90, 0"),
	    disableshadows = 0,
	    model = "models/props_misc/vending_machine_01.mdl",
	    solid = 6,
	    skin = 0,
	    targetname = "DUMMY_2"
	})
	prop_dynamic122.SetOrigin(org)
	prop_dynamic122.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic123 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("197, -2659, 12"),
	    disableshadows = 0,
	    model = "models/props_misc/vending_machine_01.mdl",
	    solid = 6,
	    skin = 1,
	    targetname = "DUMMY_3"
	})
	prop_dynamic123.SetOrigin(org)
	prop_dynamic123.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic124 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("-19, 1893, 206"),
	    disableshadows = 0,
	    model = "models/props_misc/vending_machine_01.mdl",
	    solid = 6,
	    skin = 0,
	    targetname = "DUMMY_4"
	})
	prop_dynamic124.SetOrigin(org)
	prop_dynamic124.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic125 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("-1794, 1236, -2"),
	    angles = QAngle("0, 270, 0"),
	    disableshadows = 0,
	    model = "models/props_misc/vending_machine_01.mdl",
	    solid = 6,
	    skin = 0,
	    targetname = "DUMMY_5"
	})
	prop_dynamic125.SetOrigin(org)
	prop_dynamic125.SetAngles(ang[0], ang[1], ang[2])

}
::Vending_Jugg <- function(org, ang)
{
	local prop_dynamic126 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("0, 0, 50"),
	    disableshadows = 0,
	    model = "models/props_misc/vending_machine_01.mdl",
	    solid = 6,
	    skin = 0,
	    targetname = "vm_jug"
	})
	prop_dynamic126.SetOrigin(org)
	prop_dynamic126.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic127 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("0, 0, 164"),
	    angles = QAngle("0, 270, 0"),
	    disableshadows = 0,
	    model = "models/effects/medicyell.mdl",
	    modelscale = 2,
	    solid = 0,
	    parentname = "vm_jug"
	})
	prop_dynamic127.SetOrigin(org)
	prop_dynamic127.SetAngles(ang[0], ang[1], ang[2])

	local func_button_brush80 = SpawnEntityFromTable("func_button", {
	    targetname = "vm_jugbutton",
	    parentname = "vm_jug",
	    damagefilter = "filter_juggmulti",
	    rendermode = 10,
	    movedir = "0 180 0",
	    spawnflags = 513,
	    speed = 5,
	    wait = 1,
	    sounds = 3,
	    origin = Vector("0, -12, 128"),
	    mins = "-24 -8 -44",
	    maxs = "24 8 44",
	    "OnPressed#1": "perkbuff_jugg,trigger,0,-1"
	})
	func_button_brush80.KeyValueFromInt("solid", 2)
	func_button_brush80.KeyValueFromString("mins", "-24 -8 -44")
	func_button_brush80.KeyValueFromString("maxs", "24 8 44")

	local $filter_sendprop128 = SpawnEntityFromTable("$filter_sendprop", {
	    targetname = "filter_juggmoney",
	    $name = "m_nCurrency",
	    negated = 0,
	    $value = 2500,
	    $compare = "greater than or equal"
	})
	$filter_sendprop128.SetOrigin(org)
	$filter_sendprop128.SetAngles(ang[0], ang[1], ang[2])

	local filter_multi129 = SpawnEntityFromTable("filter_multi", {
	    targetname = "filter_juggmulti",
	    filtertype = 0,
	    negated = 0,
	    filter01 = "filter_juggmoney",
	    filter02 = "filter_melee",
	    "OnFail#1": "!activatorRunScriptCodeEmitSoundEx({sound_name = `buttons/button8.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })0-1"
	})
	filter_multi129.SetOrigin(org)
	filter_multi129.SetAngles(ang[0], ang[1], ang[2])

	local filter_damage_type130 = SpawnEntityFromTable("filter_damage_type", {
	    targetname = "filter_melee",
	    negated = 0,
	    damagetype = 134221952
	})
	filter_damage_type130.SetOrigin(org)
	filter_damage_type130.SetAngles(ang[0], ang[1], ang[2])

	local trigger_multiple_brush81 = SpawnEntityFromTable("trigger_multiple", {
	    origin = Vector("0, 0, 50"),
	    targetname = "vm_jugmsg",
	    parentname = "vm_jug",
	    filtername = "filter_redteam",
	    spawnflags = 1,
	    mins = "-128 -128 0",
	    maxs = "128 128 128",
	    "OnStartTouchAll#1": "!activatorRunScriptCodeClientPrint(self, 4, `Hold Action key to buy Saxton Ale for $2500`)0-1"
	})
	trigger_multiple_brush81.KeyValueFromInt("solid", 2)
	trigger_multiple_brush81.KeyValueFromString("mins", "-128 -128 0")
	trigger_multiple_brush81.KeyValueFromString("maxs", "128 128 128")

	local ambient_generic131 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "vm_jugsfx",
	    spawnflags = 48,
	    health = 10,
	    radius = 15000,
	    pitch = 100,
	    message = "shadows/perk_saxton.mp3",
	    parentname = "vm_jug"
	})
	ambient_generic131.SetOrigin(org)
	ambient_generic131.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay132 = SpawnEntityFromTable("logic_relay", {
	    targetname = "perkbuff_jugg",
	    "OnTrigger#1": "!activatorRunScriptCodeself.RemoveCurrency(2500)-1",
	    "OnTrigger#2": "!activatorRunScriptCodeEmitSoundEx({sound_name = `shadows/perk_usesfx.mp3`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })0-1",
	    "OnTrigger#3": "vm_jugsfx,PlaySound,0,2.2,-1",
	    "OnTrigger#4": "!activatorRunScriptCodeself.AddCustomAttribute(`max health additive bonus`, 150, -1)2.2-1",
	    "OnTrigger#5": "!activatorRunScriptCodeEmitSoundEx({sound_name = `weapons/buffed_on.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })2.2-1",
	    "OnTrigger#6": "!activatorRunScriptCodeClientPrint(self, 4, `Perk Bonus activated: Extra max health!`)2.2-1",
	    "OnTrigger#7": "!activator,SpeakResponseConcept,TLK_PLAYER_SPELL_PICKUP_RARE,2.45,-1"
	})
	logic_relay132.SetOrigin(org)
	logic_relay132.SetAngles(ang[0], ang[1], ang[2])

}
::Vending_Speed <- function(org, ang)
{
	local prop_dynamic133 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("0, 0, 50"),
	    disableshadows = 0,
	    model = "models/props_misc/vending_machine_01.mdl",
	    solid = 6,
	    skin = 0,
	    targetname = "vm_speed"
	})
	prop_dynamic133.SetOrigin(org)
	prop_dynamic133.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic134 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("0, 0, 164"),
	    angles = QAngle("0, 270, 0"),
	    disableshadows = 0,
	    model = "models/props_halloween/merasmus_skull_island.mdl",
	    solid = 0,
	    parentname = "vm_speed"
	})
	prop_dynamic134.SetOrigin(org)
	prop_dynamic134.SetAngles(ang[0], ang[1], ang[2])

	local func_button_brush82 = SpawnEntityFromTable("func_button", {
	    targetname = "vm_speedbutton",
	    parentname = "vm_speed",
	    damagefilter = "filter_speedmulti",
	    rendermode = 10,
	    movedir = "0 180 0",
	    spawnflags = 513,
	    speed = 5,
	    wait = 3,
	    sounds = 3,
	    origin = Vector("0, -12, 128"),
	    mins = "-24 -8 -44",
	    maxs = "24 8 44",
	    "OnPressed#1": "perkbuff_speed,trigger,0,-1"
	})
	func_button_brush82.KeyValueFromInt("solid", 2)
	func_button_brush82.KeyValueFromString("mins", "-24 -8 -44")
	func_button_brush82.KeyValueFromString("maxs", "24 8 44")

	local $filter_sendprop135 = SpawnEntityFromTable("$filter_sendprop", {
	    targetname = "filter_speedmoney",
	    $name = "m_nCurrency",
	    negated = 0,
	    $value = 3000,
	    $compare = "greater than or equal"
	})
	$filter_sendprop135.SetOrigin(org)
	$filter_sendprop135.SetAngles(ang[0], ang[1], ang[2])

	local filter_multi136 = SpawnEntityFromTable("filter_multi", {
	    targetname = "filter_speedmulti",
	    filtertype = 0,
	    negated = 0,
	    filter01 = "filter_speedmoney",
	    filter02 = "filter_melee",
	    "OnFail#1": "!activatorRunScriptCodeEmitSoundEx({sound_name = `buttons/button8.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })0-1"
	})
	filter_multi136.SetOrigin(org)
	filter_multi136.SetAngles(ang[0], ang[1], ang[2])

	local trigger_multiple_brush83 = SpawnEntityFromTable("trigger_multiple", {
	    origin = Vector("0, 0, 50"),
	    targetname = "vm_speedmsg",
	    parentname = "vm_speed",
	    filtername = "filter_redteam",
	    spawnflags = 1,
	    mins = "-128 -128 0",
	    maxs = "64 64 128",
	    "OnStartTouchAll#1": "!activatorRunScriptCodeClientPrint(self, 4, `Hold Action key to buy Meraslixir for $3000`)0-1"
	})
	trigger_multiple_brush83.KeyValueFromInt("solid", 2)
	trigger_multiple_brush83.KeyValueFromString("mins", "-128 -128 0")
	trigger_multiple_brush83.KeyValueFromString("maxs", "64 64 128")

	local ambient_generic137 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "vm_speedsfx",
	    spawnflags = 48,
	    health = 10,
	    radius = 15000,
	    pitch = 100,
	    message = "shadows/perk_meraslixir.mp3",
	    parentname = "vm_speed"
	})
	ambient_generic137.SetOrigin(org)
	ambient_generic137.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay138 = SpawnEntityFromTable("logic_relay", {
	    targetname = "perkbuff_speed",
	    "OnTrigger#1": "!activatorRunScriptCodeself.RemoveCurrency(3000)-1",
	    "OnTrigger#2": "!activatorRunScriptCodeEmitSoundEx({sound_name = `shadows/perk_usesfx.mp3`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })0-1",
	    "OnTrigger#3": "vm_speedsfx,PlaySound,0,2.2,-1",
	    "OnTrigger#4": "!activatorRunScriptCodeself.AddCustomAttribute(`faster reload rate`, 0.5, -1)2.2-1",
	    "OnTrigger#5": "!activatorRunScriptCodeself.AddCustomAttribute(`move speed bonus`, 1.15, -1)2.2-1",
	    "OnTrigger#6": "!activatorRunScriptCodeEmitSoundEx({sound_name = `weapons/buffed_on.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })2.2-1",
	    "OnTrigger#7": "!activatorRunScriptCodeClientPrint(self, 4, `Perk Bonus activated: Increased movement and reload speed!`)2.2-1",
	    "OnTrigger#8": "!activator,SpeakResponseConcept,TLK_PLAYER_SPELL_PICKUP_RARE,2.45,-1"
	})
	logic_relay138.SetOrigin(org)
	logic_relay138.SetAngles(ang[0], ang[1], ang[2])

}
::Vending_Blaster <- function(org, ang)
{
	local prop_dynamic139 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("0, 0, 50"),
	    disableshadows = 0,
	    model = "models/props_misc/vending_machine_01.mdl",
	    solid = 6,
	    skin = 1,
	    targetname = "vm_blaster"
	})
	prop_dynamic139.SetOrigin(org)
	prop_dynamic139.SetAngles(ang[0], ang[1], ang[2])

	local func_button_brush84 = SpawnEntityFromTable("func_button", {
	    origin = Vector("0, -12, 128"),
	    targetname = "vm_blasterbutton",
	    parentname = "vm_blaster",
	    damagefilter = "filter_blastermulti",
	    rendermode = 10,
	    movedir = "0 180 0",
	    spawnflags = 513,
	    speed = 5,
	    wait = 3,
	    sounds = 3,
	    mins = "-24 -8 -44",
	    maxs = "24 8 44",
	    "OnPressed#1": "perkbuff_blaster,trigger,0,-1",
	    "OnPressed#2": "filter_blastermoney,TestActivator,0,-1"
	})
	func_button_brush84.KeyValueFromInt("solid", 2)
	func_button_brush84.KeyValueFromString("mins", "-24 -8 -44")
	func_button_brush84.KeyValueFromString("maxs", "24 8 44")

	local $filter_sendprop140 = SpawnEntityFromTable("$filter_sendprop", {
	    targetname = "filter_blastermoney",
	    $name = "m_nCurrency",
	    negated = 0,
	    $value = 1500,
	    $compare = "greater than or equal"
	})
	$filter_sendprop140.SetOrigin(org)
	$filter_sendprop140.SetAngles(ang[0], ang[1], ang[2])

	local filter_multi141 = SpawnEntityFromTable("filter_multi", {
	    targetname = "filter_blastermulti",
	    filtertype = 0,
	    negated = 0,
	    filter01 = "filter_blastermoney",
	    filter02 = "filter_melee",
	    "OnFail#1": "!activatorRunScriptCodeEmitSoundEx({sound_name = `buttons/button8.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })0-1"
	})
	filter_multi141.SetOrigin(org)
	filter_multi141.SetAngles(ang[0], ang[1], ang[2])

	local trigger_multiple_brush85 = SpawnEntityFromTable("trigger_multiple", {
	    origin = Vector("0, 0, 50"),
	    targetname = "vm_blastermsg",
	    parentname = "vm_blaster",
	    filtername = "filter_redteam",
	    spawnflags = 1,
	    mins = "-128 -128 0",
	    maxs = "128 128 128",
	    "OnStartTouchAll#1": "!activatorRunScriptCodeClientPrint(self, 4, `Hold Action key to buy Head Rattle for $1500`)0-1"
	})
	trigger_multiple_brush85.KeyValueFromInt("solid", 2)
	trigger_multiple_brush85.KeyValueFromString("mins", "-128 -128 0")
	trigger_multiple_brush85.KeyValueFromString("maxs", "128 128 128")

	local ambient_generic142 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "vm_blastersfx",
	    spawnflags = 48,
	    health = 10,
	    radius = 15000,
	    pitch = 100,
	    message = "shadows/perk_headrattle.mp3",
	    parentname = "vm_blaster"
	})
	ambient_generic142.SetOrigin(org)
	ambient_generic142.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay143 = SpawnEntityFromTable("logic_relay", {
	    targetname = "perkbuff_blaster",
	    "OnTrigger#1": "!activatorRunScriptCodeself.RemoveCurrency(1500)-1",
	    "OnTrigger#2": "!activatorRunScriptCodeEmitSoundEx({sound_name = `shadows/perk_usesfx.mp3`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })0-1",
	    "OnTrigger#3": "vm_blastersfx,PlaySound,0,2.2,-1",
	    "OnTrigger#4": "!activatorRunScriptCodeself.AddCustomAttribute(`explosive sniper shot`, 2, -1)2.2-1",
	    "OnTrigger#5": "!activatorRunScriptCodeEmitSoundEx({sound_name = `weapons/buffed_on.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })2.2-1",
	    "OnTrigger#6": "!activatorRunScriptCodeClientPrint(self, 4, `Perk Bonus activated: Explosive Headshot!`)2.2-1",
	    "OnTrigger#7": "!activator,SpeakResponseConcept,TLK_PLAYER_SPELL_PICKUP_RARE,2.45,-1"
	})
	logic_relay143.SetOrigin(org)
	logic_relay143.SetAngles(ang[0], ang[1], ang[2])

}
::Vending_Doubletap <- function(org, ang)
{
	local prop_dynamic144 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("0, 0, 50"),
	    disableshadows = 0,
	    model = "models/props_misc/vending_machine_01.mdl",
	    solid = 6,
	    skin = 0,
	    targetname = "vm_dt"
	})
	prop_dynamic144.SetOrigin(org)
	prop_dynamic144.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic145 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("-24, -16, 132"),
	    angles = QAngle("-15, 0, 0"),
	    disableshadows = 0,
	    model = "models/weapons/c_models/c_shotgun/c_shotgun.mdl",
	    modelscale = 2,
	    solid = 0,
	    parentname = "vm_dt"
	})
	prop_dynamic145.SetOrigin(org)
	prop_dynamic145.SetAngles(ang[0], ang[1], ang[2])

	local func_button_brush86 = SpawnEntityFromTable("func_button", {
	    origin = Vector("0, -12, 128"),
	    targetname = "vm_dtbutton",
	    parentname = "vm_dt",
	    damagefilter = "filter_dtmulti",
	    rendermode = 10,
	    movedir = "0 180 0",
	    spawnflags = 513,
	    speed = 5,
	    wait = 3,
	    sounds = 3,
	    mins = "-24 -8 -44",
	    maxs = "24 8 44",
	    "OnPressed#1": "perkbuff_dt,trigger,0,-1",
	    "OnPressed#2": "filter_dtmoney,TestActivator,0,-1"
	})
	func_button_brush86.KeyValueFromInt("solid", 2)
	func_button_brush86.KeyValueFromString("mins", "-24 -8 -44")
	func_button_brush86.KeyValueFromString("maxs", "24 8 44")

	local $filter_sendprop146 = SpawnEntityFromTable("$filter_sendprop", {
	    targetname = "filter_dtmoney",
	    $name = "m_nCurrency",
	    negated = 0,
	    $value = 2000,
	    $compare = "greater than or equal"
	})
	$filter_sendprop146.SetOrigin(org)
	$filter_sendprop146.SetAngles(ang[0], ang[1], ang[2])

	local filter_multi147 = SpawnEntityFromTable("filter_multi", {
	    targetname = "filter_dtmulti",
	    filtertype = 0,
	    negated = 0,
	    filter01 = "filter_dtmoney",
	    filter02 = "filter_melee",
	    "OnFail#1": "!activatorRunScriptCodeEmitSoundEx({sound_name = `buttons/button8.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })0-1"
	})
	filter_multi147.SetOrigin(org)
	filter_multi147.SetAngles(ang[0], ang[1], ang[2])

	local trigger_multiple_brush87 = SpawnEntityFromTable("trigger_multiple", {
	    origin = Vector("0, 0, 50"),
	    targetname = "vm_dtmsg",
	    parentname = "vm_dt",
	    filtername = "filter_redteam",
	    spawnflags = 1,
	    mins = "-128 -128 0",
	    maxs = "128 128 128",
	    "OnStartTouchAll#1": "!activatorRunScriptCodeClientPrint(self, 4, `Hold Action key to buy Double Tap for $2000`)0-1"
	})
	trigger_multiple_brush87.KeyValueFromInt("solid", 2)
	trigger_multiple_brush87.KeyValueFromString("mins", "-128 -128 0")
	trigger_multiple_brush87.KeyValueFromString("maxs", "128 128 128")

	local ambient_generic148 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "vm_dtsfx",
	    spawnflags = 48,
	    health = 10,
	    radius = 15000,
	    pitch = 100,
	    message = "shadows/perk_doubletap.mp3",
	    parentname = "vm_dt"
	})
	ambient_generic148.SetOrigin(org)
	ambient_generic148.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay149 = SpawnEntityFromTable("logic_relay", {
	    targetname = "perkbuff_dt",
	    "OnTrigger#1": "!activatorRunScriptCodeself.RemoveCurrency(2000)-1",
	    "OnTrigger#2": "!activatorRunScriptCodeEmitSoundEx({sound_name = `shadows/perk_usesfx.mp3`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })0-1",
	    "OnTrigger#3": "vm_dtsfx,PlaySound,0,2.2,-1",
	    "OnTrigger#4": "!activatorRunScriptCodeself.AddCustomAttribute(`fire rate bonus`, 0.67, -1)-1",
	    "OnTrigger#5": "!activatorRunScriptCodeEmitSoundEx({sound_name = `weapons/buffed_on.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })2.2-1",
	    "OnTrigger#6": "!activatorRunScriptCodeClientPrint(self, 4, `Perk Bonus activated: Increased fire rate!`)2.2-1",
	    "OnTrigger#7": "!activator,SpeakResponseConcept,TLK_PLAYER_SPELL_PICKUP_RARE,2.45,-1"
	})
	logic_relay149.SetOrigin(org)
	logic_relay149.SetAngles(ang[0], ang[1], ang[2])

}
::Vending_Quickrevive <- function(org, ang)
{
	local prop_dynamic150 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("0, 0, 50"),
	    disableshadows = 0,
	    model = "models/props_misc/vending_machine_01.mdl",
	    solid = 6,
	    skin = 0,
	    targetname = "vm_quickrev"
	})
	prop_dynamic150.SetOrigin(org)
	prop_dynamic150.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic151 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("0, 0, 155"),
	    angles = QAngle("0, 270, 0"),
	    disableshadows = 0,
	    model = "models/props_mvm/mvm_human_skull.mdl",
	    modelscale = 2.5,
	    solid = 0,
	    parentname = "vm_quickrev"
	})
	prop_dynamic151.SetOrigin(org)
	prop_dynamic151.SetAngles(ang[0], ang[1], ang[2])

	local func_button_brush88 = SpawnEntityFromTable("func_button", {
	    origin = Vector("0, -12, 128"),
	    targetname = "vm_quickrevbutton",
	    parentname = "vm_quickrev",
	    damagefilter = "filter_quickrevmulti",
	    rendermode = 10,
	    movedir = "0 180 0",
	    spawnflags = 513,
	    speed = 5,
	    wait = 3,
	    sounds = 3,
	    mins = "-24 -8 -44",
	    maxs = "24 8 44",
	    "OnPressed#1": "perkbuff_quickrev,trigger,0,-1",
	    "OnPressed#2": "filter_quickrevmoney,TestActivator,0,-1"
	})
	func_button_brush88.KeyValueFromInt("solid", 2)
	func_button_brush88.KeyValueFromString("mins", "-24 -8 -44")
	func_button_brush88.KeyValueFromString("maxs", "24 8 44")

	local $filter_sendprop152 = SpawnEntityFromTable("$filter_sendprop", {
	    targetname = "filter_quickrevmoney",
	    $name = "m_nCurrency",
	    negated = 0,
	    $value = 1500,
	    $compare = "greater than or equal"
	})
	$filter_sendprop152.SetOrigin(org)
	$filter_sendprop152.SetAngles(ang[0], ang[1], ang[2])

	local filter_multi153 = SpawnEntityFromTable("filter_multi", {
	    targetname = "filter_quickrevmulti",
	    filtertype = 0,
	    negated = 0,
	    filter01 = "filter_quickrevmoney",
	    filter02 = "filter_melee",
	    "OnFail#1": "!activatorRunScriptCodeEmitSoundEx({sound_name = `buttons/button8.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })0-1"
	})
	filter_multi153.SetOrigin(org)
	filter_multi153.SetAngles(ang[0], ang[1], ang[2])

	local math_counter154 = SpawnEntityFromTable("math_counter", {
	    targetname = "vm_quickrevcount",
	    startvalue = 4,
	    startdisabled = 0,
	    min = 0,
	    max = 3,
	    "onhitmin#1": "vm_quickrev*,Kill,,2,-1"
	})
	math_counter154.SetOrigin(org)
	math_counter154.SetAngles(ang[0], ang[1], ang[2])

	local trigger_multiple_brush89 = SpawnEntityFromTable("trigger_multiple", {
	    origin = Vector("0, 0, 50"),
	    targetname = "vm_quickrevmsg",
	    parentname = "vm_quickrev",
	    filtername = "filter_redteam",
	    spawnflags = 1,
	    mins = "-128 -128 0",
	    maxs = "128 128 128",
	    "OnStartTouchAll#1": "!activatorRunScriptCodeClientPrint(self, 4, `Hold Action key to buy Ostarion's Reserve for $1500`)0-1"
	})
	trigger_multiple_brush89.KeyValueFromInt("solid", 2)
	trigger_multiple_brush89.KeyValueFromString("mins", "-128 -128 0")
	trigger_multiple_brush89.KeyValueFromString("maxs", "128 128 128")

	local ambient_generic155 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "vm_quickrevsfx",
	    spawnflags = 48,
	    health = 10,
	    radius = 15000,
	    pitch = 100,
	    message = "shadows/perk_regalreserve.mp3",
	    parentname = "vm_quickrev"
	})
	ambient_generic155.SetOrigin(org)
	ambient_generic155.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay156 = SpawnEntityFromTable("logic_relay", {
	    targetname = "perkbuff_quickrev",
	    "OnTrigger#1": "!activatorRunScriptCodeself.RemoveCurrency(1500)-1",
	    "OnTrigger#2": "vm_quickrevcount,Subtract,1,,-1",
	    "OnTrigger#3": "!activatorRunScriptCodeEmitSoundEx({sound_name = `shadows/perk_usesfx.mp3`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })0-1",
	    "OnTrigger#4": "vm_quickrevsfx,PlaySound,0,2.2,-1",
	    "OnTrigger#5": "!activatorRunScriptCodeself.AddCond(70)-1",
	    "OnTrigger#6": "!activatorRunScriptCodeself.AddCond(129)-1",
	    "OnTrigger#7": "!activatorRunScriptCodeEmitSoundEx({sound_name = `weapons/buffed_on.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })2.2-1",
	    "OnTrigger#8": "!activatorRunScriptCodeClientPrint(self, 4, `Perk Bonus activated: Survive one fatal attack!`)2.2-1",
	    "OnTrigger#9": "!activator,SpeakResponseConcept,TLK_PLAYER_SPELL_PICKUP_RARE,2.45,-1"
	})
	logic_relay156.SetOrigin(org)
	logic_relay156.SetAngles(ang[0], ang[1], ang[2])

}
::Vending_Flop <- function(org, ang)
{
	local prop_dynamic157 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("0, 0, 50"),
	    disableshadows = 0,
	    model = "models/props_misc/vending_machine_01.mdl",
	    solid = 6,
	    skin = 0,
	    targetname = "vm_flop"
	})
	prop_dynamic157.SetOrigin(org)
	prop_dynamic157.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic158 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("-0, -0, 148"),
	    angles = QAngle("0, 270, 0"),
	    disableshadows = 0,
	    model = "models/player/items/all_class/cowboyboots_soldier.mdl",
	    modelscale = 2,
	    solid = 0,
	    parentname = "vm_flop"
	})
	prop_dynamic158.SetOrigin(org)
	prop_dynamic158.SetAngles(ang[0], ang[1], ang[2])

	local func_button_brush90 = SpawnEntityFromTable("func_button", {
	    origin = Vector("0, -12, 128"),
	    targetname = "vm_flopbutton",
	    parentname = "vm_flop",
	    damagefilter = "filter_flopmulti",
	    rendermode = 10,
	    movedir = "0 180 0",
	    spawnflags = 513,
	    speed = 5,
	    wait = 3,
	    sounds = 3,
	    mins = "-24 -8 -44",
	    maxs = "24 8 44",
	    "OnPressed#1": "perkbuff_flop,trigger,0,-1",
	    "OnPressed#2": "filter_flopmoney,TestActivator,0,-1"
	})
	func_button_brush90.KeyValueFromInt("solid", 2)
	func_button_brush90.KeyValueFromString("mins", "-24 -8 -44")
	func_button_brush90.KeyValueFromString("maxs", "24 8 44")

	local $filter_sendprop159 = SpawnEntityFromTable("$filter_sendprop", {
	    targetname = "filter_flopmoney",
	    $name = "m_nCurrency",
	    negated = 0,
	    $value = 1000,
	    $compare = "greater than or equal"
	})
	$filter_sendprop159.SetOrigin(org)
	$filter_sendprop159.SetAngles(ang[0], ang[1], ang[2])

	local filter_multi160 = SpawnEntityFromTable("filter_multi", {
	    targetname = "filter_flopmulti",
	    filtertype = 0,
	    negated = 0,
	    filter01 = "filter_flopmoney",
	    filter02 = "filter_melee",
	    "OnFail#1": "!activatorRunScriptCodeEmitSoundEx({sound_name = `buttons/button8.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })0-1"
	})
	filter_multi160.SetOrigin(org)
	filter_multi160.SetAngles(ang[0], ang[1], ang[2])

	local trigger_multiple_brush91 = SpawnEntityFromTable("trigger_multiple", {
	    origin = Vector("0, 0, 50"),
	    targetname = "vm_flopmsg",
	    parentname = "vm_flop",
	    filtername = "filter_redteam",
	    spawnflags = 1,
	    mins = "-128 -128 0",
	    maxs = "128 128 128",
	    "OnStartTouchAll#1": "!activatorRunScriptCodeClientPrint(self, 4, `Hold Action key to buy Steelshin Lager for $1000`)0-1"
	})
	trigger_multiple_brush91.KeyValueFromInt("solid", 2)
	trigger_multiple_brush91.KeyValueFromString("mins", "-128 -128 0")
	trigger_multiple_brush91.KeyValueFromString("maxs", "128 128 128")

	local logic_relay161 = SpawnEntityFromTable("logic_relay", {
	    targetname = "perkbuff_flop",
	    "OnTrigger#1": "!activatorRunScriptCodeself.RemoveCurrency(1000)-1",
	    "OnTrigger#2": "!activatorRunScriptCodeEmitSoundEx({sound_name = `shadows/perk_usesfx.mp3`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })0-1",
	    "OnTrigger#3": "!activatorRunScriptCodeself.AddCustomAttribute(`blast dmg to self increased`, 0, -1)-1",
	    "OnTrigger#4": "!activatorRunScriptCodeEmitSoundEx({sound_name = `weapons/buffed_on.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })2.2-1",
	    "OnTrigger#5": "!activatorRunScriptCodeClientPrint(self, 4, `Perk Bonus activated: Self damage immunity!`)2.2-1",
	    "OnTrigger#6": "!activator,SpeakResponseConcept,TLK_PLAYER_SPELL_PICKUP_RARE,2.45,-1"
	})
	logic_relay161.SetOrigin(org)
	logic_relay161.SetAngles(ang[0], ang[1], ang[2])

}
::Roundtimer <- function(org, ang)
{
	local logic_relay162 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "roundcounter,SetValue,0,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION9"
	})
	logic_relay162.SetOrigin(org)
	logic_relay162.SetAngles(ang[0], ang[1], ang[2])

	local game_text163 = SpawnEntityFromTable("game_text", {
	    targetname = "roundtext",
	    color = "255 65 65",
	    color2 = "0 0 0",
	    fxtime = 2.3,
	    holdtime = 36000,
	    spawnflags = 1,
	    effect = 2,
	    channel = 1,
	    x = 0.1,
	    y = 0.05
	})
	game_text163.SetOrigin(org)
	game_text163.SetAngles(ang[0], ang[1], ang[2])

	local game_text164 = SpawnEntityFromTable("game_text", {
	    targetname = "enemytext",
	    color = "255 255 65",
	    color2 = "0 0 0",
	    holdtime = 36000,
	    fxtime = 2.3,
	    spawnflags = 1,
	    channel = 2,
	    effect = 2,
	    x = 0.1,
	    y = 0.1
	})
	game_text164.SetOrigin(org)
	game_text164.SetAngles(ang[0], ang[1], ang[2])

	local game_text165 = SpawnEntityFromTable("game_text", {
	    targetname = "poweruptext",
	    color = "255 255 255",
	    color2 = "255 255 255",
	    holdtime = 36000,
	    spawnflags = 1,
	    channel = 3,
	    x = 0.27,
	    y = 0.9
	})
	game_text165.SetOrigin(org)
	game_text165.SetAngles(ang[0], ang[1], ang[2])

	local math_counter166 = SpawnEntityFromTable("math_counter", {
	    targetname = "roundcounter",
	    max = 255,
	    "outvalue#1": "roundformat:AddOutput:case01 :0:-1",
	    "OutValue#2": "tf_objective_resourceRunScriptCodeNetProps.SetPropInt(self, `m_nMannVsMachineWaveCount`, )0-1",
	    "outvalue#3": "gameoverformat:AddOutput:case01 :0:-1"
	})
	math_counter166.SetOrigin(org)
	math_counter166.SetAngles(ang[0], ang[1], ang[2])

	local math_counter167 = SpawnEntityFromTable("math_counter", {
	    targetname = "enemycounter",
	    startvalue = 0,
	    min = 0,
	    max = 26,
	    "outvalue#1": "enemyformat:AddOutput:case01 :0:-1"
	})
	math_counter167.SetOrigin(org)
	math_counter167.SetAngles(ang[0], ang[1], ang[2])

	local logic_case168 = SpawnEntityFromTable("logic_case", {
	    targetname = "enemyformat",
	    case16 = "% active enemies",
	    "ondefault#1": "enemytext:AddOutput:message :0:-1",
	    "ondefault#2": "enemytext,display,0,0,-1"
	})
	logic_case168.SetOrigin(org)
	logic_case168.SetAngles(ang[0], ang[1], ang[2])

	local logic_case169 = SpawnEntityFromTable("logic_case", {
	    targetname = "roundformat",
	    case16 = "Round %"
	})
	logic_case169.SetOrigin(org)
	logic_case169.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay170 = SpawnEntityFromTable("logic_relay", {
	    targetname = "realtimer",
	    spawnflags = 2,
	    "ontrigger#1": "roundformat,$format,,0.01,-1",
	    "OnUser2#2": "gameoverformat,$format,,0.01,-1"
	})
	logic_relay170.SetOrigin(org)
	logic_relay170.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay171 = SpawnEntityFromTable("logic_relay", {
	    targetname = "relay_enemycount_add",
	    spawnflags = 2,
	    "ontrigger#1": "enemyformat,$format,,0.05,-1",
	    "ontrigger#2": "enemyformat,$format,,0.25,-1",
	    "ontrigger#3": "enemycounter,add,1,,-1"
	})
	logic_relay171.SetOrigin(org)
	logic_relay171.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay172 = SpawnEntityFromTable("logic_relay", {
	    targetname = "relay_enemycount_subtract",
	    spawnflags = 2,
	    "ontrigger#1": "enemyformat,$format,,0.05,-1",
	    "ontrigger#2": "enemyformat,$format,,0.25,-1",
	    "ontrigger#3": "enemycounter,subtract,1,,-1"
	})
	logic_relay172.SetOrigin(org)
	logic_relay172.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay173 = SpawnEntityFromTable("logic_relay", {
	    targetname = "relay_enemycount_reset",
	    spawnflags = 2,
	    "ontrigger#1": "enemyformat,$format,,0.01,-1",
	    "ontrigger#2": "enemycounter,setvalue,0,,-1"
	})
	logic_relay173.SetOrigin(org)
	logic_relay173.SetAngles(ang[0], ang[1], ang[2])

}
::DoublePointsSpawner <- function(org, ang)
{
	local env_entity_maker174 = SpawnEntityFromTable("env_entity_maker", {
	    targetname = "DoublePoints_spawner",
	    EntityTemplate = "DoublePointsDrop"
	})
	env_entity_maker174.SetOrigin(org)
	env_entity_maker174.SetAngles(ang[0], ang[1], ang[2])

}
::DoublePointsDrop <- function(org, ang)
{
	local info_particle_system175 = SpawnEntityFromTable("info_particle_system", {
	    effect_name = "spellbook_rainbow",
	    targetname = "powerup_particle",
	    parentname = "powerup_prop",
	    start_active = 1,
	    origin = Vector("0, 0, 24")
	})
	info_particle_system175.SetOrigin(org)
	info_particle_system175.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic176 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "powerup_prop",
	    parentname = "powerup_rot",
	    model = "models\items\target_duck.mdl",
	    solid = 0,
	    modelscale = 0.8,
	    origin = Vector("0, 0, 10")
	})
	prop_dynamic176.SetOrigin(org)
	prop_dynamic176.SetAngles(ang[0], ang[1], ang[2])

	local func_rotating_brush92 = SpawnEntityFromTable("func_rotating", {
	    spawnflags = 65,
	    maxspeed = 48,
	    solidbsp = 0,
	    rendermode = 10,
	    targetname = "powerup_rot",
	    mins = "-1 -1 -1",
	    maxs = "1 1 1"
	})
	func_rotating_brush92.KeyValueFromInt("solid", 2)
	func_rotating_brush92.KeyValueFromString("mins", "-1 -1 -1")
	func_rotating_brush92.KeyValueFromString("maxs", "1 1 1")

	local trigger_multiple_brush93 = SpawnEntityFromTable("trigger_multiple", {
	    targetname = "powerup_trigger",
	    parentname = "powerup_prop",
	    filtername = "filter_redteam",
	    spawnflags = 1,
	    mins = "-12 -12 -12",
	    maxs = "12 12 12",
	    origin = Vector("0, 0, 24"),
	    "OnStartTouchAll#1": "powerup_rot,KillHierarchy,,-1",
	    "OnStartTouchAll#2": "popscript,$ActivateDoublePoints,,-1"
	})
	trigger_multiple_brush93.KeyValueFromInt("solid", 2)
	trigger_multiple_brush93.KeyValueFromString("mins", "-12 -12 -12")
	trigger_multiple_brush93.KeyValueFromString("maxs", "12 12 12")

	local logic_timer177 = SpawnEntityFromTable("logic_timer", {
	    targetname = "powerup_blinker",
	    RefireTime = 0.5,
	    spawnflags = 1,
	    parentname = "powerup_prop",
	    StartDisabled = 1,
	    "OnTimerHigh#1": "powerup_prop,Disable,,0,-1",
	    "OnTimerLow#2": "powerup_prop,Enable,,0,-1"
	})
	logic_timer177.SetOrigin(org)
	logic_timer177.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer178 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 15,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_blinker,Enable,,-1"
	})
	logic_timer178.SetOrigin(org)
	logic_timer178.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer179 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 20,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_blinker,RefireTime,0.25,-1"
	})
	logic_timer179.SetOrigin(org)
	logic_timer179.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer180 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 25,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_blinker,RefireTime,0.1,-1"
	})
	logic_timer180.SetOrigin(org)
	logic_timer180.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer181 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 30,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_rot,KillHierarchy,,-1"
	})
	logic_timer181.SetOrigin(org)
	logic_timer181.SetAngles(ang[0], ang[1], ang[2])

}
::FireSaleSpawner <- function(org, ang)
{
	local env_entity_maker182 = SpawnEntityFromTable("env_entity_maker", {
	    targetname = "FireSale_spawner",
	    EntityTemplate = "FireSaleDrop"
	})
	env_entity_maker182.SetOrigin(org)
	env_entity_maker182.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic183 = SpawnEntityFromTable("ambient_generic", {
	    health = 7,
	    message = "#*shadows/gallery_music.mp3",
	    radius = 20,
	    spawnflags = 49,
	    targetname = "firesale_music"
	})
	ambient_generic183.SetOrigin(org)
	ambient_generic183.SetAngles(ang[0], ang[1], ang[2])

}
::FireSaleDrop <- function(org, ang)
{
	local info_particle_system184 = SpawnEntityFromTable("info_particle_system", {
	    effect_name = "spellbook_rainbow",
	    targetname = "powerup_particle",
	    parentname = "powerup_prop",
	    start_active = 1,
	    origin = Vector("0, 0, 24")
	})
	info_particle_system184.SetOrigin(org)
	info_particle_system184.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic185 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "powerup_prop",
	    parentname = "powerup_rot",
	    model = "models\props_doomsday\australium_container.mdl",
	    solid = 0,
	    modelscale = 1,
	    origin = Vector("0, 0, 24"),
	    angles = QAngle("0, 0, 45")
	})
	prop_dynamic185.SetOrigin(org)
	prop_dynamic185.SetAngles(ang[0], ang[1], ang[2])

	local func_rotating_brush94 = SpawnEntityFromTable("func_rotating", {
	    spawnflags = 65,
	    maxspeed = 48,
	    solidbsp = 0,
	    rendermode = 10,
	    targetname = "powerup_rot",
	    mins = "-1 -1 -1",
	    maxs = "1 1 1"
	})
	func_rotating_brush94.KeyValueFromInt("solid", 2)
	func_rotating_brush94.KeyValueFromString("mins", "-1 -1 -1")
	func_rotating_brush94.KeyValueFromString("maxs", "1 1 1")

	local trigger_multiple_brush95 = SpawnEntityFromTable("trigger_multiple", {
	    targetname = "powerup_trigger",
	    parentname = "powerup_prop",
	    filtername = "filter_redteam",
	    spawnflags = 1,
	    mins = "-12 -12 -12",
	    maxs = "12 12 12",
	    origin = Vector("0, 0, 24"),
	    "OnStartTouchAll#1": "powerup_rot,KillHierarchy,,-1",
	    "OnStartTouchAll#2": "popscript,$ActivateFireSale,,-1"
	})
	trigger_multiple_brush95.KeyValueFromInt("solid", 2)
	trigger_multiple_brush95.KeyValueFromString("mins", "-12 -12 -12")
	trigger_multiple_brush95.KeyValueFromString("maxs", "12 12 12")

	local logic_timer186 = SpawnEntityFromTable("logic_timer", {
	    targetname = "powerup_blinker",
	    RefireTime = 0.5,
	    spawnflags = 1,
	    parentname = "powerup_prop",
	    StartDisabled = 1,
	    "OnTimerHigh#1": "powerup_prop,Disable,,0,-1",
	    "OnTimerLow#2": "powerup_prop,Enable,,0,-1"
	})
	logic_timer186.SetOrigin(org)
	logic_timer186.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer187 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 15,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_blinker,Enable,,-1"
	})
	logic_timer187.SetOrigin(org)
	logic_timer187.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer188 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 20,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_blinker,RefireTime,0.25,-1"
	})
	logic_timer188.SetOrigin(org)
	logic_timer188.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer189 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 25,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_blinker,RefireTime,0.1,-1"
	})
	logic_timer189.SetOrigin(org)
	logic_timer189.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer190 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 30,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_rot,KillHierarchy,,-1"
	})
	logic_timer190.SetOrigin(org)
	logic_timer190.SetAngles(ang[0], ang[1], ang[2])

}
::InstakillSpawner <- function(org, ang)
{
	local env_entity_maker191 = SpawnEntityFromTable("env_entity_maker", {
	    targetname = "Instakill_spawner",
	    EntityTemplate = "InstakillDrop"
	})
	env_entity_maker191.SetOrigin(org)
	env_entity_maker191.SetAngles(ang[0], ang[1], ang[2])

}
::InstakillDrop <- function(org, ang)
{
	local info_particle_system192 = SpawnEntityFromTable("info_particle_system", {
	    effect_name = "spellbook_rainbow",
	    targetname = "powerup_particle",
	    parentname = "powerup_prop",
	    start_active = 1,
	    origin = Vector("0, 0, 24")
	})
	info_particle_system192.SetOrigin(org)
	info_particle_system192.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic193 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "powerup_prop",
	    parentname = "powerup_rot",
	    model = "models\props_mvm\mvm_human_skull.mdl",
	    solid = 0,
	    modelscale = 2.3,
	    origin = Vector("0, 0, 24"),
	    angles = QAngle("-15, 0, 0")
	})
	prop_dynamic193.SetOrigin(org)
	prop_dynamic193.SetAngles(ang[0], ang[1], ang[2])

	local func_rotating_brush96 = SpawnEntityFromTable("func_rotating", {
	    spawnflags = 65,
	    maxspeed = 48,
	    solidbsp = 0,
	    rendermode = 10,
	    targetname = "powerup_rot",
	    mins = "-1 -1 -1",
	    maxs = "1 1 1"
	})
	func_rotating_brush96.KeyValueFromInt("solid", 2)
	func_rotating_brush96.KeyValueFromString("mins", "-1 -1 -1")
	func_rotating_brush96.KeyValueFromString("maxs", "1 1 1")

	local trigger_multiple_brush97 = SpawnEntityFromTable("trigger_multiple", {
	    targetname = "powerup_trigger",
	    parentname = "powerup_prop",
	    filtername = "filter_redteam",
	    spawnflags = 1,
	    mins = "-12 -12 -12",
	    maxs = "12 12 12",
	    origin = Vector("0, 0, 24"),
	    "OnStartTouchAll#1": "powerup_rot,KillHierarchy,,-1",
	    "OnStartTouchAll#2": "popscript,$ActivateInstakill,,-1"
	})
	trigger_multiple_brush97.KeyValueFromInt("solid", 2)
	trigger_multiple_brush97.KeyValueFromString("mins", "-12 -12 -12")
	trigger_multiple_brush97.KeyValueFromString("maxs", "12 12 12")

	local logic_timer194 = SpawnEntityFromTable("logic_timer", {
	    targetname = "powerup_blinker",
	    RefireTime = 0.5,
	    spawnflags = 1,
	    parentname = "powerup_prop",
	    StartDisabled = 1,
	    "OnTimerHigh#1": "powerup_prop,Disable,,0,-1",
	    "OnTimerLow#2": "powerup_prop,Enable,,0,-1"
	})
	logic_timer194.SetOrigin(org)
	logic_timer194.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer195 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 15,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_blinker,Enable,,-1"
	})
	logic_timer195.SetOrigin(org)
	logic_timer195.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer196 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 20,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_blinker,RefireTime,0.25,-1"
	})
	logic_timer196.SetOrigin(org)
	logic_timer196.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer197 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 25,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_blinker,RefireTime,0.1,-1"
	})
	logic_timer197.SetOrigin(org)
	logic_timer197.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer198 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 30,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_rot,KillHierarchy,,-1"
	})
	logic_timer198.SetOrigin(org)
	logic_timer198.SetAngles(ang[0], ang[1], ang[2])

}
::NukeSpawner <- function(org, ang)
{
	local env_entity_maker199 = SpawnEntityFromTable("env_entity_maker", {
	    targetname = "Nuke_spawner",
	    EntityTemplate = "NukeDrop"
	})
	env_entity_maker199.SetOrigin(org)
	env_entity_maker199.SetAngles(ang[0], ang[1], ang[2])

}
::NukeDrop <- function(org, ang)
{
	local info_particle_system200 = SpawnEntityFromTable("info_particle_system", {
	    effect_name = "spellbook_rainbow",
	    targetname = "powerup_particle",
	    parentname = "powerup_prop",
	    start_active = 1,
	    origin = Vector("0, 0, 24")
	})
	info_particle_system200.SetOrigin(org)
	info_particle_system200.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system201 = SpawnEntityFromTable("info_particle_system", {
	    effect_name = "taunt_demo_nuke_shroomcloud",
	    targetname = "powerup_particlenuke",
	    start_active = 0,
	    origin = Vector("0, 0, 24")
	})
	info_particle_system201.SetOrigin(org)
	info_particle_system201.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic202 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "powerup_prop",
	    parentname = "powerup_rot",
	    model = "models/props_trainyard/cart_bomb_separate.mdl",
	    solid = 0,
	    modelscale = 0.5,
	    origin = Vector("0, 0, 32"),
	    angles = QAngle("-45, 0, 0")
	})
	prop_dynamic202.SetOrigin(org)
	prop_dynamic202.SetAngles(ang[0], ang[1], ang[2])

	local func_rotating_brush98 = SpawnEntityFromTable("func_rotating", {
	    spawnflags = 65,
	    maxspeed = 48,
	    solidbsp = 0,
	    rendermode = 10,
	    targetname = "powerup_rot",
	    mins = "-1 -1 -1",
	    maxs = "1 1 1"
	})
	func_rotating_brush98.KeyValueFromInt("solid", 2)
	func_rotating_brush98.KeyValueFromString("mins", "-1 -1 -1")
	func_rotating_brush98.KeyValueFromString("maxs", "1 1 1")

	local trigger_multiple_brush99 = SpawnEntityFromTable("trigger_multiple", {
	    targetname = "powerup_trigger",
	    parentname = "powerup_prop",
	    filtername = "filter_redteam",
	    spawnflags = 1,
	    mins = "-12 -12 -12",
	    maxs = "12 12 12",
	    origin = Vector("0, 0, 24"),
	    "OnStartTouchAll#1": "powerup_rot,KillHierarchy,,-1",
	    "OnStartTouchAll#2": "powerup_particlenuke,Start,,-1",
	    "OnStartTouchAll#3": "powerup_particlenuke,Kill,,10,-1",
	    "OnStartTouchAll#4": "popscript,$ActivateNuke,,-1",
	    "OnStartTouchAll#5": "hologram_nuke,Disable,,-1",
	    "OnStartTouchAll#6": "hologram_nuke_snd,PlaySound,,-1",
	    "OnStartTouchAll#7": "nuke_shake,StartShake,,-1",
	    "OnStartTouchAll#8": "nuke_fade,Fade,,-1",
	    "OnStartTouchAll#9": "powerup_timer,Enable,,-1",
	    "OnStartTouchAll#10": "plate,skin,0,-1",
	    "OnStartTouchAll#11": "!activatorRunScriptCodeself.AddCurrency(400)3-1"
	})
	trigger_multiple_brush99.KeyValueFromInt("solid", 2)
	trigger_multiple_brush99.KeyValueFromString("mins", "-12 -12 -12")
	trigger_multiple_brush99.KeyValueFromString("maxs", "12 12 12")

	local logic_timer203 = SpawnEntityFromTable("logic_timer", {
	    targetname = "powerup_blinker",
	    RefireTime = 0.5,
	    spawnflags = 1,
	    parentname = "powerup_prop",
	    StartDisabled = 1,
	    "OnTimerHigh#1": "powerup_prop,Disable,,0,-1",
	    "OnTimerLow#2": "powerup_prop,Enable,,0,-1"
	})
	logic_timer203.SetOrigin(org)
	logic_timer203.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer204 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 15,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_blinker,Enable,,-1"
	})
	logic_timer204.SetOrigin(org)
	logic_timer204.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer205 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 20,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_blinker,RefireTime,0.25,-1"
	})
	logic_timer205.SetOrigin(org)
	logic_timer205.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer206 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 25,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_blinker,RefireTime,0.1,-1"
	})
	logic_timer206.SetOrigin(org)
	logic_timer206.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer207 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 30,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_rot,KillHierarchy,,-1"
	})
	logic_timer207.SetOrigin(org)
	logic_timer207.SetAngles(ang[0], ang[1], ang[2])

	local env_shake208 = SpawnEntityFromTable("env_shake", {
	    amplitude = 16,
	    duration = 3,
	    frequency = 40,
	    radius = 48,
	    spawnflags = 1,
	    targetname = "nuke_shake"
	})
	env_shake208.SetOrigin(org)
	env_shake208.SetAngles(ang[0], ang[1], ang[2])

	local env_fade209 = SpawnEntityFromTable("env_fade", {
	    targetname = "nuke_fade",
	    duration = 1.3,
	    spawnflags = 1,
	    rendercolor = "255 255 255"
	})
	env_fade209.SetOrigin(org)
	env_fade209.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic210 = SpawnEntityFromTable("ambient_generic", {
	    health = 10,
	    message = ")misc/doomsday_missile_explosion.wav",
	    radius = 20,
	    pitch = 100,
	    spawnflags = 49,
	    targetname = "hologram_nuke_snd"
	})
	ambient_generic210.SetOrigin(org)
	ambient_generic210.SetAngles(ang[0], ang[1], ang[2])

	local trigger_hurt_brush100 = SpawnEntityFromTable("trigger_hurt", {
	    damage = 4500,
	    spawnflags = 1,
	    mins = "-9999 -9999 -9999",
	    maxs = "9999 9999 9999",
	    startdisabled = 1,
	    targetname = "hologram_nuke_hurt",
	    filtername = "filter_notred",
	    origin = Vector("0, 0, 0")
	})
	trigger_hurt_brush100.KeyValueFromInt("solid", 2)
	trigger_hurt_brush100.KeyValueFromString("mins", "-9999 -9999 -9999")
	trigger_hurt_brush100.KeyValueFromString("maxs", "9999 9999 9999")

	local filter_activator_tfteam211 = SpawnEntityFromTable("filter_activator_tfteam", {
	    targetname = "filter_notred",
	    teamnum = 2,
	    negated = 1
	})
	filter_activator_tfteam211.SetOrigin(org)
	filter_activator_tfteam211.SetAngles(ang[0], ang[1], ang[2])

}
::MaxAmmoSpawner <- function(org, ang)
{
	local env_entity_maker212 = SpawnEntityFromTable("env_entity_maker", {
	    targetname = "MaxAmmo_spawner",
	    EntityTemplate = "MaxAmmoDrop"
	})
	env_entity_maker212.SetOrigin(org)
	env_entity_maker212.SetAngles(ang[0], ang[1], ang[2])

}
::MaxAmmoDrop <- function(org, ang)
{
	local info_particle_system213 = SpawnEntityFromTable("info_particle_system", {
	    effect_name = "spellbook_rainbow",
	    targetname = "powerup_particle",
	    parentname = "powerup_prop",
	    start_active = 1,
	    origin = Vector("0, 0, 24")
	})
	info_particle_system213.SetOrigin(org)
	info_particle_system213.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic214 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "powerup_prop",
	    parentname = "powerup_rot",
	    model = "models\items\ammopack_large.mdl",
	    solid = 0,
	    modelscale = 1,
	    origin = Vector("0, 0, 10"),
	    angles = QAngle("15, 0, 0")
	})
	prop_dynamic214.SetOrigin(org)
	prop_dynamic214.SetAngles(ang[0], ang[1], ang[2])

	local func_rotating_brush101 = SpawnEntityFromTable("func_rotating", {
	    spawnflags = 65,
	    maxspeed = 48,
	    solidbsp = 0,
	    rendermode = 10,
	    targetname = "powerup_rot",
	    mins = "-1 -1 -1",
	    maxs = "1 1 1"
	})
	func_rotating_brush101.KeyValueFromInt("solid", 2)
	func_rotating_brush101.KeyValueFromString("mins", "-1 -1 -1")
	func_rotating_brush101.KeyValueFromString("maxs", "1 1 1")

	local trigger_multiple_brush102 = SpawnEntityFromTable("trigger_multiple", {
	    targetname = "powerup_trigger",
	    parentname = "powerup_prop",
	    filtername = "filter_redteam",
	    spawnflags = 1,
	    mins = "-12 -12 -12",
	    maxs = "12 12 12",
	    origin = Vector("0, 0, 24"),
	    "OnStartTouchAll#1": "powerup_rot,KillHierarchy,,-1",
	    "OnStartTouchAll#2": "popscript,$ActivateMaxAmmo,,-1"
	})
	trigger_multiple_brush102.KeyValueFromInt("solid", 2)
	trigger_multiple_brush102.KeyValueFromString("mins", "-12 -12 -12")
	trigger_multiple_brush102.KeyValueFromString("maxs", "12 12 12")

	local logic_timer215 = SpawnEntityFromTable("logic_timer", {
	    targetname = "powerup_blinker",
	    RefireTime = 0.5,
	    spawnflags = 1,
	    parentname = "powerup_prop",
	    StartDisabled = 1,
	    "OnTimerHigh#1": "powerup_prop,Disable,,0,-1",
	    "OnTimerLow#2": "powerup_prop,Enable,,0,-1"
	})
	logic_timer215.SetOrigin(org)
	logic_timer215.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer216 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 15,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_blinker,Enable,,-1"
	})
	logic_timer216.SetOrigin(org)
	logic_timer216.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer217 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 20,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_blinker,RefireTime,0.25,-1"
	})
	logic_timer217.SetOrigin(org)
	logic_timer217.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer218 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 25,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_blinker,RefireTime,0.1,-1"
	})
	logic_timer218.SetOrigin(org)
	logic_timer218.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer219 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 30,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_rot,KillHierarchy,,-1"
	})
	logic_timer219.SetOrigin(org)
	logic_timer219.SetAngles(ang[0], ang[1], ang[2])

}
::BonusPointsSpawner <- function(org, ang)
{
	local env_entity_maker220 = SpawnEntityFromTable("env_entity_maker", {
	    targetname = "BonusPoints_spawner",
	    EntityTemplate = "BonusPointsDrop"
	})
	env_entity_maker220.SetOrigin(org)
	env_entity_maker220.SetAngles(ang[0], ang[1], ang[2])

}
::BonusPointsDrop <- function(org, ang)
{
	local info_particle_system221 = SpawnEntityFromTable("info_particle_system", {
	    effect_name = "spellbook_rainbow",
	    targetname = "powerup_particle",
	    parentname = "powerup_prop",
	    start_active = 1,
	    origin = Vector("0, 0, 24")
	})
	info_particle_system221.SetOrigin(org)
	info_particle_system221.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic222 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "powerup_prop",
	    parentname = "powerup_rot",
	    model = "models\items\currencypack_large.mdl",
	    solid = 0,
	    modelscale = 1,
	    origin = Vector("0, 0, 10"),
	    angles = QAngle("15, 0, 0")
	})
	prop_dynamic222.SetOrigin(org)
	prop_dynamic222.SetAngles(ang[0], ang[1], ang[2])

	local func_rotating_brush103 = SpawnEntityFromTable("func_rotating", {
	    spawnflags = 65,
	    mins = = "0 0 0",
	    maxs = = "1 1 1",
	    maxspeed = 48,
	    solidbsp = 0,
	    rendermode = 10,
	    targetname = "powerup_rot",
	    mins = "-1 -1 -1",
	    maxs = "1 1 1"
	})
	func_rotating_brush103.KeyValueFromInt("solid", 2)
	func_rotating_brush103.KeyValueFromString("mins", "-1 -1 -1")
	func_rotating_brush103.KeyValueFromString("maxs", "1 1 1")

	local trigger_multiple_brush104 = SpawnEntityFromTable("trigger_multiple", {
	    targetname = "powerup_trigger",
	    parentname = "powerup_prop",
	    filtername = "filter_redteam",
	    spawnflags = 1,
	    mins = "-12 -12 -12",
	    maxs = "12 12 12",
	    origin = Vector("0, 0, 24"),
	    "OnStartTouchAll#1": "powerup_rot,KillHierarchy,,-1",
	    "OnStartTouchAll#2": "popscript,$ActivateBonusPoints,,-1"
	})
	trigger_multiple_brush104.KeyValueFromInt("solid", 2)
	trigger_multiple_brush104.KeyValueFromString("mins", "-12 -12 -12")
	trigger_multiple_brush104.KeyValueFromString("maxs", "12 12 12")

	local logic_timer223 = SpawnEntityFromTable("logic_timer", {
	    targetname = "powerup_blinker",
	    RefireTime = 0.5,
	    spawnflags = 1,
	    parentname = "powerup_prop",
	    StartDisabled = 1,
	    "OnTimerHigh#1": "powerup_prop,Disable,,0,-1",
	    "OnTimerLow#2": "powerup_prop,Enable,,0,-1"
	})
	logic_timer223.SetOrigin(org)
	logic_timer223.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer224 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 15,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_blinker,Enable,,-1"
	})
	logic_timer224.SetOrigin(org)
	logic_timer224.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer225 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 20,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_blinker,RefireTime,0.25,-1"
	})
	logic_timer225.SetOrigin(org)
	logic_timer225.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer226 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 25,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_blinker,RefireTime,0.1,-1"
	})
	logic_timer226.SetOrigin(org)
	logic_timer226.SetAngles(ang[0], ang[1], ang[2])

	local logic_timer227 = SpawnEntityFromTable("logic_timer", {
	    RefireTime = 30,
	    parentname = "powerup_prop",
	    "OnTimer#1": "powerup_rot,KillHierarchy,,-1"
	})
	logic_timer227.SetOrigin(org)
	logic_timer227.SetAngles(ang[0], ang[1], ang[2])

}
::DumpsterSpawner <- function(org, ang)
{
	local env_entity_maker228 = SpawnEntityFromTable("env_entity_maker", {
	    targetname = "dumpster_spawner1",
	    EntityTemplate = "DumpsterBoxRewrite1"
	})
	env_entity_maker228.SetOrigin(org)
	env_entity_maker228.SetAngles(ang[0], ang[1], ang[2])

	local env_entity_maker229 = SpawnEntityFromTable("env_entity_maker", {
	    targetname = "dumpster_spawner2",
	    EntityTemplate = "DumpsterBoxRewrite2",
	    angles = QAngle("0, 270, 0")
	})
	env_entity_maker229.SetOrigin(org)
	env_entity_maker229.SetAngles(ang[0], ang[1], ang[2])

	local env_entity_maker230 = SpawnEntityFromTable("env_entity_maker", {
	    targetname = "dumpster_spawner3",
	    EntityTemplate = "DumpsterBoxRewrite3"
	})
	env_entity_maker230.SetOrigin(org)
	env_entity_maker230.SetAngles(ang[0], ang[1], ang[2])

	local env_entity_maker231 = SpawnEntityFromTable("env_entity_maker", {
	    targetname = "dumpster_spawner4",
	    EntityTemplate = "DumpsterBoxRewrite4",
	    angles = QAngle("0, 180, 0")
	})
	env_entity_maker231.SetOrigin(org)
	env_entity_maker231.SetAngles(ang[0], ang[1], ang[2])

	local env_entity_maker232 = SpawnEntityFromTable("env_entity_maker", {
	    targetname = "dumpster_spawner5",
	    EntityTemplate = "DumpsterBoxRewrite5"
	})
	env_entity_maker232.SetOrigin(org)
	env_entity_maker232.SetAngles(ang[0], ang[1], ang[2])

	local point_teleport233 = SpawnEntityFromTable("point_teleport", {
	    targetname = "dumpster_tele_1",
	    origin = Vector("447, -2322, 8"),
	    angles = QAngle("0, 0, 0")
	})
	point_teleport233.SetOrigin(org)
	point_teleport233.SetAngles(ang[0], ang[1], ang[2])

	local point_teleport234 = SpawnEntityFromTable("point_teleport", {
	    targetname = "dumpster_tele_2",
	    origin = Vector("-399, -1380, -1"),
	    angles = QAngle("0, 270, 0")
	})
	point_teleport234.SetOrigin(org)
	point_teleport234.SetAngles(ang[0], ang[1], ang[2])

	local point_teleport235 = SpawnEntityFromTable("point_teleport", {
	    targetname = "dumpster_tele_3",
	    origin = Vector("986, 1338, 96"),
	    angles = QAngle("0, 0, 0")
	})
	point_teleport235.SetOrigin(org)
	point_teleport235.SetAngles(ang[0], ang[1], ang[2])

	local point_teleport236 = SpawnEntityFromTable("point_teleport", {
	    targetname = "dumpster_tele_4",
	    origin = Vector("-788, 1016, -1"),
	    angles = QAngle("0, 180, 0")
	})
	point_teleport236.SetOrigin(org)
	point_teleport236.SetAngles(ang[0], ang[1], ang[2])

	local point_teleport237 = SpawnEntityFromTable("point_teleport", {
	    targetname = "dumpster_tele_5",
	    origin = Vector("-548, -2216, 3"),
	    angles = QAngle("0, 0, 0")
	})
	point_teleport237.SetOrigin(org)
	point_teleport237.SetAngles(ang[0], ang[1], ang[2])

	local point_teleport238 = SpawnEntityFromTable("point_teleport", {
	    targetname = "dumpster_tele_out",
	    origin = Vector("-512, -25, -1008"),
	    angles = QAngle("0, 0, 0")
	})
	point_teleport238.SetOrigin(org)
	point_teleport238.SetAngles(ang[0], ang[1], ang[2])

}
::DumpsterBoxRewrite1 <- function(org, ang)
{
	local prop_dynamic239 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("0, 0, 104"),
	    angles = QAngle("90, 0, 180"),
	    disableshadows = 0,
	    model = "models/workshop/player/items/all_class/mvm_memes_player/mvm_memes_player_heavy.mdl",
	    solid = 0,
	    startdisabled = 1,
	    modelscale = 3,
	    targetname = "dumpster_dudprop1",
	    parentname = "dumpster_prop1"
	})
	prop_dynamic239.SetOrigin(org)
	prop_dynamic239.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system240 = SpawnEntityFromTable("info_particle_system", {
	    origin = Vector("0, 0, 24"),
	    effect_name = "eyeboss_tp_vortex",
	    targetname = "dumpster_warp_eff1",
	    parentname = "dumpster_prop1"
	})
	info_particle_system240.SetOrigin(org)
	info_particle_system240.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system241 = SpawnEntityFromTable("info_particle_system", {
	    origin = Vector("0, 0, 24"),
	    effect_name = "teleporter_mvm_bot_persist",
	    targetname = "dumpster_warp_beam1",
	    parentname = "dumpster_prop1"
	})
	info_particle_system241.SetOrigin(org)
	info_particle_system241.SetAngles(ang[0], ang[1], ang[2])

	local trigger_push_brush105 = SpawnEntityFromTable("trigger_push", {
	    origin = Vector("0, 0, 0"),
	    pushdir = "0 180 0",
	    spawnflags = 1,
	    speed = 512,
	    targetname = "dumpster_push1",
	    mins = "-32 -66 -16",
	    maxs = "12 66 64"
	})
	trigger_push_brush105.KeyValueFromInt("solid", 2)
	trigger_push_brush105.KeyValueFromString("mins", "-32 -66 -16")
	trigger_push_brush105.KeyValueFromString("maxs", "12 66 64")

	local prop_dynamic242 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("0, 0, 0"),
	    disableshadows = 0,
	    model = "models/props_construction/dumpster_body.mdl",
	    solid = 6,
	    skin = 2,
	    targetname = "dumpster_prop1"
	})
	prop_dynamic242.SetOrigin(org)
	prop_dynamic242.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic243 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "dumpster_lid1",
	    origin = Vector("0, 0, 0"),
	    disableshadows = 0,
	    model = "models/props_construction/dumpster_lid.mdl",
	    solid = 0,
	    skin = 2,
	    parentname = "dumpster_rotdoor1"
	})
	prop_dynamic243.SetOrigin(org)
	prop_dynamic243.SetAngles(ang[0], ang[1], ang[2])

	local func_door_rotating_brush106 = SpawnEntityFromTable("func_door_rotating", {
	    targetname = "dumpster_rotdoor1",
	    parentname = "dumpster_prop1",
	    origin = Vector("24, -24, 59"),
	    distance = 90,
	    speed = 160,
	    wait = -1.0,
	    disableshadows = 1,
	    forceclosed = 1,
	    spawnflags = 128,
	    noise1 = "shadows/mystery_open.mp3",
	    startclosesound = "misc/null.wav",
	    closesound = "doors\door_metal_medium_close1.wav",
	    mins = "-2 -2 -2",
	    maxs = "2 2 2"
	})
	func_door_rotating_brush106.KeyValueFromInt("solid", 2)
	func_door_rotating_brush106.KeyValueFromString("mins", "-2 -2 -2")
	func_door_rotating_brush106.KeyValueFromString("maxs", "2 2 2")

	local trigger_multiple_brush107 = SpawnEntityFromTable("trigger_multiple", {
	    origin = Vector("0, 0, 50"),
	    targetname = "dumpster_msg1",
	    parentname = "dumpster_prop1",
	    filtername = "filter_redteam",
	    spawnflags = 1,
	    mins = "-72 -74 -64",
	    maxs = "40 74 96"
	})
	trigger_multiple_brush107.KeyValueFromInt("solid", 2)
	trigger_multiple_brush107.KeyValueFromString("mins", "-72 -74 -64")
	trigger_multiple_brush107.KeyValueFromString("maxs", "40 74 96")

	local light_dynamic244 = SpawnEntityFromTable("light_dynamic", {
	    origin = Vector("0, 0, 20"),
	    targetname = "dumpster_light1",
	    parentname = "dumpster_prop1",
	    _light = "255 200 0 275",
	    distance = 75,
	    brightness = 10,
	    spawnflags = 1
	})
	light_dynamic244.SetOrigin(org)
	light_dynamic244.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system245 = SpawnEntityFromTable("info_particle_system", {
	    origin = Vector("0, 0, 0"),
	    effect_name = "utaunt_beams_yellow",
	    targetname = "dumpster_particles1",
	    parentname = "dumpster_prop1"
	})
	info_particle_system245.SetOrigin(org)
	info_particle_system245.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic246 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "dumpster_weapon1",
	    parentname = "dumpster_train1",
	    model = "models\weapons\w_models\w_medigun.mdl",
	    solid = 0
	})
	prop_dynamic246.SetOrigin(org)
	prop_dynamic246.SetAngles(ang[0], ang[1], ang[2])

	local path_track247 = SpawnEntityFromTable("path_track", {
	    origin = Vector("-4, 0, 20"),
	    targetname = "dumpster_track11",
	    parentname = "dumpster_prop1",
	    target = "dumpster_track21",
	    "OnPass#1": "dumpster_train1,Stop,,0,-1"
	})
	path_track247.SetOrigin(org)
	path_track247.SetAngles(ang[0], ang[1], ang[2])

	local path_track248 = SpawnEntityFromTable("path_track", {
	    origin = Vector("-4, 0, 64"),
	    targetname = "dumpster_track21",
	    parentname = "dumpster_prop1",
	    target = "dumpster_track11",
	    "OnPass#1": "dumpster_train1,Stop,,0,-1"
	})
	path_track248.SetOrigin(org)
	path_track248.SetAngles(ang[0], ang[1], ang[2])

	local func_tracktrain_brush108 = SpawnEntityFromTable("func_tracktrain", {
	    targetname = "dumpster_train1",
	    parentname = "dumpster_prop1",
	    target = "dumpster_track11",
	    orientationtype = 0,
	    velocitytype = 2,
	    solid = 0,
	    speed = 0,
	    startspeed = 90,
	    mins = "-4 -4 -4",
	    maxs = "4 4 4",
	    angles = QAngle("90, 0, 90"),
	    spawnflags = 8
	})
	func_tracktrain_brush108.KeyValueFromInt("solid", 2)
	func_tracktrain_brush108.KeyValueFromString("mins", "-4 -4 -4")
	func_tracktrain_brush108.KeyValueFromString("maxs", "4 4 4")

	local ambient_generic249 = SpawnEntityFromTable("ambient_generic", {
	    health = 10,
	    message = "shadows\mystery_jingle.mp3",
	    radius = 11000,
	    spawnflags = 48,
	    targetname = "dumpster_jingle1",
	    parentname = "dumpster_prop1"
	})
	ambient_generic249.SetOrigin(org)
	ambient_generic249.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic250 = SpawnEntityFromTable("ambient_generic", {
	    health = 10,
	    message = "misc/halloween/merasmus_appear.wav",
	    radius = 11000,
	    spawnflags = 48,
	    targetname = "dumpster_appear1",
	    parentname = "dumpster_prop1"
	})
	ambient_generic250.SetOrigin(org)
	ambient_generic250.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic251 = SpawnEntityFromTable("ambient_generic", {
	    health = 10,
	    message = "misc/halloween/merasmus_disappear.wav",
	    radius = 11000,
	    spawnflags = 48,
	    targetname = "dumpster_disappear1",
	    parentname = "dumpster_prop1"
	})
	ambient_generic251.SetOrigin(org)
	ambient_generic251.SetAngles(ang[0], ang[1], ang[2])

}
::DumpsterBoxRewrite2 <- function(org, ang)
{
	local prop_dynamic252 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("0, 0, 104"),
	    angles = QAngle("90, 0, 180"),
	    disableshadows = 0,
	    model = "models/workshop/player/items/all_class/mvm_memes_player/mvm_memes_player_heavy.mdl",
	    solid = 0,
	    startdisabled = 1,
	    modelscale = 3,
	    targetname = "dumpster_dudprop2",
	    parentname = "dumpster_prop2"
	})
	prop_dynamic252.SetOrigin(org)
	prop_dynamic252.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system253 = SpawnEntityFromTable("info_particle_system", {
	    origin = Vector("0, 0, 24"),
	    effect_name = "eyeboss_tp_vortex",
	    targetname = "dumpster_warp_eff2",
	    parentname = "dumpster_prop2"
	})
	info_particle_system253.SetOrigin(org)
	info_particle_system253.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system254 = SpawnEntityFromTable("info_particle_system", {
	    origin = Vector("0, 0, 24"),
	    effect_name = "teleporter_mvm_bot_persist",
	    targetname = "dumpster_warp_beam2",
	    parentname = "dumpster_prop2"
	})
	info_particle_system254.SetOrigin(org)
	info_particle_system254.SetAngles(ang[0], ang[1], ang[2])

	local trigger_push_brush109 = SpawnEntityFromTable("trigger_push", {
	    origin = Vector("0, 0, 0"),
	    pushdir = "0 180 0",
	    spawnflags = 1,
	    speed = 512,
	    targetname = "dumpster_push2",
	    mins = "-32 -66 -16",
	    maxs = "12 66 64"
	})
	trigger_push_brush109.KeyValueFromInt("solid", 2)
	trigger_push_brush109.KeyValueFromString("mins", "-32 -66 -16")
	trigger_push_brush109.KeyValueFromString("maxs", "12 66 64")

	local prop_dynamic255 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("0, 0, 0"),
	    disableshadows = 0,
	    model = "models/props_construction/dumpster_body.mdl",
	    solid = 6,
	    skin = 2,
	    targetname = "dumpster_prop2"
	})
	prop_dynamic255.SetOrigin(org)
	prop_dynamic255.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic256 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "dumpster_lid2",
	    origin = Vector("0, 0, 0"),
	    disableshadows = 0,
	    model = "models/props_construction/dumpster_lid.mdl",
	    solid = 0,
	    skin = 2,
	    parentname = "dumpster_rotdoor2"
	})
	prop_dynamic256.SetOrigin(org)
	prop_dynamic256.SetAngles(ang[0], ang[1], ang[2])

	local func_door_rotating_brush110 = SpawnEntityFromTable("func_door_rotating", {
	    targetname = "dumpster_rotdoor2",
	    parentname = "dumpster_prop2",
	    origin = Vector("24, -24, 59"),
	    distance = 90,
	    speed = 160,
	    wait = -1.0,
	    disableshadows = 1,
	    forceclosed = 1,
	    spawnflags = 128,
	    noise1 = "shadows/mystery_open.mp3",
	    startclosesound = "misc/null.wav",
	    closesound = "doors\door_metal_medium_close1.wav",
	    mins = "-2 -2 -2",
	    maxs = "2 2 2"
	})
	func_door_rotating_brush110.KeyValueFromInt("solid", 2)
	func_door_rotating_brush110.KeyValueFromString("mins", "-2 -2 -2")
	func_door_rotating_brush110.KeyValueFromString("maxs", "2 2 2")

	local trigger_multiple_brush111 = SpawnEntityFromTable("trigger_multiple", {
	    origin = Vector("0, 0, 50"),
	    targetname = "dumpster_msg2",
	    parentname = "dumpster_prop2",
	    filtername = "filter_redteam",
	    spawnflags = 1,
	    mins = "-72 -74 -64",
	    maxs = "40 74 96"
	})
	trigger_multiple_brush111.KeyValueFromInt("solid", 2)
	trigger_multiple_brush111.KeyValueFromString("mins", "-72 -74 -64")
	trigger_multiple_brush111.KeyValueFromString("maxs", "40 74 96")

	local light_dynamic257 = SpawnEntityFromTable("light_dynamic", {
	    origin = Vector("0, 0, 20"),
	    targetname = "dumpster_light2",
	    parentname = "dumpster_prop2",
	    _light = "255 200 0 275",
	    distance = 75,
	    brightness = 10,
	    spawnflags = 1
	})
	light_dynamic257.SetOrigin(org)
	light_dynamic257.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system258 = SpawnEntityFromTable("info_particle_system", {
	    origin = Vector("0, 0, 0"),
	    effect_name = "utaunt_beams_yellow",
	    targetname = "dumpster_particles2",
	    parentname = "dumpster_prop2"
	})
	info_particle_system258.SetOrigin(org)
	info_particle_system258.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic259 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "dumpster_weapon2",
	    parentname = "dumpster_train2",
	    model = "models\weapons\w_models\w_medigun.mdl",
	    solid = 0
	})
	prop_dynamic259.SetOrigin(org)
	prop_dynamic259.SetAngles(ang[0], ang[1], ang[2])

	local path_track260 = SpawnEntityFromTable("path_track", {
	    origin = Vector("-4, 0, 20"),
	    targetname = "dumpster_track12",
	    parentname = "dumpster_prop2",
	    target = "dumpster_track22",
	    "OnPass#1": "dumpster_train2,Stop,,0,-1"
	})
	path_track260.SetOrigin(org)
	path_track260.SetAngles(ang[0], ang[1], ang[2])

	local path_track261 = SpawnEntityFromTable("path_track", {
	    origin = Vector("-4, 0, 64"),
	    targetname = "dumpster_track22",
	    parentname = "dumpster_prop2",
	    target = "dumpster_track12",
	    "OnPass#1": "dumpster_train2,Stop,,0,-1"
	})
	path_track261.SetOrigin(org)
	path_track261.SetAngles(ang[0], ang[1], ang[2])

	local func_tracktrain_brush112 = SpawnEntityFromTable("func_tracktrain", {
	    targetname = "dumpster_train2",
	    parentname = "dumpster_prop2",
	    target = "dumpster_track12",
	    orientationtype = 0,
	    velocitytype = 2,
	    solid = 0,
	    speed = 0,
	    startspeed = 90,
	    mins = "-4 -4 -4",
	    maxs = "4 4 4",
	    angles = QAngle("90, 0, 90"),
	    spawnflags = 8
	})
	func_tracktrain_brush112.KeyValueFromInt("solid", 2)
	func_tracktrain_brush112.KeyValueFromString("mins", "-4 -4 -4")
	func_tracktrain_brush112.KeyValueFromString("maxs", "4 4 4")

	local ambient_generic262 = SpawnEntityFromTable("ambient_generic", {
	    health = 10,
	    message = "shadows\mystery_jingle.mp3",
	    radius = 11000,
	    spawnflags = 48,
	    targetname = "dumpster_jingle2",
	    parentname = "dumpster_prop2"
	})
	ambient_generic262.SetOrigin(org)
	ambient_generic262.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic263 = SpawnEntityFromTable("ambient_generic", {
	    health = 10,
	    message = "misc/halloween/merasmus_appear.wav",
	    radius = 11000,
	    spawnflags = 48,
	    targetname = "dumpster_appear2",
	    parentname = "dumpster_prop2"
	})
	ambient_generic263.SetOrigin(org)
	ambient_generic263.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic264 = SpawnEntityFromTable("ambient_generic", {
	    health = 10,
	    message = "misc/halloween/merasmus_disappear.wav",
	    radius = 11000,
	    spawnflags = 48,
	    targetname = "dumpster_disappear2",
	    parentname = "dumpster_prop2"
	})
	ambient_generic264.SetOrigin(org)
	ambient_generic264.SetAngles(ang[0], ang[1], ang[2])

}
::DumpsterBoxRewrite3 <- function(org, ang)
{
	local prop_dynamic265 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("0, 0, 104"),
	    angles = QAngle("90, 0, 180"),
	    disableshadows = 0,
	    model = "models/workshop/player/items/all_class/mvm_memes_player/mvm_memes_player_heavy.mdl",
	    solid = 0,
	    startdisabled = 1,
	    modelscale = 3,
	    targetname = "dumpster_dudprop3",
	    parentname = "dumpster_prop3"
	})
	prop_dynamic265.SetOrigin(org)
	prop_dynamic265.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system266 = SpawnEntityFromTable("info_particle_system", {
	    origin = Vector("0, 0, 24"),
	    effect_name = "eyeboss_tp_vortex",
	    targetname = "dumpster_warp_eff3",
	    parentname = "dumpster_prop3"
	})
	info_particle_system266.SetOrigin(org)
	info_particle_system266.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system267 = SpawnEntityFromTable("info_particle_system", {
	    origin = Vector("0, 0, 24"),
	    effect_name = "teleporter_mvm_bot_persist",
	    targetname = "dumpster_warp_beam3",
	    parentname = "dumpster_prop3"
	})
	info_particle_system267.SetOrigin(org)
	info_particle_system267.SetAngles(ang[0], ang[1], ang[2])

	local trigger_push_brush113 = SpawnEntityFromTable("trigger_push", {
	    origin = Vector("0, 0, 0"),
	    pushdir = "0 180 0",
	    spawnflags = 1,
	    speed = 512,
	    targetname = "dumpster_push3",
	    mins = "-32 -66 -16",
	    maxs = "12 66 64"
	})
	trigger_push_brush113.KeyValueFromInt("solid", 2)
	trigger_push_brush113.KeyValueFromString("mins", "-32 -66 -16")
	trigger_push_brush113.KeyValueFromString("maxs", "12 66 64")

	local prop_dynamic268 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("0, 0, 0"),
	    disableshadows = 0,
	    model = "models/props_construction/dumpster_body.mdl",
	    solid = 6,
	    skin = 2,
	    targetname = "dumpster_prop3"
	})
	prop_dynamic268.SetOrigin(org)
	prop_dynamic268.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic269 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "dumpster_lid3",
	    origin = Vector("0, 0, 0"),
	    disableshadows = 0,
	    model = "models/props_construction/dumpster_lid.mdl",
	    solid = 0,
	    skin = 2,
	    parentname = "dumpster_rotdoor3"
	})
	prop_dynamic269.SetOrigin(org)
	prop_dynamic269.SetAngles(ang[0], ang[1], ang[2])

	local func_door_rotating_brush114 = SpawnEntityFromTable("func_door_rotating", {
	    targetname = "dumpster_rotdoor3",
	    parentname = "dumpster_prop3",
	    origin = Vector("24, -24, 59"),
	    distance = 90,
	    speed = 160,
	    wait = -1.0,
	    disableshadows = 1,
	    forceclosed = 1,
	    spawnflags = 128,
	    noise1 = "shadows/mystery_open.mp3",
	    startclosesound = "misc/null.wav",
	    closesound = "doors\door_metal_medium_close1.wav",
	    mins = "-2 -2 -2",
	    maxs = "2 2 2"
	})
	func_door_rotating_brush114.KeyValueFromInt("solid", 2)
	func_door_rotating_brush114.KeyValueFromString("mins", "-2 -2 -2")
	func_door_rotating_brush114.KeyValueFromString("maxs", "2 2 2")

	local trigger_multiple_brush115 = SpawnEntityFromTable("trigger_multiple", {
	    origin = Vector("0, 0, 50"),
	    targetname = "dumpster_msg3",
	    parentname = "dumpster_prop3",
	    filtername = "filter_redteam",
	    spawnflags = 1,
	    mins = "-72 -74 -64",
	    maxs = "40 74 96"
	})
	trigger_multiple_brush115.KeyValueFromInt("solid", 2)
	trigger_multiple_brush115.KeyValueFromString("mins", "-72 -74 -64")
	trigger_multiple_brush115.KeyValueFromString("maxs", "40 74 96")

	local light_dynamic270 = SpawnEntityFromTable("light_dynamic", {
	    origin = Vector("0, 0, 20"),
	    targetname = "dumpster_light3",
	    parentname = "dumpster_prop3",
	    _light = "255 200 0 275",
	    distance = 75,
	    brightness = 10,
	    spawnflags = 1
	})
	light_dynamic270.SetOrigin(org)
	light_dynamic270.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system271 = SpawnEntityFromTable("info_particle_system", {
	    origin = Vector("0, 0, 0"),
	    effect_name = "utaunt_beams_yellow",
	    targetname = "dumpster_particles3",
	    parentname = "dumpster_prop3"
	})
	info_particle_system271.SetOrigin(org)
	info_particle_system271.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic272 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "dumpster_weapon3",
	    parentname = "dumpster_train3",
	    model = "models\weapons\w_models\w_medigun.mdl",
	    solid = 0
	})
	prop_dynamic272.SetOrigin(org)
	prop_dynamic272.SetAngles(ang[0], ang[1], ang[2])

	local path_track273 = SpawnEntityFromTable("path_track", {
	    origin = Vector("-4, 0, 20"),
	    targetname = "dumpster_track13",
	    parentname = "dumpster_prop3",
	    target = "dumpster_track23",
	    "OnPass#1": "dumpster_train3,Stop,,0,-1"
	})
	path_track273.SetOrigin(org)
	path_track273.SetAngles(ang[0], ang[1], ang[2])

	local path_track274 = SpawnEntityFromTable("path_track", {
	    origin = Vector("-4, 0, 64"),
	    targetname = "dumpster_track23",
	    parentname = "dumpster_prop3",
	    target = "dumpster_track13",
	    "OnPass#1": "dumpster_train3,Stop,,0,-1"
	})
	path_track274.SetOrigin(org)
	path_track274.SetAngles(ang[0], ang[1], ang[2])

	local func_tracktrain_brush116 = SpawnEntityFromTable("func_tracktrain", {
	    targetname = "dumpster_train3",
	    parentname = "dumpster_prop3",
	    target = "dumpster_track13",
	    orientationtype = 0,
	    velocitytype = 2,
	    solid = 0,
	    speed = 0,
	    startspeed = 90,
	    mins = "-4 -4 -4",
	    maxs = "4 4 4",
	    angles = QAngle("90, 0, 90"),
	    spawnflags = 8
	})
	func_tracktrain_brush116.KeyValueFromInt("solid", 2)
	func_tracktrain_brush116.KeyValueFromString("mins", "-4 -4 -4")
	func_tracktrain_brush116.KeyValueFromString("maxs", "4 4 4")

	local ambient_generic275 = SpawnEntityFromTable("ambient_generic", {
	    health = 10,
	    message = "shadows\mystery_jingle.mp3",
	    radius = 11000,
	    spawnflags = 48,
	    targetname = "dumpster_jingle3",
	    parentname = "dumpster_prop3"
	})
	ambient_generic275.SetOrigin(org)
	ambient_generic275.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic276 = SpawnEntityFromTable("ambient_generic", {
	    health = 10,
	    message = "misc/halloween/merasmus_appear.wav",
	    radius = 11000,
	    spawnflags = 48,
	    targetname = "dumpster_appear3",
	    parentname = "dumpster_prop3"
	})
	ambient_generic276.SetOrigin(org)
	ambient_generic276.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic277 = SpawnEntityFromTable("ambient_generic", {
	    health = 10,
	    message = "misc/halloween/merasmus_disappear.wav",
	    radius = 11000,
	    spawnflags = 48,
	    targetname = "dumpster_disappear3",
	    parentname = "dumpster_prop3"
	})
	ambient_generic277.SetOrigin(org)
	ambient_generic277.SetAngles(ang[0], ang[1], ang[2])

}
::DumpsterBoxRewrite4 <- function(org, ang)
{
	local prop_dynamic278 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("0, 0, 104"),
	    angles = QAngle("90, 0, 180"),
	    disableshadows = 0,
	    model = "models/workshop/player/items/all_class/mvm_memes_player/mvm_memes_player_heavy.mdl",
	    solid = 0,
	    startdisabled = 1,
	    modelscale = 3,
	    targetname = "dumpster_dudprop4",
	    parentname = "dumpster_prop4"
	})
	prop_dynamic278.SetOrigin(org)
	prop_dynamic278.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system279 = SpawnEntityFromTable("info_particle_system", {
	    origin = Vector("0, 0, 24"),
	    effect_name = "eyeboss_tp_vortex",
	    targetname = "dumpster_warp_eff4",
	    parentname = "dumpster_prop4"
	})
	info_particle_system279.SetOrigin(org)
	info_particle_system279.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system280 = SpawnEntityFromTable("info_particle_system", {
	    origin = Vector("0, 0, 24"),
	    effect_name = "teleporter_mvm_bot_persist",
	    targetname = "dumpster_warp_beam4",
	    parentname = "dumpster_prop4"
	})
	info_particle_system280.SetOrigin(org)
	info_particle_system280.SetAngles(ang[0], ang[1], ang[2])

	local trigger_push_brush117 = SpawnEntityFromTable("trigger_push", {
	    origin = Vector("0, 0, 0"),
	    pushdir = "0 180 0",
	    spawnflags = 1,
	    speed = 512,
	    targetname = "dumpster_push4",
	    mins = "-32 -66 -16",
	    maxs = "12 66 64"
	})
	trigger_push_brush117.KeyValueFromInt("solid", 2)
	trigger_push_brush117.KeyValueFromString("mins", "-32 -66 -16")
	trigger_push_brush117.KeyValueFromString("maxs", "12 66 64")

	local prop_dynamic281 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("0, 0, 0"),
	    disableshadows = 0,
	    model = "models/props_construction/dumpster_body.mdl",
	    solid = 6,
	    skin = 2,
	    targetname = "dumpster_prop4"
	})
	prop_dynamic281.SetOrigin(org)
	prop_dynamic281.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic282 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "dumpster_lid4",
	    angles = QAngle("0, 0, 0"),
	    origin = Vector("0, 0, 0"),
	    disableshadows = 0,
	    model = "models/props_construction/dumpster_lid.mdl",
	    solid = 0,
	    skin = 2,
	    parentname = "dumpster_rotdoor4"
	})
	prop_dynamic282.SetOrigin(org)
	prop_dynamic282.SetAngles(ang[0], ang[1], ang[2])

	local func_door_rotating_brush118 = SpawnEntityFromTable("func_door_rotating", {
	    targetname = "dumpster_rotdoor4",
	    parentname = "dumpster_prop4",
	    origin = Vector("-24, -24, 59"),
	    angles = QAngle("0, 0, 0"),
	    distance = 90,
	    speed = 160,
	    wait = -1.0,
	    disableshadows = 1,
	    forceclosed = 1,
	    spawnflags = 128,
	    noise1 = "shadows/mystery_open.mp3",
	    startclosesound = "misc/null.wav",
	    closesound = "doors\door_metal_medium_close1.wav",
	    mins = "-2 -2 -2",
	    maxs = "2 2 2"
	})
	func_door_rotating_brush118.KeyValueFromInt("solid", 2)
	func_door_rotating_brush118.KeyValueFromString("mins", "-2 -2 -2")
	func_door_rotating_brush118.KeyValueFromString("maxs", "2 2 2")

	local trigger_multiple_brush119 = SpawnEntityFromTable("trigger_multiple", {
	    origin = Vector("0, 0, 50"),
	    targetname = "dumpster_msg4",
	    parentname = "dumpster_prop4",
	    filtername = "filter_redteam",
	    spawnflags = 1,
	    mins = "-72 -74 -64",
	    maxs = "40 74 96"
	})
	trigger_multiple_brush119.KeyValueFromInt("solid", 2)
	trigger_multiple_brush119.KeyValueFromString("mins", "-72 -74 -64")
	trigger_multiple_brush119.KeyValueFromString("maxs", "40 74 96")

	local light_dynamic283 = SpawnEntityFromTable("light_dynamic", {
	    origin = Vector("0, 0, 20"),
	    targetname = "dumpster_light4",
	    parentname = "dumpster_prop4",
	    _light = "255 200 0 275",
	    distance = 75,
	    brightness = 10,
	    spawnflags = 1
	})
	light_dynamic283.SetOrigin(org)
	light_dynamic283.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system284 = SpawnEntityFromTable("info_particle_system", {
	    origin = Vector("0, 0, 0"),
	    effect_name = "utaunt_beams_yellow",
	    targetname = "dumpster_particles4",
	    parentname = "dumpster_prop4"
	})
	info_particle_system284.SetOrigin(org)
	info_particle_system284.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic285 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "dumpster_weapon4",
	    parentname = "dumpster_train4",
	    model = "models\weapons\w_models\w_medigun.mdl",
	    solid = 0
	})
	prop_dynamic285.SetOrigin(org)
	prop_dynamic285.SetAngles(ang[0], ang[1], ang[2])

	local path_track286 = SpawnEntityFromTable("path_track", {
	    origin = Vector("-4, 0, 20"),
	    targetname = "dumpster_track14",
	    parentname = "dumpster_prop4",
	    target = "dumpster_track24",
	    "OnPass#1": "dumpster_train4,Stop,,0,-1"
	})
	path_track286.SetOrigin(org)
	path_track286.SetAngles(ang[0], ang[1], ang[2])

	local path_track287 = SpawnEntityFromTable("path_track", {
	    origin = Vector("-4, 0, 64"),
	    targetname = "dumpster_track24",
	    parentname = "dumpster_prop4",
	    target = "dumpster_track14",
	    "OnPass#1": "dumpster_train4,Stop,,0,-1"
	})
	path_track287.SetOrigin(org)
	path_track287.SetAngles(ang[0], ang[1], ang[2])

	local func_tracktrain_brush120 = SpawnEntityFromTable("func_tracktrain", {
	    targetname = "dumpster_train4",
	    parentname = "dumpster_prop4",
	    target = "dumpster_track14",
	    orientationtype = 0,
	    velocitytype = 2,
	    solid = 0,
	    speed = 0,
	    startspeed = 90,
	    mins = "-4 -4 -4",
	    maxs = "4 4 4",
	    angles = QAngle("90, 0, 90"),
	    spawnflags = 8
	})
	func_tracktrain_brush120.KeyValueFromInt("solid", 2)
	func_tracktrain_brush120.KeyValueFromString("mins", "-4 -4 -4")
	func_tracktrain_brush120.KeyValueFromString("maxs", "4 4 4")

	local ambient_generic288 = SpawnEntityFromTable("ambient_generic", {
	    health = 10,
	    message = "shadows\mystery_jingle.mp3",
	    radius = 11000,
	    spawnflags = 48,
	    targetname = "dumpster_jingle4",
	    parentname = "dumpster_prop4"
	})
	ambient_generic288.SetOrigin(org)
	ambient_generic288.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic289 = SpawnEntityFromTable("ambient_generic", {
	    health = 10,
	    message = "misc/halloween/merasmus_appear.wav",
	    radius = 11000,
	    spawnflags = 48,
	    targetname = "dumpster_appear4",
	    parentname = "dumpster_prop4"
	})
	ambient_generic289.SetOrigin(org)
	ambient_generic289.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic290 = SpawnEntityFromTable("ambient_generic", {
	    health = 10,
	    message = "misc/halloween/merasmus_disappear.wav",
	    radius = 11000,
	    spawnflags = 48,
	    targetname = "dumpster_disappear4",
	    parentname = "dumpster_prop4"
	})
	ambient_generic290.SetOrigin(org)
	ambient_generic290.SetAngles(ang[0], ang[1], ang[2])

}
::DumpsterBoxRewrite5 <- function(org, ang)
{
	local prop_dynamic291 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("0, 0, 104"),
	    angles = QAngle("90, 0, 180"),
	    disableshadows = 0,
	    model = "models/workshop/player/items/all_class/mvm_memes_player/mvm_memes_player_heavy.mdl",
	    solid = 0,
	    startdisabled = 1,
	    modelscale = 3,
	    targetname = "dumpster_dudprop5",
	    parentname = "dumpster_prop5"
	})
	prop_dynamic291.SetOrigin(org)
	prop_dynamic291.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system292 = SpawnEntityFromTable("info_particle_system", {
	    origin = Vector("0, 0, 24"),
	    effect_name = "eyeboss_tp_vortex",
	    targetname = "dumpster_warp_eff5",
	    parentname = "dumpster_prop5"
	})
	info_particle_system292.SetOrigin(org)
	info_particle_system292.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system293 = SpawnEntityFromTable("info_particle_system", {
	    origin = Vector("0, 0, 24"),
	    effect_name = "teleporter_mvm_bot_persist",
	    targetname = "dumpster_warp_beam5",
	    parentname = "dumpster_prop5"
	})
	info_particle_system293.SetOrigin(org)
	info_particle_system293.SetAngles(ang[0], ang[1], ang[2])

	local trigger_push_brush121 = SpawnEntityFromTable("trigger_push", {
	    origin = Vector("0, 0, 0"),
	    pushdir = "0 180 0",
	    spawnflags = 1,
	    speed = 512,
	    targetname = "dumpster_push5",
	    mins = "-32 -66 -16",
	    maxs = "12 66 64"
	})
	trigger_push_brush121.KeyValueFromInt("solid", 2)
	trigger_push_brush121.KeyValueFromString("mins", "-32 -66 -16")
	trigger_push_brush121.KeyValueFromString("maxs", "12 66 64")

	local prop_dynamic294 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("0, 0, 0"),
	    disableshadows = 0,
	    model = "models/props_construction/dumpster_body.mdl",
	    solid = 6,
	    skin = 2,
	    targetname = "dumpster_prop5"
	})
	prop_dynamic294.SetOrigin(org)
	prop_dynamic294.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic295 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "dumpster_lid5",
	    origin = Vector("0, 0, 0"),
	    disableshadows = 0,
	    model = "models/props_construction/dumpster_lid.mdl",
	    solid = 0,
	    skin = 2,
	    parentname = "dumpster_rotdoor5"
	})
	prop_dynamic295.SetOrigin(org)
	prop_dynamic295.SetAngles(ang[0], ang[1], ang[2])

	local func_door_rotating_brush122 = SpawnEntityFromTable("func_door_rotating", {
	    targetname = "dumpster_rotdoor5",
	    parentname = "dumpster_prop5",
	    origin = Vector("24, -24, 59"),
	    distance = 90,
	    speed = 160,
	    wait = -1.0,
	    disableshadows = 1,
	    forceclosed = 1,
	    spawnflags = 128,
	    noise1 = "shadows/mystery_open.mp3",
	    startclosesound = "misc/null.wav",
	    closesound = "doors\door_metal_medium_close1.wav",
	    mins = "-2 -2 -2",
	    maxs = "2 2 2"
	})
	func_door_rotating_brush122.KeyValueFromInt("solid", 2)
	func_door_rotating_brush122.KeyValueFromString("mins", "-2 -2 -2")
	func_door_rotating_brush122.KeyValueFromString("maxs", "2 2 2")

	local trigger_multiple_brush123 = SpawnEntityFromTable("trigger_multiple", {
	    origin = Vector("0, 0, 50"),
	    targetname = "dumpster_msg5",
	    parentname = "dumpster_prop5",
	    filtername = "filter_redteam",
	    spawnflags = 1,
	    mins = "-72 -74 -64",
	    maxs = "40 74 96"
	})
	trigger_multiple_brush123.KeyValueFromInt("solid", 2)
	trigger_multiple_brush123.KeyValueFromString("mins", "-72 -74 -64")
	trigger_multiple_brush123.KeyValueFromString("maxs", "40 74 96")

	local light_dynamic296 = SpawnEntityFromTable("light_dynamic", {
	    origin = Vector("0, 0, 20"),
	    targetname = "dumpster_light5",
	    parentname = "dumpster_prop5",
	    _light = "255 200 0 275",
	    distance = 75,
	    brightness = 10,
	    spawnflags = 1
	})
	light_dynamic296.SetOrigin(org)
	light_dynamic296.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system297 = SpawnEntityFromTable("info_particle_system", {
	    origin = Vector("0, 0, 0"),
	    effect_name = "utaunt_beams_yellow",
	    targetname = "dumpster_particles5",
	    parentname = "dumpster_prop5"
	})
	info_particle_system297.SetOrigin(org)
	info_particle_system297.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic298 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "dumpster_weapon5",
	    parentname = "dumpster_train5",
	    model = "models\weapons\w_models\w_medigun.mdl",
	    solid = 0
	})
	prop_dynamic298.SetOrigin(org)
	prop_dynamic298.SetAngles(ang[0], ang[1], ang[2])

	local path_track299 = SpawnEntityFromTable("path_track", {
	    origin = Vector("-4, 0, 20"),
	    targetname = "dumpster_track15",
	    parentname = "dumpster_prop5",
	    target = "dumpster_track25",
	    "OnPass#1": "dumpster_train5,Stop,,0,-1"
	})
	path_track299.SetOrigin(org)
	path_track299.SetAngles(ang[0], ang[1], ang[2])

	local path_track300 = SpawnEntityFromTable("path_track", {
	    origin = Vector("-4, 0, 64"),
	    targetname = "dumpster_track25",
	    parentname = "dumpster_prop5",
	    target = "dumpster_track15",
	    "OnPass#1": "dumpster_train5,Stop,,0,-1"
	})
	path_track300.SetOrigin(org)
	path_track300.SetAngles(ang[0], ang[1], ang[2])

	local func_tracktrain_brush124 = SpawnEntityFromTable("func_tracktrain", {
	    targetname = "dumpster_train5",
	    parentname = "dumpster_prop5",
	    target = "dumpster_track15",
	    orientationtype = 0,
	    velocitytype = 2,
	    solid = 0,
	    speed = 0,
	    startspeed = 90,
	    mins = "-4 -4 -4",
	    maxs = "4 4 4",
	    angles = QAngle("90, 0, 90"),
	    spawnflags = 8
	})
	func_tracktrain_brush124.KeyValueFromInt("solid", 2)
	func_tracktrain_brush124.KeyValueFromString("mins", "-4 -4 -4")
	func_tracktrain_brush124.KeyValueFromString("maxs", "4 4 4")

	local ambient_generic301 = SpawnEntityFromTable("ambient_generic", {
	    health = 10,
	    message = "shadows\mystery_jingle.mp3",
	    radius = 11000,
	    spawnflags = 48,
	    targetname = "dumpster_jingle5",
	    parentname = "dumpster_prop5"
	})
	ambient_generic301.SetOrigin(org)
	ambient_generic301.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic302 = SpawnEntityFromTable("ambient_generic", {
	    health = 10,
	    message = "misc/halloween/merasmus_appear.wav",
	    radius = 11000,
	    spawnflags = 48,
	    targetname = "dumpster_appear5",
	    parentname = "dumpster_prop5"
	})
	ambient_generic302.SetOrigin(org)
	ambient_generic302.SetAngles(ang[0], ang[1], ang[2])

	local ambient_generic303 = SpawnEntityFromTable("ambient_generic", {
	    health = 10,
	    message = "misc/halloween/merasmus_disappear.wav",
	    radius = 11000,
	    spawnflags = 48,
	    targetname = "dumpster_disappear5",
	    parentname = "dumpster_prop5"
	})
	ambient_generic303.SetOrigin(org)
	ambient_generic303.SetAngles(ang[0], ang[1], ang[2])

}
::DumpsterBox <- function(org, ang)
{
	local logic_relay304 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "dumpster_warp_roulette,PickRandomShuffle,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION10"
	})
	logic_relay304.SetOrigin(org)
	logic_relay304.SetAngles(ang[0], ang[1], ang[2])

	local $filter_sendprop305 = SpawnEntityFromTable("$filter_sendprop", {
	    targetname = "filter_dumpstermoney",
	    $name = "m_nCurrency",
	    negated = 0,
	    $value = 950,
	    $compare = "greater than or equal",
	    "OnFail#1": "!activatorRunScriptCodeEmitSoundEx({sound_name = `buttons/button8.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })0-1"
	})
	$filter_sendprop305.SetOrigin(org)
	$filter_sendprop305.SetAngles(ang[0], ang[1], ang[2])

	local filter_multi306 = SpawnEntityFromTable("filter_multi", {
	    targetname = "filter_dumpstermulti",
	    filtertype = 0,
	    negated = 0,
	    filter01 = "filter_dumpstermoney",
	    filter02 = "filter_melee",
	    "OnFail#1": "!activatorRunScriptCodeEmitSoundEx({sound_name = `buttons/button8.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })0-1"
	})
	filter_multi306.SetOrigin(org)
	filter_multi306.SetAngles(ang[0], ang[1], ang[2])

	local filter_damage_type307 = SpawnEntityFromTable("filter_damage_type", {
	    targetname = "filter_melee",
	    negated = 0,
	    damagetype = 134221952
	})
	filter_damage_type307.SetOrigin(org)
	filter_damage_type307.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system308 = SpawnEntityFromTable("info_particle_system", {
	    origin = Vector("0, 0, 24"),
	    effect_name = "eyeboss_tp_vortex",
	    targetname = "dumpster_warp_eff",
	    parentname = "dumpster_prop"
	})
	info_particle_system308.SetOrigin(org)
	info_particle_system308.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system309 = SpawnEntityFromTable("info_particle_system", {
	    origin = Vector("0, 0, 24"),
	    effect_name = "teleporter_mvm_bot_persist",
	    targetname = "dumpster_warp_beam",
	    parentname = "dumpster_prop"
	})
	info_particle_system309.SetOrigin(org)
	info_particle_system309.SetAngles(ang[0], ang[1], ang[2])

	local trigger_multiple_brush125 = SpawnEntityFromTable("trigger_multiple", {
	    origin = Vector("0, 0, 50"),
	    targetname = "dumpster_msg",
	    parentname = "dumpster_prop",
	    filtername = "filter_redteam",
	    spawnflags = 1,
	    mins = "-64 -64 -64",
	    maxs = "96 96 96",
	    "OnStartTouchAll#1": "!activatorRunScriptCodeClientPrint(self, 4, `Hold Action key to receive a weapon for $950`)0-1"
	})
	trigger_multiple_brush125.KeyValueFromInt("solid", 2)
	trigger_multiple_brush125.KeyValueFromString("mins", "-64 -64 -64")
	trigger_multiple_brush125.KeyValueFromString("maxs", "96 96 96")

	local trigger_push_brush126 = SpawnEntityFromTable("trigger_push", {
	    origin = Vector("0, 0, 0"),
	    pushdir = "0 0 0",
	    spawnflags = 1,
	    speed = 512,
	    StartDisabled = 0,
	    targetname = "dumpster_push",
	    mins = "-12 -64 -16",
	    maxs = "12 64 16"
	})
	trigger_push_brush126.KeyValueFromInt("solid", 2)
	trigger_push_brush126.KeyValueFromString("mins", "-12 -64 -16")
	trigger_push_brush126.KeyValueFromString("maxs", "12 64 16")

	local logic_relay310 = SpawnEntityFromTable("logic_relay", {
	    targetname = "dumpster_dud",
	    "OnTrigger#1": "!activatorRunScriptCodeself.AddCurrency(950)-1",
	    "OnTrigger#2": "tf_gamerulesPlayVORedmisc/happy_birthday_tf_10.wav0-1",
	    "OnTrigger#3": "dumpsterbutton,Lock,,0,-1",
	    "OnTrigger#4": "dumpster_dudprop,Enable,,0,-1",
	    "OnTrigger#5": "tf_gamerulesPlayVORedshadows/powerup_dud_03.mp31-1",
	    "OnTrigger#6": "dumpster_warp_eff,Start,,3,-1",
	    "OnTrigger#7": "dumpster_warp_beam,Stop,,3,-1",
	    "OnTrigger#8": "tf_gamerulesPlayVORedmisc/halloween/merasmus_disappear.wav3-1",
	    "OnTrigger#9": "dumpster_tele_out,Teleport,,4,-1",
	    "OnTrigger#10": "dumpster_warp_eff,Stop,,4.2,-1",
	    "OnTrigger#11": "dumpster_dudprop,Disable,,8,-1",
	    "OnTrigger#12": "dumpster_prop,AddOutput,solid 0,9,-1",
	    "OnTrigger#13": "dumpster_push,Enable,,24,-1",
	    "OnTrigger#14": "dumpster_warp_roulette,PickRandomShuffle,,25,-1",
	    "OnTrigger#15": "dumpster_warp_eff,Start,,25,-1",
	    "OnTrigger#16": "dumpsterbutton,Unlock,,26,-1",
	    "OnTrigger#17": "dumpster_push,Disable,,26,-1",
	    "OnTrigger#18": "dumpster_prop,AddOutput,solid 6,26,-1",
	    "OnTrigger#19": "tf_gamerulesPlayVORedmisc/halloween/merasmus_appear.wav26-1",
	    "OnTrigger#20": "dumpster_warp_eff,Stop,,27.2,-1"
	})
	logic_relay310.SetOrigin(org)
	logic_relay310.SetAngles(ang[0], ang[1], ang[2])

	local logic_case311 = SpawnEntityFromTable("logic_case", {
	    targetname = "dumpster_warp_roulette",
	    "OnCase01#1": "dumpster_tele_1,Teleport,,-1",
	    "OnCase01#2": "dumpster_warp_beam,Start,,-1",
	    "OnCase02#3": "dumpster_tele_2,Teleport,,-1",
	    "OnCase02#4": "dumpster_warp_beam,Start,,-1",
	    "OnCase03#5": "dumpster_tele_3,Teleport,,-1",
	    "OnCase03#6": "dumpster_warp_beam,Start,,-1",
	    "OnCase04#7": "dumpster_tele_4,Teleport,,-1",
	    "OnCase04#8": "dumpster_warp_beam,Start,,-1",
	    "OnCase05#9": "dumpster_tele_5,Teleport,,-1",
	    "OnCase05#10": "dumpster_warp_beam,Start,,-1"
	})
	logic_case311.SetOrigin(org)
	logic_case311.SetAngles(ang[0], ang[1], ang[2])

	local point_teleport312 = SpawnEntityFromTable("point_teleport", {
	    targetname = "dumpster_tele_out",
	    target = "dumpster_prop",
	    origin = Vector("-512, -25, -1008"),
	    angles = QAngle("0, 0, 0")
	})
	point_teleport312.SetOrigin(org)
	point_teleport312.SetAngles(ang[0], ang[1], ang[2])

	local point_teleport313 = SpawnEntityFromTable("point_teleport", {
	    targetname = "dumpster_tele_1",
	    target = "dumpster_prop",
	    origin = Vector("447, -2322, 8"),
	    angles = QAngle("0, 0, 0")
	})
	point_teleport313.SetOrigin(org)
	point_teleport313.SetAngles(ang[0], ang[1], ang[2])

	local point_teleport314 = SpawnEntityFromTable("point_teleport", {
	    targetname = "dumpster_tele_2",
	    target = "dumpster_prop",
	    origin = Vector("-399, -1380, -1"),
	    angles = QAngle("0, 270, 0")
	})
	point_teleport314.SetOrigin(org)
	point_teleport314.SetAngles(ang[0], ang[1], ang[2])

	local point_teleport315 = SpawnEntityFromTable("point_teleport", {
	    targetname = "dumpster_tele_3",
	    target = "dumpster_prop",
	    origin = Vector("986, 1338, 96"),
	    angles = QAngle("0, 0, 0")
	})
	point_teleport315.SetOrigin(org)
	point_teleport315.SetAngles(ang[0], ang[1], ang[2])

	local point_teleport316 = SpawnEntityFromTable("point_teleport", {
	    targetname = "dumpster_tele_4",
	    target = "dumpster_prop",
	    origin = Vector("-788, 1016, -1"),
	    angles = QAngle("0, 180, 0")
	})
	point_teleport316.SetOrigin(org)
	point_teleport316.SetAngles(ang[0], ang[1], ang[2])

	local point_teleport317 = SpawnEntityFromTable("point_teleport", {
	    targetname = "dumpster_tele_5",
	    target = "dumpster_prop",
	    origin = Vector("-548, -2216, 3"),
	    angles = QAngle("0, 0, 0")
	})
	point_teleport317.SetOrigin(org)
	point_teleport317.SetAngles(ang[0], ang[1], ang[2])

	local logic_case318 = SpawnEntityFromTable("logic_case", {
	    targetname = "dumpster_case",
	    Case01 = 1,
	    Case02 = 2,
	    Case03 = 3,
	    Case04 = 4,
	    Case05 = 5,
	    Case06 = 6,
	    Case07 = 7,
	    Case08 = 8,
	    Case09 = 9,
	    "OnCase01#1": "dumpster_picker_scout,PickRandom,,2.5,-1",
	    "OnCase02#2": "dumpster_picker_sniper,PickRandom,,2.5,-1",
	    "OnCase03#3": "dumpster_picker_soldier,PickRandom,,2.5,-1",
	    "OnCase04#4": "dumpster_picker_demo,PickRandom,,2.5,-1",
	    "OnCase05#5": "dumpster_picker_medic,PickRandom,,2.5,-1",
	    "OnCase06#6": "dumpster_picker_heavy,PickRandom,,2.5,-1",
	    "OnCase07#7": "dumpster_picker_pyro,PickRandom,,2.5,-1",
	    "OnCase08#8": "dumpster_picker_spy,PickRandom,,2.5,-1",
	    "OnCase09#9": "dumpster_picker_engie,PickRandom,,2.5,-1"
	})
	logic_case318.SetOrigin(org)
	logic_case318.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic319 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("0, 0, 104"),
	    angles = QAngle("90, 0, 180"),
	    disableshadows = 0,
	    model = "models/workshop/player/items/all_class/mvm_memes_player/mvm_memes_player_heavy.mdl",
	    solid = 0,
	    startdisabled = 1,
	    modelscale = 3,
	    targetname = "dumpster_dudprop",
	    parentname = "dumpster_prop"
	})
	prop_dynamic319.SetOrigin(org)
	prop_dynamic319.SetAngles(ang[0], ang[1], ang[2])

	local training_annotation320 = SpawnEntityFromTable("training_annotation", {
	    targetname = "dumpster_hint",
	    display_text = "Follow the beam of light to find the Weapons Dumpster!",
	    lifetime = 5,
	    origin = Vector(0, 0, 256)
	})
	training_annotation320.SetOrigin(org)
	training_annotation320.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic321 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("0, 0, 0"),
	    disableshadows = 0,
	    model = "models/props_construction/dumpster_body.mdl",
	    solid = 6,
	    skin = 2,
	    targetname = "dumpster_prop",
	    lightingorigin = "bombpath_arrows_void"
	})
	prop_dynamic321.SetOrigin(org)
	prop_dynamic321.SetAngles(ang[0], ang[1], ang[2])

	local light_dynamic322 = SpawnEntityFromTable("light_dynamic", {
	    _light = "255 249 234 275",
	    distance = "512",
	    brightness = "1",
	    origin = Vector("0, 0, 36"),
	    parentname = "dumpster_prop"
	})
	light_dynamic322.SetOrigin(org)
	light_dynamic322.SetAngles(ang[0], ang[1], ang[2])

	local prop_dynamic323 = SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector("0, 0, 0"),
	    disableshadows = 0,
	    model = "models/props_construction/dumpster_lid.mdl",
	    solid = 0,
	    skin = 2,
	    parentname = "dumpster_rotdoor",
	    lightingorigin = "bombpath_arrows_void"
	})
	prop_dynamic323.SetOrigin(org)
	prop_dynamic323.SetAngles(ang[0], ang[1], ang[2])

	local func_door_rotating_brush127 = SpawnEntityFromTable("func_door_rotating", {
	    targetname = "dumpster_rotdoor",
	    parentname = "dumpster_prop",
	    origin = Vector("28, -24, 60"),
	    distance = 90,
	    speed = 160,
	    wait = 5,
	    disableshadows = 1,
	    forceclosed = 1,
	    spawnflags = 128,
	    noise1 = "shadows/mystery_open.mp3",
	    startclosesound = "misc/null.wav",
	    closesound = "doors\door_metal_medium_close1.wav",
	    mins = "-2 -2 -2",
	    maxs = "2 2 2"
	})
	func_door_rotating_brush127.KeyValueFromInt("solid", 2)
	func_door_rotating_brush127.KeyValueFromString("mins", "-2 -2 -2")
	func_door_rotating_brush127.KeyValueFromString("maxs", "2 2 2")

	local func_button_brush128 = SpawnEntityFromTable("func_button", {
	    origin = Vector("-32, -0, 24"),
	    targetname = "dumpsterbutton",
	    parentname = "dumpster_prop",
	    damagefilter = "filter_dumpstermulti",
	    rendermode = 10,
	    movedir = "0 180 0",
	    spawnflags = 513,
	    speed = 5,
	    wait = 3,
	    sounds = 3,
	    mins = "-4 -44 -20",
	    maxs = "4 44 20",
	    "OnPressed#1": "!activatorRunScriptCodeEmitSoundEx({sound_name = `shadows/mystery_noise.mp3`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })0-1",
	    "OnPressed#2": "!activatorRunScriptCodeself.RemoveCurrency(950)-1",
	    "OnPressed#3": "dumpster_rotdoor,Open,,0,-1",
	    "OnPressed#4": "dumpster_case,InValue,$$=!activator.m_iClass,,-1",
	    "OnPressed#5": "dumpster_rotdoor,Close,,3.4,-1"
	})
	func_button_brush128.KeyValueFromInt("solid", 2)
	func_button_brush128.KeyValueFromString("mins", "-4 -44 -20")
	func_button_brush128.KeyValueFromString("maxs", "4 44 20")

	local logic_case324 = SpawnEntityFromTable("logic_case", {
	    targetname = "dumpster_picker_scout",
	    "OnCase01#1": "!activatorRunScriptCodeGiveWeapon(self,`the shortstop `,220, null)-1",
	    "OnCase01#2": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase01#3": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase01#4": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Shortstop!`)0-1",
	    "OnCase02#5": "!activatorRunScriptCodeGiveWeapon(self,`the shortstop `,220, null)-1",
	    "OnCase02#6": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase02#7": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase02#8": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Shortstop!`)0-1",
	    "OnCase03#9": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_smg `,15153, null)-1",
	    "OnCase03#10": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase03#11": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase03#12": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The SMG!`)0-1",
	    "OnCase04#13": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_smg `,15153, null)-1",
	    "OnCase04#14": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase04#15": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase04#16": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The SMG!`)0-1",
	    "OnCase05#17": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_pipebomblauncher `,15155, null)-1",
	    "OnCase05#18": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase05#19": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase05#20": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Stickybomb Launcher!`)0-1",
	    "OnCase06#21": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_pipebomblauncher `,15155, null)-1",
	    "OnCase06#22": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase06#23": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase06#24": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Stickybomb Launcher!`)0-1",
	    "OnCase07#25": "!activatorRunScriptCodeGiveWeapon(self,`the force-a-nature `,45, null)-1",
	    "OnCase07#26": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase07#27": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase07#28": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Force-a-Nature!`)0-1",
	    "OnCase08#29": "!activatorRunScriptCodeGiveWeapon(self,`the force-a-nature `,45, null)-1",
	    "OnCase08#30": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase08#31": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase08#32": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Force-a-Nature!`)0-1",
	    "OnCase09#33": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_scattergun `,15157, null)-1",
	    "OnCase09#34": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase09#35": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase09#36": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Scattergun`)0-1",
	    "OnCase10#37": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_scattergun `,15157, null)-1",
	    "OnCase10#38": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase10#39": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase10#40": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Scattergun`)0-1",
	    "OnCase11#41": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase11#42": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase11#43": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1",
	    "OnCase11#44": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Punch Packer!`)0-1",
	    "OnCase12#45": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase12#46": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase12#47": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1",
	    "OnCase12#48": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Punch Packer!`)0-1",
	    "OnCase13#49": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase13#50": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase13#51": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1",
	    "OnCase13#52": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Ray Gun!`)0-1",
	    "OnCase14#53": "dumpster_dud,Trigger,-1"
	})
	logic_case324.SetOrigin(org)
	logic_case324.SetAngles(ang[0], ang[1], ang[2])

	local logic_case325 = SpawnEntityFromTable("logic_case", {
	    targetname = "dumpster_picker_sniper",
	    "OnCase01#1": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_shotgun_pyro `,12, null)-1",
	    "OnCase01#2": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase01#3": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase01#4": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Shotgun!`)0-1",
	    "OnCase02#5": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_shotgun_pyro `,12, null)-1",
	    "OnCase02#6": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase02#7": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase02#8": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Shotgun!`)0-1",
	    "OnCase03#9": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_scattergun `,15157, null)-1",
	    "OnCase03#10": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase03#11": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase03#12": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Scattergun`)0-1",
	    "OnCase04#13": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_scattergun `,15157, null)-1",
	    "OnCase04#14": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase04#15": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase04#16": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Scattergun`)0-1",
	    "OnCase05#17": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase05#18": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase05#19": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase05#20": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Double Barrel!`)0-1",
	    "OnCase06#21": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase06#22": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase06#23": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase06#24": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Double Barrel!`)0-1",
	    "OnCase07#25": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_pipebomblauncher `,15155, null)-1",
	    "OnCase07#26": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase07#27": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase07#28": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Stickybomb Launcher!`)0-1",
	    "OnCase08#29": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_pipebomblauncher `,15155, null)-1",
	    "OnCase08#30": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase08#31": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase08#32": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Stickybomb Launcher!`)0-1",
	    "OnCase09#33": "!activatorRunScriptCodeGiveWeapon(self,`the crusader's crossbow `,305, null)-1",
	    "OnCase09#34": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase09#35": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase09#36": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Crusader's Crossbow!`)0-1",
	    "OnCase10#37": "!activatorRunScriptCodeGiveWeapon(self,`the crusader's crossbow `,305, null)-1",
	    "OnCase10#38": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase10#39": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase10#40": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Crusader's Crossbow!`)0-1",
	    "OnCase11#41": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase11#42": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase11#43": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1",
	    "OnCase11#44": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Ray Gun!`)0-1",
	    "OnCase12#45": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase12#46": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase12#47": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1",
	    "OnCase12#48": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Beam Rifle!`)0-1",
	    "OnCase13#49": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase13#50": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase13#51": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1",
	    "OnCase13#52": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Punch Packer!`)0-1",
	    "OnCase14#53": "!activatorRunScriptCodeGiveWeapon(self,`the cleaner's carbine `,751, null)-1",
	    "OnCase14#54": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase14#55": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase14#56": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Cleaner's Carbine!`)0-1",
	    "OnCase15#57": "dumpster_dud,Trigger,-1"
	})
	logic_case325.SetOrigin(org)
	logic_case325.SetAngles(ang[0], ang[1], ang[2])

	local logic_case326 = SpawnEntityFromTable("logic_case", {
	    targetname = "dumpster_picker_soldier",
	    "OnCase01#1": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase01#2": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase01#3": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase01#4": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Double Barrel!`)0-1",
	    "OnCase02#5": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase02#6": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase02#7": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase02#8": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Double Barrel!`)0-1",
	    "OnCase03#9": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_smg `,15153, null)-1",
	    "OnCase03#10": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase03#11": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase03#12": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The SMG!`)0-1",
	    "OnCase04#13": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_smg `,15153, null)-1",
	    "OnCase04#14": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase04#15": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase04#16": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The SMG!`)0-1",
	    "OnCase05#17": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_rocketlauncher `,15150, null)-1",
	    "OnCase05#18": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase05#19": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase05#20": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Rocket Launcher!`)0-1",
	    "OnCase06#21": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_rocketlauncher `,15150, null)-1",
	    "OnCase06#22": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase06#23": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase06#24": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Rocket Launcher!`)0-1",
	    "OnCase07#25": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase07#26": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase07#27": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1",
	    "OnCase07#28": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Ray Gun!`)0-1",
	    "OnCase08#29": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase08#30": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase08#31": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1",
	    "OnCase08#32": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Tactigatling!`)0-1",
	    "OnCase09#33": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase09#34": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase09#35": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1",
	    "OnCase09#36": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Beam Rifle!`)0-1",
	    "OnCase10#37": "!activatorRunScriptCodeGiveWeapon(self,`the cleaner's carbine `,751, null)-1",
	    "OnCase10#38": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase10#39": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase10#40": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Cleaner's Carbine!`)0-1",
	    "OnCase11#41": "!activatorRunScriptCodeGiveWeapon(self,`the cleaner's carbine `,751, null)-1",
	    "OnCase11#42": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase11#43": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase11#44": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Cleaner's Carbine!`)0-1",
	    "OnCase12#45": "tgun_check,Test,,-1",
	    "OnCase13#46": "dumpster_dud,Trigger,-1"
	})
	logic_case326.SetOrigin(org)
	logic_case326.SetAngles(ang[0], ang[1], ang[2])

	local logic_case327 = SpawnEntityFromTable("logic_case", {
	    targetname = "dumpster_picker_demo",
	    "OnCase01#1": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_shotgun_pyro `,12, null)-1",
	    "OnCase01#2": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase01#3": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase01#4": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Shotgun!`)0-1",
	    "OnCase02#5": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_shotgun_pyro `,12, null)-1",
	    "OnCase02#6": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase02#7": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase02#8": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Shotgun!`)0-1",
	    "OnCase03#9": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase03#10": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase03#11": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase03#12": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Double Barrel!`)0-1",
	    "OnCase04#13": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase04#14": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase04#15": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase04#16": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Double Barrel!`)0-1",
	    "OnCase05#17": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_smg `,15153, null)-1",
	    "OnCase05#18": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase05#19": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase05#20": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The SMG!`)0-1",
	    "OnCase06#21": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_smg `,15153, null)-1",
	    "OnCase06#22": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase06#23": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase06#24": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The SMG!`)0-1",
	    "OnCase07#25": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_pipebomblauncher `,15155, null)-1",
	    "OnCase07#26": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase07#27": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase07#28": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Stickybomb Launcher!`)0-1",
	    "OnCase08#29": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_pipebomblauncher `,15155, null)-1",
	    "OnCase08#30": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase08#31": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase08#32": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Stickybomb Launcher!`)0-1",
	    "OnCase09#33": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase09#34": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase09#35": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1",
	    "OnCase09#36": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Tactigatling!`)0-1",
	    "OnCase10#37": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase10#38": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase10#39": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1",
	    "OnCase10#40": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Beam Rifle!`)0-1",
	    "OnCase11#41": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase11#42": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase11#43": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1",
	    "OnCase11#44": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Ray Gun!`)0-1",
	    "OnCase12#45": "dumpster_dud,Trigger,-1"
	})
	logic_case327.SetOrigin(org)
	logic_case327.SetAngles(ang[0], ang[1], ang[2])

	local logic_case328 = SpawnEntityFromTable("logic_case", {
	    targetname = "dumpster_picker_medic",
	    "OnCase01#1": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_scattergun `,15157, null)-1",
	    "OnCase01#2": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase01#3": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase01#4": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Scattergun!`)0-1",
	    "OnCase02#5": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_scattergun `,15157, null)-1",
	    "OnCase02#6": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase02#7": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase02#8": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Scattergun!`)0-1",
	    "OnCase03#9": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_flamethrower `,30474, null)-1",
	    "OnCase03#10": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase03#11": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase03#12": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Flamethrower!`)0-1",
	    "OnCase04#13": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_flamethrower `,30474, null)-1",
	    "OnCase04#14": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase04#15": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase04#16": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Flamethrower!`)0-1",
	    "OnCase05#17": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase05#18": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase05#19": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase05#20": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Punch Packer!`)0-1",
	    "OnCase06#21": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase06#22": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase06#23": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase06#24": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Punch Packer!`)0-1",
	    "OnCase07#25": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase07#26": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase07#27": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase07#28": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The SMG!`)0-1",
	    "OnCase08#29": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase08#30": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase08#31": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase08#32": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The SMG!`)0-1",
	    "OnCase09#33": "!activatorRunScriptCodeGiveWeapon(self,`the crusader's crossbow `,305, null)-1",
	    "OnCase09#34": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase09#35": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase09#36": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Crusader's Crossbow!`)0-1",
	    "OnCase10#37": "!activatorRunScriptCodeGiveWeapon(self,`the crusader's crossbow `,305, null)-1",
	    "OnCase10#38": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase10#39": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase10#40": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Crusader's Crossbow!`)0-1",
	    "OnCase11#41": "!activatorRunScriptCodeGiveWeapon(self,`the black box `,228, null)-1",
	    "OnCase11#42": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase11#43": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1",
	    "OnCase11#44": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Black Box!`)0-1",
	    "OnCase12#45": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase12#46": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase12#47": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1",
	    "OnCase12#48": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: Das Maschinenpistole!`)0-1",
	    "OnCase13#49": "dumpster_dud,Trigger,-1"
	})
	logic_case328.SetOrigin(org)
	logic_case328.SetAngles(ang[0], ang[1], ang[2])

	local logic_case329 = SpawnEntityFromTable("logic_case", {
	    targetname = "dumpster_picker_heavy",
	    "OnCase01#1": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase01#2": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase01#3": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase01#4": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Double Barrel!`)0-1",
	    "OnCase02#5": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase02#6": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase02#7": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase02#8": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Double Barrel!`)0-1",
	    "OnCase03#9": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_smg `,15153, null)-1",
	    "OnCase03#10": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase03#11": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase03#12": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The SMG!`)0-1",
	    "OnCase04#13": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_smg `,15153, null)-1",
	    "OnCase04#14": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase04#15": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase04#16": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The SMG!`)0-1",
	    "OnCase05#17": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_flamethrower `,30474, null)-1",
	    "OnCase05#18": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase05#19": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase05#20": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Flamethrower!`)0-1",
	    "OnCase06#21": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_flamethrower `,30474, null)-1",
	    "OnCase06#22": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase06#23": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase06#24": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Flamethrower!`)0-1",
	    "OnCase07#25": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_minigun `,15147, null)-1",
	    "OnCase07#26": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase07#27": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase07#28": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Minigun!`)0-1",
	    "OnCase08#29": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_minigun `,15147, null)-1",
	    "OnCase08#30": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase08#31": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase08#32": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Minigun!`)0-1",
	    "OnCase09#33": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase09#34": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase09#35": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1",
	    "OnCase09#36": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Ray Gun!`)0-1",
	    "OnCase10#37": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase10#38": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase10#39": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1",
	    "OnCase10#40": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Beam Rifle!`)0-1",
	    "OnCase11#41": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase11#42": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase11#43": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1",
	    "OnCase11#44": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Tactigatling!`)0-1",
	    "OnCase12#45": "tgun_check,Test,,-1",
	    "OnCase13#46": "dumpster_dud,Trigger,-1"
	})
	logic_case329.SetOrigin(org)
	logic_case329.SetAngles(ang[0], ang[1], ang[2])

	local logic_case330 = SpawnEntityFromTable("logic_case", {
	    targetname = "dumpster_picker_pyro",
	    "OnCase01#1": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_flamethrower `,30474, null)-1",
	    "OnCase01#2": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase01#3": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase01#4": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Flamethrower!`)0-1",
	    "OnCase02#5": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_flamethrower `,30474, null)-1",
	    "OnCase02#6": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase02#7": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase02#8": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Flamethrower!`)0-1",
	    "OnCase03#9": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase03#10": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase03#11": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase03#12": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Double Barrel!`)0-1",
	    "OnCase04#13": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase04#14": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase04#15": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase04#16": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Double Barrel!`)0-1",
	    "OnCase05#17": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_smg `,15153, null)-1",
	    "OnCase05#18": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase05#19": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase05#20": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The SMG!`)0-1",
	    "OnCase06#21": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_smg `,15153, null)-1",
	    "OnCase06#22": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase06#23": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase06#24": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The SMG!`)0-1",
	    "OnCase07#25": "!activatorRunScriptCodeGiveWeapon(self,`the dragon's fury `,1178, null)-1",
	    "OnCase07#26": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase07#27": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase07#28": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Dragon's Fury!`)0-1",
	    "OnCase08#29": "!activatorRunScriptCodeGiveWeapon(self,`the dragon's fury `,1178, null)-1",
	    "OnCase08#30": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase08#31": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase08#32": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Dragon's Fury!`)0-1",
	    "OnCase09#33": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_minigun `,15147, null)-1",
	    "OnCase09#34": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase09#35": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase09#36": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Minigun!`)0-1",
	    "OnCase10#37": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_minigun `,15147, null)-1",
	    "OnCase10#38": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase10#39": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase10#40": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Minigun!`)0-1",
	    "OnCase11#41": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase11#42": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase11#43": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1",
	    "OnCase11#44": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Ray Gun!`)0-1",
	    "OnCase12#45": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase12#46": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase12#47": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1",
	    "OnCase12#48": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Tactigatling!`)0-1",
	    "OnCase13#49": "tgun_check,Test,,-1",
	    "OnCase14#50": "dumpster_dud,Trigger,-1"
	})
	logic_case330.SetOrigin(org)
	logic_case330.SetAngles(ang[0], ang[1], ang[2])

	local logic_case331 = SpawnEntityFromTable("logic_case", {
	    targetname = "dumpster_picker_spy",
	    "OnCase01#1": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_smg `,15153, null)-1",
	    "OnCase01#2": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase01#3": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase01#4": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The SMG!`)0-1",
	    "OnCase02#5": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_smg `,15153, null)-1",
	    "OnCase02#6": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase02#7": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase02#8": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The SMG!`)0-1",
	    "OnCase03#9": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_pistol `,30666, null)-1",
	    "OnCase03#10": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase03#11": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase03#12": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Pistol!`)0-1",
	    "OnCase04#13": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_pistol `,30666, null)-1",
	    "OnCase04#14": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase04#15": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase04#16": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Pistol!`)0-1",
	    "OnCase05#17": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase05#18": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase05#19": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase05#20": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Ambassador!`)0-1",
	    "OnCase06#21": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase06#22": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase06#23": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase06#24": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Ambassador!`)0-1",
	    "OnCase07#25": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase07#26": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase07#27": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase07#28": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Big Iron!`)0-1",
	    "OnCase08#29": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase08#30": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase08#31": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase08#32": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Big Iron!`)0-1",
	    "OnCase09#33": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_shotgun_pyro `,12, null)-1",
	    "OnCase09#34": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase09#35": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase09#36": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Shotgun!`)0-1",
	    "OnCase10#37": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_shotgun_pyro `,12, null)-1",
	    "OnCase10#38": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase10#39": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase10#40": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Shotgun!`)0-1",
	    "OnCase11#41": "!activatorRunScriptCodeGiveWeapon(self,`the winger `,449, null)-1",
	    "OnCase11#42": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase11#43": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase11#44": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Winger!`)0-1",
	    "OnCase12#45": "!activatorRunScriptCodeGiveWeapon(self,`the winger `,449, null)-1",
	    "OnCase12#46": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase12#47": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase12#48": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Winger!`)0-1",
	    "OnCase13#49": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase13#50": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase13#51": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1",
	    "OnCase13#52": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Ray Gun!`)0-1",
	    "OnCase14#53": "dumpster_dud,Trigger,-1"
	})
	logic_case331.SetOrigin(org)
	logic_case331.SetAngles(ang[0], ang[1], ang[2])

	local logic_case332 = SpawnEntityFromTable("logic_case", {
	    targetname = "dumpster_picker_engie",
	    "OnCase01#1": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase01#2": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase01#3": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase01#4": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The B.M.M.H!`)0-1",
	    "OnCase02#5": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_smg `,15153, null)-1",
	    "OnCase02#6": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase02#7": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase02#8": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The SMG!`)0-1",
	    "OnCase03#9": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_smg `,15153, null)-1",
	    "OnCase03#10": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase03#11": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase03#12": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The SMG!`)0-1",
	    "OnCase04#13": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_shotgun_primary `,527, null)-1",
	    "OnCase04#14": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase04#15": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase04#16": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Shotgun!`)0-1",
	    "OnCase05#17": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_scattergun `,15157, null)-1",
	    "OnCase05#18": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase05#19": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase05#20": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Scattergun!`)0-1",
	    "OnCase06#21": "!activatorRunScriptCodeGiveWeapon(self,`tf_weapon_shotgun_primary `,527, null)-1",
	    "OnCase06#22": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase06#23": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase06#24": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Shotgun!`)0-1",
	    "OnCase07#25": "!activatorRunScriptCodeGiveWeapon(self,`the nostromo napalmer `,30474, null)-1",
	    "OnCase07#26": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase07#27": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase07#28": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Nostromo Napalmer!`)0-1",
	    "OnCase08#29": "!activatorRunScriptCodeGiveWeapon(self,`the nostromo napalmer `,30474, null)-1",
	    "OnCase08#30": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase08#31": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1",
	    "OnCase08#32": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Nostromo Napalmer!`)0-1",
	    "OnCase09#33": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase09#34": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase09#35": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1",
	    "OnCase09#36": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Ray Gun!`)0-1",
	    "OnCase10#37": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)-1",
	    "OnCase10#38": "!activatorRunScriptCodeEmitSoundEx({sound_name = `items/gunpickup2.wav`, channel = 0, volume = 1, pitch = 1, entity = self, filter_type = 4 })-1",
	    "OnCase10#39": "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1",
	    "OnCase10#40": "!activatorRunScriptCodeClientPrint(self, 4, `You've received: The Punch Packer!`)0-1",
	    "OnCase11#41": "dumpster_dud,Trigger,-1"
	})
	logic_case332.SetOrigin(org)
	logic_case332.SetAngles(ang[0], ang[1], ang[2])

}
::TankTeleport <- function(org, ang)
{
	local trigger_teleport_brush129 = SpawnEntityFromTable("trigger_teleport", {
	    targetname = "tank_warper",
	    spawnflags = 1,
	    target = "tank_spawnroulette",
	    filtername = "filter_tank",
	    mins = "-9999 -9999 -9999",
	    maxs = "9999 9999 9999",
	    mins = "-1 -1 -1",
	    maxs = "1 1 1"
	})
	trigger_teleport_brush129.KeyValueFromInt("solid", 2)
	trigger_teleport_brush129.KeyValueFromString("mins", "-1 -1 -1")
	trigger_teleport_brush129.KeyValueFromString("maxs", "1 1 1")

	local trigger_multiple_brush130 = SpawnEntityFromTable("trigger_multiple", {
	    targetname = "tank_spawnroulette",
	    spawnflags = 1,
	    filtername = "filter_tank",
	    origin = Vector("-2168, 40, 13604"),
	    mins = "-24 -24 -36",
	    maxs = "24 24 36",
	    "OnStartTouchAll#1": "tank_spawn_picker,PickRandomShuffle,,-1",
	    mins = "-1 -1 -1",
	    maxs = "1 1 1"
	})
	trigger_multiple_brush130.KeyValueFromInt("solid", 2)
	trigger_multiple_brush130.KeyValueFromString("mins", "-1 -1 -1")
	trigger_multiple_brush130.KeyValueFromString("maxs", "1 1 1")

	local trigger_bot_tag_brush131 = SpawnEntityFromTable("trigger_bot_tag", {
	    targetname = "tank_spawnroulette",
	    spawnflags = 1,
	    filtername = "filter_tank",
	    tags = "swooce",
	    add = 0,
	    origin = Vector("-2168, 40, 13604"),
	    mins = "-128 -128 -128",
	    maxs = "128 128 128",
	    mins = "-1 -1 -1",
	    maxs = "1 1 1"
	})
	trigger_bot_tag_brush131.KeyValueFromInt("solid", 2)
	trigger_bot_tag_brush131.KeyValueFromString("mins", "-1 -1 -1")
	trigger_bot_tag_brush131.KeyValueFromString("maxs", "1 1 1")

	local filter_tf_bot_has_tag333 = SpawnEntityFromTable("filter_tf_bot_has_tag", {
	    targetname = "filter_tank",
	    require_all_tags = 1,
	    tags = "swooce",
	    Negated = "Allow entities that match criteria"
	})
	filter_tf_bot_has_tag333.SetOrigin(org)
	filter_tf_bot_has_tag333.SetAngles(ang[0], ang[1], ang[2])

	local point_teleport334 = SpawnEntityFromTable("point_teleport", {
	    targetname = "tank_spawn_01",
	    target = "!activator",
	    origin = Vector("-2048, -2432, 24")
	})
	point_teleport334.SetOrigin(org)
	point_teleport334.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system335 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "tank_spawn_01_eff1",
	    effect_name = "utaunt_electricity_cloud_parent_WB",
	    origin = Vector("-2048, -2432, 24")
	})
	info_particle_system335.SetOrigin(org)
	info_particle_system335.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system336 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "tank_spawn_01_eff2",
	    effect_name = "utaunt_lightning_bolt",
	    origin = Vector("-2048, -2432, 24")
	})
	info_particle_system336.SetOrigin(org)
	info_particle_system336.SetAngles(ang[0], ang[1], ang[2])

	local point_teleport337 = SpawnEntityFromTable("point_teleport", {
	    targetname = "tank_spawn_02",
	    target = "!activator",
	    origin = Vector("-352, -3064, 8")
	})
	point_teleport337.SetOrigin(org)
	point_teleport337.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system338 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "tank_spawn_02_eff1",
	    effect_name = "utaunt_electricity_cloud_parent_WB",
	    origin = Vector("-352, -3064, 8")
	})
	info_particle_system338.SetOrigin(org)
	info_particle_system338.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system339 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "tank_spawn_02_eff2",
	    effect_name = "utaunt_lightning_bolt",
	    origin = Vector("-352, -3064, 8")
	})
	info_particle_system339.SetOrigin(org)
	info_particle_system339.SetAngles(ang[0], ang[1], ang[2])

	local point_teleport340 = SpawnEntityFromTable("point_teleport", {
	    targetname = "tank_spawn_03",
	    target = "!activator",
	    origin = Vector("1376, -945, 24")
	})
	point_teleport340.SetOrigin(org)
	point_teleport340.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system341 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "tank_spawn_03_eff1",
	    effect_name = "utaunt_electricity_cloud_parent_WB",
	    origin = Vector("1376, -945, 24")
	})
	info_particle_system341.SetOrigin(org)
	info_particle_system341.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system342 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "tank_spawn_03_eff2",
	    effect_name = "utaunt_lightning_bolt",
	    origin = Vector("1376, -945, 24")
	})
	info_particle_system342.SetOrigin(org)
	info_particle_system342.SetAngles(ang[0], ang[1], ang[2])

	local point_teleport343 = SpawnEntityFromTable("point_teleport", {
	    targetname = "tank_spawn_04",
	    target = "!activator",
	    origin = Vector("1376, 1120, 16")
	})
	point_teleport343.SetOrigin(org)
	point_teleport343.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system344 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "tank_spawn_04_eff1",
	    effect_name = "utaunt_electricity_cloud_parent_WB",
	    origin = Vector("1376, 1120, 16")
	})
	info_particle_system344.SetOrigin(org)
	info_particle_system344.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system345 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "tank_spawn_04_eff2",
	    effect_name = "utaunt_lightning_bolt",
	    origin = Vector("1376, 1120, 16")
	})
	info_particle_system345.SetOrigin(org)
	info_particle_system345.SetAngles(ang[0], ang[1], ang[2])

	local point_teleport346 = SpawnEntityFromTable("point_teleport", {
	    targetname = "tank_spawn_05",
	    target = "!activator",
	    origin = Vector("-8, 1556, 224")
	})
	point_teleport346.SetOrigin(org)
	point_teleport346.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system347 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "tank_spawn_05_eff1",
	    effect_name = "utaunt_electricity_cloud_parent_WB",
	    origin = Vector("-8, 1556, 224")
	})
	info_particle_system347.SetOrigin(org)
	info_particle_system347.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system348 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "tank_spawn_05_eff2",
	    effect_name = "utaunt_lightning_bolt",
	    origin = Vector("-8, 1556, 224")
	})
	info_particle_system348.SetOrigin(org)
	info_particle_system348.SetAngles(ang[0], ang[1], ang[2])

	local point_teleport349 = SpawnEntityFromTable("point_teleport", {
	    targetname = "tank_spawn_06",
	    target = "!activator",
	    origin = Vector("-792, 2280, 16")
	})
	point_teleport349.SetOrigin(org)
	point_teleport349.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system350 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "tank_spawn_06_eff1",
	    effect_name = "utaunt_electricity_cloud_parent_WB",
	    origin = Vector("-792, 2280, 16")
	})
	info_particle_system350.SetOrigin(org)
	info_particle_system350.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system351 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "tank_spawn_06_eff2",
	    effect_name = "utaunt_lightning_bolt",
	    origin = Vector("-792, 2280, 16")
	})
	info_particle_system351.SetOrigin(org)
	info_particle_system351.SetAngles(ang[0], ang[1], ang[2])

	local point_teleport352 = SpawnEntityFromTable("point_teleport", {
	    targetname = "tank_spawn_07",
	    target = "!activator",
	    origin = Vector("-3136, 1272, 24")
	})
	point_teleport352.SetOrigin(org)
	point_teleport352.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system353 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "tank_spawn_07_eff1",
	    effect_name = "utaunt_electricity_cloud_parent_WB",
	    origin = Vector("-3136, 1272, 24")
	})
	info_particle_system353.SetOrigin(org)
	info_particle_system353.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system354 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "tank_spawn_07_eff2",
	    effect_name = "utaunt_lightning_bolt",
	    origin = Vector("-3136, 1272, 24")
	})
	info_particle_system354.SetOrigin(org)
	info_particle_system354.SetAngles(ang[0], ang[1], ang[2])

	local point_teleport355 = SpawnEntityFromTable("point_teleport", {
	    targetname = "tank_spawn_08",
	    target = "!activator",
	    origin = Vector("-2296, -264, 24")
	})
	point_teleport355.SetOrigin(org)
	point_teleport355.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system356 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "tank_spawn_08_eff1",
	    effect_name = "utaunt_electricity_cloud_parent_WB",
	    origin = Vector("-2296, -264, 24")
	})
	info_particle_system356.SetOrigin(org)
	info_particle_system356.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system357 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "tank_spawn_08_eff2",
	    effect_name = "utaunt_lightning_bolt",
	    origin = Vector("-2296, -264, 24")
	})
	info_particle_system357.SetOrigin(org)
	info_particle_system357.SetAngles(ang[0], ang[1], ang[2])

	local logic_case358 = SpawnEntityFromTable("logic_case", {
	    targetname = "tank_spawn_picker",
	    "OnCase01#1": "tank_spawn_01_eff1,Start,,-1",
	    "OnCase01#2": "tf_gamerulesPlayVORedmisc/halloween_eyeball/book_spawn.wav-1",
	    "OnCase01#3": "tank_spawn_01_eff2,Start,,1.75,-1",
	    "OnCase01#4": "tank_spawn_01,Teleport,,1.75,-1",
	    "OnCase01#5": "tf_gamerulesPlayVORedambient/halloween/thunder_04.wav1.75-1",
	    "OnCase01#6": "tank_spawn_01_eff1,Stop,,1.8,-1",
	    "OnCase01#7": "tank_spawn_01_eff2,Stop,,2,-1",
	    "OnCase02#8": "tank_spawn_02_eff1,Start,,-1",
	    "OnCase02#9": "tf_gamerulesPlayVORedmisc/halloween_eyeball/book_spawn.wav-1",
	    "OnCase02#10": "tank_spawn_02_eff2,Start,,1.75,-1",
	    "OnCase02#11": "tank_spawn_02,Teleport,,1.75,-1",
	    "OnCase02#12": "tf_gamerulesPlayVORedambient/halloween/thunder_04.wav1.75-1",
	    "OnCase02#13": "tank_spawn_02_eff1,Stop,,1.8,-1",
	    "OnCase02#14": "tank_spawn_02_eff2,Stop,,2,-1",
	    "OnCase03#15": "tank_spawn_03_eff1,Start,,-1",
	    "OnCase03#16": "tf_gamerulesPlayVORedmisc/halloween_eyeball/book_spawn.wav-1",
	    "OnCase03#17": "tank_spawn_03_eff2,Start,,1.75,-1",
	    "OnCase03#18": "tank_spawn_03,Teleport,,1.75,-1",
	    "OnCase03#19": "tf_gamerulesPlayVORedambient/halloween/thunder_04.wav1.75-1",
	    "OnCase03#20": "tank_spawn_03_eff1,Stop,,1.8,-1",
	    "OnCase03#21": "tank_spawn_03_eff2,Stop,,2,-1",
	    "OnCase04#22": "tank_spawn_04_eff1,Start,,-1",
	    "OnCase04#23": "tf_gamerulesPlayVORedmisc/halloween_eyeball/book_spawn.wav-1",
	    "OnCase04#24": "tank_spawn_04_eff2,Start,,1.75,-1",
	    "OnCase04#25": "tank_spawn_04,Teleport,,1.75,-1",
	    "OnCase04#26": "tf_gamerulesPlayVORedambient/halloween/thunder_04.wav1.75-1",
	    "OnCase04#27": "tank_spawn_04_eff1,Stop,,1.8,-1",
	    "OnCase04#28": "tank_spawn_04_eff2,Stop,,2,-1",
	    "OnCase05#29": "tank_spawn_05_eff1,Start,,-1",
	    "OnCase05#30": "tf_gamerulesPlayVORedmisc/halloween_eyeball/book_spawn.wav-1",
	    "OnCase05#31": "tank_spawn_05_eff2,Start,,1.75,-1",
	    "OnCase05#32": "tank_spawn_05,Teleport,,1.75,-1",
	    "OnCase05#33": "tf_gamerulesPlayVORedambient/halloween/thunder_04.wav1.75-1",
	    "OnCase05#34": "tank_spawn_05_eff1,Stop,,1.8,-1",
	    "OnCase05#35": "tank_spawn_05_eff2,Stop,,2,-1",
	    "OnCase06#36": "tank_spawn_06_eff1,Start,,-1",
	    "OnCase06#37": "tf_gamerulesPlayVORedmisc/halloween_eyeball/book_spawn.wav-1",
	    "OnCase06#38": "tank_spawn_06_eff2,Start,,1.75,-1",
	    "OnCase06#39": "tank_spawn_06,Teleport,,1.75,-1",
	    "OnCase06#40": "tf_gamerulesPlayVORedambient/halloween/thunder_04.wav1.75-1",
	    "OnCase06#41": "tank_spawn_06_eff1,Stop,,1.8,-1",
	    "OnCase06#42": "tank_spawn_06_eff2,Stop,,2,-1",
	    "OnCase07#43": "tank_spawn_07_eff1,Start,,-1",
	    "OnCase07#44": "tf_gamerulesPlayVORedmisc/halloween_eyeball/book_spawn.wav-1",
	    "OnCase07#45": "tank_spawn_07_eff2,Start,,1.75,-1",
	    "OnCase07#46": "tank_spawn_07,Teleport,,1.75,-1",
	    "OnCase07#47": "tf_gamerulesPlayVORedambient/halloween/thunder_04.wav1.75-1",
	    "OnCase07#48": "tank_spawn_07_eff1,Stop,,1.8,-1",
	    "OnCase07#49": "tank_spawn_07_eff2,Stop,,2,-1",
	    "OnCase08#50": "tank_spawn_08_eff1,Start,,-1",
	    "OnCase08#51": "tf_gamerulesPlayVORedmisc/halloween_eyeball/book_spawn.wav-1",
	    "OnCase08#52": "tank_spawn_08_eff2,Start,,1.75,-1",
	    "OnCase08#53": "tank_spawn_08,Teleport,,1.75,-1",
	    "OnCase08#54": "tf_gamerulesPlayVORedambient/halloween/thunder_04.wav1.75-1",
	    "OnCase08#55": "tank_spawn_08_eff1,Stop,,1.8,-1",
	    "OnCase08#56": "tank_spawn_08_eff2,Stop,,2,-1"
	})
	logic_case358.SetOrigin(org)
	logic_case358.SetAngles(ang[0], ang[1], ang[2])

}
::Camera_Crew_Death <- function(org, ang)
{
	local point_viewcontrol359 = SpawnEntityFromTable("point_viewcontrol", {
	    angles = QAngle("14, 206, 0"),
	    origin = Vector("2948, 924, 518"),
	    acceleration = 0,
	    deceleration = 0,
	    spawnflags = 0,
	    targetname = "camera_gameover_1",
	    parentname = "camera_spin",
	    wait = 5,
	    interpolatepositiontoplayer = 0,
	    speed = 0
	})
	point_viewcontrol359.SetOrigin(org)
	point_viewcontrol359.SetAngles(ang[0], ang[1], ang[2])

	local func_rotating_brush132 = SpawnEntityFromTable("func_rotating", {
	    spawnflags = 64,
	    maxspeed = 1,
	    solidbsp = 0,
	    rendermode = 10,
	    targetname = "camera_spin",
	    origin = Vector("2948, 924, 518"),
	    mins = "-1 -1 -1",
	    maxs = "1 1 1"
	})
	func_rotating_brush132.KeyValueFromInt("solid", 2)
	func_rotating_brush132.KeyValueFromString("mins", "-1 -1 -1")
	func_rotating_brush132.KeyValueFromString("maxs", "1 1 1")

	local game_text360 = SpawnEntityFromTable("game_text", {
	    targetname = "gameovertext",
	    color = "222 222 222",
	    color2 = "240 110 0",
	    fxtime = 8,
	    holdtime = 30,
	    spawnflags = 1,
	    channel = 2,
	    effect = 2,
	    x = 0.4,
	    y = 0.37
	})
	game_text360.SetOrigin(org)
	game_text360.SetAngles(ang[0], ang[1], ang[2])

	local logic_case361 = SpawnEntityFromTable("logic_case", {
	    targetname = "gameoverformat",
	    case16 = "You survived % waves",
	    "ondefault#1": "gameovertext:AddOutput:message :0:-1",
	    "ondefault#2": "gameovertext,display,0,0,-1"
	})
	logic_case361.SetOrigin(org)
	logic_case361.SetAngles(ang[0], ang[1], ang[2])

	local point_viewcontrol362 = SpawnEntityFromTable("point_viewcontrol", {
	    angles = QAngle("23, 298, 0"),
	    origin = Vector("-2349, 1008, 479"),
	    acceleration = 0,
	    deceleration = 0,
	    spawnflags = 0,
	    targetname = "camera_gameover_2",
	    wait = 5,
	    parentname = "camera_spin_2",
	    interpolatepositiontoplayer = 0,
	    speed = 0
	})
	point_viewcontrol362.SetOrigin(org)
	point_viewcontrol362.SetAngles(ang[0], ang[1], ang[2])

	local func_rotating_brush133 = SpawnEntityFromTable("func_rotating", {
	    spawnflags = 66,
	    maxspeed = 1,
	    solidbsp = 0,
	    rendermode = 10,
	    targetname = "camera_spin_2",
	    origin = Vector("-2349, 1008, 479"),
	    mins = "-1 -1 -1",
	    maxs = "1 1 1"
	})
	func_rotating_brush133.KeyValueFromInt("solid", 2)
	func_rotating_brush133.KeyValueFromString("mins", "-1 -1 -1")
	func_rotating_brush133.KeyValueFromString("maxs", "1 1 1")

	local env_fade363 = SpawnEntityFromTable("env_fade", {
	    targetname = "fade_out",
	    duration = 2,
	    holdtime = 0.5,
	    rendercolor = "0 0 0"
	})
	env_fade363.SetOrigin(org)
	env_fade363.SetAngles(ang[0], ang[1], ang[2])

	local env_fade364 = SpawnEntityFromTable("env_fade", {
	    targetname = "fade_in",
	    duration = 2,
	    holdtime = 0.5,
	    spawnflags = 1,
	    rendercolor = "0 0 0"
	})
	env_fade364.SetOrigin(org)
	env_fade364.SetAngles(ang[0], ang[1], ang[2])

	local point_populator_interface365 = SpawnEntityFromTable("point_populator_interface", {
	    targetname = "populator"
	})
	point_populator_interface365.SetOrigin(org)
	point_populator_interface365.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay366 = SpawnEntityFromTable("logic_relay", {
	    targetname = "gameover",
	    startdisabled = 1,
	    "OnTrigger#1": "youwin,Disable,,1.5,-1",
	    "OnTrigger#2": "LMA,Disable,,3,-1",
	    "OnTrigger#3": "populator,PauseBotSpawning,,3,-1",
	    "OnTrigger#4": "player,$PlaySequence,victory,3,-1",
	    "OnTrigger#5": "bossstage_start,CancelPending,,3,-1",
	    "OnTrigger#6": "bossstage_start_tread,CancelPending,,3,-1",
	    "OnTrigger#7": "stage_clear_finale,CancelPending,,3,-1",
	    "OnTrigger#8": "stage_clear,CancelPending,,3,-1",
	    "OnTrigger#9": "playerRunScriptCodeClientPrint(self, 4, `Game over`)3-1",
	    "OnTrigger#10": "roundformat,FireUser2,,3,-1",
	    "OnTrigger#11": "realtimer,FireUser2,,3,-1",
	    "OnTrigger#12": "realtimer,FireUser2,,3.7,-1",
	    "OnTrigger#13": "finale_snd,volume,0,3,-1",
	    "OnTrigger#14": "bossfight_snd,volume,0,3,-1",
	    "OnTrigger#15": "tankround_snd,volume,0,3,-1",
	    "OnTrigger#16": "fail_snd,PlaySound,,3,-1",
	    "OnTrigger#17": "fade_out,Fade,,6,-1",
	    "OnTrigger#18": "camera_gameover_1,$EnableAll,,8,-1",
	    "OnTrigger#19": "camera_spin,start,,8,-1",
	    "OnTrigger#20": "player,$PlaySequence,victoryb,8,-1",
	    "OnTrigger#21": "fade_in,Fade,,8,-1",
	    "OnTrigger#22": "fade_out,Fade,,13,-1",
	    "OnTrigger#23": "camera_spin,stop,,15,-1",
	    "OnTrigger#24": "camera_gameover_2,$EnableAll,,15,-1",
	    "OnTrigger#25": "camera_spin_2,start,,15,-1",
	    "OnTrigger#26": "player,$PlaySequence,victory,15,-1",
	    "OnTrigger#27": "fade_in,Fade,,15,-1",
	    "OnTrigger#28": "bots_win,RoundWin,,18.5,-1"
	})
	logic_relay366.SetOrigin(org)
	logic_relay366.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay367 = SpawnEntityFromTable("logic_relay", {
	    targetname = "youwin",
	    "OnTrigger#1": "finale_snd,volume,0,0,-1",
	    "OnTrigger#2": "playerRunScriptCodeClientPrint(self, 4, `Game over`)0-1",
	    "OnTrigger#3": "gameover,Disable,,-1",
	    "OnTrigger#4": "roundformat,FireUser2,,0,-1",
	    "OnTrigger#5": "realtimer,FireUser2,,0,-1",
	    "OnTrigger#6": "realtimer,FireUser2,,0.7,-1",
	    "OnTrigger#7": "win_snd,PlaySound,,0,-1",
	    "OnTrigger#8": "fade_out,Fade,,13,-1",
	    "OnTrigger#9": "camera_gameover_1,$EnableAll,,15,-1",
	    "OnTrigger#10": "camera_spin,start,,15,-1",
	    "OnTrigger#11": "fade_in,Fade,,15,-1",
	    "OnTrigger#12": "fade_out,Fade,,20,-1",
	    "OnTrigger#13": "camera_spin,stop,,22,-1",
	    "OnTrigger#14": "camera_gameover_2,$EnableAll,,22,-1",
	    "OnTrigger#15": "camera_spin_2,start,,22,-1",
	    "OnTrigger#16": "fade_in,Fade,,22,-1",
	    "OnTrigger#17": "hologram_nuke_hurt,Enable,,25.5,-1",
	    "OnTrigger#18": "camera_spin_2,stop,,32,-1"
	})
	logic_relay367.SetOrigin(org)
	logic_relay367.SetAngles(ang[0], ang[1], ang[2])

}
::FrearmPT <- function(org, ang)
{
	local logic_relay368 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activatorRunScriptCodeGiveWeapon(self,`INVALID`,-1,null)0.0-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION11"
	})
	logic_relay368.SetOrigin(org)
	logic_relay368.SetAngles(ang[0], ang[1], ang[2])

}
::ThundergunPT <- function(org, ang)
{
	local logic_relay369 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "thundergun_effect,Start,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION12"
	})
	logic_relay369.SetOrigin(org)
	logic_relay369.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay370 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "thundergun_hurtRunScriptCodeself.SetOwner(!activator)0.0-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION13"
	})
	logic_relay370.SetOrigin(org)
	logic_relay370.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay371 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "thundergun*,Kill,,0.35,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION14"
	})
	logic_relay371.SetOrigin(org)
	logic_relay371.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system372 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "thundergun_effect",
	    effect_name = "utaunt_lightning_bolt",
	    angles = QAngle("0, 90, 90")
	})
	info_particle_system372.SetOrigin(org)
	info_particle_system372.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system373 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "thundergun_effect",
	    effect_name = "utaunt_lightning_bolt",
	    angles = QAngle("0, 65, 90")
	})
	info_particle_system373.SetOrigin(org)
	info_particle_system373.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system374 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "thundergun_effect",
	    effect_name = "utaunt_lightning_bolt",
	    angles = QAngle("0, 115, 90")
	})
	info_particle_system374.SetOrigin(org)
	info_particle_system374.SetAngles(ang[0], ang[1], ang[2])

	local trigger_hurt_brush134 = SpawnEntityFromTable("trigger_hurt", {
	    damage = 5000,
	    damagetype = 4194304,
	    targetname = "thundergun_hurt",
	    spawnflags = 1,
	    nodmgforce = 0,
	    filtername = "filter_blueteam",
	    mins = "-128 -48 -24",
	    maxs = "128 48 24"
	})
	trigger_hurt_brush134.KeyValueFromInt("solid", 2)
	trigger_hurt_brush134.KeyValueFromString("mins", "-128 -48 -24")
	trigger_hurt_brush134.KeyValueFromString("maxs", "128 48 24")

}
::Thundergun_2PT <- function(org, ang)
{
	local logic_relay375 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "thundergun_effect,Start,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION15"
	})
	logic_relay375.SetOrigin(org)
	logic_relay375.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay376 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "thundergun_hurtRunScriptCodeself.SetOwner(!activator)0.0-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION16"
	})
	logic_relay376.SetOrigin(org)
	logic_relay376.SetAngles(ang[0], ang[1], ang[2])

	local logic_relay377 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "thundergun*,Kill,,0.35,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION17"
	})
	logic_relay377.SetOrigin(org)
	logic_relay377.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system378 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "thundergun_effect",
	    effect_name = "utaunt_lightning_bolt",
	    angles = QAngle("0, 90, 90")
	})
	info_particle_system378.SetOrigin(org)
	info_particle_system378.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system379 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "thundergun_effect",
	    effect_name = "utaunt_lightning_bolt",
	    angles = QAngle("0, 65, 90")
	})
	info_particle_system379.SetOrigin(org)
	info_particle_system379.SetAngles(ang[0], ang[1], ang[2])

	local info_particle_system380 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "thundergun_effect",
	    effect_name = "utaunt_lightning_bolt",
	    angles = QAngle("0, 115, 90")
	})
	info_particle_system380.SetOrigin(org)
	info_particle_system380.SetAngles(ang[0], ang[1], ang[2])

	local trigger_hurt_brush135 = SpawnEntityFromTable("trigger_hurt", {
	    damage = 9750,
	    damagetype = 4194304,
	    targetname = "thundergun_hurt",
	    spawnflags = 1,
	    nodmgforce = 0,
	    filtername = "filter_blueteam",
	    mins = "-128 -48 -24",
	    maxs = "128 96 24"
	})
	trigger_hurt_brush135.KeyValueFromInt("solid", 2)
	trigger_hurt_brush135.KeyValueFromString("mins", "-128 -48 -24")
	trigger_hurt_brush135.KeyValueFromString("maxs", "128 96 24")

}
::MedicbagPT <- function(org, ang)
{
	local _brush136 = SpawnEntityFromTable("", {
	    spawnflags = 1,
	    targetname = "medicbag_aoe",
	    origin = Vector("0, 0, 0"),
	    mins = "-128 -128 -36",
	    maxs = "128 128 36"
	})
	_brush136.KeyValueFromInt("solid", 2)
	_brush136.KeyValueFromString("mins", "-128 -128 -36")
	_brush136.KeyValueFromString("maxs", "128 128 36")

	local mapobj_cart_dispenser381 = SpawnEntityFromTable("mapobj_cart_dispenser", {
	    spawnflags = 12,
	    origin = Vector("0, -12, 0"),
	    targetname = "medicbag_dispbeam",
	    TeamNum = 2,
	    touch_trigger = "medicbag_aoe"
	})
	mapobj_cart_dispenser381.SetOrigin(org)
	mapobj_cart_dispenser381.SetAngles(ang[0], ang[1], ang[2])

	local trigger_multiple_brush137 = SpawnEntityFromTable("trigger_multiple", {
	    spawnflags = 1,
	    filtername = "filter_notred",
	    origin = Vector("0, 0, 0"),
	    mins = "-128 -128 -36",
	    maxs = "128 128 36",
	    "OnStartTouchAll#1": "medicbag_aoe,Disable,,-1",
	    "OnEndTouchAll#2": "medicbag_aoe,Enable,,3,-1"
	})
	trigger_multiple_brush137.KeyValueFromInt("solid", 2)
	trigger_multiple_brush137.KeyValueFromString("mins", "-128 -128 -36")
	trigger_multiple_brush137.KeyValueFromString("maxs", "128 128 36")

}
::PlayerSpawnTemplate "PlayerTracker" <- function(org, ang)
{
	local 382 = SpawnEntityFromTable("", {
	    PlayerSpawnTemplate = "PlayerTracker",
	    SpawnTemplate = "corelogic",
	    SpawnTemplate = "DummyMachines",
	    SpawnTemplate = "Spawn_things",
	    SpawnTemplate = "PlayersLeftLogic",
	    SpawnTemplate = "tutorial",
	    SpawnTemplate = "BuildingBlocks",
	    SpawnTemplate = "Plate_Big",
	    SpawnTemplate = "Camera_Crew_Death",
	    SpawnTemplate = "DumpsterSpawner"
	})
	382.SetOrigin(org)
	382.SetAngles(ang[0], ang[1], ang[2])

}
