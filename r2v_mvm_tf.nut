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

::EMP_annotation <- function()
{
	local logic_relay1 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "a,action Show,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION1"
	})

	local training_annotation2 = SpawnEntityFromTable("training_annotation", {
	    targetname = "boss_hint",
	    display_text = "Uber Generator!",
	    lifetime = 4,
	    origin = Vector(0, 0, 0)
	})

}
::timerbot_logic <- function()
{
	local filter_tf_bot_has_tag_brush1 = SpawnEntityFromTable("filter_tf_bot_has_tag", {
	    targetname = "filter_timer",
	    Negated = 0,
	    require_all_tags = 1,
	    tags = "bot_timer",
	    targetname = "filter_teleport",
	    mins = "-19999 -19999 -19999",
	    maxs = "19999 19999 19999",
	    spawnflags = 1,
	    landmark = "!activator",
	    filtername = "filter_timer",
	    target = "timerbot_position"
	})
	filter_tf_bot_has_tag_brush1.KeyValueFromInt("solid", 2)
	filter_tf_bot_has_tag_brush1.KeyValueFromString("mins", "-19999 -19999 -19999")
	filter_tf_bot_has_tag_brush1.KeyValueFromString("maxs", "19999 19999 19999")

	local info_target3 = SpawnEntityFromTable("info_target", {
	    targetname = "timerbot_position",
	    origin = Vector(-1310.763306, 759.552612, 577.031311)
	})

	local logic_relay4 = SpawnEntityFromTable("logic_relay", {
	    targetname = "bluewin_relay",
	    "ontrigger#1": "bots_win_blue,Roundwin,,0.1,-1"
	})

	local game_round_win5 = SpawnEntityFromTable("game_round_win", {
	    TeamNum = 3,
	    targetname = "bots_win_blue",
	    force_map_reset = 1,
	    classname = "game_round_win"
	})

}
::w7boss_logic <- function()
{
	local logic_relay6 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "upper_text,Display,,1,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION2"
	})

	local logic_relay7 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "middle_text,Display,,1.2,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION3"
	})

	local logic_relay8 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "abrawlissurelybrewing,StartShake,,1,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION4"
	})

	local logic_relay9 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "boss_thingy,SetParent,!activator,0.05,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION5"
	})

	local logic_relay10 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "temporary_solutionRunScriptCodeself.SetOwner(@p@boss_thingy)2-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION6"
	})

	local logic_relay11 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "first_phase,PlaySound,,0.1,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION7"
	})

	local logic_relay12 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "first_phase,StopSound,,130,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION8"
	})

	local logic_relay13 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "first_phase,playsound,,130.1,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION9"
	})

	local logic_relay14 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "recovered_armor_plates,Trigger,,0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION10"
	})

	local logic_relay15 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "second_phase,StopSound,,0,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION1"
	})

	local game_text16 = SpawnEntityFromTable("game_text", {
	    origin = Vector(1984, 1984, 99999),
	    targetname = "upper_text",
	    message = "UPBRINGER OF THE ROBOT REGIME",
	    x = -1.0,
	    y = 0.4,
	    spawnflags = 1,
	    effect = 2,
	    channel = 2,
	    color = "255 255 255",
	    fxtime = 0.2,
	    fadeout = 1,
	    holdtime = 5
	})

	local trigger_hurt_brush2 = SpawnEntityFromTable("trigger_hurt", {
	    origin = Vector(0, 0, 0),
	    angles = QAngle(0, 0, 0),
	    mins = "-600 -600 -8000",
	    maxs = "600 600 8000",
	    damagetype = 64,
	    damage = 2000,
	    StartDisabled = 1,
	    spawnflags = 64,
	    filtername = "redteam"
	})
	trigger_hurt_brush2.KeyValueFromInt("solid", 2)
	trigger_hurt_brush2.KeyValueFromString("mins", "-600 -600 -8000")
	trigger_hurt_brush2.KeyValueFromString("maxs", "600 600 8000")

	local point_push17 = SpawnEntityFromTable("point_push", {
	    targetname = "boss_push",
	    radius = 20,
	    magnitude = 120,
	    innerradius = 20,
	    startdisabled = 1,
	    spawnflags = 8,
	    origin = Vector(0, -20, 10)
	})

	local point_push18 = SpawnEntityFromTable("point_push", {
	    targetname = "boss_push",
	    radius = 1300,
	    magnitude = -120.0,
	    innerradius = 200,
	    startdisabled = 1,
	    spawnflags = 8,
	    origin = Vector(0, 0, 10)
	})

	local prop_dynamic19 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "judgement",
	    Model = "models/props_mvm/robot_spawnpoint_warning.mdl",
	    angles = QAngle(0, 0, 0),
	    Origin = "0 0 0",
	    startdisabled = 1,
	    defaultanim = "idle",
	    disableshadows = 0,
	    modelscale = 3,
	    Skin = 2
	})

	local trigger_hurt_brush3 = SpawnEntityFromTable("trigger_hurt", {
	    origin = Vector(0, 0, 0),
	    angles = QAngle(0, 0, 0),
	    mins = "-250 -250 -8000",
	    maxs = "250 250 8000",
	    damagetype = 1024,
	    damage = 1000,
	    StartDisabled = 1,
	    spawnflags = 64,
	    filtername = "redteam"
	})
	trigger_hurt_brush3.KeyValueFromInt("solid", 2)
	trigger_hurt_brush3.KeyValueFromString("mins", "-250 -250 -8000")
	trigger_hurt_brush3.KeyValueFromString("maxs", "250 250 8000")

	local info_particle_system20 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "suckingin",
	    origin = Vector(0, 0, 90),
	    angles = QAngle(0, 0, 0),
	    effect_name = "eb_death_vortex01"
	})

	local info_particle_system21 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "vortexlightning",
	    origin = Vector(0, 40, 0),
	    angles = QAngle(0, 0, 0),
	    effect_name = "wrenchmotron_teleport_beam"
	})

	local info_particle_system22 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "vortexlightning",
	    origin = Vector(0, -40, 0),
	    angles = QAngle(0, 0, 0),
	    effect_name = "wrenchmotron_teleport_beam"
	})

	local info_particle_system23 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "vortexlightning",
	    origin = Vector(40, 0, 0),
	    angles = QAngle(0, 0, 0),
	    effect_name = "wrenchmotron_teleport_beam"
	})

	local info_particle_system24 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "vortexlightning",
	    origin = Vector(-40, 0, 0),
	    angles = QAngle(0, 0, 0),
	    effect_name = "wrenchmotron_teleport_beam"
	})

	local info_particle_system25 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "warning_boss_attack_blue",
	    effect_name = "powerup_supernova_explode_blue",
	    start_active = 0,
	    origin = Vector(0, 0, 82)
	})

	local info_particle_system26 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "warning_boss_attack_red",
	    effect_name = "powerup_supernova_explode_red",
	    start_active = 0,
	    origin = Vector(0, 0, 82)
	})

	local info_particle_system27 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "warning_boss_attack_white",
	    effect_name = "bl_killtaunt_explosion",
	    start_active = 0,
	    origin = Vector(0, 0, 82)
	})

	local info_particle_system28 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "warning_boss_attack_gray",
	    effect_name = "eb_aura_angry02",
	    start_active = 0,
	    origin = Vector(0, 0, 82)
	})

	local logic_relay29 = SpawnEntityFromTable("logic_relay", {
	    targetname = "boss_attack_incoming_anti_bodyblock",
	    "OnTrigger#1": "tf_gamerulesPlayVORed=150|weapons/rescue_ranger_teleport_send_01.wav0.5-1",
	    "OnTrigger#2": "warning_boss_attack_blue,start,,0.5,-1",
	    "OnTrigger#3": "warning_boss_attack_blue,stop,,1.5,-1",
	    "Ontrigger#4": "tf_gamerulesPlayVORed=150|vo\mvm\mght\taunts\soldier_mvm_m_taunts13.mp30-1"
	})

	local logic_relay30 = SpawnEntityFromTable("logic_relay", {
	    targetname = "boss_attack_incoming_suck",
	    "OnTrigger#1": "tf_gamerulesPlayVORed=150|weapons\cow_mangler_over_charge_shot.wav0.5-1",
	    "OnTrigger#2": "warning_boss_attack_red,start,,0.5,-1",
	    "OnTrigger#3": "warning_boss_attack_red,stop,,1.5,-1",
	    "Ontrigger#4": "tf_gamerulesPlayVORed=150|vo\mvm\mght\taunts\soldier_mvm_m_taunts03.mp30-1"
	})

	local logic_relay31 = SpawnEntityFromTable("logic_relay", {
	    targetname = "boss_attack_incoming_ground",
	    "OnTrigger#1": "tf_gamerulesPlayVORed=150|weapons\rescue_ranger_teleport_receive_02.wav0.5-1",
	    "OnTrigger#2": "warning_boss_attack_blue,start,,0.5,-1",
	    "OnTrigger#3": "warning_boss_attack_blue,stop,,1.5,-1",
	    "Ontrigger#4": "tf_gamerulesPlayVORed=150|vo\mvm\mght\taunts\soldier_mvm_m_taunts17.mp30-1"
	})

	local logic_relay32 = SpawnEntityFromTable("logic_relay", {
	    targetname = "vortexattack",
	    "OnTrigger#1": "getthefuckaway,Enable,,0,-1",
	    "OnTrigger#2": "getthefuckaway,Disable,,7,-1",
	    "OnTrigger#3": "boss_push*,Enable,,0,-1",
	    "OnTrigger#4": "boss_push*,Disable,,7,-1",
	    "OnTrigger#5": "suckingin,Start,,0,-1",
	    "OnTrigger#6": "suckingin,Stop,,7,-1",
	    "OnTrigger#7": "vortexdamage,enable,,7,-1",
	    "OnTrigger#8": "vortexdamage,Disable,,7.1,-1",
	    "OnTrigger#9": "judgement*,Enable,,0,-1",
	    "OnTrigger#10": "judgement*,disable,,7,-1",
	    "OnTrigger#11": "@p@boss_thingy,$Taunt,,0,-1",
	    "OnTrigger#12": "@p@boss_thingyRunScriptCodeself.AddCustomAttribute(`no_attack`, 1, -1)0-1",
	    "OnTrigger#13": "@p@boss_thingyRunScriptCodeself.AddCustomAttribute(`gesture speed increase`, 0.5, -1)0-1",
	    "OnTrigger#14": "tf_gamerulesPlayVORedambient\halloween\windgust_10.wav0-1",
	    "OnTrigger#15": "tf_gamerulesPlayVORedambient\halloween\thunder_01.wav7-1",
	    "OnTrigger#16": "vortexlightning*,Start,,7,-1",
	    "OnTrigger#17": "vortexlightning*,Stop,,7.3,-1"
	})

	local logic_relay33 = SpawnEntityFromTable("logic_relay", {
	    targetname = "recovered_armor_plates",
	    "OnTrigger#1": "playerRunScriptCodeClientPrint(self, 3, `\x07ffb200///ARMOR PLATING RECOVERED///`)0-1",
	    "OnTrigger#2": "playerRunScriptCodeClientPrint(self, 3, `\x07ffb200///NOW PLAYING: SUPERCHARGED BY SNUPERBOB///`)5-1",
	    "OnTrigger#3": "playerRunScriptCodeClientPrint(self, 3, `\x07ffb200///ACTIVATING REMAING SCRAPPED BOTS///`)15-1",
	    "OnTrigger#4": "letsgow6,Fade,,0,-1",
	    "OnTrigger#5": "tf_gamerulesPlayVOReditems\powerup_pickup_crits.wav0-1",
	    "OnTrigger#6": "tf_gamerulesPlayVORedmisc\doomsday_missile_explosion.wav15-1",
	    "Ontrigger#7": "boss_attack_incoming_ground,trigger,,8.5,-1",
	    "OnTrigger#8": "die,Start,,15,-1",
	    "OnTrigger#9": "haha_boom,enable,,15,-1",
	    "OnTrigger#10": "haha_boom,disable,,15.1,-1",
	    "OnTrigger#11": "attack_explosion,start,,15,-1",
	    "OnTrigger#12": "attack_explosion,stop,,16,-1",
	    "OnTrigger#13": "getthefuckaway,enable,,10,-1",
	    "OnTrigger#14": "getthefuckaway,disable,,15,-1",
	    "OnTrigger#15": "tf_taunt_prop*,kill,,10,-1",
	    "OnTrigger#16": "tf_taunt_prop*,kill,,10.1,-1",
	    "OnTrigger#17": "tf_taunt_prop*,kill,,10.2,-1",
	    "OnTrigger#18": "tf_taunt_prop*,kill,,10.3,-1",
	    "OnTrigger#19": "abrawlissurelybrewing,StartShake,,15,-1"
	})

	local logic_relay34 = SpawnEntityFromTable("logic_relay", {
	    targetname = "ground_attack",
	    "OnTrigger#1": "@p@boss_thingy,$TauntFromItem,Taunt: Yeti Smash,2,-1",
	    "Ontrigger#2": "boss_attack_incoming_ground,trigger,,0,-1",
	    "OnTrigger#3": "haha_boom,enable,,6,-1",
	    "OnTrigger#4": "haha_boom,disable,,6.1,-1",
	    "OnTrigger#5": "tf_gamerulesPlayVORedmisc\doomsday_missile_explosion.wav6-1",
	    "onTrigger#6": "die,Start,,6,-1",
	    "onTrigger#7": "die,Stop,,6.1,-1",
	    "OnTrigger#8": "attack_explosion,start,,6,-1",
	    "OnTrigger#9": "attack_explosion,stop,,8,-1",
	    "OnTrigger#10": "getthefuckaway,enable,,2,-1",
	    "OnTrigger#11": "getthefuckaway,disable,,6,-1",
	    "OnTrigger#12": "tf_taunt_prop*,kill,,2,-1",
	    "OnTrigger#13": "tf_taunt_prop*,kill,,2.1,-1",
	    "OnTrigger#14": "tf_taunt_prop*,kill,,2.2,-1",
	    "OnTrigger#15": "tf_taunt_prop*,kill,,2.3,-1",
	    "OnTrigger#16": "abrawlissurelybrewing,StartShake,,6,-1",
	    "OnTrigger#17": "popscript,$CreateShockwave,,6,-1",
	    "OnTrigger#18": "@p@boss_thingyRunScriptCodeself.AddCustomAttribute(`gesture speed increase`, 1.35, -1)0-1"
	})

	local prop_dynamic35 = SpawnEntityFromTable("prop_dynamic", {
	    model = "models/props_gameplay/cap_square_512.mdl",
	    targetname = "getthefuckaway",
	    solid = 6,
	    skin = 2,
	    origin = Vector(0, 0, 30),
	    StartDisabled = 1,
	    modelscale = 2.25
	})

	local info_target36 = SpawnEntityFromTable("info_target", {
	    TargetName = "boss_thingy",
	    origin = Vector(0, 0, 0)
	})

	local logic_case37 = SpawnEntityFromTable("logic_case", {
	    targetname = "major_shocks_weapons",
	    "OnCase01#1": "point_populator_interfaceChangeBotAttributesburst0-1",
	    "OnCase02#2": "point_populator_interfaceChangeBotAttributesbarrage0-1",
	    "OnCase03#3": "point_populator_interfaceChangeBotAttributesmulti0-1",
	    "OnCase04#4": "point_populator_interfaceChangeBotAttributeshoming0-1",
	    "OnCase05#5": "point_populator_interfaceChangeBotAttributesnuke0-1",
	    "OnCase06#6": "point_populator_interfaceChangeBotAttributesSpecial_attack0-1",
	    "OnCase07#7": "point_populator_interfaceChangeBotAttributesSpecial_attack_ground0-1"
	})

	local logic_case38 = SpawnEntityFromTable("logic_case", {
	    targetname = "major_shocks_weapons_phase_2",
	    "OnCase01#1": "point_populator_interfaceChangeBotAttributesattack1b0-1",
	    "OnCase02#2": "point_populator_interfaceChangeBotAttributesattack2b0-1",
	    "OnCase03#3": "point_populator_interfaceChangeBotAttributesattack3b0-1",
	    "OnCase04#4": "point_populator_interfaceChangeBotAttributesattack4b0-1",
	    "OnCase05#5": "point_populator_interfaceChangeBotAttributesattack5b0-1",
	    "OnCase06#6": "point_populator_interfaceChangeBotAttributesattack6b0-1",
	    "OnCase07#7": "point_populator_interfaceChangeBotAttributesattack7b0-1",
	    "OnCase08#8": "point_populator_interfaceChangeBotAttributesattack8b0-1",
	    "OnCase09#9": "point_populator_interfaceChangeBotAttributesSpecial_attack_20-1",
	    "OnCase10#10": "point_populator_interfaceChangeBotAttributesSpecial_attack_20-1",
	    "OnCase11#11": "point_populator_interfaceChangeBotAttributesSpecial_attack_ground_20-1",
	    "OnCase12#12": "point_populator_interfaceChangeBotAttributesSpecial_attack_ground_20-1"
	})

	local logic_relay39 = SpawnEntityFromTable("logic_relay", {
	    targetname = "bossintermission",
	    "OnTrigger#1": "@p@boss_thingyRunScriptCodeself.AddCond(52)0-1",
	    "OnTrigger#2": "@p@boss_thingyRunScriptCodeself.AddCustomAttribute(`move speed penalty`, 0.001, -1)0-1",
	    "OnTrigger#3": "@p@boss_thingyRunScriptCodeself.AddCustomAttribute(`no_attack`, 1, -1)0-1",
	    "OnTrigger#4": "@p@boss_thingyRunScriptCodeself.AddCustomAttribute(`no_jump`, 1, -1)0-1",
	    "OnTrigger#5": "@p@boss_thingyRunScriptCodeself.AddCustomAttribute(`no_duck`, 1, -1)0-1",
	    "OnTrigger#6": "spawnbot_emp*,Enable,,3,-1",
	    "OnTrigger#7": "playerRunScriptCodeClientPrint(self, 3, `\x07ffb200///DROP THE EMPS TO DROP THE BOSS' UBER PROTECTION///`)-1"
	})

	local info_particle_system40 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "attack_explosion",
	    origin = Vector(0, 0, 90),
	    angles = QAngle(0, 0, 0),
	    effect_name = "cinefx_goldrush"
	})

	local logic_relay41 = SpawnEntityFromTable("logic_relay", {
	    targetname = "dropbossuber",
	    "OnTrigger#1": "first_phase*,kill,0.5,0,-1",
	    "OnTrigger#2": "inbetweenphases,PlaySound,0,0.25,-1",
	    "OnTrigger#3": "@p@boss_thingyRunScriptCodeself.RemoveCond(52)10-1",
	    "OnTrigger#4": "@p@boss_thingyRunScriptCodeself.RemoveCustomAttribute(`move speed penalty`)10-1",
	    "OnTrigger#5": "@p@boss_thingyRunScriptCodeself.RemoveCustomAttribute(`no_attack`)10-1",
	    "OnTrigger#6": "@p@boss_thingyRunScriptCodeself.RemoveCustomAttribute(`no_jump`)10-1",
	    "OnTrigger#7": "@p@boss_thingyRunScriptCodeself.RemoveCustomAttribute(`no_duck`)10-1",
	    "OnTrigger#8": "playerRunScriptCodeClientPrint(self, 3, `\x07ffb200///THE FALLEN CHIEFS HAVE AWOKEN///`)9-1",
	    "OnTrigger#9": "playerRunScriptCodeClientPrint(self, 3, `\x07ffb200///THE FALLEN CHIEFS HAVE AWOKEN///`)9-1",
	    "OnTrigger#10": "playerRunScriptCodeClientPrint(self, 3, `\x07ffb200///THE FALLEN CHIEFS HAVE AWOKEN///`)9-1",
	    "OnTrigger#11": "playerRunScriptCodeClientPrint(self, 3, `\x07ffb200///THE FALLEN CHIEFS HAVE AWOKEN///`)9-1",
	    "OnTrigger#12": "playerRunScriptCodeClientPrint(self, 3, `\x07ffb200///THE FALLEN CHIEFS HAVE AWOKEN///`)9-1",
	    "OnTrigger#13": "playerRunScriptCodeClientPrint(self, 3, `\x07ffb200///THE FALLEN CHIEFS HAVE AWOKEN///`)9-1",
	    "OnTrigger#14": "playerRunScriptCodeClientPrint(self, 3, `\x07ffb200///THE FALLEN CHIEFS HAVE AWOKEN///`)9-1",
	    "OnTrigger#15": "playerRunScriptCodeClientPrint(self, 3, `\x07ffb200///THE FALLEN CHIEFS HAVE AWOKEN///`)9-1",
	    "OnTrigger#16": "abrawlissurelybrewing,StartShake,,9.2,-1",
	    "OnTrigger#17": "diethesecond,Start,,9.2,-1",
	    "OnTrigger#18": "tf_gamerulesPlayVORedmisc\doomsday_missile_explosion.wav9.2-1",
	    "OnTrigger#19": "haha_boom,enable,,9.2,-1",
	    "OnTrigger#20": "haha_boom,disable,,9.3,-1",
	    "OnTrigger#21": "attack_explosion,start,,9.2,-1",
	    "OnTrigger#22": "attack_explosion,stop,,10,-1",
	    "OnTrigger#23": "getthefuckaway,enable,,4.3,-1",
	    "OnTrigger#24": "getthefuckaway,disable,,9.2,-1",
	    "OnTrigger#25": "spawnbot_chief*,Enable,,9.2",
	    "OnTrigger#26": "tf_gamerulesPlayVORedvo\mvm\mght\soldier_mvm_m_cheers01.mp310-1",
	    "OnTrigger#27": "tf_gamerulesPlayVORedvo\mvm\mght\soldier_mvm_m_directhittaunt02.mp37.5-1",
	    "OnTrigger#28": "tf_gamerulesPlayVORedvo\mvm\mght\vo\mvm\mght\soldier_mvm_m_hatoverhearttaunt01.mp36-1",
	    "OnTrigger#29": "tf_gamerulesPlayVORedvo\mvm\mght\soldier_mvm_m_painsharp05.mp31-1",
	    "OnTrigger#30": "tf_gamerulesPlayVORedvo\mvm\mght\soldier_mvm_m_painsharp06.mp32.5-1",
	    "OnTrigger#31": "tf_gamerulesPlayVORedvo\mvm\mght\soldier_mvm_m_painsharp06.mp34-1",
	    "OnTrigger#32": "tf_gamerulesPlayVORedvo\mvm\mght\pyro_mvm_m_laughevil04.mp39-1",
	    "OnTrigger#33": "tf_gamerulesPlayVORedvo\mvm\mght\heavy_mvm_m_yell12.mp39-1",
	    "OnTrigger#34": "tf_gamerulesPlayVORedvo\mvm\mght\demoman_mvm_m_yes02.mp39-1",
	    "OnTrigger#35": "@p@boss_thingy,$TauntFromItem,Taunt: Yeti Smash,4.3,-1",
	    "OnTrigger#36": "tf_gamerulesPlayVORedambient\explosions\explode_1.wav9.2-1",
	    "OnTrigger#37": "popscript,$CreateShockwave,,9.2,-1",
	    "OnTrigger#38": "second_phase,PlaySound,,9.2,-1",
	    "OnTrigger#39": "second_phase,StopSound,,144.1,-1",
	    "OnTrigger#40": "second_phase,PlaySound,,144.2,-1",
	    "OnTrigger#41": "tf_taunt_prop*,kill,,4.3,-1",
	    "OnTrigger#42": "tf_taunt_prop*,kill,,4.4,-1",
	    "OnTrigger#43": "tf_taunt_prop*,kill,,4.5,-1",
	    "OnTrigger#44": "tf_taunt_prop*,kill,,4.6,-1"
	})

	local info_particle_system42 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "die",
	    origin = Vector(0, 0, 0),
	    angles = QAngle(0, 0, 0),
	    effect_name = "hammer_bell_ring_shockwave"
	})

	local info_particle_system43 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "diethesecond",
	    origin = Vector(0, 0, 0),
	    angles = QAngle(0, 0, 0),
	    effect_name = "hammer_bell_ring_shockwave"
	})

	local ambient_generic44 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "inbetweenphases",
	    message = "#intermedio.mp3",
	    health = 10,
	    pitch = 100,
	    spawnflags = 17
	})

	local ambient_generic45 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "first_phase",
	    message = "#first_phase_supercharged.mp3",
	    health = 10,
	    pitch = 100,
	    spawnflags = 17
	})

	local ambient_generic46 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "second_phase",
	    message = "#secondphase_supercharged.mp3",
	    health = 10,
	    pitch = 100,
	    spawnflags = 17
	})

	local game_text47 = SpawnEntityFromTable("game_text", {
	    origin = Vector(1984, 1984, 99999),
	    targetname = "middle_text",
	    message = "MAJOR SHOCKS",
	    x = -1.0,
	    y = 0.45,
	    channel = 1,
	    spawnflags = 1,
	    color = "255 255 255",
	    fadein = 0.2,
	    fadeout = 1,
	    holdtime = 4.8
	})

	local env_shake48 = SpawnEntityFromTable("env_shake", {
	    spawnflags = 1,
	    amplitude = 16,
	    duration = 3,
	    frequency = 9,
	    targetname = "abrawlissurelybrewing"
	})

}
::resetbossstatues <- function()
{
	local logic_relay49 = SpawnEntityFromTable("logic_relay", {
	    targetname = "reset",
	    "OnTrigger#1": "the_funny_man*,kill,,0-1",
	    "OnTrigger#2": "Foreshadowing,ForceSpawn,,0.1,-1"
	})

}
::w6intro <- function()
{
	local logic_relay50 = SpawnEntityFromTable("logic_relay", {
	    targetname = "youwin",
	    "OnTrigger#1": "spawnbot*,Disable,,0,-1",
	    "OnTrigger#2": "stunbots,Enable,,0,-1"
	})

	local logic_relay51 = SpawnEntityFromTable("logic_relay", {
	    targetname = "ohwowanotherwave",
	    "OnTrigger#1": "boss_presentation*,PlaySound,,0,-1",
	    "OnTrigger#2": "spawnbot*,Enable,,30,-1",
	    "OnTrigger#3": "stunbots,disable,,30,-1",
	    "OnTrigger#4": "cleanupbots,Enable,,12,-1",
	    "OnTrigger#5": "cleanupbots,disable,,30,-1",
	    "OnTrigger#6": "playerRunScriptCodeClientPrint(self, 3, `\x07ffb200///SUPERSTORM INCOMING///`)-1",
	    "OnTrigger#7": "playerRunScriptCodeClientPrint(self, 3, `\x07ffb200///MOVE ALL ELECTRONICS INTO THE BASE///`)3-1",
	    "OnTrigger#8": "playerRunScriptCodeClientPrint(self, 3, `\x07ffb200///CHANCE OF LIGHTNING. 99999%///`)6-1",
	    "OnTrigger#9": "playerRunScriptCodeClientPrint(self, 3, `\x07ffb200///LIGHTNING AFFECTING IMPORTANT MACHINERY///`)12-1",
	    "OnTrigger#10": "playerRunScriptCodeClientPrint(self, 3, `\x07ffb200///INTERNAL CIRCUITS DAMAGED...?///`)14-1",
	    "OnTrigger#11": "playerRunScriptCodeClientPrint(self, 3, `\x07ffb200///PATROL SYSTEM MAIN LINK ESTABLISHING CONNECTION WITH SERVERS///`)16-1",
	    "OnTrigger#12": "playerRunScriptCodeClientPrint(self, 3, `\x07ffb200///ESTABLISHING CONNECTION WITH THE CARRIER TANK... PLEASE WAIT///`)18-1",
	    "OnTrigger#13": "playerRunScriptCodeClientPrint(self, 3, `\x07ffb200///PATROL BOTS SQUAD LEADER: MAJOR SHOCKS ONLINE///`)24-1",
	    "OnTrigger#14": "playerRunScriptCodeClientPrint(self, 3, `\x07ffb200///SECURITY SYSTEM ACTIVATED. PATROL BOTS ONLINE.///`)30-1",
	    "OnTrigger#15": "tf_gamerulesPlayVORedmisc\hologram_start.wav12-1",
	    "OnTrigger#16": "tf_gamerulesPlayVORedambient\halloween\thunder_08.wav16-1",
	    "OnTrigger#17": "tf_gamerulesPlayVORedmisc\ks_tier_04_death.wav28-1",
	    "OnTrigger#18": "tf_gamerulesPlayVORedvo\mvm\mght\soldier_mvm_m_cheers04.mp331-1",
	    "OnTrigger#19": "tf_gamerulesPlayVORedvo\mvm\mght\soldier_mvm_m_laughevil01.mp333.2-1",
	    "OnTrigger#20": "KILLYOURSELF,Start,,12,-1",
	    "OnTrigger#21": "KILLYOURSELF1,Start,,16,-1",
	    "OnTrigger#22": "KILLYOURSELF2,Start,,20,-1",
	    "OnTrigger#23": "KILLYOURSELF3,Start,,24,-1",
	    "OnTrigger#24": "KILLYOURSELF4,Start,,28,-1",
	    "OnTrigger#25": "letsgow6,Fade,,30,-1",
	    "OnTrigger#26": "lightning,Start,,12,-1",
	    "OnTrigger#27": "lightning_strike,PlaySound,,12,-1",
	    "OnTrigger#28": "lightning_strike2,StartShake,,12,-1",
	    "OnTrigger#29": "lightning1,Start,,16,-1",
	    "OnTrigger#30": "lightning_strike_1,PlaySound,,16,-1",
	    "OnTrigger#31": "lightning_strike2,StartShake,,16,-1",
	    "OnTrigger#32": "lightning2,Start,,20,-1",
	    "OnTrigger#33": "lightning_strike_2,PlaySound,,20,-1",
	    "OnTrigger#34": "lightning_strike2,StartShake,,20,-1",
	    "OnTrigger#35": "lightning3,Start,,24,-1",
	    "OnTrigger#36": "lightning_strike_3,PlaySound,,24,-1",
	    "OnTrigger#37": "lightning_strike2,StartShake,,24,-1",
	    "OnTrigger#38": "lightning4,Start,,28,-1",
	    "OnTrigger#39": "lightning_strike_4,PlaySound,,28,-1",
	    "OnTrigger#40": "lightning_strike2,StartShake,,28,-1",
	    "OnTrigger#41": "w6intro,kill,,40,-1"
	})

	local env_fade52 = SpawnEntityFromTable("env_fade", {
	    targetname = "letsgow6",
	    duration = 0.5,
	    holdtime = 0,
	    rendercolor = "255 255 255",
	    spawnflags = 1
	})

	local filter_activator_tfteam53 = SpawnEntityFromTable("filter_activator_tfteam", {
	    targetname = "redteam",
	    teamnum = 2
	})

	local filter_activator_tfteam54 = SpawnEntityFromTable("filter_activator_tfteam", {
	    targetname = "blueteam",
	    teamnum = 3
	})

	local trigger_hurt_brush4 = SpawnEntityFromTable("trigger_hurt", {
	    origin = Vector(0, 0, 0),
	    mins = "-10000 -10000 -10000",
	    maxs = "15000 15000 15000",
	    damage = 3000000,
	    damagecap = 3000000,
	    damagemodel = 0,
	    damagetype = 16,
	    filtername = "blueteam",
	    nodmgforce = 1,
	    spawnflags = 1,
	    StartDisabled = 1
	})
	trigger_hurt_brush4.KeyValueFromInt("solid", 2)
	trigger_hurt_brush4.KeyValueFromString("mins", "-10000 -10000 -10000")
	trigger_hurt_brush4.KeyValueFromString("maxs", "15000 15000 15000")

	local trigger_stun_brush5 = SpawnEntityFromTable("trigger_stun", {
	    stun_type = 1,
	    stun_effects = 0,
	    filtername = "blueteam",
	    origin = Vector(0, 0, 0),
	    spawnflags = 1,
	    StartDisabled = 1,
	    targetname = "stunbots",
	    mins = "-10000 -10000 -10000",
	    maxs = "15000 15000 15000"
	})
	trigger_stun_brush5.KeyValueFromInt("solid", 2)
	trigger_stun_brush5.KeyValueFromString("mins", "-10000 -10000 -10000")
	trigger_stun_brush5.KeyValueFromString("maxs", "15000 15000 15000")

	local ambient_generic55 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "boss_presentation",
	    message = "#boss_preludeioo.wav",
	    health = 10,
	    pitch = 100,
	    spawnflags = 17
	})

	local ambient_generic56 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "boss_presentation",
	    message = "#boss_preludeioo.wav",
	    health = 10,
	    pitch = 100,
	    spawnflags = 17
	})

	local info_particle_system57 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "lightning",
	    origin = Vector(-1059.425903, 7998.217285, 734.03131),
	    angles = QAngle(0, 0, 0),
	    effect_name = "wrenchmotron_teleport_beam"
	})

	local info_particle_system58 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "lightning1",
	    origin = Vector(-1059.425903, 7998.217285, 734.03131),
	    angles = QAngle(0, 0, 0),
	    effect_name = "wrenchmotron_teleport_beam"
	})

	local info_particle_system59 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "lightning2",
	    origin = Vector(-1059.425903, 7998.217285, 734.03131),
	    angles = QAngle(0, 0, 0),
	    effect_name = "wrenchmotron_teleport_beam"
	})

	local info_particle_system60 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "lightning3",
	    origin = Vector(-1059.425903, 7998.217285, 734.03131),
	    angles = QAngle(0, 0, 0),
	    effect_name = "wrenchmotron_teleport_beam"
	})

	local info_particle_system61 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "lightning4",
	    origin = Vector(-1059.425903, 7998.217285, 734.03131),
	    angles = QAngle(0, 0, 0),
	    effect_name = "wrenchmotron_teleport_beam"
	})

	local info_particle_system62 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "KILLYOURSELF",
	    origin = Vector(-1059.425903, 7998.217285, 734.03131),
	    angles = QAngle(0, 0, 0),
	    effect_name = "hammer_bell_ring_shockwave"
	})

	local info_particle_system63 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "KILLYOURSELF1",
	    origin = Vector(-1059.425903, 7998.217285, 734.03131),
	    angles = QAngle(0, 0, 0),
	    effect_name = "hammer_bell_ring_shockwave"
	})

	local info_particle_system64 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "KILLYOURSELF2",
	    origin = Vector(-1059.425903, 7998.217285, 734.03131),
	    angles = QAngle(0, 0, 0),
	    effect_name = "hammer_bell_ring_shockwave"
	})

	local info_particle_system65 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "KILLYOURSELF3",
	    origin = Vector(-1059.425903, 7998.217285, 734.03131),
	    angles = QAngle(0, 0, 0),
	    effect_name = "hammer_bell_ring_shockwave",
	    targetname = "KILLYOURSELF4",
	    origin = Vector(-1059.425903, 7998.217285, 734.03131),
	    angles = QAngle(0, 0, 0),
	    effect_name = "hammer_bell_ring_shockwave"
	})

	local ambient_generic66 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "lightning_strike",
	    message = "#ambient_mp3\thunder4.mp3",
	    health = 10,
	    pitch = 100,
	    spawnflags = 17
	})

	local ambient_generic67 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "lightning_strike_1",
	    message = "#ambient_mp3\thunder4.mp3",
	    health = 10,
	    pitch = 100,
	    spawnflags = 17
	})

	local ambient_generic68 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "lightning_strike_2",
	    message = "#ambient_mp3\thunder4.mp3",
	    health = 10,
	    pitch = 100,
	    spawnflags = 17
	})

	local ambient_generic69 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "lightning_strike_3",
	    message = "#ambient_mp3\thunder4.mp3",
	    health = 10,
	    pitch = 100,
	    spawnflags = 17
	})

	local ambient_generic70 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "lightning_strike_4",
	    message = "#ambient_mp3\thunder4.mp3",
	    health = 10,
	    pitch = 100,
	    spawnflags = 17
	})

	local env_shake71 = SpawnEntityFromTable("env_shake", {
	    spawnflags = 1,
	    amplitude = 16,
	    duration = 3,
	    frequency = 9,
	    targetname = "lightning_strike2"
	})

}
::w4boss <- function()
{
	local logic_case72 = SpawnEntityFromTable("logic_case", {
	    TargetName = "pickaweapon",
	    "OnCase01#1": "!activatorRunScriptCodeWeaponSwitchSlot(0, self)0-1",
	    "OnCase02#2": "!activatorRunScriptCodeWeaponSwitchSlot(1, self)0-1",
	    "OnCase03#3": "!activatorRunScriptCodeWeaponSwitchSlot(2, self)0-1"
	})

	local ambient_generic73 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "branescan",
	    message = "#music/hl2_song31.mp3",
	    health = 10,
	    pitch = 100,
	    spawnflags = 17
	})

	local ambient_generic74 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "branescan1",
	    message = "#music/hl2_song31.mp3",
	    health = 10,
	    pitch = 100,
	    spawnflags = 17
	})

	local logic_relay75 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "branescan*,StopSound,,0.0,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION2"
	})

	local logic_relay76 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "branescan*,PlaySound,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION11"
	})

	local logic_relay77 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "upper_text,Display,,0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION12"
	})

	local logic_relay78 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "middle_text,Display,,0.2,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION13"
	})

	local game_text79 = SpawnEntityFromTable("game_text", {
	    origin = Vector(1984, 1984, 99999),
	    targetname = "upper_text",
	    message = "HIS ROYAL PUNCHINESS",
	    x = -1.0,
	    y = 0.4,
	    spawnflags = 1,
	    effect = 2,
	    channel = 2,
	    color = "255 255 255",
	    fxtime = 0.2,
	    fadeout = 1,
	    holdtime = 5
	})

	local game_text80 = SpawnEntityFromTable("game_text", {
	    origin = Vector(1984, 1984, 99999),
	    targetname = "middle_text",
	    message = "OVERCLOCKED DAVE",
	    x = -1.0,
	    y = 0.45,
	    channel = 1,
	    spawnflags = 1,
	    color = "255 255 255",
	    fadein = 0.2,
	    fadeout = 1,
	    holdtime = 4.8
	})

}
::MissionName <- function()
{
	local logic_relay81 = SpawnEntityFromTable("logic_relay", {
	    targetname = "name",
	    "OnTrigger#1": "tf_objective_resourceRunScriptCodeNetProps.SetPropString(self, `m_iszMvMPopfileName`, `EXP Waters of a robot regime`)0-1"
	})

	local logic_relay82 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "name,trigger,,0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION14"
	})

}
::scrapped_spawns <- function()
{
	local info_target83 = SpawnEntityFromTable("info_target", {
	    targetname = "scrapped_spawn",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(-3341.515137, 4127.710449, 1232.866455)
	})

	local info_target84 = SpawnEntityFromTable("info_target", {
	    targetname = "scrapped_spawn_2",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(-2071.334717, 5627.639648, 1185.27465)
	})

	local info_target85 = SpawnEntityFromTable("info_target", {
	    targetname = "scrapped_spawn_3",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(-4387.238770, 5566.797363, 1311.676270)
	})

}
::EMP_down <- function()
{
	local logic_relay86 = SpawnEntityFromTable("logic_relay", {
	    targetname = "bossdeath1",
	    "OnTrigger#1": "boss_is_dead,Start,,0,-1",
	    "OnTrigger#2": "boss_is_dead,Stop,,2.5,-1",
	    "OnTrigger#3": "boss_is_dead1,Start,,0,-1",
	    "OnTrigger#4": "boss_is_dead1,Stop,,2.5,-1",
	    "OnTrigger#5": "shake_boss,StartShake,,0,-1",
	    "ontrigger#6": "tf_gamerulesPlayVORednpc/turret_floor/die.wav0-1"
	})

	local info_particle_system87 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "boss_is_dead",
	    origin = Vector(0, 0, 0),
	    angles = QAngle(-90, 0, 0),
	    effect_name = "mvm_tank_destroy"
	})

	local info_particle_system88 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "boss_is_dead1",
	    origin = Vector(0, 0, 0),
	    angles = QAngle(-90, 0, 0),
	    effect_name = "rd_robot_explosion"
	})

	local env_shake89 = SpawnEntityFromTable("env_shake", {
	    spawnflags = 1,
	    amplitude = 16,
	    duration = 3,
	    frequency = 9,
	    targetname = "shake_boss"
	})

	local logic_relay90 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "bossdeath1,Trigger,,0.0,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION3"
	})

}
::bossstuffs <- function()
{
	local logic_relay91 = SpawnEntityFromTable("logic_relay", {
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION15"
	})

	local logic_relay92 = SpawnEntityFromTable("logic_relay", {
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION16"
	})

	local prop_dynamic93 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "boss_flavor",
	    modelscale = 0.3,
	    angles = QAngle(-90, 0, -50),
	    model = "models/props_spytech/raygun003.mdl",
	    origin = Vector(-10, 25, 125),
	    solid = 0
	})

	local prop_dynamic94 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "boss_flavor",
	    modelscale = 0.3,
	    angles = QAngle(-90, 0, 50),
	    model = "models/props_spytech/raygun003.mdl",
	    origin = Vector(-10, -25, 125),
	    solid = 0
	})

	local point_tesla95 = SpawnEntityFromTable("point_tesla", {
	    targetname = "timetokill",
	    beamcount_max = 3,
	    beamcount_min = 3,
	    interval_max = 0.01,
	    interval_min = 0.01,
	    lifetime_max = 0.1,
	    lifetime_min = 0.1,
	    m_Color = "255 255 255",
	    m_flRadius = 50,
	    m_SoundName = "DoSpark",
	    texture = "sprites/physbeam.vmt",
	    thick_max = 10,
	    thick_min = 4,
	    origin = Vector(-27, -65, 240),
	    parentname = "boss_flavor"
	})

	local point_tesla96 = SpawnEntityFromTable("point_tesla", {
	    targetname = "timetokill",
	    beamcount_max = 3,
	    beamcount_min = 3,
	    interval_max = 0.01,
	    interval_min = 0.01,
	    lifetime_max = 0.1,
	    lifetime_min = 0.1,
	    m_Color = "255 255 255",
	    m_flRadius = 50,
	    m_SoundName = "DoSpark",
	    texture = "sprites/physbeam.vmt",
	    thick_max = 10,
	    thick_min = 4,
	    origin = Vector(-27, 65, 240),
	    parentname = "boss_flavor"
	})

	local point_tesla97 = SpawnEntityFromTable("point_tesla", {
	    targetname = "phase2transition",
	    beamcount_max = 3,
	    beamcount_min = 3,
	    interval_max = 0.01,
	    interval_min = 0.01,
	    lifetime_max = 0.1,
	    lifetime_min = 0.1,
	    m_Color = "255 255 255",
	    m_flRadius = 50,
	    m_SoundName = "DoSpark",
	    texture = "sprites/physbeam.vmt",
	    thick_max = 10,
	    thick_min = 4,
	    origin = Vector(-27, -65, 240),
	    parentname = "boss_flavor"
	})

	local point_tesla98 = SpawnEntityFromTable("point_tesla", {
	    targetname = "phase2transition",
	    beamcount_max = 3,
	    beamcount_min = 3,
	    interval_max = 0.01,
	    interval_min = 0.01,
	    lifetime_max = 0.1,
	    lifetime_min = 0.1,
	    m_Color = "255 255 255",
	    m_flRadius = 50,
	    m_SoundName = "DoSpark",
	    texture = "sprites/physbeam.vmt",
	    thick_max = 10,
	    thick_min = 4,
	    origin = Vector(-27, 65, 240),
	    parentname = "boss_flavor"
	})

	local prop_dynamic99 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "props_dynamic",
	    Model = "models/props_mvm/robot_spawnpoint_warning.mdl",
	    angles = QAngle(0, 0, 0),
	    startdisabled = 1,
	    Skin = 2
	})

}
::Foreshadowing <- function()
{
	local logic_relay100 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "smoke,Start,,0.1,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION17"
	})

	local prop_dynamic101 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "the_funny_man",
	    origin = Vector(-4938.395508, 4735.929688, 510.03131),
	    angles = QAngle(0, 270, 90),
	    model = "models/bots/heavy_boss/bot_heavy_boss_gibby.mdl",
	    modelscale = 2,
	    color = "255 255 255",
	    defaultanim = "primary_stun_middle",
	    disablebonefollowers = 1,
	    "onanimationbegun#1": "!self,setplaybackrate,0.0001,0,-1",
	    skin = 1
	})

	local prop_dynamic102 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "the_funny_man_2",
	    origin = Vector(-3085.504639, 3403.898438, 602.031311),
	    angles = QAngle(0, 180, 0),
	    model = "models\bots\demo_boss\bot_demo_boss_gibby.mdl",
	    modelscale = 2,
	    color = "255 255 255",
	    defaultanim = "selectionmenu_anim01",
	    disablebonefollowers = 1,
	    "onanimationbegun#1": "!self,setplaybackrate,0.0001,3.70,-1",
	    skin = 1
	})

	local prop_dynamic103 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "the_funny_man_3",
	    origin = Vector(-1059.425903, 7998.217285, 688.03131),
	    angles = QAngle(0, -180, 0),
	    color = "255 255 255",
	    model = "models\bots\soldier_boss\bot_soldier_boss_gibby.mdl",
	    modelscale = 2.5,
	    defaultanim = "primary_death_burning",
	    disablebonefollowers = 1,
	    "onanimationbegun#1": "!self,setplaybackrate,0.0001,1.5,-1",
	    skin = 1
	})

	local info_particle_system104 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "smoke",
	    origin = Vector(-1059.425903, 7998.217285, 734.03131),
	    angles = QAngle(0, 0, 0),
	    effect_name = "smoke_train",
	    parentname = "the_funny_man_3"
	})

	local prop_dynamic_ornament105 = SpawnEntityFromTable("prop_dynamic_ornament", {
	    targetname = "soldiermdl1",
	    model = "models\workshop\player\items\soldier\hwn2015_hellmet\hwn2015_hellmet.mdl",
	    solid = 0,
	    disablebonefollowers = 1,
	    disableshadows = 1,
	    skin = 1,
	    initialowner = "the_funny_man_3"
	})

	local prop_dynamic_ornament106 = SpawnEntityFromTable("prop_dynamic_ornament", {
	    targetname = "soldiermdl3",
	    model = "models\player\items\heavy\big_jaw.mdl",
	    StartDisabled = 1,
	    solid = 0,
	    disablebonefollowers = 1,
	    disableshadows = 1,
	    skin = 1,
	    initialowner = "the_funny_man_3"
	})

	local prop_dynamic107 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "fake_boss_flavor",
	    modelscale = 0.3,
	    angles = QAngle(-90, 10, -50),
	    model = "models/props_spytech/raygun003.mdl",
	    origin = Vector(-1039.425903, 8018.217285, 744.03131),
	    solid = 0,
	    parentname = "the_funny_man_3"
	})

	local prop_dynamic108 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "fake_boss_flavor",
	    modelscale = 0.3,
	    angles = QAngle(-90, -10, 50),
	    model = "models/props_spytech/raygun003.mdl",
	    origin = Vector(-1039.425903, 7978.217285, 744.03131),
	    solid = 0,
	    parentname = "the_funny_man_3",
	    targetname = "the_funny_man_4",
	    origin = Vector(-4191.820313, 6532.109863, 693.031311),
	    angles = QAngle(0, -45, 0),
	    color = "255 255 255",
	    model = "models\bots\pyro_boss\bot_pyro_boss_gibby.mdl",
	    modelscale = 2,
	    defaultanim = "primary_stun_middle",
	    disablebonefollowers = 1,
	    "onanimationbegun#1": "!self,setplaybackrate,0.0001,0,-1",
	    skin = 1
	})

}
::bossprelude <- function()
{
	local prop_dynamic109 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "heheheha",
	    origin = Vector(-1953.607178, 7942.121582, 650.20977),
	    angles = QAngle(0, -90, 0),
	    color = "255 255 255",
	    model = "models\bots\soldier_boss\bot_soldier_boss_gibby.mdl",
	    modelscale = 2.5,
	    defaultanim = "competitive_loserstate_idle",
	    disablebonefollowers = 1,
	    "onanimationbegun#1": "!self,setplaybackrate,0.2,0,-1",
	    skin = 1,
	    solid = 1
	})

	local prop_dynamic_ornament110 = SpawnEntityFromTable("prop_dynamic_ornament", {
	    targetname = "heheheha",
	    model = "models\workshop\player\items\soldier\hwn2015_hellmet\hwn2015_hellmet.mdl",
	    solid = 0,
	    disablebonefollowers = 1,
	    disableshadows = 1,
	    skin = 1,
	    initialowner = "heheheha"
	})

	local prop_dynamic_ornament111 = SpawnEntityFromTable("prop_dynamic_ornament", {
	    targetname = "heheheha",
	    model = "models\player\items\heavy\big_jaw.mdl",
	    StartDisabled = 1,
	    solid = 0,
	    disablebonefollowers = 1,
	    disableshadows = 1,
	    skin = 1,
	    initialowner = "heheheha"
	})

	local prop_dynamic112 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "heheheha",
	    modelscale = 0.3,
	    angles = QAngle(-90, 10, -50),
	    model = "models/props_spytech/raygun003.mdl",
	    origin = Vector(-1972.607178, 7949.121582, 760.20977),
	    solid = 0,
	    parentname = "heheheha"
	})

	local prop_dynamic113 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "heheheha",
	    modelscale = 0.3,
	    angles = QAngle(-90, -190, 50),
	    model = "models/props_spytech/raygun003.mdl",
	    origin = Vector(-1942.607178, 7949.121582, 760.20977),
	    solid = 0,
	    parentname = "heheheha"
	})

	local logic_relay114 = SpawnEntityFromTable("logic_relay", {
	    targetname = "failsafe",
	    "Ontrigger#1": "the_funny_man_3,kill,,0,-1",
	    "OnTrigger#2": "spawnbot_chief*,Disable,,0,-1",
	    "OnTrigger#3": "spawnbot_emp*,Disable,,0,-1"
	})

	local logic_relay115 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "a,action trigger,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION18"
	})

}
::grand_finale_sounds <- function()
{
	local logic_relay116 = SpawnEntityFromTable("logic_relay", {
	    targetname = "spybase_finale",
	    "ontrigger#1": "itssoover,playsound,,2,-1",
	    "ontrigger#2": "itssoover2,playsound,,0,-1",
	    "ontrigger#3": "itssoover3,playsound,,0,-1",
	    "ontrigger#4": "itssoover2,stopsound,,2.5,-1",
	    "ontrigger#5": "itssoover3,stopsound,,2.5,-1",
	    "ontrigger#6": "itssoover2,playsound,,7.5,-1",
	    "ontrigger#7": "itssoover3,playsound,,7.5,-1",
	    "ontrigger#8": "faded,fade,,0,-1",
	    "ontrigger#9": "fadedtoblack,Fade,,10,-1",
	    "ontrigger#10": "fadedtoblack2,Fade,,11.1,-1",
	    "ontrigger#11": "spawnbot*,disable,,0,-1",
	    "OnTrigger#12": "cleanupbots,Enable,,0,-1",
	    "OnTrigger#13": "player*,SetHUDVisibility,0,0,-1",
	    "OnTrigger#14": "player*,SetHUDVisibility,1,12,-1",
	    "ontrigger#15": "tf_gamerulesPlayVORedvo/mvm/mght/soldier_mvm_m_paincrticialdeath01.mp35-1",
	    "ontrigger#16": "tf_gamerulesPlayVORedvo/mvm/mght/soldier_mvm_m_paincrticialdeath01.mp35-1",
	    "OnTrigger#17": "tf_gamerulesPlayVORedambient\explosions\explode_1.wav3.3-1"
	})

	local ambient_generic117 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "itssoover",
	    message = "itsfinallyover.mp3",
	    health = 10,
	    spawnflags = 49
	})

	local ambient_generic118 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "itssoover2",
	    message = "0553.wav",
	    health = 10,
	    spawnflags = 49
	})

	local ambient_generic119 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "itssoover3",
	    message = "0553.wav",
	    health = 10,
	    spawnflags = 49
	})

	local env_fade120 = SpawnEntityFromTable("env_fade", {
	    targetname = "faded",
	    duration = 0.35,
	    holdtime = 0.1,
	    rendercolor = "255 255 255",
	    spawnflags = 1
	})

	local env_fade121 = SpawnEntityFromTable("env_fade", {
	    targetname = "fadedtoblack",
	    duration = 1,
	    holdtime = 0.1,
	    rendercolor = "0 0 0"
	})

	local env_fade122 = SpawnEntityFromTable("env_fade", {
	    targetname = "fadedtoblack2",
	    duration = 99,
	    holdtime = 98,
	    rendercolor = "0 0 0",
	    spawnflags = 1
	})

}
::grand_finale <- function()
{
	local logic_relay123 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "soldier_death*,TurnOff,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION19"
	})

	local logic_relay124 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "soldier_death*,Enable,,0.0,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION4"
	})

	local logic_relay125 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "spybase_finale,trigger,,0.0,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION5"
	})

	local logic_relay126 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "finalboss_defeat,enable,,0.0,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION6"
	})

	local logic_relay127 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "finalboss_defeat,SetPlaybackRate,0.5,3,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION7"
	})

	local logic_relay128 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "boss_about_to_blow,start,,3,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION8"
	})

	local logic_relay129 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "finalboss_defeat,SetPlaybackRate,1.5,6,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION9"
	})

	local prop_dynamic130 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "finalboss_defeat",
	    origin = Vector(0, 0, 0),
	    angles = QAngle(0, 0, 0),
	    color = "255 255 255",
	    model = "models\bots\soldier_boss\bot_soldier_boss_gibby.mdl",
	    modelscale = 2.5,
	    defaultanim = "primary_death_burning",
	    disablebonefollowers = 1,
	    "OnAnimationBegun#1": "soldier_death_1,TurnOff,,0,-1",
	    "OnAnimationBegun#2": "soldier_death_2,TurnOff,,0,-1",
	    "OnAnimationBegun#3": "!self,SetPlaybackRate,0,0.1,-1",
	    "OnAnimationDone#4": "!self,SetPlaybackRate,0,,-1",
	    "OnAnimationDone#5": "bossdeath1,trigger,0,-1",
	    "OnAnimationDone#6": "!self,Kill,,0,-1",
	    startdisabled = 1,
	    skin = 1
	})

	local prop_dynamic_ornament131 = SpawnEntityFromTable("prop_dynamic_ornament", {
	    targetname = "soldier_death_2",
	    model = "models\workshop\player\items\soldier\hwn2015_hellmet\hwn2015_hellmet.mdl",
	    solid = 0,
	    disablebonefollowers = 1,
	    disableshadows = 1,
	    skin = 1,
	    initialowner = "finalboss_defeat"
	})

	local prop_dynamic_ornament132 = SpawnEntityFromTable("prop_dynamic_ornament", {
	    targetname = "soldier_death_1",
	    model = "models\player\items\heavy\big_jaw.mdl",
	    StartDisabled = 1,
	    solid = 0,
	    disablebonefollowers = 1,
	    disableshadows = 1,
	    skin = 1,
	    initialowner = "finalboss_defeat"
	})

	local logic_relay133 = SpawnEntityFromTable("logic_relay", {
	    targetname = "bossdeath1",
	    "OnTrigger#1": "boss_is_dead,Start,,0,-1",
	    "OnTrigger#2": "boss_is_dead,Stop,,2.5,-1",
	    "OnTrigger#3": "boss_is_dead1,Start,,0,-1",
	    "OnTrigger#4": "boss_is_dead1,Stop,,2.5,-1",
	    "OnTrigger#5": "shake_boss,StartShake,,0,-1",
	    "ontrigger#6": "tf_gamerulesPlayVORednpc/turret_floor/die.wav0-1",
	    "ontrigger#7": "tf_gamerulesPlayVORedmvm\mvm_tank_end.wav0-1",
	    "ontrigger#8": "tf_gamerulesPlayVORedmvm\mvm_tank_explode.wav0-1"
	})

	local info_particle_system134 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "boss_about_to_blow",
	    origin = Vector(0, 0, 82),
	    angles = QAngle(-90, 0, 0),
	    effect_name = "charge_up",
	    parentname = "finalboss_defeat"
	})

	local info_particle_system135 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "boss_is_dead",
	    origin = Vector(0, 0, 0),
	    angles = QAngle(-90, 0, 0),
	    effect_name = "mvm_tank_destroy"
	})

	local info_particle_system136 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "boss_is_dead1",
	    origin = Vector(0, 0, 0),
	    angles = QAngle(-90, 0, 0),
	    effect_name = "rd_robot_explosion"
	})

	local env_shake137 = SpawnEntityFromTable("env_shake", {
	    spawnflags = 1,
	    amplitude = 16,
	    duration = 3,
	    frequency = 9,
	    targetname = "shake_boss"
	})

}
::boss_dead_dave <- function()
{
	local logic_relay138 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "dave_down*,Enable,,0.0,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION10"
	})

	local logic_relay139 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "dave_down,SetPlaybackRate,0.7,0.02,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION11"
	})

	local logic_relay140 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "dave_down,SetPlaybackRate,1.5,1.5,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION12"
	})

	local prop_dynamic141 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "dave_down",
	    origin = Vector(0, 0, 0),
	    angles = QAngle(0, 0, 0),
	    color = "255 255 255",
	    model = "models\bots\heavy_boss\bot_heavy_boss.mdl",
	    modelscale = 2,
	    defaultanim = "primary_death_01",
	    disablebonefollowers = 1,
	    "OnAnimationBegun#1": "dave_down_1,TurnOff,0,,-1",
	    "OnAnimationBegun#2": "dave_down_2,TurnOff,0,,-1",
	    "OnAnimationBegun#3": "!self,SetPlaybackRate,0,,-1",
	    "OnAnimationDone#4": "!self,SetPlaybackRate,0,,-1",
	    "OnAnimationDone#5": "bossdeath1,trigger,0,-1",
	    "OnAnimationDone#6": "!self,Kill,,0,-1",
	    startdisabled = 1,
	    skin = 1
	})

	local prop_dynamic_ornament142 = SpawnEntityFromTable("prop_dynamic_ornament", {
	    targetname = "dave_down_1",
	    model = "models/player/items/heavy/trn_heavy_knight.mdl",
	    solid = 0,
	    disablebonefollowers = 1,
	    disableshadows = 1,
	    skin = 1,
	    initialowner = "dave_down",
	    startdisabled = 1
	})

	local prop_dynamic_ornament143 = SpawnEntityFromTable("prop_dynamic_ornament", {
	    targetname = "dave_down_2",
	    model = "models/workshop/weapons/c_models/c_fists_of_steel/c_fists_of_steel.mdl",
	    color = "255 0 0",
	    solid = 0,
	    disablebonefollowers = 1,
	    disableshadows = 1,
	    skin = 1,
	    initialowner = "dave_down",
	    startdisabled = 1
	})

	local logic_relay144 = SpawnEntityFromTable("logic_relay", {
	    targetname = "bossdeath1",
	    "OnTrigger#1": "boss_is_dead,Start,,0,-1",
	    "OnTrigger#2": "boss_is_dead,Stop,,2.5,-1",
	    "OnTrigger#3": "boss_is_dead1,Start,,0,-1",
	    "OnTrigger#4": "boss_is_dead1,Stop,,2.5,-1",
	    "OnTrigger#5": "shake_boss,StartShake,,0,-1",
	    "ontrigger#6": "tf_gamerulesPlayVORednpc/turret_floor/die.wav0-1",
	    "ontrigger#7": "tf_gamerulesPlayVORedmvm\mvm_tank_end.wav0-1",
	    "ontrigger#8": "tf_gamerulesPlayVORedmvm\mvm_tank_explode.wav0-1"
	})

	local info_particle_system145 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "boss_is_dead",
	    origin = Vector(0, 0, 0),
	    angles = QAngle(-90, 0, 0),
	    effect_name = "mvm_tank_destroy"
	})

	local info_particle_system146 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "boss_is_dead1",
	    origin = Vector(0, 0, 0),
	    angles = QAngle(-90, 0, 0),
	    effect_name = "rd_robot_explosion"
	})

	local env_shake147 = SpawnEntityFromTable("env_shake", {
	    spawnflags = 1,
	    amplitude = 16,
	    duration = 3,
	    frequency = 9,
	    targetname = "shake_boss"
	})

}
::boss_dead_pyro <- function()
{
	local logic_relay148 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "chief_pyro_down,Enable,,0.0,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION13"
	})

	local logic_relay149 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "chief_pyro_down,SetPlaybackRate,0.75,0.02,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION14"
	})

	local prop_dynamic150 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "chief_pyro_down",
	    origin = Vector(0, 0, 0),
	    angles = QAngle(0, 0, 0),
	    color = "255 255 255",
	    model = "models\bots\pyro_boss\bot_pyro_boss_gibby.mdl",
	    modelscale = 2,
	    defaultanim = "primary_death_headshot",
	    disablebonefollowers = 1,
	    "OnAnimationBegun#1": "!self,SetPlaybackRate,0,,-1",
	    "OnAnimationDone#2": "!self,SetPlaybackRate,0,,-1",
	    "OnAnimationDone#3": "bossdeath1,trigger,0,-1",
	    "OnAnimationDone#4": "!self,Kill,,0,-1",
	    startdisabled = 1,
	    skin = 1
	})

	local logic_relay151 = SpawnEntityFromTable("logic_relay", {
	    targetname = "bossdeath1",
	    "OnTrigger#1": "boss_is_dead,Start,,0,-1",
	    "OnTrigger#2": "boss_is_dead,Stop,,2.5,-1",
	    "OnTrigger#3": "boss_is_dead1,Start,,0,-1",
	    "OnTrigger#4": "boss_is_dead1,Stop,,2.5,-1",
	    "OnTrigger#5": "shake_boss,StartShake,,0,-1",
	    "ontrigger#6": "tf_gamerulesPlayVORednpc/turret_floor/die.wav0-1",
	    "ontrigger#7": "tf_gamerulesPlayVORedmvm\mvm_tank_end.wav0-1",
	    "ontrigger#8": "tf_gamerulesPlayVORedmvm\mvm_tank_explode.wav0-1"
	})

	local info_particle_system152 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "boss_is_dead",
	    origin = Vector(0, 0, 0),
	    angles = QAngle(-90, 0, 0),
	    effect_name = "mvm_tank_destroy"
	})

	local info_particle_system153 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "boss_is_dead1",
	    origin = Vector(0, 0, 0),
	    angles = QAngle(-90, 0, 0),
	    effect_name = "rd_robot_explosion"
	})

	local env_shake154 = SpawnEntityFromTable("env_shake", {
	    spawnflags = 1,
	    amplitude = 16,
	    duration = 3,
	    frequency = 9,
	    targetname = "shake_boss"
	})

}
::boss_dead_heavy <- function()
{
	local logic_relay155 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "chief_heavy_down,Enable,,0.0,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION15"
	})

	local logic_relay156 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "chief_heavy_down,SetPlaybackRate,1.1,0.02,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION16"
	})

	local prop_dynamic157 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "chief_heavy_down",
	    origin = Vector(0, 0, 0),
	    angles = QAngle(0, 0, 0),
	    color = "255 255 255",
	    model = "models\bots\heavy_boss\bot_heavy_boss_gibby.mdl",
	    modelscale = 2,
	    defaultanim = "PRIMARY_death_burning",
	    disablebonefollowers = 1,
	    "OnAnimationBegun#1": "!self,SetPlaybackRate,0,,-1",
	    "OnAnimationDone#2": "!self,SetPlaybackRate,0,,-1",
	    "OnAnimationDone#3": "bossdeath1,trigger,0,-1",
	    "OnAnimationDone#4": "!self,Kill,,0,-1",
	    startdisabled = 1,
	    skin = 1
	})

	local logic_relay158 = SpawnEntityFromTable("logic_relay", {
	    targetname = "bossdeath1",
	    "OnTrigger#1": "boss_is_dead,Start,,0,-1",
	    "OnTrigger#2": "boss_is_dead,Stop,,2.5,-1",
	    "OnTrigger#3": "boss_is_dead1,Start,,0,-1",
	    "OnTrigger#4": "boss_is_dead1,Stop,,2.5,-1",
	    "OnTrigger#5": "shake_boss,StartShake,,0,-1",
	    "ontrigger#6": "tf_gamerulesPlayVORednpc/turret_floor/die.wav0-1",
	    "ontrigger#7": "tf_gamerulesPlayVORedmvm\mvm_tank_end.wav0-1",
	    "ontrigger#8": "tf_gamerulesPlayVORedmvm\mvm_tank_explode.wav0-1"
	})

	local info_particle_system159 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "boss_is_dead",
	    origin = Vector(0, 0, 0),
	    angles = QAngle(-90, 0, 0),
	    effect_name = "mvm_tank_destroy"
	})

	local info_particle_system160 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "boss_is_dead1",
	    origin = Vector(0, 0, 0),
	    angles = QAngle(-90, 0, 0),
	    effect_name = "rd_robot_explosion"
	})

	local env_shake161 = SpawnEntityFromTable("env_shake", {
	    spawnflags = 1,
	    amplitude = 16,
	    duration = 3,
	    frequency = 9,
	    targetname = "shake_boss"
	})

}
::boss_dead_demo <- function()
{
	local logic_relay162 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "chief_demo_down,Enable,,0.0,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION17"
	})

	local logic_relay163 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "chief_demo_down,SetPlaybackRate,0.75,0.02,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION18"
	})

	local prop_dynamic164 = SpawnEntityFromTable("prop_dynamic", {
	    targetname = "chief_demo_down",
	    origin = Vector(0, 0, 0),
	    angles = QAngle(0, 0, 0),
	    color = "255 255 255",
	    model = "models\bots\demo_boss\bot_demo_boss_gibby.mdl",
	    modelscale = 2,
	    defaultanim = "primary_death_backstab",
	    disablebonefollowers = 1,
	    "OnAnimationBegun#1": "!self,SetPlaybackRate,0,,-1",
	    "OnAnimationDone#2": "!self,SetPlaybackRate,0,,-1",
	    "OnAnimationDone#3": "bossdeath1,trigger,0,-1",
	    "OnAnimationDone#4": "!self,Kill,,0,-1",
	    startdisabled = 1,
	    skin = 1
	})

	local logic_relay165 = SpawnEntityFromTable("logic_relay", {
	    targetname = "bossdeath1",
	    "OnTrigger#1": "boss_is_dead,Start,,0,-1",
	    "OnTrigger#2": "boss_is_dead,Stop,,2.5,-1",
	    "OnTrigger#3": "boss_is_dead1,Start,,0,-1",
	    "OnTrigger#4": "boss_is_dead1,Stop,,2.5,-1",
	    "OnTrigger#5": "shake_boss,StartShake,,0,-1",
	    "ontrigger#6": "tf_gamerulesPlayVORednpc/turret_floor/die.wav0-1",
	    "ontrigger#7": "tf_gamerulesPlayVORedmvm\mvm_tank_end.wav0-1",
	    "ontrigger#8": "tf_gamerulesPlayVORedmvm\mvm_tank_explode.wav0-1"
	})

	local info_particle_system166 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "boss_is_dead",
	    origin = Vector(0, 0, 0),
	    angles = QAngle(-90, 0, 0),
	    effect_name = "mvm_tank_destroy"
	})

	local info_particle_system167 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "boss_is_dead1",
	    origin = Vector(0, 0, 0),
	    angles = QAngle(-90, 0, 0),
	    effect_name = "rd_robot_explosion"
	})

	local env_shake168 = SpawnEntityFromTable("env_shake", {
	    spawnflags = 1,
	    amplitude = 16,
	    duration = 3,
	    frequency = 9,
	    targetname = "shake_boss"
	})

}
::bombthesub <- function()
{
	local logic_relay169 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "kill,Trigger,,0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION20"
	})

	local logic_relay170 = SpawnEntityFromTable("logic_relay", {
	    targetname = "kill",
	    "OnTrigger#1": "haha_funny_blimp_3,AddOutput,OnPass blimp:RemoveHealth:999999999:7.7:-1,0,-1",
	    "OnTrigger#2": "haha_funny_blimp_3,AddOutput,OnPass fire_bomb:Trigger:0:7.7:-1,0,-1",
	    "OnTrigger#3": "haha_funny_blimp_3,AddOutput,OnPass correction:Enable:0:7.7:-1,0,-1",
	    "OnTrigger#4": "haha_funny_blimp_3,AddOutput,OnPass faded:Fade:0:7.85:-1,0,-1",
	    "OnTrigger#5": "haha_funny_blimp_3,AddOutput,OnPass kablooey:PlaySound:0:7.85:-1,0,-1"
	})

	local info_particle_system171 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(-3816.412842, 4446.756348, 525.031311),
	    effect_name = "cinefx_goldrush"
	})

	local info_particle_system172 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(-4327.780273, 4440.540039, 525.031311),
	    effect_name = "cinefx_goldrush"
	})

	local info_particle_system173 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(-4340.147949, 5060.938965, 657.031311),
	    effect_name = "cinefx_goldrush"
	})

	local info_particle_system174 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(-3289.664063, 4908.461914, 525.03131),
	    effect_name = "cinefx_goldrush"
	})

	local info_particle_system175 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(-2814.163330, 4471.055664, 525.03131),
	    effect_name = "cinefx_goldrush"
	})

	local info_particle_system176 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(-2810.664063, 5065.477051, 525.03131),
	    effect_name = "cinefx_goldrush"
	})

	local info_particle_system177 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(-2293.406982, 4482.918945, 525.0313111),
	    effect_name = "cinefx_goldrush"
	})

	local info_particle_system178 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(-2299.068604, 4991.241211, 525.031311),
	    effect_name = "cinefx_goldrush"
	})

	local info_particle_system179 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(-1810.063965, 5016.766602, 475.03131),
	    effect_name = "cinefx_goldrush_flames"
	})

	local info_particle_system180 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(-1782.661743, 4473.662109, 525.03131),
	    effect_name = "cinefx_goldrush_flames"
	})

	local info_particle_system181 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(-3837.915283, 5128.645508, 460.077209),
	    effect_name = "cinefx_goldrush"
	})

	local info_particle_system182 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(-3031.034424, 4728.278809, 158.631714),
	    effect_name = "cauldron_smoke_lit_bottom"
	})

	local info_particle_system183 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(-3992.472900, 4710.988281, 151.646179),
	    effect_name = "cauldron_smoke_lit_bottom"
	})

	local info_particle_system184 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(-2149.978516, 4729.521973, 150.727783),
	    effect_name = "cauldron_smoke_lit_bottom"
	})

	local info_particle_system185 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(-3031.034424, 4928.278809, 158.631714),
	    effect_name = "cauldron_smoke_lit_bottom"
	})

	local info_particle_system186 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(-3992.472900, 4910.988281, 151.646179),
	    effect_name = "cauldron_smoke_lit_bottom"
	})

	local info_particle_system187 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(-2149.978516, 4929.521973, 150.727783),
	    effect_name = "cauldron_smoke_lit_bottom"
	})

	local info_particle_system188 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(-3031.034424, 4478.278809, 158.631714),
	    effect_name = "cauldron_smoke_lit_bottom"
	})

	local info_particle_system189 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(-3992.472900, 4470.988281, 151.646179),
	    effect_name = "cauldron_smoke_lit_bottom"
	})

	local info_particle_system190 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, 0, 0),
	    origin = Vector(-2149.978516, 4479.521973, 150.727783),
	    effect_name = "cauldron_smoke_lit_bottom"
	})

	local info_particle_system191 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, -90, 0),
	    origin = Vector(-1525.566406, 4739.521484, 146.84434),
	    effect_name = "cauldron_smoke_lit_bottom"
	})

	local info_particle_system192 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, -90, 0),
	    origin = Vector(-1525.566406, 5039.521484, 146.84434),
	    effect_name = "cauldron_smoke_lit_bottom"
	})

	local info_particle_system193 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, -90, 0),
	    origin = Vector(-1525.566406, 4339.521484, 146.84434),
	    effect_name = "cauldron_smoke_lit_bottom"
	})

	local info_particle_system194 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, -90, 0),
	    origin = Vector(-2527.867920, 4648.195801, 220),
	    effect_name = "hightower_smoke"
	})

	local info_particle_system195 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, -90, 0),
	    origin = Vector(-3069.471436, 4699.489258, 220),
	    effect_name = "hightower_smoke"
	})

	local info_particle_system196 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, -90, 0),
	    origin = Vector(-3551.293213, 4708.399414, 220),
	    effect_name = "hightower_smoke"
	})

	local info_particle_system197 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, -90, 0),
	    origin = Vector(-4102.336426, 4727.771484, 220),
	    effect_name = "hightower_smoke"
	})

	local info_particle_system198 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, -90, 0),
	    origin = Vector(-1225.238159, 4746.666992, 220),
	    effect_name = "hightower_smoke"
	})

	local info_particle_system199 = SpawnEntityFromTable("info_particle_system", {
	    TargetName = "BURN_THE_PLACE_DOWN10",
	    angles = QAngle(0, -90, 0),
	    origin = Vector(-1533.000732, 4533.242188, 220),
	    effect_name = "hightower_smoke"
	})

	local logic_relay200 = SpawnEntityFromTable("logic_relay", {
	    targetname = "fire_bomb",
	    "OnTrigger#1": "BURN_THE_PLACE_DOWN*,Start,,0,-1",
	    "OnTrigger#2": "dont_touch_that,Enable,,0,-1",
	    "OnTrigger#3": "shake,StartShake,,0,-1"
	})

	local trigger_ignite_brush6 = SpawnEntityFromTable("trigger_ignite", {
	    targetname = "dont_touch_that",
	    origin = Vector(-3069.812012, 4731.641602, 177.03131),
	    filtername = "redteam",
	    spawnflags = 1,
	    burn_duration = 8,
	    damage_percent_per_second = 25,
	    mins = "-1800 -500 -200",
	    maxs = "1800 500 200",
	    $killicon = "firedeath"
	})
	trigger_ignite_brush6.KeyValueFromInt("solid", 2)
	trigger_ignite_brush6.KeyValueFromString("mins", "-1800 -500 -200")
	trigger_ignite_brush6.KeyValueFromString("maxs", "1800 500 200")

	local color_correction201 = SpawnEntityFromTable("color_correction", {
	    targetname = "correction",
	    startdisabled = 1,
	    fadeintime = 0,
	    fadeouttime = 10,
	    filename = "spybase_storm.raw",
	    maxweight = 0.45,
	    minfalloff = -1.0,
	    maxfalloff = -1.0
	})

	local ambient_generic202 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "kablooey",
	    message = "items\cart_explode.wav",
	    health = 10,
	    spawnflags = 49
	})

	local env_fade203 = SpawnEntityFromTable("env_fade", {
	    targetname = "faded",
	    duration = 0.35,
	    holdtime = 0.1,
	    rendercolor = "255 255 255",
	    spawnflags = 1
	})

	local env_shake204 = SpawnEntityFromTable("env_shake", {
	    spawnflags = 1,
	    amplitude = 99999,
	    duration = 3,
	    frequency = 9,
	    targetname = "shake"
	})

}
::w4transition <- function()
{
	local info_particle_system205 = SpawnEntityFromTable("info_particle_system", {
	    targetname = "fire_fists",
	    origin = Vector(0, 0, 0),
	    angles = QAngle(0, 0, 0),
	    effect_name = "spell_fireball_small_red"
	})

	local ambient_generic206 = SpawnEntityFromTable("ambient_generic", {
	    targetname = "fire_sound",
	    message = "items/powerup_pickup_knockout.wav",
	    health = 10,
	    spawnflags = 49
	})

	local ambient_generic207 = SpawnEntityFromTable("ambient_generic", {
	    message = "#*ambient\fireball.wav",
	    health = 10,
	    radius = 20,
	    spawnflags = 17,
	    targetname = "fire_sound"
	})

	local logic_relay208 = SpawnEntityFromTable("logic_relay", {
	    targetname = "transition",
	    "OnTrigger#1": "fire_sound,playsound,,3,-1",
	    "ontrigger#2": "fire_fists,start,,3,-1"
	})

	local logic_relay209 = SpawnEntityFromTable("logic_relay", {
	    targetname = "thebigdie",
	    "ontrigger#1": "tf_taunt_prop*,kill,0,0,-1"
	})

}

EMP_annotation()
w7boss_logic()
resetbossstatues()
w6intro()
w4boss()
MissionName()
scrapped_spawns()
EMP_down()
bossstuffs()
Foreshadowing()
bossprelude()
grand_finale_sounds()
grand_finale()
boss_dead_dave()
boss_dead_pyro()
boss_dead_heavy()
boss_dead_demo()
bombthesub()
w4transition()