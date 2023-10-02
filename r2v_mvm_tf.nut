}
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
	    "OnTrigger#1": "temporary_solution,$SetOwner,@p@boss_thingy,2,-1",
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
	    "OnTrigger#1": "letsgow6,Fade,,0,-1",
	    "OnTrigger#2": "tf_gamerulesPlayVOReditems\powerup_pickup_crits.wav0-1",
	    "OnTrigger#3": "tf_gamerulesPlayVORedmisc\doomsday_missile_explosion.wav15-1",
	    "Ontrigger#4": "boss_attack_incoming_ground,trigger,,8.5,-1",
	    "OnTrigger#5": "die,Start,,15,-1",
	    "OnTrigger#6": "haha_boom,enable,,15,-1",
	    "OnTrigger#7": "haha_boom,disable,,15.1,-1",
	    "OnTrigger#8": "attack_explosion,start,,15,-1",
	    "OnTrigger#9": "attack_explosion,stop,,16,-1",
	    "OnTrigger#10": "getthefuckaway,enable,,10,-1",
	    "OnTrigger#11": "getthefuckaway,disable,,15,-1",
	    "OnTrigger#12": "tf_taunt_prop*,kill,,10,-1",
	    "OnTrigger#13": "tf_taunt_prop*,kill,,10.1,-1",
	    "OnTrigger#14": "tf_taunt_prop*,kill,,10.2,-1",
	    "OnTrigger#15": "tf_taunt_prop*,kill,,10.3,-1",
	    "OnTrigger#16": "abrawlissurelybrewing,StartShake,,15,-1"
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
	    "OnCase01#1": "!activator,$ChangeAttributes,burst,0,-1",
	    "OnCase02#2": "!activator,$ChangeAttributes,barrage,0,-1",
	    "OnCase03#3": "!activator,$ChangeAttributes,multi,0,-1",
	    "OnCase04#4": "!activator,$ChangeAttributes,homing,0,-1",
	    "OnCase05#5": "!activator,$ChangeAttributes,nuke,0,-1",
	    "OnCase06#6": "!activator,$ChangeAttributes,Special_attack,0,-1",
	    "OnCase07#7": "!activator,$ChangeAttributes,Special_attack_ground,0,-1"
	})

	local logic_case38 = SpawnEntityFromTable("logic_case", {
	    targetname = "major_shocks_weapons_phase_2",
	    "OnCase01#1": "!activator,$ChangeAttributes,attack1b,0,-1",
	    "OnCase02#2": "!activator,$ChangeAttributes,attack2b,0,-1",
	    "OnCase03#3": "!activator,$ChangeAttributes,attack3b,0,-1",
	    "OnCase04#4": "!activator,$ChangeAttributes,attack4b,0,-1",
	    "OnCase05#5": "!activator,$ChangeAttributes,attack5b,0,-1",
	    "OnCase06#6": "!activator,$ChangeAttributes,attack6b,0,-1",
	    "OnCase07#7": "!activator,$ChangeAttributes,attack7b,0,-1",
	    "OnCase08#8": "!activator,$ChangeAttributes,attack8b,0,-1",
	    "OnCase09#9": "!activator,$ChangeAttributes,Special_attack_2,0,-1",
	    "OnCase10#10": "!activator,$ChangeAttributes,Special_attack_2,0,-1",
	    "OnCase11#11": "!activator,$ChangeAttributes,Special_attack_ground_2,0,-1",
	    "OnCase12#12": "!activator,$ChangeAttributes,Special_attack_ground_2,0,-1"
	})

	local logic_relay39 = SpawnEntityFromTable("logic_relay", {
	    targetname = "bossintermission",
	    "OnTrigger#1": "@p@boss_thingyRunScriptCodeself.AddCond(52)0-1",
	    "OnTrigger#2": "@p@boss_thingyRunScriptCodeself.AddCustomAttribute(`move speed penalty`, 0.001, -1)0-1",
	    "OnTrigger#3": "@p@boss_thingyRunScriptCodeself.AddCustomAttribute(`no_attack`, 1, -1)0-1",
	    "OnTrigger#4": "@p@boss_thingyRunScriptCodeself.AddCustomAttribute(`no_jump`, 1, -1)0-1",
	    "OnTrigger#5": "@p@boss_thingyRunScriptCodeself.AddCustomAttribute(`no_duck`, 1, -1)0-1",
	    "OnTrigger#6": "spawnbot_emp*,Enable,,3,-1"
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
	    "OnTrigger#8": "abrawlissurelybrewing,StartShake,,9.2,-1",
	    "OnTrigger#9": "diethesecond,Start,,9.2,-1",
	    "OnTrigger#10": "tf_gamerulesPlayVORedmisc\doomsday_missile_explosion.wav9.2-1",
	    "OnTrigger#11": "haha_boom,enable,,9.2,-1",
	    "OnTrigger#12": "haha_boom,disable,,9.3,-1",
	    "OnTrigger#13": "attack_explosion,start,,9.2,-1",
	    "OnTrigger#14": "attack_explosion,stop,,10,-1",
	    "OnTrigger#15": "getthefuckaway,enable,,4.3,-1",
	    "OnTrigger#16": "getthefuckaway,disable,,9.2,-1",
	    "OnTrigger#17": "spawnbot_chief*,Enable,,9.2",
	    "OnTrigger#18": "tf_gamerulesPlayVORedvo\mvm\mght\soldier_mvm_m_cheers01.mp310-1",
	    "OnTrigger#19": "tf_gamerulesPlayVORedvo\mvm\mght\soldier_mvm_m_directhittaunt02.mp37.5-1",
	    "OnTrigger#20": "tf_gamerulesPlayVORedvo\mvm\mght\vo\mvm\mght\soldier_mvm_m_hatoverhearttaunt01.mp36-1",
	    "OnTrigger#21": "tf_gamerulesPlayVORedvo\mvm\mght\soldier_mvm_m_painsharp05.mp31-1",
	    "OnTrigger#22": "tf_gamerulesPlayVORedvo\mvm\mght\soldier_mvm_m_painsharp06.mp32.5-1",
	    "OnTrigger#23": "tf_gamerulesPlayVORedvo\mvm\mght\soldier_mvm_m_painsharp06.mp34-1",
	    "OnTrigger#24": "tf_gamerulesPlayVORedvo\mvm\mght\pyro_mvm_m_laughevil04.mp39-1",
	    "OnTrigger#25": "tf_gamerulesPlayVORedvo\mvm\mght\heavy_mvm_m_yell12.mp39-1",
	    "OnTrigger#26": "tf_gamerulesPlayVORedvo\mvm\mght\demoman_mvm_m_yes02.mp39-1",
	    "OnTrigger#27": "@p@boss_thingy,$TauntFromItem,Taunt: Yeti Smash,4.3,-1",
	    "OnTrigger#28": "tf_gamerulesPlayVORedambient\explosions\explode_1.wav9.2-1",
	    "OnTrigger#29": "popscript,$CreateShockwave,,9.2,-1",
	    "OnTrigger#30": "second_phase,PlaySound,,9.2,-1",
	    "OnTrigger#31": "second_phase,StopSound,,144.1,-1",
	    "OnTrigger#32": "second_phase,PlaySound,,144.2,-1",
	    "OnTrigger#33": "tf_taunt_prop*,kill,,4.3,-1",
	    "OnTrigger#34": "tf_taunt_prop*,kill,,4.4,-1",
	    "OnTrigger#35": "tf_taunt_prop*,kill,,4.5,-1",
	    "OnTrigger#36": "tf_taunt_prop*,kill,,4.6,-1"
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
	    "OnTrigger#6": "tf_gamerulesPlayVORedmisc\hologram_start.wav12-1",
	    "OnTrigger#7": "tf_gamerulesPlayVORedambient\halloween\thunder_08.wav16-1",
	    "OnTrigger#8": "tf_gamerulesPlayVORedmisc\ks_tier_04_death.wav28-1",
	    "OnTrigger#9": "tf_gamerulesPlayVORedvo\mvm\mght\soldier_mvm_m_cheers04.mp331-1",
	    "OnTrigger#10": "tf_gamerulesPlayVORedvo\mvm\mght\soldier_mvm_m_laughevil01.mp333.2-1",
	    "OnTrigger#11": "KILLYOURSELF,Start,,12,-1",
	    "OnTrigger#12": "KILLYOURSELF1,Start,,16,-1",
	    "OnTrigger#13": "KILLYOURSELF2,Start,,20,-1",
	    "OnTrigger#14": "KILLYOURSELF3,Start,,24,-1",
	    "OnTrigger#15": "KILLYOURSELF4,Start,,28,-1",
	    "OnTrigger#16": "letsgow6,Fade,,30,-1",
	    "OnTrigger#17": "lightning,Start,,12,-1",
	    "OnTrigger#18": "lightning_strike,PlaySound,,12,-1",
	    "OnTrigger#19": "lightning_strike2,StartShake,,12,-1",
	    "OnTrigger#20": "lightning1,Start,,16,-1",
	    "OnTrigger#21": "lightning_strike_1,PlaySound,,16,-1",
	    "OnTrigger#22": "lightning_strike2,StartShake,,16,-1",
	    "OnTrigger#23": "lightning2,Start,,20,-1",
	    "OnTrigger#24": "lightning_strike_2,PlaySound,,20,-1",
	    "OnTrigger#25": "lightning_strike2,StartShake,,20,-1",
	    "OnTrigger#26": "lightning3,Start,,24,-1",
	    "OnTrigger#27": "lightning_strike_3,PlaySound,,24,-1",
	    "OnTrigger#28": "lightning_strike2,StartShake,,24,-1",
	    "OnTrigger#29": "lightning4,Start,,28,-1",
	    "OnTrigger#30": "lightning_strike_4,PlaySound,,28,-1",
	    "OnTrigger#31": "lightning_strike2,StartShake,,28,-1",
	    "OnTrigger#32": "w6intro,kill,,40,-1"
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
	    "OnCase01#1": "!activator,$WeaponSwitchSlot,0,0,-1",
	    "OnCase02#2": "!activator,$WeaponSwitchSlot,1,0,-1",
	    "OnCase03#3": "!activator,$WeaponSwitchSlot,2,0,-1"
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
