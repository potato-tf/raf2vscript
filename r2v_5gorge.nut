
::env_tonemap_controller1130551 <- SpawnEntityFromTable("env_tonemap_controller", {
	    origin = Vector(-4256, 4632, 392),
	    targetname = "tonemap_global",
	    classname = "env_tonemap_controller",
	    hammerid = 1130551
	})

::logic_auto"OnMapSpawn#8": "tf_gamerules,SetRedTeamGoalString,Granary_red_setup_goal,0,-1" <- SpawnEntityFromTable("logic_auto", {
	    origin = Vector(-4256, 4632, 416),
	    spawnflags = 1,
	    classname = "logic_auto",
	    hammerid = 1130553,
	    "OnMapSpawn#1": "tonemap_global,SetAutoExposureMin,.5,0,-1",
	    "OnMapSpawn#2": "tonemap_global,SetAutoExposureMax,.8,0,-1",
	    "OnMapSpawn#3": "tonemap_global,SetBloomScale,.5,0,-1",
	    "OnMapSpawn#4": "tf_gamerules,SetStalemateOnTimelimit,1,0,-1",
	    "OnMapSpawn#5": "relay_stage1_gates,Trigger,,0,-1",
	    "OnNewGame#6": "sound_capallpoints,PlaySound,,0,-1",
	    "OnMapSpawn#7": "tf_gamerules,SetBlueTeamGoalString,Granary_blue_setup_goal,0,-1",
	    "OnMapSpawn#8": "tf_gamerules,SetRedTeamGoalString,Granary_red_setup_goal,0,-1"
	})

::water_lod_control1130557 <- SpawnEntityFromTable("water_lod_control", {
	    origin = Vector(-4256, 4584, 392),
	    targetname = "water_controller",
	    cheapwaterstartdistance = 1000,
	    cheapwaterenddistance = 2000,
	    classname = "water_lod_control",
	    hammerid = 1130557
	})

::filter_activator_tfteam1130559 <- SpawnEntityFromTable("filter_activator_tfteam", {
	    origin = Vector(-4256, 4680, 392),
	    TeamNum = 3,
	    targetname = "filter_team_blue",
	    Negated = "Allow entities that match criteria",
	    classname = "filter_activator_tfteam",
	    hammerid = 1130559
	})

::filter_activator_tfteam1130561 <- SpawnEntityFromTable("filter_activator_tfteam", {
	    origin = Vector(-4256, 4656, 392),
	    TeamNum = 2,
	    targetname = "filter_team_red",
	    Negated = "Allow entities that match criteria",
	    classname = "filter_activator_tfteam",
	    hammerid = 1130561
	})

::point_spotlight1173378 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-6400, 5296, 174.007),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "154 154 154",
	    renderamt = 255,
	    mindxlevel = 90,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 0, 0),
	    classname = "point_spotlight",
	    hammerid = 1173378
	})

::light_spot1173380 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6400, 5296, 176.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 0, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 375",
	    _inner_cone = 25,
	    _fifty_percent_distance = 416,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 1173380
	})

::point_spotlight1173394 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-6016, 5296, 174.007),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "154 154 154",
	    renderamt = 255,
	    mindxlevel = 90,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 0, 0),
	    classname = "point_spotlight",
	    hammerid = 1173394
	})

::light_spot1173396 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6016, 5296, 176.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 0, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 300",
	    _inner_cone = 25,
	    _fifty_percent_distance = 180,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 1173396
	})

::point_spotlight1174016 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-5648, 5296, 174.007),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "154 154 154",
	    renderamt = 255,
	    mindxlevel = 90,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 0, 0),
	    classname = "point_spotlight",
	    hammerid = 1174016
	})

::light_spot1174018 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5648, 5296, 176.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 0, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 300",
	    _inner_cone = 25,
	    _fifty_percent_distance = 416,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 1174018
	})

::light_spot1174249 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-4672, 5984, 222.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 1174249
	})

::env_lightglow1174254 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-4672, 5984, 225.007),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 1174254
	})

::light_spot1175858 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6688, 5440, 94.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 1175858
	})

::env_lightglow1175863 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6688, 5440, 97.007),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 1175863
	})

::point_spotlight1186786 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-6832, 2512, 433.007),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "154 154 154",
	    renderamt = 255,
	    mindxlevel = 90,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 0, 0),
	    classname = "point_spotlight",
	    hammerid = 1186786
	})

::light_spot1186788 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6832, 2512, 435.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 0, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 25,
	    _fifty_percent_distance = 416,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 1186788
	})

::point_spotlight1186822 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-6156, 3373, 465.007),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "154 154 154",
	    renderamt = 255,
	    mindxlevel = 90,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 0, 0),
	    classname = "point_spotlight",
	    hammerid = 1186822
	})

::light_spot1186824 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6156, 3373, 467.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 0, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 350",
	    _inner_cone = 25,
	    _fifty_percent_distance = 416,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 1186824
	})

	local func_areaportal_brush2 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 1,
	    targetname = "portal_main_gate_1",
	    target = "door_main_gate_1",
	    StartOpen = 0,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1199549,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush2.KeyValueFromInt("solid", 2)
	func_areaportal_brush2.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush2.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic1199551 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-5184, 3369, 31),
	    targetname = "prop_main_gate_1",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 0,
	    SetBodyGroup = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    model = "models/props_well/main_entrance_door.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    lightingorigin = "lighting_main_gate_1",
	    fadescale = 1,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    angles = QAngle(0, 90, 0),
	    classname = "prop_dynamic",
	    hammerid = 1199551
	})

	local func_door_brush3 = SpawnEntityFromTable("func_door", {
	    model = "*1",
	    wait = 4,
	    unlocked_sentence = 0,
	    targetname = "door_main_gate_1",
	    speed = 300,
	    spawnpos = 0,
	    spawnflags = 32,
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5184, 3354, 95.75),
	    movedir = "90 0 0",
	    loopmovesound = 0,
	    locked_sentence = 0,
	    lip = 2,
	    ignoredebris = 0,
	    health = 0,
	    forceclosed = 0,
	    dmg = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_door",
	    hammerid = 1199555,
	    "OnOpen#1": "prop_main_gate_1,SetAnimation,open,0,-1",
	    "OnClose#2": "prop_main_gate_1,SetAnimation,close,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_door_brush3.KeyValueFromInt("solid", 2)
	func_door_brush3.KeyValueFromString("mins", "0 0 0")
	func_door_brush3.KeyValueFromString("maxs", "1 1 1")

	local trigger_multiple_brush4 = SpawnEntityFromTable("trigger_multiple", {
	    model = "*2",
	    wait = 0,
	    targetname = "trigger_main_gate_1",
	    StartDisabled = 0,
	    spawnflags = 1,
	    origin = Vector(-5184, 3356, 80),
	    classname = "trigger_multiple",
	    hammerid = 1199558,
	    "OnStartTouchAll#1": "door_main_gate_1,Open,,0,-1",
	    "OnUser1#2": "door_main_gate_1,Close,,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	trigger_multiple_brush4.KeyValueFromInt("solid", 2)
	trigger_multiple_brush4.KeyValueFromString("mins", "0 0 0")
	trigger_multiple_brush4.KeyValueFromString("maxs", "1 1 1")

::path_track1199569 <- SpawnEntityFromTable("path_track", {
	    origin = Vector(-5183.93, 3376.08, 85),
	    targetname = "lighting_main_gate_1",
	    speed = 0,
	    spawnflags = 0,
	    radius = 0,
	    orientationtype = 1,
	    angles = QAngle(0, 0, 0),
	    classname = "path_track",
	    hammerid = 1199569
	})

	local func_areaportal_brush5 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 2,
	    targetname = "portal_main_gate_2",
	    target = "door_main_gate_2",
	    StartOpen = 0,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1199981,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush5.KeyValueFromInt("solid", 2)
	func_areaportal_brush5.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush5.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic1199983 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-6848, 3369, 95),
	    targetname = "prop_main_gate_2",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 0,
	    SetBodyGroup = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    model = "models/props_well/main_entrance_door.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    lightingorigin = "lighting_main_gate_2",
	    fadescale = 1,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    angles = QAngle(0, 90, 0),
	    classname = "prop_dynamic",
	    hammerid = 1199983
	})

	local func_door_brush6 = SpawnEntityFromTable("func_door", {
	    model = "*3",
	    wait = 4,
	    unlocked_sentence = 0,
	    targetname = "door_main_gate_2",
	    speed = 300,
	    spawnpos = 0,
	    spawnflags = 32,
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6848, 3354, 159.75),
	    movedir = "90 0 0",
	    loopmovesound = 0,
	    locked_sentence = 0,
	    lip = 2,
	    ignoredebris = 0,
	    health = 0,
	    forceclosed = 0,
	    dmg = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_door",
	    hammerid = 1199987,
	    "OnOpen#1": "prop_main_gate_2,SetAnimation,open,0,-1",
	    "OnClose#2": "prop_main_gate_2,SetAnimation,close,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_door_brush6.KeyValueFromInt("solid", 2)
	func_door_brush6.KeyValueFromString("mins", "0 0 0")
	func_door_brush6.KeyValueFromString("maxs", "1 1 1")

	local trigger_multiple_brush7 = SpawnEntityFromTable("trigger_multiple", {
	    model = "*4",
	    wait = 0,
	    targetname = "trigger_main_gate_2",
	    StartDisabled = 0,
	    spawnflags = 1,
	    origin = Vector(-6848, 3368, 144),
	    classname = "trigger_multiple",
	    hammerid = 1199990,
	    "OnStartTouchAll#1": "door_main_gate_2,Open,,0,-1",
	    "OnUser1#2": "door_main_gate_2,Close,,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	trigger_multiple_brush7.KeyValueFromInt("solid", 2)
	trigger_multiple_brush7.KeyValueFromString("mins", "0 0 0")
	trigger_multiple_brush7.KeyValueFromString("maxs", "1 1 1")

::path_track1200001 <- SpawnEntityFromTable("path_track", {
	    origin = Vector(-6847.93, 3376.08, 149),
	    targetname = "lighting_main_gate_2",
	    speed = 0,
	    spawnflags = 0,
	    radius = 0,
	    orientationtype = 1,
	    angles = QAngle(0, 0, 0),
	    classname = "path_track",
	    hammerid = 1200001
	})

::light_spot1244513 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5712, 5760, 222.335),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 1244513
	})

::env_lightglow1244518 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5712, 5760, 225.335),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 1244518
	})

::light_spot1246345 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5712, 5760, 44.335),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 1246345
	})

::env_lightglow1246350 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5712, 5760, 47.335),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 1246350
	})

::light_spot1246592 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6544, 3624, 236.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 1246592
	})

::env_lightglow1246597 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6544, 3624, 239.007),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 1246597
	})

::env_lightglow1246693 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6848, 3480, 255.007),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 1246693
	})

::light_spot1246688 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6848, 3480, 252.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 1246688
	})

::light_spot1267248 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6452, 2160, 478.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 1267248
	})

::env_lightglow1267253 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6452, 2160, 481.007),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 1267253
	})

::light1401575 <- SpawnEntityFromTable("light", {
	    origin = Vector(-5183.84, 3335.04, 173.888),
	    style = 0,
	    spawnflags = 0,
	    _zero_percent_distance = 200,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "208 67 6 75",
	    _hardfalloff = 0,
	    _fifty_percent_distance = 20,
	    _distance = 0,
	    _constant_attn = 0,
	    classname = "light",
	    hammerid = 1401575
	})

::light1401765 <- SpawnEntityFromTable("light", {
	    origin = Vector(-6848.11, 3335.04, 240.245),
	    style = 0,
	    spawnflags = 0,
	    _zero_percent_distance = 200,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "208 67 6 75",
	    _hardfalloff = 0,
	    _fifty_percent_distance = 20,
	    _distance = 0,
	    _constant_attn = 0,
	    classname = "light",
	    hammerid = 1401765
	})

::light1406317 <- SpawnEntityFromTable("light", {
	    origin = Vector(-5183.75, 3408.25, 188.25),
	    _zero_percent_distance = 250,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "208 67 6 75",
	    _fifty_percent_distance = 15,
	    classname = "light",
	    hammerid = 1406317
	})

::light1406417 <- SpawnEntityFromTable("light", {
	    origin = Vector(-6591.75, 2464, 268.718),
	    _zero_percent_distance = 250,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "208 67 6 75",
	    _fifty_percent_distance = 15,
	    classname = "light",
	    hammerid = 1406417
	})

::light1408552 <- SpawnEntityFromTable("light", {
	    origin = Vector(-6848.46, 3408.25, 244.158),
	    _zero_percent_distance = 250,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "208 67 6 75",
	    _fifty_percent_distance = 15,
	    classname = "light",
	    hammerid = 1408552
	})

::light1408592 <- SpawnEntityFromTable("light", {
	    origin = Vector(-5423.25, 5752, 52.419),
	    _zero_percent_distance = 250,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "208 67 6 75",
	    _fifty_percent_distance = 15,
	    classname = "light",
	    hammerid = 1408592
	})

::light1408806 <- SpawnEntityFromTable("light", {
	    origin = Vector(-5968.5, 5752, 52.419),
	    _zero_percent_distance = 250,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "208 67 6 75",
	    _fifty_percent_distance = 15,
	    classname = "light",
	    hammerid = 1408806
	})

::light_spot1414170 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5200.34, 2991.42, 486.451),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 1414170
	})

::env_lightglow1414175 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5200.6, 2991.32, 489.451),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 1414175
	})

::light_spot1416176 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5879.33, 2126.67, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 1416176
	})

::light_spot1416196 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6450, 2154, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 1416196
	})

::light_spot1416496 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5567.33, 2206.67, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 1416496
	})

::light_spot1436653 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-4848, 5984, 222.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 1436653
	})

::env_lightglow1436658 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-4848, 5984, 225.007),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 1436658
	})

::light_spot1442660 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5200.34, 3023.42, 221.893),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 1442660
	})

::env_lightglow1442665 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5200.6, 3023.32, 224.893),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 1442665
	})

::light_spot1442684 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6016.34, 3119.42, 213.893),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 400",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 1442684
	})

::env_lightglow1442689 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6016.6, 3119.32, 216.893),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 1442689
	})

::light_spot1442805 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6016.34, 3103.42, 485.893),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 1442805
	})

::env_lightglow1442810 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6016.6, 3103.32, 488.893),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 1442810
	})

::item_ammopack_full1227947 <- SpawnEntityFromTable("item_ammopack_full", {
	    origin = Vector(-6256, 6512, -48),
	    angles = QAngle(0, 270, 0),
	    classname = "item_ammopack_full",
	    hammerid = 1227947
	})

::item_healthkit_medium1227952 <- SpawnEntityFromTable("item_healthkit_medium", {
	    origin = Vector(-6320, 6512, -48),
	    angles = QAngle(0, 270, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 1227952
	})

::point_spotlight1522934 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-5278, 1344, 464.859),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "154 154 154",
	    renderamt = 255,
	    mindxlevel = 90,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 270, 0),
	    classname = "point_spotlight",
	    hammerid = 1522934
	})

::light_spot1522936 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5278, 1344, 466.859),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 25,
	    _fifty_percent_distance = 416,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 1522936
	})

::point_spotlight1522946 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-6746, 1344, 464.859),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "154 154 154",
	    renderamt = 255,
	    mindxlevel = 90,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 270, 0),
	    classname = "point_spotlight",
	    hammerid = 1522946
	})

::light_spot1522948 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6746, 1344, 466.859),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 25,
	    _fifty_percent_distance = 416,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 1522948
	})

::light_spot1532272 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6693.33, 1911.67, 265.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 1532272
	})

::light_spot1562721 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6015.33, 1886.67, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 1562721
	})

::light_spot1566316 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5631.33, 1886.67, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 1566316
	})

::light_spot1707388 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5567.33, 1967.67, 537.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 1707388
	})

::light_spot1707408 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6167.33, 1871.67, 457.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 1707408
	})

::light_spot1775509 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6167.33, 2126.67, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 1775509
	})

::light_spot1776021 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5296, 2296, 236.335),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 1776021
	})

::env_lightglow1776026 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5296, 2296, 239.335),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 1776026
	})

::light_spot1776057 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5072, 2304, 236.335),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 1776057
	})

::env_lightglow1776062 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5072, 2304, 239.335),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 1776062
	})

::light_spot1780226 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5255.33, 1878.67, 473.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 1780226
	})

::light_spot1781665 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5183.33, 1366.67, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 1781665
	})

::light_spot1791445 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5184, 3800, 188.203),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 1791445
	})

::env_lightglow1791450 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5184, 3800, 191.203),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 1791450
	})

::light_spot1828393 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5567.33, 1570.67, 81.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 1828393
	})

::light_spot1836021 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6015.33, 1858.67, 81.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 1836021
	})

::light_spot1853706 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6968, 3152, 244.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 1853706
	})

::env_lightglow1853711 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6968, 3152, 247.007),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 1853711
	})

::light_spot1855326 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6703.33, 2463.67, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 1855326
	})

::light_spot1855376 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6696, 2840.3, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 1855376
	})

::light_spot1856229 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6696, 3160, 244.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 1856229
	})

::env_lightglow1856234 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6696, 3160, 247.007),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 1856234
	})

::light_spot1856445 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6832.34, 3151.42, 454.451),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 1856445
	})

::env_lightglow1856450 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6832.6, 3151.32, 457.451),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 1856450
	})

::light_spot1860882 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5183.33, 3270.67, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 1860882
	})

::light_spot1866323 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5176, 3520, 188.203),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 1866323
	})

::env_lightglow1866328 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5176, 3520, 191.203),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 1866328
	})

::light_spot1882850 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-4800, 5648, 222.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 1882850
	})

::env_lightglow1882855 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-4800, 5648, 225.007),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 1882855
	})

::light_spot1916889 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5863.33, 1871.67, 457.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 1916889
	})

::light_spot1918411 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6016.04, 4871.92, 217.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 1918411
	})

::light_spot1918521 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6016.04, 5071.92, 217.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 1918521
	})

::light_spot1928419 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5216, 5728.07, 85.0125),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 1928419
	})

::env_sprite2133109 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-6196.9, 2011.72, 317.868),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 2133109
	})

::env_sprite2133112 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-6221.02, 2011.72, 349.435),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 2133112
	})

::env_sprite2133115 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-6152.95, 2011.72, 349.76),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 2133115
	})

::env_sprite2133118 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-6152.95, 2011.72, 343.76),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 2133118
	})

::env_sprite2133666 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-5761, 2012, 349),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 2133666
	})

::env_sprite2150410 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-5285.1, 964.28, 317.868),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 2150410
	})

::env_sprite2150413 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-5260.98, 964.28, 349.435),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 2150413
	})

::env_sprite2150416 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-5329.05, 964.28, 349.76),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 2150416
	})

::env_sprite2150419 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-5329.05, 964.28, 343.76),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 2150419
	})

::light_spot2151786 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6602.28, 2152, 428.109),
	    spawnflags = 0,
	    pitch = -75.0,
	    angles = QAngle(-75, 180, 90),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 400",
	    _inner_cone = 35,
	    _fifty_percent_distance = 192,
	    _exponent = 1,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 2151786
	})

	local func_illusionary_brush8 = SpawnEntityFromTable("func_illusionary", {
	    model = "*5",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5550.25, 2208.76, 467),
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_illusionary",
	    hammerid = 2152219,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_illusionary_brush8.KeyValueFromInt("solid", 2)
	func_illusionary_brush8.KeyValueFromString("mins", "0 0 0")
	func_illusionary_brush8.KeyValueFromString("maxs", "1 1 1")

::env_lightglow1400150 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6241.92, 3625.99, 206.671),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 1400150
	})

::light_spot1400152 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6241.32, 3624.34, 198.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 0, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 600",
	    _inner_cone = 25,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 1400152
	})

::env_lightglow1400139 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5985.92, 3625.99, 206.671),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 1400139
	})

::light_spot1400141 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5985.32, 3624.34, 198.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 0, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 600",
	    _inner_cone = 25,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 1400141
	})

::env_lightglow1400132 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5729.92, 3625.99, 206.671),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 1400132
	})

::light_spot1400134 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5729.32, 3624.34, 198.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 0, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 600",
	    _inner_cone = 25,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 1400134
	})

::path_track2188964 <- SpawnEntityFromTable("path_track", {
	    origin = Vector(-5440, 3624, 132),
	    targetname = "lighting_stage1_leftentrance_1",
	    orientationtype = 1,
	    angles = QAngle(0, 0, 0),
	    classname = "path_track",
	    hammerid = 2188964
	})

::path_track2190069 <- SpawnEntityFromTable("path_track", {
	    origin = Vector(-4928, 3624.01, 132),
	    targetname = "lighting_stage1_leftentrance_2",
	    orientationtype = 1,
	    angles = QAngle(0, 0, 0),
	    classname = "path_track",
	    hammerid = 2190069
	})

::env_lightglow1414575 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5680.6, 7879.32, 8.8928),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 1414575
	})

::light_spot1414570 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5680.34, 7879.42, 5.8928),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 1414570
	})

::light_spot1414558 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5216.34, 7879.42, 5.8928),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 1414558
	})

::env_lightglow1414563 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5216.6, 7879.32, 8.8928),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 1414563
	})

::env_lightglow2442551 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5648.6, 8423.32, 40.8928),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 2442551
	})

::light_spot2442553 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5648.34, 8423.42, 37.8928),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 2442553
	})

::env_lightglow2456307 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6512.6, 9127.32, 8.8928),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 2456307
	})

::light_spot2456309 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6512.34, 9127.42, 5.8928),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 2456309
	})

::info_player_teamspawn1195534 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5635.89, 8003.92, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 300, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195534
	})

::info_player_teamspawn1195526 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5651.31, 7902.63, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 300, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195526
	})

::info_player_teamspawn1195528 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5392, 7968, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195528
	})

::info_player_teamspawn1195532 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5728, 7856, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 300, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195532
	})

::info_player_teamspawn1195530 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5829.88, 7891.92, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 300, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195530
	})

::info_player_teamspawn1195524 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5814.45, 7993.2, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 300, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195524
	})

::info_player_teamspawn1195516 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5731.31, 8041.2, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 300, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195516
	})

::info_player_teamspawn1195520 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5732.88, 7947.92, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 300, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195520
	})

::info_player_teamspawn1195506 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5195.62, 7848.2, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 240, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195506
	})

::info_player_teamspawn1195508 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5108.19, 7871.63, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 240, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195508
	})

::info_player_teamspawn1195518 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5292.61, 7904.2, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 240, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195518
	})

::info_player_teamspawn1195522 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5203.04, 7963.34, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 240, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195522
	})

::info_player_teamspawn1195510 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5115.62, 7986.77, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 240, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195510
	})

::info_player_teamspawn1195512 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5212.61, 8042.77, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 240, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195512
	})

::info_player_teamspawn1195514 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5308.04, 8005.49, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 240, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195514
	})

::light_spot2467505 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5456, 8816, -187.901),
	    style = 0,
	    pitch = 90,
	    angles = QAngle(90, 0, 0),
	    _zero_percent_distance = 256,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 400",
	    _inner_cone = 30,
	    _fifty_percent_distance = 96,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 2467505
	})

::light_spot2467535 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5264, 8784, -187.901),
	    style = 0,
	    pitch = 90,
	    angles = QAngle(90, 0, 0),
	    _zero_percent_distance = 256,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 400",
	    _inner_cone = 30,
	    _fifty_percent_distance = 96,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 2467535
	})

::light_spot2467545 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5648, 8784, -187.901),
	    style = 0,
	    pitch = 90,
	    angles = QAngle(90, 0, 0),
	    _zero_percent_distance = 256,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 400",
	    _inner_cone = 30,
	    _fifty_percent_distance = 96,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 2467545
	})

::light_spot2526974 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6608.01, 8775, -187.901),
	    style = 0,
	    pitch = 90,
	    angles = QAngle(90, 0, 0),
	    _zero_percent_distance = 256,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 400",
	    _inner_cone = 30,
	    _fifty_percent_distance = 96,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 2526974
	})

::light_spot2533583 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-4783.82, 7758.7, -75.9933),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 180, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "133 147 167 1500",
	    _inner_cone = 30,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 2533583
	})

::light_spot2533588 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-4739.82, 7758.7, -75.9933),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 180, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "133 147 167 1500",
	    _inner_cone = 30,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 2533588
	})

::point_spotlight2533593 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-4739.24, 7759.03, -76.8863),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "95 77 41",
	    renderamt = 255,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 0, 0),
	    classname = "point_spotlight",
	    hammerid = 2533593
	})

::point_spotlight2533599 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-4783.24, 7759.03, -76.8863),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "95 77 41",
	    renderamt = 255,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 0, 0),
	    classname = "point_spotlight",
	    hammerid = 2533599
	})

::light_spot2533944 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-4594.53, 7527.82, -75.9933),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "133 147 167 1500",
	    _inner_cone = 30,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 2533944
	})

::light_spot2533949 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-4594.53, 7483.82, -75.9933),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "133 147 167 1500",
	    _inner_cone = 30,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 2533949
	})

::point_spotlight2533954 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-4594.2, 7483.24, -76.8863),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "95 77 41",
	    renderamt = 255,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 270, 0),
	    classname = "point_spotlight",
	    hammerid = 2533954
	})

::point_spotlight2533960 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-4594.2, 7527.24, -76.8863),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "95 77 41",
	    renderamt = 255,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 270, 0),
	    classname = "point_spotlight",
	    hammerid = 2533960
	})

::light_spot2540032 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-4802.11, 8055.61, -22.8553),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 2540032
	})

::light_spot2546223 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-4998.28, 8352, 25.4915),
	    spawnflags = 0,
	    pitch = -75.0,
	    angles = QAngle(-75, 180, 90),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 400",
	    _inner_cone = 35,
	    _fifty_percent_distance = 192,
	    _exponent = 1,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 2546223
	})

::env_sprite2552413 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-5464.19, 7542.72, -31.1044),
	    spawnflags = 1,
	    scale = 0.15,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "255 26 26",
	    renderamt = 240,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 2552413
	})

::light2623689 <- SpawnEntityFromTable("light", {
	    origin = Vector(-6016.18, 2142.43, 248.75),
	    _zero_percent_distance = 250,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "208 67 6 75",
	    _fifty_percent_distance = 15,
	    classname = "light",
	    hammerid = 2623689
	})

::light_spot3092960 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6829.33, 1911.67, 265.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 3092960
	})

::light1408856 <- SpawnEntityFromTable("light", {
	    origin = Vector(-6680.39, 5536.25, 86.638),
	    _zero_percent_distance = 250,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "208 67 6 75",
	    _fifty_percent_distance = 15,
	    classname = "light",
	    hammerid = 1408856
	})

::light_spot3360412 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5704, 1510, -400),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 300",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 3360412
	})

::point_spotlight3383589 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-5712, 2656, 465.007),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "154 154 154",
	    renderamt = 255,
	    mindxlevel = 90,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 0, 0),
	    classname = "point_spotlight",
	    hammerid = 3383589
	})

::light_spot3383591 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5712, 2656, 467.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 0, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 25,
	    _fifty_percent_distance = 416,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 3383591
	})

::point_spotlight3383601 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-6000, 2560, 465.007),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "154 154 154",
	    renderamt = 255,
	    mindxlevel = 90,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 0, 0),
	    classname = "point_spotlight",
	    hammerid = 3383601
	})

::light_spot3383603 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6000, 2560, 467.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 0, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 25,
	    _fifty_percent_distance = 416,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 3383603
	})

::point_spotlight3383613 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-6288, 2608, 465.007),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "154 154 154",
	    renderamt = 255,
	    mindxlevel = 90,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 0, 0),
	    classname = "point_spotlight",
	    hammerid = 3383613
	})

::light_spot3383615 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6288, 2608, 467.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 0, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 25,
	    _fifty_percent_distance = 416,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 3383615
	})

::env_lightglow3383629 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6135.72, 7680.28, 47.0067),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 3383629
	})

::light_spot3383631 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6135.72, 7680.28, 44.0067),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3383631
	})

::light_spot3383637 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6023.72, 7952.28, 44.0067),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 400",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3383637
	})

::env_lightglow3383642 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6023.72, 7952.28, 47.0067),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 3383642
	})

	local func_door_brush9 = SpawnEntityFromTable("func_door", {
	    model = "*6",
	    wait = 4,
	    unlocked_sentence = 0,
	    targetname = "door_stage2_red_spawn1_1",
	    speed = 300,
	    spawnflags = 32,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5791.99, 4979.15, 363.46),
	    movedir = "-90 0 0",
	    loopmovesound = 0,
	    locked_sentence = 0,
	    lip = 4,
	    health = 0,
	    forceclosed = 0,
	    dmg = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    classname = "func_door",
	    hammerid = 3460572,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_door_brush9.KeyValueFromInt("solid", 2)
	func_door_brush9.KeyValueFromString("mins", "0 0 0")
	func_door_brush9.KeyValueFromString("maxs", "1 1 1")

	local trigger_multiple_brush10 = SpawnEntityFromTable("trigger_multiple", {
	    model = "*7",
	    wait = 0,
	    targetname = "trigger_door_respawnroom_stage2_red1",
	    StartDisabled = 0,
	    spawnflags = 1,
	    origin = Vector(-5794.18, 5048.45, 360.03),
	    filtername = "filter_team_red",
	    classname = "trigger_multiple",
	    hammerid = 3460575,
	    "OnStartTouch#1": "door_stage2_red_spawn1_1,Open,,0,-1",
	    "OnEndTouchAll#2": "door_stage2_red_spawn1_1,Close,,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	trigger_multiple_brush10.KeyValueFromInt("solid", 2)
	trigger_multiple_brush10.KeyValueFromString("mins", "0 0 0")
	trigger_multiple_brush10.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic3460578 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-5792.27, 5005.65, 368.497),
	    targetname = "prop_door_respawnroom_stage2_red1",
	    StartDisabled = 0,
	    solid = 0,
	    skin = 1,
	    SetBodyGroup = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    parentname = "door_stage2_red_spawn1_1",
	    model = "models/props_gameplay/door_slide_large_door.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    fadescale = 0,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    angles = QAngle(0, 0, 0),
	    classname = "prop_dynamic",
	    hammerid = 3460578
	})

	local func_respawnroomvisualizer_brush11 = SpawnEntityFromTable("func_respawnroomvisualizer", {
	    model = "*8",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solid_to_enemies = 1,
	    respawnroomname = "respawnroom_stage2_red1",
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5791.99, 4997.65, 361.32),
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_respawnroomvisualizer",
	    hammerid = 3460582,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_respawnroomvisualizer_brush11.KeyValueFromInt("solid", 2)
	func_respawnroomvisualizer_brush11.KeyValueFromString("mins", "0 0 0")
	func_respawnroomvisualizer_brush11.KeyValueFromString("maxs", "1 1 1")

	local func_regenerate_brush12 = SpawnEntityFromTable("func_regenerate", {
	    model = "*9",
	    TeamNum = 2,
	    associatedmodel = "prop_resupply_red_1",
	    classname = "func_regenerate",
	    hammerid = 3460826,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_regenerate_brush12.KeyValueFromInt("solid", 2)
	func_regenerate_brush12.KeyValueFromString("mins", "0 0 0")
	func_regenerate_brush12.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic3460828 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-5588.85, 4993, 304.16),
	    targetname = "prop_resupply_red_1",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 0,
	    SetBodyGroup = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    model = "models/props_gameplay/resupply_locker.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    fadescale = 1,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 0,
	    angles = QAngle(0, 90, 0),
	    classname = "prop_dynamic",
	    hammerid = 3460828
	})

::info_player_teamspawn3461545 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5696, 5208, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461545
	})

::info_player_teamspawn3461547 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5600, 5208, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461547
	})

::info_player_teamspawn3461549 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5584, 5264, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461549
	})

::info_player_teamspawn3461551 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5568, 5328, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461551
	})

::info_player_teamspawn3461553 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5800, 5208, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461553
	})

::info_player_teamspawn3461555 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5602.72, 5416.58, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461555
	})

::info_player_teamspawn3461557 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5655.56, 5334.4, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461557
	})

::info_player_teamspawn3461559 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5731.94, 5337.64, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461559
	})

::info_player_teamspawn3461561 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5760, 5264, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461561
	})

::info_player_teamspawn3461563 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5680, 5264, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 274.321, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461563
	})

::info_player_teamspawn3461565 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5840, 5264, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461565
	})

::info_player_teamspawn3461567 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5760, 5408, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461567
	})

::info_player_teamspawn3461569 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5832, 5408, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461569
	})

::info_player_teamspawn3461571 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5687.02, 5421.64, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461571
	})

::info_player_teamspawn3461573 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5832.13, 5333.64, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461573
	})

::light_spot3479114 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5808, 5136, 430.335),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3479114
	})

::env_lightglow3479119 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5808, 5136, 433.335),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 3479119
	})

::light_spot3479186 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5808, 5376, 430.335),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3479186
	})

::env_lightglow3479191 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5808, 5376, 433.335),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 3479191
	})

::light_spot3479646 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5584, 5376, 430.335),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3479646
	})

::env_lightglow3479651 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5584, 5376, 433.335),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 3479651
	})

::light_spot3479658 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5584, 5136, 430.335),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3479658
	})

::env_lightglow3479663 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5584, 5136, 433.335),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 3479663
	})

::light_spot3682799 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6015.33, 834.67, 81.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3682799
	})

::light_spot3684657 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6467.33, 1114.67, 77.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3684657
	})

::team_control_point"OnCapTeam1#4": "cap_blue_2_model,Skin,1,0,-1" <- SpawnEntityFromTable("team_control_point", {
	    origin = Vector(-6016, -1648, 55),
	    team_timedpoints_3 = 0,
	    team_timedpoints_2 = 0,
	    team_model_3 = "models/effects/cappoint_hologram.mdl",
	    team_model_2 = "models/effects/cappoint_hologram.mdl",
	    team_model_0 = "models/effects/cappoint_hologram.mdl",
	    team_icon_3 = "sprites/obj_icons/icon_obj_blu",
	    team_icon_2 = "sprites/obj_icons/icon_obj_red",
	    team_icon_0 = "sprites/obj_icons/icon_obj_neutral",
	    team_bodygroup_3 = 0,
	    team_bodygroup_2 = 1,
	    team_bodygroup_0 = 3,
	    targetname = "cap_blue_2",
	    StartDisabled = 0,
	    spawnflags = 4,
	    point_warn_sound = "ControlPoint.CaptureWarn",
	    point_printname = "Granary_cap_blue_cp2",
	    point_index = 2,
	    point_group = 0,
	    point_default_owner = 3,
	    angles = QAngle(0, 0, 0),
	    classname = "team_control_point",
	    hammerid = 3702924,
	    "OnCapTeam2#1": "relay_resettimer,Trigger,,0,-1",
	    "OnCapTeam1#2": "relay_resettimer,Trigger,,0,-1",
	    "OnCapTeam2#3": "cap_blue_2_model,Skin,2,0,-1",
	    "OnCapTeam1#4": "cap_blue_2_model,Skin,1,0,-1"
	})

	local trigger_capture_area_brush13 = SpawnEntityFromTable("trigger_capture_area", {
	    model = "*10",
	    team_startcap_3 = 1,
	    team_startcap_2 = 1,
	    team_spawn_3 = 0,
	    team_spawn_2 = -3.0,
	    team_numcap_3 = 2,
	    team_numcap_2 = 2,
	    team_cancap_3 = 1,
	    team_cancap_2 = 1,
	    StartDisabled = 0,
	    area_time_to_cap = 3,
	    area_cap_point = "cap_blue_2",
	    classname = "trigger_capture_area",
	    hammerid = 3702926,
	    "OnCapTeam1#1": "tf_gamerules,setblueteamrespawnwavetime,5,0,-1",
	    "OnCapTeam2#2": "tf_gamerules,setblueteamrespawnwavetime,10,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	trigger_capture_area_brush13.KeyValueFromInt("solid", 2)
	trigger_capture_area_brush13.KeyValueFromString("mins", "0 0 0")
	trigger_capture_area_brush13.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic3702943 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-6016, -1650, 48),
	    targetname = "cap_blue_2_model",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 2,
	    SetBodyGroup = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    model = "models/props_gameplay/cap_point_base.mdl",
	    MinAnimTime = 5,
	    MaxAnimTime = 10,
	    fadescale = 0,
	    fademindist = 1500,
	    fademaxdist = 1800,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    angles = QAngle(0, 180, 0),
	    classname = "prop_dynamic",
	    hammerid = 3702943
	})

::light_spot3702967 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6272, -3836, 64),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 256,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 3702967
	})

::team_control_point"OnCapTeam2#2": "cap_blue_1_model,Skin,2,0,-1" <- SpawnEntityFromTable("team_control_point", {
	    origin = Vector(-6272, -3836, -85),
	    team_timedpoints_3 = 0,
	    team_timedpoints_2 = 0,
	    team_model_3 = "models/effects/cappoint_hologram.mdl",
	    team_model_2 = "models/effects/cappoint_hologram.mdl",
	    team_model_0 = "models/effects/cappoint_hologram.mdl",
	    team_icon_3 = "sprites/obj_icons/icon_obj_blu",
	    team_icon_2 = "sprites/obj_icons/icon_obj_red",
	    team_icon_0 = "sprites/obj_icons/icon_obj_neutral",
	    team_bodygroup_3 = 0,
	    team_bodygroup_2 = 1,
	    team_bodygroup_0 = 3,
	    targetname = "cap_blue_1",
	    StartDisabled = 0,
	    spawnflags = 4,
	    point_warn_sound = "ControlPoint.CaptureWarn",
	    point_warn_on_cap = 1,
	    point_printname = "Granary_cap_blue_cp1",
	    point_index = 1,
	    point_group = 0,
	    point_default_owner = 3,
	    angles = QAngle(0, 270, 0),
	    classname = "team_control_point",
	    hammerid = 3702963,
	    "OnCapTeam1#1": "cap_blue_1_model,Skin,1,0,-1",
	    "OnCapTeam2#2": "cap_blue_1_model,Skin,2,0,-1"
	})

	local trigger_capture_area_brush14 = SpawnEntityFromTable("trigger_capture_area", {
	    model = "*11",
	    team_startcap_3 = 1,
	    team_startcap_2 = 1,
	    team_numcap_3 = 1,
	    team_numcap_2 = 1,
	    team_cancap_3 = 1,
	    team_cancap_2 = 1,
	    StartDisabled = 0,
	    area_time_to_cap = 2,
	    area_cap_point = "cap_blue_1",
	    classname = "trigger_capture_area",
	    hammerid = 3702965,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	trigger_capture_area_brush14.KeyValueFromInt("solid", 2)
	trigger_capture_area_brush14.KeyValueFromString("mins", "0 0 0")
	trigger_capture_area_brush14.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic3702993 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-6272, -3836, -92),
	    targetname = "cap_blue_1_model",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 2,
	    SetBodyGroup = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    model = "models/props_gameplay/cap_point_base.mdl",
	    MinAnimTime = 5,
	    MaxAnimTime = 10,
	    fadescale = 0,
	    fademindist = -1.0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    angles = QAngle(0, 180, 0),
	    classname = "prop_dynamic",
	    hammerid = 3702993
	})

::prop_dynamic3702715 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-6016, 4336, 48),
	    targetname = "cap_red_2_model",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 2,
	    SetBodyGroup = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    model = "models/props_gameplay/cap_point_base.mdl",
	    MinAnimTime = 5,
	    MaxAnimTime = 10,
	    fadescale = 0,
	    fademindist = 1500,
	    fademaxdist = 1800,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    angles = QAngle(0, 180, 0),
	    classname = "prop_dynamic",
	    hammerid = 3702715
	})

::team_control_point"OnCapTeam1#4": "cap_red_2_model,Skin,1,0,-1" <- SpawnEntityFromTable("team_control_point", {
	    origin = Vector(-6016, 4336, 55),
	    team_timedpoints_3 = 0,
	    team_timedpoints_2 = 0,
	    team_model_3 = "models/effects/cappoint_hologram.mdl",
	    team_model_2 = "models/effects/cappoint_hologram.mdl",
	    team_model_0 = "models/effects/cappoint_hologram.mdl",
	    team_icon_3 = "sprites/obj_icons/icon_obj_blu",
	    team_icon_2 = "sprites/obj_icons/icon_obj_red",
	    team_icon_0 = "sprites/obj_icons/icon_obj_neutral",
	    team_bodygroup_3 = 0,
	    team_bodygroup_2 = 1,
	    team_bodygroup_0 = 3,
	    targetname = "cap_red_2",
	    StartDisabled = 0,
	    spawnflags = 4,
	    point_warn_sound = "ControlPoint.CaptureWarn",
	    point_printname = "Granary_cap_red_cp2",
	    point_index = 4,
	    point_group = 0,
	    point_default_owner = 2,
	    angles = QAngle(0, 180, 0),
	    classname = "team_control_point",
	    hammerid = 3702728,
	    "OnCapTeam1#1": "relay_resettimer,Trigger,,0,-1",
	    "OnCapTeam2#2": "relay_resettimer,Trigger,,0,-1",
	    "OnCapTeam2#3": "cap_red_2_model,Skin,2,0,-1",
	    "OnCapTeam1#4": "cap_red_2_model,Skin,1,0,-1"
	})

	local trigger_capture_area_brush15 = SpawnEntityFromTable("trigger_capture_area", {
	    model = "*12",
	    team_startcap_3 = 1,
	    team_startcap_2 = 1,
	    team_spawn_3 = -3.0,
	    team_spawn_2 = 0,
	    team_numcap_3 = 2,
	    team_numcap_2 = 2,
	    team_cancap_3 = 1,
	    team_cancap_2 = 1,
	    StartDisabled = 0,
	    area_time_to_cap = 3,
	    area_cap_point = "cap_red_2",
	    classname = "trigger_capture_area",
	    hammerid = 3702730,
	    "OnCapTeam1#1": "tf_gamerules,setredteamrespawnwavetime,10,0,-1",
	    "OnCapTeam2#2": "tf_gamerules,setredteamrespawnwavetime,5,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	trigger_capture_area_brush15.KeyValueFromInt("solid", 2)
	trigger_capture_area_brush15.KeyValueFromString("mins", "0 0 0")
	trigger_capture_area_brush15.KeyValueFromString("maxs", "1 1 1")

::team_control_point"OnCapTeam1#2": "cap_red_1_model,Skin,1,0,-1" <- SpawnEntityFromTable("team_control_point", {
	    origin = Vector(-5760, 6532, -85),
	    team_timedpoints_3 = 0,
	    team_timedpoints_2 = 0,
	    team_model_3 = "models/effects/cappoint_hologram.mdl",
	    team_model_2 = "models/effects/cappoint_hologram.mdl",
	    team_model_0 = "models/effects/cappoint_hologram.mdl",
	    team_icon_3 = "sprites/obj_icons/icon_obj_blu",
	    team_icon_2 = "sprites/obj_icons/icon_obj_red",
	    team_icon_0 = "sprites/obj_icons/icon_obj_neutral",
	    team_bodygroup_3 = 0,
	    team_bodygroup_2 = 1,
	    team_bodygroup_0 = 3,
	    targetname = "cap_red_1",
	    StartDisabled = 0,
	    spawnflags = 4,
	    point_warn_sound = "ControlPoint.CaptureWarn",
	    point_warn_on_cap = 1,
	    point_printname = "Granary_cap_red_cp1",
	    point_index = 5,
	    point_group = 0,
	    point_default_owner = 2,
	    angles = QAngle(0, 90, 0),
	    classname = "team_control_point",
	    hammerid = 3702680,
	    "OnCapTeam2#1": "cap_red_1_model,Skin,2,0,-1",
	    "OnCapTeam1#2": "cap_red_1_model,Skin,1,0,-1"
	})

	local trigger_capture_area_brush16 = SpawnEntityFromTable("trigger_capture_area", {
	    model = "*13",
	    team_startcap_3 = 1,
	    team_startcap_2 = 1,
	    team_numcap_3 = 1,
	    team_numcap_2 = 1,
	    team_cancap_3 = 1,
	    team_cancap_2 = 1,
	    StartDisabled = 0,
	    area_time_to_cap = 2,
	    area_cap_point = "cap_red_1",
	    classname = "trigger_capture_area",
	    hammerid = 3702682,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	trigger_capture_area_brush16.KeyValueFromInt("solid", 2)
	trigger_capture_area_brush16.KeyValueFromString("mins", "0 0 0")
	trigger_capture_area_brush16.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic3702684 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-5760, 6532, -92),
	    targetname = "cap_red_1_model",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 2,
	    SetBodyGroup = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    model = "models/props_gameplay/cap_point_base.mdl",
	    MinAnimTime = 5,
	    MaxAnimTime = 10,
	    fadescale = 0,
	    fademindist = -1.0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    angles = QAngle(0, 180, 0),
	    classname = "prop_dynamic",
	    hammerid = 3702684
	})

::light_spot3702691 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5760, 6532, 96),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 256,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 3702691
	})

::team_control_point"OnCapTeam1#4": "cap_mid_model,Skin,1,0,-1" <- SpawnEntityFromTable("team_control_point", {
	    origin = Vector(-6016, 1348, 103),
	    team_timedpoints_3 = 0,
	    team_timedpoints_2 = 0,
	    team_model_3 = "models/effects/cappoint_hologram.mdl",
	    team_model_2 = "models/effects/cappoint_hologram.mdl",
	    team_model_0 = "models/effects/cappoint_hologram.mdl",
	    team_icon_3 = "sprites/obj_icons/icon_obj_blu",
	    team_icon_2 = "sprites/obj_icons/icon_obj_red",
	    team_icon_0 = "sprites/obj_icons/icon_obj_neutral",
	    team_bodygroup_3 = 0,
	    team_bodygroup_2 = 1,
	    team_bodygroup_0 = 3,
	    targetname = "cap_middle",
	    StartDisabled = 0,
	    spawnflags = 4,
	    point_warn_sound = "ControlPoint.CaptureWarn",
	    point_printname = "Granary_cap_cp3",
	    point_index = 3,
	    point_group = 0,
	    point_default_owner = 0,
	    angles = QAngle(0, 270, 0),
	    classname = "team_control_point",
	    hammerid = 3702878,
	    "OnCapTeam2#1": "relay_resettimer,Trigger,,0,-1",
	    "OnCapTeam1#2": "relay_resettimer,Trigger,,0,-1",
	    "OnCapTeam2#3": "cap_mid_model,Skin,2,0,-1",
	    "OnCapTeam1#4": "cap_mid_model,Skin,1,0,-1"
	})

	local trigger_capture_area_brush17 = SpawnEntityFromTable("trigger_capture_area", {
	    model = "*14",
	    team_startcap_3 = 1,
	    team_startcap_2 = 1,
	    team_numcap_3 = 3,
	    team_numcap_2 = 3,
	    team_cancap_3 = 1,
	    team_cancap_2 = 1,
	    StartDisabled = 0,
	    area_time_to_cap = 4,
	    area_cap_point = "cap_middle",
	    classname = "trigger_capture_area",
	    hammerid = 3702880,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	trigger_capture_area_brush17.KeyValueFromInt("solid", 2)
	trigger_capture_area_brush17.KeyValueFromString("mins", "0 0 0")
	trigger_capture_area_brush17.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic3702882 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-6016, 1348, 96),
	    targetname = "cap_mid_model",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 0,
	    SetBodyGroup = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    model = "models/props_gameplay/cap_point_base.mdl",
	    MinAnimTime = 5,
	    MaxAnimTime = 10,
	    fadescale = 0,
	    fademindist = 2300,
	    fademaxdist = 2800,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    angles = QAngle(0, 0, 0),
	    classname = "prop_dynamic",
	    hammerid = 3702882
	})

::light_spot3702917 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6015.66, 1347.98, 254.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _zero_percent_distance = 256,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 30,
	    _fifty_percent_distance = 128,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 45,
	    classname = "light_spot",
	    hammerid = 3702917
	})

::point_spotlight3557148 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-5632, -2608, 174.007),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "154 154 154",
	    renderamt = 255,
	    mindxlevel = 90,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 180, 0),
	    classname = "point_spotlight",
	    hammerid = 3557148
	})

::light_spot3557150 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5632, -2608, 176.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 180, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 375",
	    _inner_cone = 25,
	    _fifty_percent_distance = 416,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 3557150
	})

::point_spotlight3557164 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-6016, -2608, 174.007),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "154 154 154",
	    renderamt = 255,
	    mindxlevel = 90,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 180, 0),
	    classname = "point_spotlight",
	    hammerid = 3557164
	})

::light_spot3557166 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6016, -2608, 176.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 180, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 300",
	    _inner_cone = 25,
	    _fifty_percent_distance = 180,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 3557166
	})

::point_spotlight3557172 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-6384, -2608, 174.007),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "154 154 154",
	    renderamt = 255,
	    mindxlevel = 90,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 180, 0),
	    classname = "point_spotlight",
	    hammerid = 3557172
	})

::light_spot3557174 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6384, -2608, 176.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 180, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 300",
	    _inner_cone = 25,
	    _fifty_percent_distance = 416,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 3557174
	})

::light_spot3557188 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-7360, -3296, 222.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3557188
	})

::env_lightglow3557193 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-7360, -3296, 225.007),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3557193
	})

::light_spot3557200 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5344, -2752, 94.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3557200
	})

::env_lightglow3557205 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5344, -2752, 97.007),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3557205
	})

::point_spotlight3557208 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-5876, -685, 465.007),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "154 154 154",
	    renderamt = 255,
	    mindxlevel = 90,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 180, 0),
	    classname = "point_spotlight",
	    hammerid = 3557208
	})

::light_spot3557210 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5876, -685, 467.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 180, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 350",
	    _inner_cone = 25,
	    _fifty_percent_distance = 416,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 3557210
	})

	local func_areaportal_brush18 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 3,
	    targetname = "portal_main_gate_1",
	    target = "door_main_gate_1",
	    StartOpen = 0,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3557224,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush18.KeyValueFromInt("solid", 2)
	func_areaportal_brush18.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush18.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic3557226 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-6848, -681, 31),
	    targetname = "prop_main_gate_1",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 0,
	    SetBodyGroup = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    model = "models/props_well/main_entrance_door.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    lightingorigin = "lighting_main_gate_1",
	    fadescale = 1,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    angles = QAngle(0, 270, 0),
	    classname = "prop_dynamic",
	    hammerid = 3557226
	})

	local func_door_brush19 = SpawnEntityFromTable("func_door", {
	    model = "*15",
	    wait = 4,
	    unlocked_sentence = 0,
	    targetname = "door_main_gate_1",
	    speed = 300,
	    spawnpos = 0,
	    spawnflags = 32,
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6848, -666, 95.75),
	    movedir = "90 0 0",
	    loopmovesound = 0,
	    locked_sentence = 0,
	    lip = 2,
	    ignoredebris = 0,
	    health = 0,
	    forceclosed = 0,
	    dmg = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_door",
	    hammerid = 3557230,
	    "OnOpen#1": "prop_main_gate_1,SetAnimation,open,0,-1",
	    "OnClose#2": "prop_main_gate_1,SetAnimation,close,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_door_brush19.KeyValueFromInt("solid", 2)
	func_door_brush19.KeyValueFromString("mins", "0 0 0")
	func_door_brush19.KeyValueFromString("maxs", "1 1 1")

	local trigger_multiple_brush20 = SpawnEntityFromTable("trigger_multiple", {
	    model = "*16",
	    wait = 0,
	    targetname = "trigger_main_gate_1",
	    StartDisabled = 0,
	    spawnflags = 1,
	    origin = Vector(-6848, -668, 80),
	    classname = "trigger_multiple",
	    hammerid = 3557233,
	    "OnStartTouchAll#1": "door_main_gate_1,Open,,0,-1",
	    "OnUser1#2": "door_main_gate_1,Close,,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	trigger_multiple_brush20.KeyValueFromInt("solid", 2)
	trigger_multiple_brush20.KeyValueFromString("mins", "0 0 0")
	trigger_multiple_brush20.KeyValueFromString("maxs", "1 1 1")

::path_track3557244 <- SpawnEntityFromTable("path_track", {
	    origin = Vector(-6848.07, -688.08, 85),
	    targetname = "lighting_main_gate_1",
	    speed = 0,
	    spawnflags = 0,
	    radius = 0,
	    orientationtype = 1,
	    angles = QAngle(0, 0, 0),
	    classname = "path_track",
	    hammerid = 3557244
	})

	local func_areaportal_brush21 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 4,
	    targetname = "portal_main_gate_2",
	    target = "door_main_gate_2",
	    StartOpen = 0,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3557252,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush21.KeyValueFromInt("solid", 2)
	func_areaportal_brush21.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush21.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic3557254 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-5184, -681, 95),
	    targetname = "prop_main_gate_2",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 0,
	    SetBodyGroup = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    model = "models/props_well/main_entrance_door.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    lightingorigin = "lighting_main_gate_2",
	    fadescale = 1,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    angles = QAngle(0, 270, 0),
	    classname = "prop_dynamic",
	    hammerid = 3557254
	})

	local func_door_brush22 = SpawnEntityFromTable("func_door", {
	    model = "*17",
	    wait = 4,
	    unlocked_sentence = 0,
	    targetname = "door_main_gate_2",
	    speed = 300,
	    spawnpos = 0,
	    spawnflags = 32,
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5184, -666, 159.75),
	    movedir = "90 0 0",
	    loopmovesound = 0,
	    locked_sentence = 0,
	    lip = 2,
	    ignoredebris = 0,
	    health = 0,
	    forceclosed = 0,
	    dmg = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_door",
	    hammerid = 3557258,
	    "OnOpen#1": "prop_main_gate_2,SetAnimation,open,0,-1",
	    "OnClose#2": "prop_main_gate_2,SetAnimation,close,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_door_brush22.KeyValueFromInt("solid", 2)
	func_door_brush22.KeyValueFromString("mins", "0 0 0")
	func_door_brush22.KeyValueFromString("maxs", "1 1 1")

	local trigger_multiple_brush23 = SpawnEntityFromTable("trigger_multiple", {
	    model = "*18",
	    wait = 0,
	    targetname = "trigger_main_gate_2",
	    StartDisabled = 0,
	    spawnflags = 1,
	    origin = Vector(-5184, -680, 144),
	    classname = "trigger_multiple",
	    hammerid = 3557261,
	    "OnStartTouchAll#1": "door_main_gate_2,Open,,0,-1",
	    "OnUser1#2": "door_main_gate_2,Close,,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	trigger_multiple_brush23.KeyValueFromInt("solid", 2)
	trigger_multiple_brush23.KeyValueFromString("mins", "0 0 0")
	trigger_multiple_brush23.KeyValueFromString("maxs", "1 1 1")

::path_track3557272 <- SpawnEntityFromTable("path_track", {
	    origin = Vector(-5184.07, -688.08, 149),
	    targetname = "lighting_main_gate_2",
	    speed = 0,
	    spawnflags = 0,
	    radius = 0,
	    orientationtype = 1,
	    angles = QAngle(0, 0, 0),
	    classname = "path_track",
	    hammerid = 3557272
	})

::light_spot3557293 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6320, -3072, 222.335),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3557293
	})

::env_lightglow3557298 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6320, -3072, 225.335),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3557298
	})

::light_spot3557305 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6320, -3072, 44.335),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3557305
	})

::env_lightglow3557310 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6320, -3072, 47.335),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3557310
	})

::light_spot3557317 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5488, -936, 236.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3557317
	})

::env_lightglow3557322 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5488, -936, 239.007),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3557322
	})

::env_lightglow3557329 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5184, -792, 255.007),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3557329
	})

::light_spot3557331 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5184, -792, 252.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3557331
	})

::light3557341 <- SpawnEntityFromTable("light", {
	    origin = Vector(-6848.16, -647.04, 173.888),
	    style = 0,
	    spawnflags = 0,
	    _zero_percent_distance = 200,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "97 199 193 16",
	    _hardfalloff = 0,
	    _fifty_percent_distance = 20,
	    _distance = 0,
	    _constant_attn = 0,
	    classname = "light",
	    hammerid = 3557341
	})

::light3557351 <- SpawnEntityFromTable("light", {
	    origin = Vector(-5183.89, -647.04, 240.245),
	    style = 0,
	    spawnflags = 0,
	    _zero_percent_distance = 200,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "97 199 193 16",
	    _hardfalloff = 0,
	    _fifty_percent_distance = 20,
	    _distance = 0,
	    _constant_attn = 0,
	    classname = "light",
	    hammerid = 3557351
	})

::light3557357 <- SpawnEntityFromTable("light", {
	    origin = Vector(-6848.25, -720.25, 188.25),
	    _zero_percent_distance = 250,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "97 199 193 16",
	    _fifty_percent_distance = 15,
	    classname = "light",
	    hammerid = 3557357
	})

::light3557367 <- SpawnEntityFromTable("light", {
	    origin = Vector(-5183.54, -720.25, 244.158),
	    _zero_percent_distance = 250,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "97 199 193 16",
	    _fifty_percent_distance = 15,
	    classname = "light",
	    hammerid = 3557367
	})

::light3557377 <- SpawnEntityFromTable("light", {
	    origin = Vector(-6608.75, -3064, 52.419),
	    _zero_percent_distance = 250,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "97 199 193 16",
	    _fifty_percent_distance = 15,
	    classname = "light",
	    hammerid = 3557377
	})

::light3557387 <- SpawnEntityFromTable("light", {
	    origin = Vector(-6063.5, -3064, 52.419),
	    spawnflags = 0,
	    _zero_percent_distance = 250,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "97 199 193 16",
	    _fifty_percent_distance = 15,
	    classname = "light",
	    hammerid = 3557387
	})

::light_spot3557401 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6831.66, -303.42, 486.451),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 3557401
	})

::env_lightglow3557406 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6831.4, -303.32, 489.451),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 3557406
	})

::light_spot3557413 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-7184, -3296, 222.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3557413
	})

::env_lightglow3557418 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-7184, -3296, 225.007),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3557418
	})

::light_spot3557425 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6831.66, -335.42, 221.893),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 3557425
	})

::env_lightglow3557430 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6831.4, -335.32, 224.893),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 3557430
	})

::light_spot3557437 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6015.66, -431.42, 213.893),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 400",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 3557437
	})

::env_lightglow3557442 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6015.4, -431.32, 216.893),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 3557442
	})

::light_spot3557449 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6015.66, -415.42, 485.893),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 3557449
	})

::env_lightglow3557454 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6015.4, -415.32, 488.893),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 3557454
	})

::item_ammopack_full3557513 <- SpawnEntityFromTable("item_ammopack_full", {
	    origin = Vector(-5776, -3824, -48),
	    angles = QAngle(0, 90, 0),
	    classname = "item_ammopack_full",
	    hammerid = 3557513
	})

::item_healthkit_medium3557518 <- SpawnEntityFromTable("item_healthkit_medium", {
	    origin = Vector(-5712, -3824, -48),
	    angles = QAngle(0, 90, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 3557518
	})

::light_spot3557666 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6848, -1112, 188.203),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3557666
	})

::env_lightglow3557671 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6848, -1112, 191.203),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3557671
	})

::light_spot3557683 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5064, -464, 244.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3557683
	})

::env_lightglow3557688 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5064, -464, 247.007),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3557688
	})

::light_spot3557695 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5336, -472, 244.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3557695
	})

::env_lightglow3557700 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5336, -472, 247.007),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3557700
	})

::light_spot3557707 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5199.66, -463.42, 454.451),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 3557707
	})

::env_lightglow3557712 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5199.4, -463.32, 457.451),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 3557712
	})

::light_spot3557719 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6848.67, -582.67, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 3557719
	})

::light_spot3557729 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6856, -832, 188.203),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3557729
	})

::env_lightglow3557734 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6856, -832, 191.203),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3557734
	})

::light_spot3557751 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-7232, -2960, 222.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3557751
	})

::env_lightglow3557756 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-7232, -2960, 225.007),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3557756
	})

::light_spot3557781 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6015.96, -2183.92, 217.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 3557781
	})

::light_spot3557791 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6015.96, -2383.92, 217.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 3557791
	})

::light_spot3557801 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6816, -3040.07, 85.0125),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 3557801
	})

::env_lightglow3557992 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5790.08, -937.99, 206.671),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 3557992
	})

::light_spot3557994 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5790.68, -936.34, 198.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 180, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 600",
	    _inner_cone = 25,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3557994
	})

::env_lightglow3558004 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6046.08, -937.99, 206.671),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 3558004
	})

::light_spot3558006 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6046.68, -936.34, 198.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 180, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 600",
	    _inner_cone = 25,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3558006
	})

::env_lightglow3558016 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6302.08, -937.99, 206.671),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 3558016
	})

::light_spot3558018 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6302.68, -936.34, 198.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 180, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 600",
	    _inner_cone = 25,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3558018
	})

::path_track3558036 <- SpawnEntityFromTable("path_track", {
	    origin = Vector(-6592, -936, 132),
	    targetname = "lighting_stage1_leftentrance_1",
	    orientationtype = 1,
	    angles = QAngle(0, 0, 0),
	    classname = "path_track",
	    hammerid = 3558036
	})

::path_track3558056 <- SpawnEntityFromTable("path_track", {
	    origin = Vector(-7104, -936.01, 132),
	    targetname = "lighting_stage1_leftentrance_2",
	    orientationtype = 1,
	    angles = QAngle(0, 0, 0),
	    classname = "path_track",
	    hammerid = 3558056
	})

::env_lightglow3558369 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6351.4, -5191.32, 8.8928),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 3558369
	})

::light_spot3558371 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6351.66, -5191.42, 5.8928),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 3558371
	})

::light_spot3558381 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6815.66, -5191.42, 5.8928),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 3558381
	})

::env_lightglow3558386 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6815.4, -5191.32, 8.8928),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 3558386
	})

::env_lightglow3558492 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6383.4, -5735.32, 40.8928),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 3558492
	})

::light_spot3558494 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6383.66, -5735.42, 37.8928),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 3558494
	})

::env_lightglow3558512 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5519.4, -6439.32, 8.8928),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 3558512
	})

::light_spot3558514 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5519.66, -6439.42, 5.8928),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 3558514
	})

::info_player_teamspawn3558523 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6396.11, -5315.92, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 120, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558523
	})

::info_player_teamspawn3558525 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6380.69, -5214.63, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 120, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558525
	})

::info_player_teamspawn3558527 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6640, -5280, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558527
	})

::info_player_teamspawn3558529 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6304, -5168, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 120, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558529
	})

::info_player_teamspawn3558531 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6202.12, -5203.92, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 120, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558531
	})

::info_player_teamspawn3558533 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6217.55, -5305.2, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 120, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558533
	})

::info_player_teamspawn3558535 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6300.69, -5353.2, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 120, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558535
	})

::info_player_teamspawn3558537 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6299.12, -5259.92, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 120, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558537
	})

::info_player_teamspawn3558540 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6836.38, -5160.2, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 60, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558540
	})

::info_player_teamspawn3558542 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6923.81, -5183.63, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 60, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558542
	})

::info_player_teamspawn3558544 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6739.39, -5216.2, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 60, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558544
	})

::info_player_teamspawn3558546 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6828.96, -5275.34, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 60, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558546
	})

::info_player_teamspawn3558548 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6916.38, -5298.77, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 60, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558548
	})

::info_player_teamspawn3558550 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6819.39, -5354.77, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 60, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558550
	})

::info_player_teamspawn3558552 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6723.96, -5317.49, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 60, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558552
	})

::light_spot3558625 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6576, -6128, -187.901),
	    style = 0,
	    pitch = 90,
	    angles = QAngle(90, 180, 0),
	    _zero_percent_distance = 256,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 400",
	    _inner_cone = 30,
	    _fifty_percent_distance = 96,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3558625
	})

::light_spot3558635 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6768, -6096, -187.901),
	    style = 0,
	    pitch = 90,
	    angles = QAngle(90, 180, 0),
	    _zero_percent_distance = 256,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 400",
	    _inner_cone = 30,
	    _fifty_percent_distance = 96,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3558635
	})

::light_spot3558645 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6384, -6096, -187.901),
	    style = 0,
	    pitch = 90,
	    angles = QAngle(90, 180, 0),
	    _zero_percent_distance = 256,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 400",
	    _inner_cone = 30,
	    _fifty_percent_distance = 96,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3558645
	})

::light_spot3558738 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5423.99, -6087, -187.901),
	    style = 0,
	    pitch = 90,
	    angles = QAngle(90, 180, 0),
	    _zero_percent_distance = 256,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 400",
	    _inner_cone = 30,
	    _fifty_percent_distance = 96,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3558738
	})

::light_spot3558744 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-7248.18, -5070.7, -75.9933),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 0, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "133 147 167 1500",
	    _inner_cone = 30,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 3558744
	})

::light_spot3558749 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-7292.18, -5070.7, -75.9933),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 0, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "133 147 167 1500",
	    _inner_cone = 30,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 3558749
	})

::point_spotlight3558754 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-7292.76, -5071.03, -76.8863),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "95 77 41",
	    renderamt = 255,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 180, 0),
	    classname = "point_spotlight",
	    hammerid = 3558754
	})

::point_spotlight3558760 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-7248.76, -5071.03, -76.8863),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "95 77 41",
	    renderamt = 255,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 180, 0),
	    classname = "point_spotlight",
	    hammerid = 3558760
	})

::light_spot3558763 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-7437.47, -4839.82, -75.9933),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "133 147 167 1500",
	    _inner_cone = 30,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 3558763
	})

::light_spot3558768 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-7437.47, -4795.82, -75.9933),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "133 147 167 1500",
	    _inner_cone = 30,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 3558768
	})

::point_spotlight3558773 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-7437.8, -4795.24, -76.8863),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "95 77 41",
	    renderamt = 255,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 90, 0),
	    classname = "point_spotlight",
	    hammerid = 3558773
	})

::point_spotlight3558779 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-7437.8, -4839.24, -76.8863),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "95 77 41",
	    renderamt = 255,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 90, 0),
	    classname = "point_spotlight",
	    hammerid = 3558779
	})

::light_spot3558786 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-7229.89, -5367.61, -22.8553),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 3558786
	})

::light_spot3558797 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-7033.72, -5664, 25.4915),
	    spawnflags = 0,
	    pitch = -75.0,
	    angles = QAngle(-75, 0, 90),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 400",
	    _inner_cone = 35,
	    _fifty_percent_distance = 192,
	    _exponent = 1,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 3558797
	})

::env_sprite3558807 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-6567.81, -4854.72, -31.1044),
	    spawnflags = 1,
	    scale = 0.15,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "255 26 26",
	    renderamt = 240,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 3558807
	})

::light3558899 <- SpawnEntityFromTable("light", {
	    origin = Vector(-5351.61, -2848.25, 86.638),
	    _zero_percent_distance = 250,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "97 199 193 16",
	    _fifty_percent_distance = 15,
	    classname = "light",
	    hammerid = 3558899
	})

::env_lightglow3558969 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5896.28, -4992.28, 47.0067),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3558969
	})

::light_spot3558971 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5896.28, -4992.28, 44.0067),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3558971
	})

::light_spot3558977 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6008.28, -5264.28, 44.0067),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 400",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3558977
	})

::env_lightglow3558982 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6008.28, -5264.28, 47.0067),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3558982
	})

	local func_door_brush24 = SpawnEntityFromTable("func_door", {
	    model = "*19",
	    wait = 4,
	    unlocked_sentence = 0,
	    targetname = "door_stage2_blue_spawn1_1",
	    speed = 300,
	    spawnflags = 32,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6240.01, -2291.15, 363.46),
	    movedir = "-90 0 0",
	    loopmovesound = 0,
	    locked_sentence = 0,
	    lip = 4,
	    health = 0,
	    forceclosed = 0,
	    dmg = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    classname = "func_door",
	    hammerid = 3559033,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_door_brush24.KeyValueFromInt("solid", 2)
	func_door_brush24.KeyValueFromString("mins", "0 0 0")
	func_door_brush24.KeyValueFromString("maxs", "1 1 1")

	local trigger_multiple_brush25 = SpawnEntityFromTable("trigger_multiple", {
	    model = "*20",
	    wait = 0,
	    targetname = "trigger_door_respawnroom_stage2_blue1",
	    StartDisabled = 0,
	    spawnflags = 1,
	    origin = Vector(-6237.82, -2364.45, 360.03),
	    filtername = "filter_team_blue",
	    classname = "trigger_multiple",
	    hammerid = 3559036,
	    "OnStartTouch#1": "door_stage2_blue_spawn1_1,Open,,0,-1",
	    "OnEndTouchAll#2": "door_stage2_blue_spawn1_1,Close,,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	trigger_multiple_brush25.KeyValueFromInt("solid", 2)
	trigger_multiple_brush25.KeyValueFromString("mins", "0 0 0")
	trigger_multiple_brush25.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic3559039 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-6239.73, -2317.65, 368.497),
	    targetname = "prop_door_respawnroom_stage2_blue1",
	    StartDisabled = 0,
	    solid = 0,
	    skin = 1,
	    SetBodyGroup = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    parentname = "door_stage2_blue_spawn1_1",
	    model = "models/props_gameplay/door_slide_large_door.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    fadescale = 0,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    angles = QAngle(0, 180, 0),
	    classname = "prop_dynamic",
	    hammerid = 3559039
	})

	local func_respawnroomvisualizer_brush26 = SpawnEntityFromTable("func_respawnroomvisualizer", {
	    model = "*21",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solid_to_enemies = 1,
	    respawnroomname = "respawnroom_stage2_blue1",
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6240.01, -2309.65, 361.32),
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_respawnroomvisualizer",
	    hammerid = 3559043,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_respawnroomvisualizer_brush26.KeyValueFromInt("solid", 2)
	func_respawnroomvisualizer_brush26.KeyValueFromString("mins", "0 0 0")
	func_respawnroomvisualizer_brush26.KeyValueFromString("maxs", "1 1 1")

	local func_regenerate_brush27 = SpawnEntityFromTable("func_regenerate", {
	    model = "*22",
	    TeamNum = 3,
	    associatedmodel = "prop_resupply_blue_1",
	    classname = "func_regenerate",
	    hammerid = 3559047,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_regenerate_brush27.KeyValueFromInt("solid", 2)
	func_regenerate_brush27.KeyValueFromString("mins", "0 0 0")
	func_regenerate_brush27.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic3559049 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-6443.15, -2305, 304.16),
	    targetname = "prop_resupply_blue_1",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 0,
	    SetBodyGroup = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    model = "models/props_gameplay/resupply_locker.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    fadescale = 1,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 0,
	    angles = QAngle(0, 270, 0),
	    classname = "prop_dynamic",
	    hammerid = 3559049
	})

::info_player_teamspawn3559054 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6336, -2520, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559054
	})

::info_player_teamspawn3559056 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6432, -2520, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559056
	})

::info_player_teamspawn3559058 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6448, -2576, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559058
	})

::info_player_teamspawn3559060 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6464, -2640, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559060
	})

::info_player_teamspawn3559062 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6232, -2520, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559062
	})

::info_player_teamspawn3559064 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6429.28, -2728.58, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559064
	})

::info_player_teamspawn3559066 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6376.44, -2646.4, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559066
	})

::info_player_teamspawn3559068 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6300.06, -2649.64, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559068
	})

::info_player_teamspawn3559070 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6272, -2576, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559070
	})

::info_player_teamspawn3559072 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6352, -2576, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 94.321, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559072
	})

::info_player_teamspawn3559074 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6192, -2576, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559074
	})

::info_player_teamspawn3559076 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6272, -2720, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559076
	})

::info_player_teamspawn3559078 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6200, -2720, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559078
	})

::info_player_teamspawn3559080 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6344.98, -2733.64, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559080
	})

::info_player_teamspawn3559082 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6199.87, -2645.64, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559082
	})

::light_spot3559209 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6224, -2448, 430.335),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3559209
	})

::env_lightglow3559214 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6224, -2448, 433.335),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3559214
	})

::light_spot3559221 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6224, -2688, 430.335),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3559221
	})

::env_lightglow3559226 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6224, -2688, 433.335),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3559226
	})

::light_spot3559233 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6448, -2688, 430.335),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3559233
	})

::env_lightglow3559238 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6448, -2688, 433.335),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3559238
	})

::light_spot3559245 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6448, -2448, 430.335),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3559245
	})

::env_lightglow3559250 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6448, -2448, 433.335),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3559250
	})

::point_spotlight3563445 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-5200, 176, 433.007),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "154 154 154",
	    renderamt = 255,
	    mindxlevel = 90,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 180, 0),
	    classname = "point_spotlight",
	    hammerid = 3563445
	})

::light_spot3563447 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5200, 176, 435.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 180, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 25,
	    _fifty_percent_distance = 416,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 3563447
	})

::light_spot3563461 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5580, 528, 478.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3563461
	})

::env_lightglow3563466 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5580, 528, 481.007),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3563466
	})

::light3563469 <- SpawnEntityFromTable("light", {
	    origin = Vector(-5440.25, 224, 268.718),
	    _zero_percent_distance = 250,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "97 199 193 16",
	    _fifty_percent_distance = 15,
	    classname = "light",
	    hammerid = 3563469
	})

::light_spot3563483 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6152.67, 561.33, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 3563483
	})

::light_spot3563493 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5582, 534, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3563493
	})

::light_spot3563503 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6464.67, 481.33, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3563503
	})

::light_spot3563522 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5864.67, 561.33, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 3563522
	})

::light_spot3563532 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6736, 392, 236.335),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3563532
	})

::env_lightglow3563537 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6736, 392, 239.335),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3563537
	})

::light_spot3563544 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6960, 384, 236.335),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3563544
	})

::env_lightglow3563549 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6960, 384, 239.335),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3563549
	})

::light_spot3563556 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5328.67, 224.33, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 3563556
	})

::light_spot3563566 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5336, -152.3, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 3563566
	})

::light_spot3563701 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5429.72, 536, 428.109),
	    spawnflags = 0,
	    pitch = -75.0,
	    angles = QAngle(-75, 0, 90),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 400",
	    _inner_cone = 35,
	    _fifty_percent_distance = 192,
	    _exponent = 1,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 3563701
	})

	local func_illusionary_brush28 = SpawnEntityFromTable("func_illusionary", {
	    model = "*23",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6481.75, 479.24, 467),
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_illusionary",
	    hammerid = 3563713,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_illusionary_brush28.KeyValueFromInt("solid", 2)
	func_illusionary_brush28.KeyValueFromString("mins", "0 0 0")
	func_illusionary_brush28.KeyValueFromString("maxs", "1 1 1")

::light3563832 <- SpawnEntityFromTable("light", {
	    origin = Vector(-6015.82, 545.57, 248.75),
	    _zero_percent_distance = 250,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "97 199 193 16",
	    _fifty_percent_distance = 15,
	    classname = "light",
	    hammerid = 3563832
	})

::point_spotlight3563842 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-6320, 32, 465.007),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "154 154 154",
	    renderamt = 255,
	    mindxlevel = 90,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 180, 0),
	    classname = "point_spotlight",
	    hammerid = 3563842
	})

::light_spot3563844 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6320, 32, 467.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 180, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 25,
	    _fifty_percent_distance = 416,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 3563844
	})

::point_spotlight3563854 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-6032, 128, 465.007),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "154 154 154",
	    renderamt = 255,
	    mindxlevel = 90,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 180, 0),
	    classname = "point_spotlight",
	    hammerid = 3563854
	})

::light_spot3563856 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6032, 128, 467.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 180, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 25,
	    _fifty_percent_distance = 416,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 3563856
	})

::point_spotlight3563866 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-5744, 80, 465.007),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "154 154 154",
	    renderamt = 255,
	    mindxlevel = 90,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 180, 0),
	    classname = "point_spotlight",
	    hammerid = 3563866
	})

::light_spot3563868 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5744, 80, 467.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 180, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 25,
	    _fifty_percent_distance = 416,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 3563868
	})

::light_spot3565346 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6168.67, 816.33, 457.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3565346
	})

::light_spot3565356 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5864.67, 816.33, 457.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3565356
	})

::env_sprite3565379 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-5835.1, 676.28, 317.868),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 3565379
	})

::env_sprite3565382 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-5810.98, 676.28, 349.435),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 3565382
	})

::env_sprite3565385 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-5879.05, 676.28, 349.76),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 3565385
	})

::env_sprite3565388 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-5879.05, 676.28, 343.76),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 3565388
	})

::env_sprite3565419 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-6271, 676, 349),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 3565419
	})

::light_spot3565479 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6776.67, 809.33, 473.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3565479
	})

::light_spot3565880 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5202.67, 776.33, 265.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 3565880
	})

::light_spot3565890 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5338.67, 776.33, 265.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 3565890
	})

::light_spot3565900 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6016.67, 801.33, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3565900
	})

::light_spot3565954 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6464.67, 720.33, 537.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3565954
	})

::info_player_teamspawn3742960 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-7243.49, 167.28, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742960
	})

::info_player_teamspawn3742962 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-7240.11, 238.72, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742962
	})

::info_player_teamspawn3742964 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-7248.33, 328.03, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742964
	})

::info_player_teamspawn3742966 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-7315.72, 256.59, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742966
	})

::info_player_teamspawn3742968 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-7475.87, 331.47, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742968
	})

::info_player_teamspawn3742970 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-7473.44, 242.16, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742970
	})

::info_player_teamspawn3742972 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-7456.48, 152.85, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742972
	})

::info_player_teamspawn3742974 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-7386.68, 258.16, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742974
	})

::info_player_teamspawn3742976 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-7433.47, 286.07, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742976
	})

::info_player_teamspawn3742978 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-7401.56, 326.88, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742978
	})

::info_player_teamspawn3742980 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-7417.53, 203.64, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742980
	})

::info_player_teamspawn3742982 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-7358.12, 203.64, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742982
	})

::info_player_teamspawn3742984 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-7358.15, 326.88, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742984
	})

::info_player_teamspawn3742986 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-7298.74, 326.88, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742986
	})

::info_player_teamspawn3742988 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-7298.74, 200.58, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742988
	})

::info_player_teamspawn3742991 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-4808.51, 2440.72, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742991
	})

::info_player_teamspawn3742993 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-4811.89, 2369.28, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742993
	})

::info_player_teamspawn3742995 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-4819.67, 2279.97, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742995
	})

::info_player_teamspawn3742997 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-4736.28, 2351.41, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742997
	})

::info_player_teamspawn3742999 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-4576.14, 2276.53, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742999
	})

::info_player_teamspawn3743001 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-4578.56, 2365.84, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3743001
	})

::info_player_teamspawn3743003 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-4595.52, 2455.15, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3743003
	})

::info_player_teamspawn3743005 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-4665.32, 2349.84, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3743005
	})

::info_player_teamspawn3743007 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-4618.53, 2305.93, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3743007
	})

::info_player_teamspawn3743009 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-4650.44, 2281.12, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3743009
	})

::info_player_teamspawn3743011 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-4634.47, 2404.36, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3743011
	})

::info_player_teamspawn3743013 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-4709.88, 2404.36, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3743013
	})

::info_player_teamspawn3743015 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-4709.85, 2281.12, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3743015
	})

::info_player_teamspawn3743017 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-4769.26, 2281.12, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3743017
	})

::info_player_teamspawn3743019 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-4769.26, 2407.42, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3743019
	})

	local func_door_brush29 = SpawnEntityFromTable("func_door", {
	    model = "*24",
	    wait = 4,
	    unlocked_sentence = 0,
	    targetname = "door_stage3_blue_spawn1_2",
	    speed = 300,
	    spawnflags = 32,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-4232.1, 3223.15, 91.46),
	    movedir = "-90 0 0",
	    loopmovesound = 0,
	    locked_sentence = 0,
	    lip = 4,
	    health = 0,
	    forceclosed = 0,
	    dmg = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    classname = "func_door",
	    hammerid = 3758929,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_door_brush29.KeyValueFromInt("solid", 2)
	func_door_brush29.KeyValueFromString("mins", "0 0 0")
	func_door_brush29.KeyValueFromString("maxs", "1 1 1")

	local trigger_multiple_brush30 = SpawnEntityFromTable("trigger_multiple", {
	    model = "*25",
	    wait = 0,
	    targetname = "trigger_door_respawnroom_stage3_blue2",
	    StartDisabled = 0,
	    spawnflags = 1,
	    origin = Vector(-4224, 3216, 88.47),
	    filtername = "filter_team_blue",
	    classname = "trigger_multiple",
	    hammerid = 3758932,
	    "OnStartTouch#1": "door_stage3_blue_spawn1_2,Open,,0,-1",
	    "OnEndTouchAll#2": "door_stage3_blue_spawn1_2,Close,,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	trigger_multiple_brush30.KeyValueFromInt("solid", 2)
	trigger_multiple_brush30.KeyValueFromString("mins", "0 0 0")
	trigger_multiple_brush30.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic3758935 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-4209.63, 3201.07, 96.497),
	    targetname = "prop_door_respawnroom_stage3_blue2",
	    StartDisabled = 0,
	    solid = 0,
	    skin = 1,
	    SetBodyGroup = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    parentname = "door_stage3_blue_spawn1_2",
	    model = "models/props_gameplay/door_slide_large_door.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    fadescale = 0,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    angles = QAngle(0, 225, 0),
	    classname = "prop_dynamic",
	    hammerid = 3758935
	})

	local func_respawnroomvisualizer_brush31 = SpawnEntityFromTable("func_respawnroomvisualizer", {
	    model = "*26",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solid_to_enemies = 1,
	    respawnroomname = "respawnroom_stage3_blue1",
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-4215.49, 3206.53, 89.32),
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_respawnroomvisualizer",
	    hammerid = 3758939,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_respawnroomvisualizer_brush31.KeyValueFromInt("solid", 2)
	func_respawnroomvisualizer_brush31.KeyValueFromString("mins", "0 0 0")
	func_respawnroomvisualizer_brush31.KeyValueFromString("maxs", "1 1 1")

::light_spot3759045 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-4144.34, 2815.42, 293.893),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 3759045
	})

::env_lightglow3759050 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-4144.6, 2815.32, 296.893),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3759050
	})

	local func_regenerate_brush32 = SpawnEntityFromTable("func_regenerate", {
	    model = "*27",
	    TeamNum = 3,
	    associatedmodel = "prop_resupply_blue_3",
	    classname = "func_regenerate",
	    hammerid = 3759100,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_regenerate_brush32.KeyValueFromInt("solid", 2)
	func_regenerate_brush32.KeyValueFromString("mins", "0 0 0")
	func_regenerate_brush32.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic3759102 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-4595.15, 2991, 64.25),
	    targetname = "prop_resupply_blue_3",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 0,
	    SetBodyGroup = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    model = "models/props_gameplay/resupply_locker.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    fadescale = 1,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 0,
	    angles = QAngle(0, 270, 0),
	    classname = "prop_dynamic",
	    hammerid = 3759102
	})

::light_spot3759194 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-4672.34, 2431.42, 301.893),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 3759194
	})

::env_lightglow3759199 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-4672.6, 2431.32, 304.893),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3759199
	})

::light_spot3759206 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-4672.34, 2815.42, 285.893),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 3759206
	})

::env_lightglow3759211 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-4672.6, 2815.32, 288.893),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3759211
	})

	local func_door_brush33 = SpawnEntityFromTable("func_door", {
	    model = "*28",
	    wait = 4,
	    unlocked_sentence = 0,
	    targetname = "door_stage3_blue_spawn1_1",
	    speed = 300,
	    spawnflags = 32,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-4808.01, 3020.85, 123.46),
	    movedir = "-90 0 0",
	    loopmovesound = 0,
	    locked_sentence = 0,
	    lip = 4,
	    health = 0,
	    forceclosed = 0,
	    dmg = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    classname = "func_door",
	    hammerid = 3772286,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_door_brush33.KeyValueFromInt("solid", 2)
	func_door_brush33.KeyValueFromString("mins", "0 0 0")
	func_door_brush33.KeyValueFromString("maxs", "1 1 1")

	local trigger_multiple_brush34 = SpawnEntityFromTable("trigger_multiple", {
	    model = "*29",
	    wait = 0,
	    targetname = "trigger_door_respawnroom_stage3_blue1",
	    StartDisabled = 0,
	    spawnflags = 1,
	    origin = Vector(-4805.82, 2947.55, 120.03),
	    filtername = "filter_team_blue",
	    classname = "trigger_multiple",
	    hammerid = 3772289,
	    "OnStartTouch#1": "door_stage3_blue_spawn1_1,Open,,0,-1",
	    "OnEndTouchAll#2": "door_stage3_blue_spawn1_1,Close,,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	trigger_multiple_brush34.KeyValueFromInt("solid", 2)
	trigger_multiple_brush34.KeyValueFromString("mins", "0 0 0")
	trigger_multiple_brush34.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic3772292 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-4807.73, 2994.35, 128.497),
	    targetname = "prop_door_respawnroom_stage3_blue1",
	    StartDisabled = 0,
	    solid = 0,
	    skin = 1,
	    SetBodyGroup = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    parentname = "door_stage3_blue_spawn1_1",
	    model = "models/props_gameplay/door_slide_large_door.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    fadescale = 0,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    angles = QAngle(0, 180, 0),
	    classname = "prop_dynamic",
	    hammerid = 3772292
	})

	local func_respawnroomvisualizer_brush35 = SpawnEntityFromTable("func_respawnroomvisualizer", {
	    model = "*30",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solid_to_enemies = 1,
	    respawnroomname = "respawnroom_stage3_blue1",
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-4808.01, 3002.35, 121.32),
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_respawnroomvisualizer",
	    hammerid = 3772296,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_respawnroomvisualizer_brush35.KeyValueFromInt("solid", 2)
	func_respawnroomvisualizer_brush35.KeyValueFromString("mins", "0 0 0")
	func_respawnroomvisualizer_brush35.KeyValueFromString("maxs", "1 1 1")

	local func_door_brush36 = SpawnEntityFromTable("func_door", {
	    model = "*31",
	    wait = 4,
	    unlocked_sentence = 0,
	    targetname = "door_stage3_red_spawn1_2",
	    speed = 300,
	    spawnflags = 32,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-7799.9, -535.15, 91.46),
	    movedir = "-90 0 0",
	    loopmovesound = 0,
	    locked_sentence = 0,
	    lip = 4,
	    health = 0,
	    forceclosed = 0,
	    dmg = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    classname = "func_door",
	    hammerid = 3773864,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_door_brush36.KeyValueFromInt("solid", 2)
	func_door_brush36.KeyValueFromString("mins", "0 0 0")
	func_door_brush36.KeyValueFromString("maxs", "1 1 1")

	local trigger_multiple_brush37 = SpawnEntityFromTable("trigger_multiple", {
	    model = "*32",
	    wait = 0,
	    targetname = "trigger_door_respawnroom_stage3_red2",
	    StartDisabled = 0,
	    spawnflags = 1,
	    origin = Vector(-7808, -528, 88.47),
	    filtername = "filter_team_red",
	    classname = "trigger_multiple",
	    hammerid = 3773867,
	    "OnStartTouch#1": "door_stage3_red_spawn1_2,Open,,0,-1",
	    "OnEndTouchAll#2": "door_stage3_red_spawn1_2,Close,,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	trigger_multiple_brush37.KeyValueFromInt("solid", 2)
	trigger_multiple_brush37.KeyValueFromString("mins", "0 0 0")
	trigger_multiple_brush37.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic3773870 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-7822.37, -513.071, 96.497),
	    targetname = "prop_door_respawnroom_stage3_red2",
	    StartDisabled = 0,
	    solid = 0,
	    skin = 1,
	    SetBodyGroup = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    parentname = "door_stage3_red_spawn1_2",
	    model = "models/props_gameplay/door_slide_large_door.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    fadescale = 0,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    angles = QAngle(0, 45, 0),
	    classname = "prop_dynamic",
	    hammerid = 3773870
	})

	local func_respawnroomvisualizer_brush38 = SpawnEntityFromTable("func_respawnroomvisualizer", {
	    model = "*33",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solid_to_enemies = 1,
	    respawnroomname = "respawnroom_stage3_red1",
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-7816.51, -518.53, 89.32),
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_respawnroomvisualizer",
	    hammerid = 3773874,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_respawnroomvisualizer_brush38.KeyValueFromInt("solid", 2)
	func_respawnroomvisualizer_brush38.KeyValueFromString("mins", "0 0 0")
	func_respawnroomvisualizer_brush38.KeyValueFromString("maxs", "1 1 1")

	local func_door_brush39 = SpawnEntityFromTable("func_door", {
	    model = "*34",
	    wait = 4,
	    unlocked_sentence = 0,
	    targetname = "door_stage3_red_spawn1_1",
	    speed = 300,
	    spawnflags = 32,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-7223.99, -332.85, 123.46),
	    movedir = "-90 0 0",
	    loopmovesound = 0,
	    locked_sentence = 0,
	    lip = 4,
	    health = 0,
	    forceclosed = 0,
	    dmg = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    classname = "func_door",
	    hammerid = 3773886,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_door_brush39.KeyValueFromInt("solid", 2)
	func_door_brush39.KeyValueFromString("mins", "0 0 0")
	func_door_brush39.KeyValueFromString("maxs", "1 1 1")

	local trigger_multiple_brush40 = SpawnEntityFromTable("trigger_multiple", {
	    model = "*35",
	    wait = 0,
	    targetname = "trigger_door_respawnroom_stage3_red1",
	    StartDisabled = 0,
	    spawnflags = 1,
	    origin = Vector(-7226.18, -259.55, 120.03),
	    filtername = "filter_team_red",
	    classname = "trigger_multiple",
	    hammerid = 3773889,
	    "OnStartTouch#1": "door_stage3_red_spawn1_1,Open,,0,-1",
	    "OnEndTouchAll#2": "door_stage3_red_spawn1_1,Close,,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	trigger_multiple_brush40.KeyValueFromInt("solid", 2)
	trigger_multiple_brush40.KeyValueFromString("mins", "0 0 0")
	trigger_multiple_brush40.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic3773892 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-7224.27, -306.351, 128.497),
	    targetname = "prop_door_respawnroom_stage3_red1",
	    StartDisabled = 0,
	    solid = 0,
	    skin = 1,
	    SetBodyGroup = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    parentname = "door_stage3_red_spawn1_1",
	    model = "models/props_gameplay/door_slide_large_door.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    fadescale = 0,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    angles = QAngle(0, 0, 0),
	    classname = "prop_dynamic",
	    hammerid = 3773892
	})

	local func_respawnroomvisualizer_brush41 = SpawnEntityFromTable("func_respawnroomvisualizer", {
	    model = "*36",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solid_to_enemies = 1,
	    respawnroomname = "respawnroom_stage3_red1",
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-7223.99, -314.35, 121.32),
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_respawnroomvisualizer",
	    hammerid = 3773896,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_respawnroomvisualizer_brush41.KeyValueFromInt("solid", 2)
	func_respawnroomvisualizer_brush41.KeyValueFromString("mins", "0 0 0")
	func_respawnroomvisualizer_brush41.KeyValueFromString("maxs", "1 1 1")

::light_spot3774027 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-7359.66, -127.42, 285.893),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 3774027
	})

::env_lightglow3774032 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-7359.4, -127.32, 288.893),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 3774032
	})

::light_spot3774049 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-7343.66, 256.58, 300.893),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 3774049
	})

::env_lightglow3774054 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-7343.4, 256.68, 303.893),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 3774054
	})

::light_spot3774061 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-7887.66, -127.42, 293.893),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 3774061
	})

::env_lightglow3774066 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-7887.4, -127.32, 296.893),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 3774066
	})

::light_spot3786801 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6399.33, 798.67, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3786801
	})

::light_spot3786821 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6855.33, 1318.67, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3786821
	})

::env_sprite3799479 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-6750.9, 1723.72, 317.868),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 3799479
	})

::env_sprite3799482 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-6775.02, 1723.72, 349.435),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 3799482
	})

::env_sprite3799485 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-6706.95, 1723.72, 349.76),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 3799485
	})

::env_sprite3799488 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-6706.95, 1723.72, 343.76),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 3799488
	})

::light3801269 <- SpawnEntityFromTable("light", {
	    origin = Vector(-4196, 3192, 186.712),
	    _zero_percent_distance = 250,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "97 199 193 16",
	    _fifty_percent_distance = 15,
	    classname = "light",
	    hammerid = 3801269
	})

::light3801373 <- SpawnEntityFromTable("light", {
	    origin = Vector(-4807.94, 2984.1, 218.712),
	    _zero_percent_distance = 250,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "97 199 193 16",
	    _fifty_percent_distance = 15,
	    classname = "light",
	    hammerid = 3801373
	})

::light_spot3854827 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6463.33, 1967.67, 537.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3854827
	})

::light_spot3854967 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5568.67, 720.33, 537.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3854967
	})

::light_spot4000729 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6783.33, 1878.67, 473.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 4000729
	})

::light_spot4002631 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5256.67, 809.33, 473.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 4002631
	})

::env_sprite4005416 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-6741.1, 1748.28, 317.868),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 4005416
	})

::env_sprite4005419 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-6716.98, 1748.28, 349.435),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 4005419
	})

::env_sprite4005422 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-6785.05, 1748.28, 349.76),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 4005422
	})

::env_sprite4005425 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-6785.05, 1748.28, 343.76),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 4005425
	})

::env_sprite4005541 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-5294.9, 939.719, 317.868),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 4005541
	})

::env_sprite4005544 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-5319.02, 939.719, 349.435),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 4005544
	})

::env_sprite4005547 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-5250.95, 939.719, 349.76),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 4005547
	})

::env_sprite4005550 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-5250.95, 939.719, 343.76),
	    spawnflags = 1,
	    scale = 0.02,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 120,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 4005550
	})

::light_spot4006249 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6399.33, 1886.67, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 4006249
	})

::light_spot4006729 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5631.33, 798.67, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 4006729
	})

::light_spot4019714 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6015.33, 1342.67, 73.0125),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 4019714
	})

::info_player_start980239 <- SpawnEntityFromTable("info_player_start", {
	    origin = Vector(-5549.3, 3409.54, 96.8973),
	    angles = QAngle(0, 0, 0),
	    classname = "info_player_start",
	    hammerid = 980239
	})

::info_player_start980253 <- SpawnEntityFromTable("info_player_start", {
	    origin = Vector(-5103.88, 3618.05, 32.8973),
	    angles = QAngle(0, 0, 0),
	    classname = "info_player_start",
	    hammerid = 980253
	})

::info_player_start980255 <- SpawnEntityFromTable("info_player_start", {
	    origin = Vector(-6223.2, 3589.81, 32.8973),
	    angles = QAngle(0, 0, 0),
	    classname = "info_player_start",
	    hammerid = 980255
	})

::info_player_start980282 <- SpawnEntityFromTable("info_player_start", {
	    origin = Vector(-5052.35, 3145.08, 32.8973),
	    angles = QAngle(0, 0, 0),
	    classname = "info_player_start",
	    hammerid = 980282
	})

::info_player_start1009577 <- SpawnEntityFromTable("info_player_start", {
	    origin = Vector(-5686.75, 2501.63, 96.8973),
	    angles = QAngle(0, 0, 0),
	    classname = "info_player_start",
	    hammerid = 1009577
	})

::info_player_teamspawn1083400 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6016.41, 5792.04, 97),
	    angles = QAngle(0, 0, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1083400
	})

::info_player_teamspawn1083420 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-4323.9, 4930.02, 33),
	    angles = QAngle(0, 0, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1083420
	})

::prop_physics_multiplayer1149796 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-6207.03, 7200, -95.5),
	    spawnflags = 9,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physicsmode = 0,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/orange_cone001.mdl",
	    minhealthdmg = 0,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 1,
	    fademindist = -1.0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(0, 185.5, 0),
	    classname = "prop_physics_multiplayer",
	    hammerid = 1149796
	})

::logic_relay"OnTrigger#2": "door_blu_stage1*,Open,,0,-1" <- SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-4240, 4632, 456),
	    targetname = "relay_stage1_gates",
	    StartDisabled = 0,
	    spawnflags = 0,
	    classname = "logic_relay",
	    hammerid = 1202602,
	    "OnTrigger#1": "door_stage1_gate1*,Open,,0,-1",
	    "OnTrigger#2": "door_blu_stage1*,Open,,0,-1"
	})

::env_fog_controller1219204 <- SpawnEntityFromTable("env_fog_controller", {
	    origin = Vector(-4256, 4608, 392),
	    use_angles = 0,
	    targetname = "fog_controller",
	    spawnflags = 0,
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    fogstart = 100,
	    fogmaxdensity = 1,
	    foglerptime = 2,
	    fogend = 11000,
	    fogenable = 1,
	    fogdir = "1 0 0",
	    fogcolor2 = "255 255 255",
	    fogcolor = "120 133 158",
	    fogblend = 0,
	    farz = -1.0,
	    angles = QAngle(0, 0, 0),
	    classname = "env_fog_controller",
	    hammerid = 1219204
	})

::shadow_control1219206 <- SpawnEntityFromTable("shadow_control", {
	    origin = Vector(-4256, 4560, 392),
	    targetname = "shadow_control",
	    distance = 48,
	    disableallshadows = 0,
	    color = "109 121 152",
	    angles = QAngle(50, 212, 0),
	    classname = "shadow_control",
	    hammerid = 1219206
	})

::light_environment1219208 <- SpawnEntityFromTable("light_environment", {
	    origin = Vector(-4256, 4536, 392),
	    SunSpreadAngle = 0,
	    pitch = -30.0,
	    angles = QAngle(-30, 180, 0),
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "253 243 208 500",
	    _AmbientScaleHDR = 1,
	    _ambientHDR = "-1 -1 -1 1",
	    _ambient = "124 138 203 500",
	    classname = "light_environment",
	    hammerid = 1219208
	})

::item_healthkit_medium1241348 <- SpawnEntityFromTable("item_healthkit_medium", {
	    origin = Vector(-4584, 5936, 82.2562),
	    angles = QAngle(0, 0, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 1241348
	})

::item_ammopack_full1241350 <- SpawnEntityFromTable("item_ammopack_full", {
	    origin = Vector(-4584, 6000, 82.2562),
	    angles = QAngle(0, 0, 0),
	    classname = "item_ammopack_full",
	    hammerid = 1241350
	})

::item_healthkit_medium1259531 <- SpawnEntityFromTable("item_healthkit_medium", {
	    origin = Vector(-6688, 2288, 96.2562),
	    angles = QAngle(0, 90, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 1259531
	})

::item_ammopack_full1269792 <- SpawnEntityFromTable("item_ammopack_full", {
	    origin = Vector(-5712, 5808, 112),
	    angles = QAngle(0, 270, 0),
	    classname = "item_ammopack_full",
	    hammerid = 1269792
	})

::item_healthkit_medium1269806 <- SpawnEntityFromTable("item_healthkit_medium", {
	    origin = Vector(-4600, 3296, 40.2562),
	    angles = QAngle(0, 270, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 1269806
	})

::item_ammopack_medium1269808 <- SpawnEntityFromTable("item_ammopack_medium", {
	    origin = Vector(-4544, 3296, 40.2562),
	    angles = QAngle(0, 270, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 1269808
	})

::item_healthkit_medium1269826 <- SpawnEntityFromTable("item_healthkit_medium", {
	    origin = Vector(-6048, 3560, 48.2562),
	    angles = QAngle(0, 270, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 1269826
	})

::item_ammopack_medium1269828 <- SpawnEntityFromTable("item_ammopack_medium", {
	    origin = Vector(-5984, 3560, 48.2562),
	    angles = QAngle(0, 270, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 1269828
	})

::item_ammopack_medium1280859 <- SpawnEntityFromTable("item_ammopack_medium", {
	    origin = Vector(-6048, 5072, -88),
	    angles = QAngle(0, 270, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 1280859
	})

::item_healthkit_medium1280861 <- SpawnEntityFromTable("item_healthkit_medium", {
	    origin = Vector(-5984, 5072, -88),
	    angles = QAngle(0, 270, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 1280861
	})

::prop_physics_multiplayer1404682 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-5429.35, 6642.97, -96),
	    spawnflags = 260,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physicsmode = 3,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/orange_cone001.mdl",
	    minhealthdmg = 0,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 0.5,
	    fademindist = -1.0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(0, 277.5, 0),
	    classname = "prop_physics_multiplayer",
	    hammerid = 1404682
	})

::prop_physics_multiplayer1404686 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-5472.13, 6891.3, -96),
	    spawnflags = 260,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physicsmode = 3,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/orange_cone001.mdl",
	    minhealthdmg = 0,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 0.5,
	    fademindist = -1.0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(0, 156, 0),
	    classname = "prop_physics_multiplayer",
	    hammerid = 1404686
	})

::prop_physics_multiplayer1411596 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-5429.65, 6152.9, -95.75),
	    spawnflags = 260,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physicsmode = 3,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/orange_cone001.mdl",
	    minhealthdmg = 0,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 0.5,
	    fademindist = -1.0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(0, 156, 0),
	    classname = "prop_physics_multiplayer",
	    hammerid = 1411596
	})

::item_healthkit_medium1424192 <- SpawnEntityFromTable("item_healthkit_medium", {
	    origin = Vector(-6004.9, 4442.93, -143.288),
	    angles = QAngle(0, 270, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 1424192
	})

	local func_areaportal_brush42 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 5,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1424871,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush42.KeyValueFromInt("solid", 2)
	func_areaportal_brush42.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush42.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush43 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 6,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1424879,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush43.KeyValueFromInt("solid", 2)
	func_areaportal_brush43.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush43.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush44 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 7,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1424901,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush44.KeyValueFromInt("solid", 2)
	func_areaportal_brush44.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush44.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush45 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 8,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1424940,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush45.KeyValueFromInt("solid", 2)
	func_areaportal_brush45.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush45.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush46 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 9,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1424947,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush46.KeyValueFromInt("solid", 2)
	func_areaportal_brush46.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush46.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush47 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 10,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1424954,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush47.KeyValueFromInt("solid", 2)
	func_areaportal_brush47.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush47.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush48 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 11,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1424961,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush48.KeyValueFromInt("solid", 2)
	func_areaportal_brush48.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush48.KeyValueFromString("maxs", "1 1 1")

::info_player_start1523242 <- SpawnEntityFromTable("info_player_start", {
	    origin = Vector(-5944.9, 1060.52, -95),
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_start",
	    hammerid = 1523242
	})

::info_player_start1523244 <- SpawnEntityFromTable("info_player_start", {
	    origin = Vector(-6402.6, 1043.7, -95),
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_start",
	    hammerid = 1523244
	})

::info_player_start1523252 <- SpawnEntityFromTable("info_player_start", {
	    origin = Vector(-5491.4, 1679.09, 97),
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_start",
	    hammerid = 1523252
	})

::info_player_start1523270 <- SpawnEntityFromTable("info_player_start", {
	    origin = Vector(-5276.7, 1826.25, 97),
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_start",
	    hammerid = 1523270
	})

::info_player_start1523276 <- SpawnEntityFromTable("info_player_start", {
	    origin = Vector(-5513.4, 1739.49, -95),
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_start",
	    hammerid = 1523276
	})

::info_player_start1523278 <- SpawnEntityFromTable("info_player_start", {
	    origin = Vector(-5820.1, 1944.58, 97),
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_start",
	    hammerid = 1523278
	})

	local func_areaportal_brush49 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 12,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1530344,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush49.KeyValueFromInt("solid", 2)
	func_areaportal_brush49.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush49.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush50 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 13,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1530372,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush50.KeyValueFromInt("solid", 2)
	func_areaportal_brush50.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush50.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush51 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 14,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1530406,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush51.KeyValueFromInt("solid", 2)
	func_areaportal_brush51.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush51.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush52 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 15,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1530418,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush52.KeyValueFromInt("solid", 2)
	func_areaportal_brush52.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush52.KeyValueFromString("maxs", "1 1 1")

::item_ammopack_medium1531988 <- SpawnEntityFromTable("item_ammopack_medium", {
	    origin = Vector(-5480, 2268, 292.256),
	    angles = QAngle(0, 0, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 1531988
	})

::item_healthkit_medium1531990 <- SpawnEntityFromTable("item_healthkit_medium", {
	    origin = Vector(-5480, 2204, 292.256),
	    angles = QAngle(0, 0, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 1531990
	})

::light_spot1552492 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6015.33, 2118.67, 449.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 1552492
	})

	local func_brush_brush53 = SpawnEntityFromTable("func_brush", {
	    model = "*37",
	    vrad_brush_cast_shadows = 0,
	    targetname = "brush_stage2_sneakyroutedoor1",
	    StartDisabled = 1,
	    spawnflags = 2,
	    Solidity = 0,
	    solidbsp = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6016, 2032, 352),
	    invert_exclusion = 0,
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_brush",
	    hammerid = 1562701,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_brush_brush53.KeyValueFromInt("solid", 2)
	func_brush_brush53.KeyValueFromString("mins", "0 0 0")
	func_brush_brush53.KeyValueFromString("maxs", "1 1 1")

::light_spot1708448 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6651.8, 1856.63, 556.078),
	    style = 0,
	    spawnflags = 0,
	    pitch = 85,
	    angles = QAngle(85, 180, 0),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "215 231 255 500",
	    _inner_cone = 15,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 35,
	    classname = "light_spot",
	    hammerid = 1708448
	})

	local func_areaportal_brush54 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 16,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1768474,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush54.KeyValueFromInt("solid", 2)
	func_areaportal_brush54.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush54.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush55 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 17,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1768488,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush55.KeyValueFromInt("solid", 2)
	func_areaportal_brush55.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush55.KeyValueFromString("maxs", "1 1 1")

::item_ammopack_medium1781237 <- SpawnEntityFromTable("item_ammopack_medium", {
	    origin = Vector(-5385.88, 1783.13, 288.256),
	    angles = QAngle(0, 90, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 1781237
	})

::item_healthkit_small1781239 <- SpawnEntityFromTable("item_healthkit_small", {
	    origin = Vector(-5345.88, 1783.13, 288.256),
	    angles = QAngle(0, 90, 0),
	    classname = "item_healthkit_small",
	    hammerid = 1781239
	})

::info_player_teamspawn1781834 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5993.21, 1592.66, -95),
	    angles = QAngle(0, 0, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1781834
	})

	local func_areaportal_brush56 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 18,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1794236,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush56.KeyValueFromInt("solid", 2)
	func_areaportal_brush56.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush56.KeyValueFromString("maxs", "1 1 1")

::light_spot1414606 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5680.34, 7327.42, 1.4048),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 1414606
	})

::env_lightglow1414611 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5680.6, 7327.32, 4.4048),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 1414611
	})

::light_spot1248487 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6016, 7376, 28.0067),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 1248487
	})

::env_lightglow1248492 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6016, 7376, 31.0067),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 1248492
	})

	local func_respawnroom_brush57 = SpawnEntityFromTable("func_respawnroom", {
	    model = "*38",
	    TeamNum = 2,
	    targetname = "respawnroom_stage1_red",
	    StartDisabled = 0,
	    classname = "func_respawnroom",
	    hammerid = 1401327,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_respawnroom_brush57.KeyValueFromInt("solid", 2)
	func_respawnroom_brush57.KeyValueFromString("mins", "0 0 0")
	func_respawnroom_brush57.KeyValueFromString("maxs", "1 1 1")

	local func_regenerate_brush58 = SpawnEntityFromTable("func_regenerate", {
	    model = "*39",
	    TeamNum = 2,
	    associatedmodel = "prop_resupply_red_2",
	    classname = "func_regenerate",
	    hammerid = 1195061,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_regenerate_brush58.KeyValueFromInt("solid", 2)
	func_regenerate_brush58.KeyValueFromString("mins", "0 0 0")
	func_regenerate_brush58.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic1195063 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-5328.85, 7505, -191.84),
	    targetname = "prop_resupply_red_2",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 0,
	    SetBodyGroup = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    model = "models/props_gameplay/resupply_locker.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    fadescale = 1,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    angles = QAngle(0, 90, 0),
	    classname = "prop_dynamic",
	    hammerid = 1195063
	})

	local func_respawnroomvisualizer_brush59 = SpawnEntityFromTable("func_respawnroomvisualizer", {
	    model = "*40",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solid_to_enemies = 1,
	    respawnroomname = "respawnroom_stage1_red",
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6269.77, 7557.77, -21.35),
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_respawnroomvisualizer",
	    hammerid = 1418987,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_respawnroomvisualizer_brush59.KeyValueFromInt("solid", 2)
	func_respawnroomvisualizer_brush59.KeyValueFromString("mins", "0 0 0")
	func_respawnroomvisualizer_brush59.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic1206598 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-6275.93, 7551.25, 24.073),
	    targetname = "prop_door_blu_stage1_gate1_3a",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 0,
	    SetBodyGroup = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    parentname = "door_blu_stage1_gate1_3a",
	    model = "models/props_gameplay/door_grate003_top.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    fadescale = 0,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    angles = QAngle(0, 225, 0),
	    classname = "prop_dynamic",
	    hammerid = 1206598
	})

::prop_dynamic1206602 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-6275.93, 7551.25, -55.927),
	    targetname = "prop_door_blu_stage1_gate1_3b",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 0,
	    SetBodyGroup = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    parentname = "door_blu_stage1_gate1_3b",
	    model = "models/props_gameplay/door_grate003_bottom.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    fadescale = 0,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    angles = QAngle(0, 225, 0),
	    classname = "prop_dynamic",
	    hammerid = 1206602
	})

	local func_door_brush60 = SpawnEntityFromTable("func_door", {
	    model = "*41",
	    wait = -1.0,
	    unlocked_sentence = 0,
	    targetname = "door_blu_stage1_gate1_3b",
	    speed = 175,
	    spawnflags = 0,
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6270.98, 7556.2, -57.66),
	    movedir = "90 0 0",
	    loopmovesound = 0,
	    locked_sentence = 0,
	    lip = 0,
	    ignoredebris = 0,
	    health = 0,
	    forceclosed = 0,
	    dmg = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_door",
	    hammerid = 1206606,
	    "OnFullyOpen#1": "prop_door_stage1_gate1_3b,Disable,,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_door_brush60.KeyValueFromInt("solid", 2)
	func_door_brush60.KeyValueFromString("mins", "0 0 0")
	func_door_brush60.KeyValueFromString("maxs", "1 1 1")

	local func_door_brush61 = SpawnEntityFromTable("func_door", {
	    model = "*42",
	    wait = -1.0,
	    unlocked_sentence = 0,
	    targetname = "door_blu_stage1_gate1_3a",
	    speed = 175,
	    spawnflags = 0,
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6270.98, 7556.2, 28.43),
	    movedir = "-90 0 0",
	    loopmovesound = 0,
	    locked_sentence = 0,
	    lip = 40,
	    ignoredebris = 0,
	    health = 0,
	    forceclosed = 0,
	    dmg = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_door",
	    hammerid = 1206609,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_door_brush61.KeyValueFromInt("solid", 2)
	func_door_brush61.KeyValueFromString("mins", "0 0 0")
	func_door_brush61.KeyValueFromString("maxs", "1 1 1")

	local func_respawnroomvisualizer_brush62 = SpawnEntityFromTable("func_respawnroomvisualizer", {
	    model = "*43",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solid_to_enemies = 1,
	    respawnroomname = "respawnroom_stage1_red",
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5216, 7252, -117.35),
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_respawnroomvisualizer",
	    hammerid = 1418917,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_respawnroomvisualizer_brush62.KeyValueFromInt("solid", 2)
	func_respawnroomvisualizer_brush62.KeyValueFromString("mins", "0 0 0")
	func_respawnroomvisualizer_brush62.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic1197368 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-5216.07, 7240, -71.927),
	    targetname = "prop_door_stage1_gate1_1a",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 0,
	    SetBodyGroup = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    parentname = "door_stage1_gate1_1a",
	    model = "models/props_gameplay/door_grate003_top.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    fadescale = 0,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    angles = QAngle(0, 270, 0),
	    classname = "prop_dynamic",
	    hammerid = 1197368
	})

::prop_dynamic1197378 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-5216.07, 7240, -151.927),
	    targetname = "prop_door_stage1_gate1_1b",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 0,
	    SetBodyGroup = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    parentname = "door_stage1_gate1_1b",
	    model = "models/props_gameplay/door_grate003_bottom.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    fadescale = 0,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    angles = QAngle(0, 270, 0),
	    classname = "prop_dynamic",
	    hammerid = 1197378
	})

	local func_door_brush63 = SpawnEntityFromTable("func_door", {
	    model = "*44",
	    wait = -1.0,
	    unlocked_sentence = 0,
	    targetname = "door_stage1_gate1_1b",
	    speed = 175,
	    spawnflags = 0,
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5216.07, 7247, -153.66),
	    movedir = "90 0 0",
	    loopmovesound = 0,
	    locked_sentence = 0,
	    lip = 0,
	    ignoredebris = 0,
	    health = 0,
	    forceclosed = 0,
	    dmg = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_door",
	    hammerid = 1197375,
	    "OnFullyOpen#1": "prop_door_stage1_gate1_1b,Disable,,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_door_brush63.KeyValueFromInt("solid", 2)
	func_door_brush63.KeyValueFromString("mins", "0 0 0")
	func_door_brush63.KeyValueFromString("maxs", "1 1 1")

	local func_door_brush64 = SpawnEntityFromTable("func_door", {
	    model = "*45",
	    wait = -1.0,
	    unlocked_sentence = 0,
	    targetname = "door_stage1_gate1_1a",
	    speed = 175,
	    spawnflags = 0,
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5216.07, 7247, -67.57),
	    movedir = "-90 0 0",
	    loopmovesound = 0,
	    locked_sentence = 0,
	    lip = 40,
	    ignoredebris = 0,
	    health = 0,
	    forceclosed = 0,
	    dmg = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_door",
	    hammerid = 1197372,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_door_brush64.KeyValueFromInt("solid", 2)
	func_door_brush64.KeyValueFromString("mins", "0 0 0")
	func_door_brush64.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic1197308 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-4552, 7256, -128),
	    targetname = "prop_door_stage1_gate1_2b",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 0,
	    SetBodyGroup = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    parentname = "door_stage1_gate1_2b",
	    model = "models/props_gameplay/door_grate002_bottom.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    fadescale = 0,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    angles = QAngle(0, 270, 90),
	    classname = "prop_dynamic",
	    hammerid = 1197308
	})

::prop_dynamic1197304 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-4632, 7256, -128),
	    targetname = "prop_door_stage1_gate1_2a",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 0,
	    SetBodyGroup = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    parentname = "door_stage1_gate1_2a",
	    model = "models/props_gameplay/door_grate002_top.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    fadescale = 0,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    angles = QAngle(0, 270, 90),
	    classname = "prop_dynamic",
	    hammerid = 1197304
	})

	local func_respawnroomvisualizer_brush65 = SpawnEntityFromTable("func_respawnroomvisualizer", {
	    model = "*46",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solid_to_enemies = 1,
	    respawnroomname = "respawnroom_stage1_red",
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-4592, 7268, -135.12),
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_respawnroomvisualizer",
	    hammerid = 1418962,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_respawnroomvisualizer_brush65.KeyValueFromInt("solid", 2)
	func_respawnroomvisualizer_brush65.KeyValueFromString("mins", "0 0 0")
	func_respawnroomvisualizer_brush65.KeyValueFromString("maxs", "1 1 1")

	local func_door_brush66 = SpawnEntityFromTable("func_door", {
	    model = "*47",
	    wait = -1.0,
	    unlocked_sentence = 0,
	    targetname = "door_stage1_gate1_2b",
	    speed = 175,
	    spawnflags = 0,
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-4548, 7263, -128),
	    movedir = "0 0 0",
	    loopmovesound = 0,
	    locked_sentence = 0,
	    lip = 0,
	    ignoredebris = 0,
	    health = 0,
	    forceclosed = 0,
	    dmg = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_door",
	    hammerid = 1197327,
	    "OnFullyOpen#1": "prop_door_stage1_gate1_2b,Disable,,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_door_brush66.KeyValueFromInt("solid", 2)
	func_door_brush66.KeyValueFromString("mins", "0 0 0")
	func_door_brush66.KeyValueFromString("maxs", "1 1 1")

	local func_door_brush67 = SpawnEntityFromTable("func_door", {
	    model = "*48",
	    wait = -1.0,
	    unlocked_sentence = 0,
	    targetname = "door_stage1_gate1_2a",
	    speed = 175,
	    spawnflags = 0,
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-4636, 7263, -128),
	    movedir = "0 180 0",
	    loopmovesound = 0,
	    locked_sentence = 0,
	    lip = 0,
	    ignoredebris = 0,
	    health = 0,
	    forceclosed = 0,
	    dmg = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_door",
	    hammerid = 1197324,
	    "OnFullyOpen#1": "prop_door_stage1_gate1_2a,Disable,,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_door_brush67.KeyValueFromInt("solid", 2)
	func_door_brush67.KeyValueFromString("mins", "0 0 0")
	func_door_brush67.KeyValueFromString("maxs", "1 1 1")

::item_ammopack_full1828503 <- SpawnEntityFromTable("item_ammopack_full", {
	    origin = Vector(-5974, 1348, -95.7438),
	    angles = QAngle(0, 180, 0),
	    classname = "item_ammopack_full",
	    hammerid = 1828503
	})

::light1853690 <- SpawnEntityFromTable("light", {
	    origin = Vector(-6559.75, 2464, 268.718),
	    _zero_percent_distance = 250,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "208 67 6 75",
	    _fifty_percent_distance = 15,
	    classname = "light",
	    hammerid = 1853690
	})

	local func_brush_brush68 = SpawnEntityFromTable("func_brush", {
	    model = "*49",
	    vrad_brush_cast_shadows = 0,
	    targetname = "brush_stage2_sneakyroutedoor1",
	    StartDisabled = 1,
	    spawnflags = 2,
	    Solidity = 0,
	    solidbsp = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5424, 2464, 166),
	    invert_exclusion = 0,
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_brush",
	    hammerid = 1884523,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_brush_brush68.KeyValueFromInt("solid", 2)
	func_brush_brush68.KeyValueFromString("mins", "0 0 0")
	func_brush_brush68.KeyValueFromString("maxs", "1 1 1")

	local func_brush_brush69 = SpawnEntityFromTable("func_brush", {
	    model = "*50",
	    vrad_brush_cast_shadows = 0,
	    targetname = "brush_stage2_sneakyroutedoor1",
	    StartDisabled = 1,
	    spawnflags = 2,
	    Solidity = 0,
	    solidbsp = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5240, 1736, 166),
	    invert_exclusion = 0,
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_brush",
	    hammerid = 1884690,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_brush_brush69.KeyValueFromInt("solid", 2)
	func_brush_brush69.KeyValueFromString("mins", "0 0 0")
	func_brush_brush69.KeyValueFromString("maxs", "1 1 1")

	local func_illusionary_brush70 = SpawnEntityFromTable("func_illusionary", {
	    model = "*51",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5520, 3224, 156.21),
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_illusionary",
	    hammerid = 1889301,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_illusionary_brush70.KeyValueFromInt("solid", 2)
	func_illusionary_brush70.KeyValueFromString("mins", "0 0 0")
	func_illusionary_brush70.KeyValueFromString("maxs", "1 1 1")

	local func_illusionary_brush71 = SpawnEntityFromTable("func_illusionary", {
	    model = "*52",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5520, 3192, 405.11),
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_illusionary",
	    hammerid = 1890181,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_illusionary_brush71.KeyValueFromInt("solid", 2)
	func_illusionary_brush71.KeyValueFromString("mins", "0 0 0")
	func_illusionary_brush71.KeyValueFromString("maxs", "1 1 1")

	local func_illusionary_brush72 = SpawnEntityFromTable("func_illusionary", {
	    model = "*53",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6496, 3192, 405.11),
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_illusionary",
	    hammerid = 1890429,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_illusionary_brush72.KeyValueFromInt("solid", 2)
	func_illusionary_brush72.KeyValueFromString("mins", "0 0 0")
	func_illusionary_brush72.KeyValueFromString("maxs", "1 1 1")

	local func_illusionary_brush73 = SpawnEntityFromTable("func_illusionary", {
	    model = "*54",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5096, 1896, 220.21),
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_illusionary",
	    hammerid = 1935801,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_illusionary_brush73.KeyValueFromInt("solid", 2)
	func_illusionary_brush73.KeyValueFromString("mins", "0 0 0")
	func_illusionary_brush73.KeyValueFromString("maxs", "1 1 1")

::light2131312 <- SpawnEntityFromTable("light", {
	    origin = Vector(-4997, 2605.84, 112.838),
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "224 64 10 14",
	    classname = "light",
	    hammerid = 2131312
	})

	local func_brush_brush74 = SpawnEntityFromTable("func_brush", {
	    model = "*55",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solidbsp = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5440.52, 1782.96, 154),
	    invert_exclusion = 0,
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_brush",
	    hammerid = 2131656,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_brush_brush74.KeyValueFromInt("solid", 2)
	func_brush_brush74.KeyValueFromString("mins", "0 0 0")
	func_brush_brush74.KeyValueFromString("maxs", "1 1 1")

	local func_brush_brush75 = SpawnEntityFromTable("func_brush", {
	    model = "*56",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solidbsp = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5022.25, 2048.5, 170),
	    invert_exclusion = 0,
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_brush",
	    hammerid = 2131901,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_brush_brush75.KeyValueFromInt("solid", 2)
	func_brush_brush75.KeyValueFromString("mins", "0 0 0")
	func_brush_brush75.KeyValueFromString("maxs", "1 1 1")

	local func_brush_brush76 = SpawnEntityFromTable("func_brush", {
	    model = "*57",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solidbsp = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5632.5, 3260.5, 95.43),
	    invert_exclusion = 0,
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_brush",
	    hammerid = 2132003,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_brush_brush76.KeyValueFromInt("solid", 2)
	func_brush_brush76.KeyValueFromString("mins", "0 0 0")
	func_brush_brush76.KeyValueFromString("maxs", "1 1 1")

	local func_brush_brush77 = SpawnEntityFromTable("func_brush", {
	    model = "*58",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solidbsp = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5560.5, 2351.5, 342.56),
	    invert_exclusion = 0,
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_brush",
	    hammerid = 2152728,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_brush_brush77.KeyValueFromInt("solid", 2)
	func_brush_brush77.KeyValueFromString("mins", "0 0 0")
	func_brush_brush77.KeyValueFromString("maxs", "1 1 1")

	local func_illusionary_brush78 = SpawnEntityFromTable("func_illusionary", {
	    model = "*59",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5252, 2056.5, 372),
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_illusionary",
	    hammerid = 2160576,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_illusionary_brush78.KeyValueFromInt("solid", 2)
	func_illusionary_brush78.KeyValueFromString("mins", "0 0 0")
	func_illusionary_brush78.KeyValueFromString("maxs", "1 1 1")

	local func_illusionary_brush79 = SpawnEntityFromTable("func_illusionary", {
	    model = "*60",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5184, 1984, 546),
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_illusionary",
	    hammerid = 2160651,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_illusionary_brush79.KeyValueFromInt("solid", 2)
	func_illusionary_brush79.KeyValueFromString("mins", "0 0 0")
	func_illusionary_brush79.KeyValueFromString("maxs", "1 1 1")

::info_player_teamspawn2188118 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6896.77, 3702.06, 97),
	    angles = QAngle(0, 0, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 2188118
	})

	local func_brush_brush80 = SpawnEntityFromTable("func_brush", {
	    model = "*61",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solidbsp = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-4568.5, 5824.5, 134.07),
	    invert_exclusion = 0,
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_brush",
	    hammerid = 2320799,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_brush_brush80.KeyValueFromInt("solid", 2)
	func_brush_brush80.KeyValueFromString("mins", "0 0 0")
	func_brush_brush80.KeyValueFromString("maxs", "1 1 1")

::env_sprite2327124 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-4814.05, 6111.81, 135.023),
	    spawnflags = 1,
	    scale = 0.12,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 200,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 2327124
	})

::item_ammopack_medium1259529 <- SpawnEntityFromTable("item_ammopack_medium", {
	    origin = Vector(-6752, 2288, 96.2562),
	    angles = QAngle(0, 90, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 1259529
	})

::item_ammopack_medium2404188 <- SpawnEntityFromTable("item_ammopack_medium", {
	    origin = Vector(-6992.31, 3086.33, 290.256),
	    angles = QAngle(0, 90, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 2404188
	})

	local func_brush_brush81 = SpawnEntityFromTable("func_brush", {
	    model = "*62",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solidbsp = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-7071.5, 3087.86, 346),
	    invert_exclusion = 0,
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_brush",
	    hammerid = 2404415,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_brush_brush81.KeyValueFromInt("solid", 2)
	func_brush_brush81.KeyValueFromString("mins", "0 0 0")
	func_brush_brush81.KeyValueFromString("maxs", "1 1 1")

::prop_physics_multiplayer2460657 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-5939.89, 7592.87, -95.75),
	    spawnflags = 260,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physicsmode = 3,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/orange_cone001.mdl",
	    minhealthdmg = 0,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 0.5,
	    fademindist = -1.0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(0, 277.5, 0),
	    classname = "prop_physics_multiplayer",
	    hammerid = 2460657
	})

::light2461553 <- SpawnEntityFromTable("light", {
	    origin = Vector(-6099, 8352.45, 1.33153),
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "224 64 10 14",
	    classname = "light",
	    hammerid = 2461553
	})

::env_sprite2523856 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-6534.06, 5446.88, 51.0342),
	    spawnflags = 1,
	    scale = 0.15,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "255 26 26",
	    renderamt = 240,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 2523856
	})

::env_sprite2523871 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-5478.75, 2162.09, 411.455),
	    spawnflags = 1,
	    scale = 0.15,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "255 26 26",
	    renderamt = 240,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 2523871
	})

	local func_brush_brush82 = SpawnEntityFromTable("func_brush", {
	    model = "*63",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solidbsp = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5800.5, 7488.5, -129.51),
	    invert_exclusion = 0,
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_brush",
	    hammerid = 2524775,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_brush_brush82.KeyValueFromInt("solid", 2)
	func_brush_brush82.KeyValueFromString("mins", "0 0 0")
	func_brush_brush82.KeyValueFromString("maxs", "1 1 1")

::prop_physics_multiplayer2527055 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-5035.06, 7626.48, -191.75),
	    spawnflags = 260,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physicsmode = 3,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/orange_cone001.mdl",
	    minhealthdmg = 0,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 0.5,
	    fademindist = -1.0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(0, 277.5, 0),
	    classname = "prop_physics_multiplayer",
	    hammerid = 2527055
	})

	local func_areaportal_brush83 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 19,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 2573831,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush83.KeyValueFromInt("solid", 2)
	func_areaportal_brush83.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush83.KeyValueFromString("maxs", "1 1 1")

::item_ammopack_full2574050 <- SpawnEntityFromTable("item_ammopack_full", {
	    origin = Vector(-5152.87, 2798.48, 36.2361),
	    angles = QAngle(0, 270, 0),
	    classname = "item_ammopack_full",
	    hammerid = 2574050
	})

::item_healthkit_medium2574052 <- SpawnEntityFromTable("item_healthkit_medium", {
	    origin = Vector(-5216.87, 2798.48, 36.2361),
	    angles = QAngle(0, 270, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 2574052
	})

::env_soundscape2688649 <- SpawnEntityFromTable("env_soundscape", {
	    origin = Vector(-5455.81, 7944, -160),
	    targetname = "Inside",
	    soundscape = "Gorge.Inside",
	    radius = -1.0,
	    classname = "env_soundscape",
	    hammerid = 2688649
	})

::env_soundscape2688660 <- SpawnEntityFromTable("env_soundscape", {
	    origin = Vector(-5225.48, 7200, -168),
	    targetname = "Outside",
	    soundscape = "Gorge.Outside",
	    radius = -1.0,
	    classname = "env_soundscape",
	    hammerid = 2688660
	})

::env_soundscape_proxy2688671 <- SpawnEntityFromTable("env_soundscape_proxy", {
	    origin = Vector(-5206.48, 7332.76, -184),
	    radius = -1.0,
	    MainSoundscapeName = "Inside",
	    classname = "env_soundscape_proxy",
	    hammerid = 2688671
	})

::env_soundscape_proxy2688674 <- SpawnEntityFromTable("env_soundscape_proxy", {
	    origin = Vector(-4598.54, 7326.67, -184),
	    radius = -1.0,
	    MainSoundscapeName = "Inside",
	    classname = "env_soundscape_proxy",
	    hammerid = 2688674
	})

::env_soundscape_proxy2688677 <- SpawnEntityFromTable("env_soundscape_proxy", {
	    origin = Vector(-6234, 7605.08, -88),
	    radius = -1.0,
	    MainSoundscapeName = "Inside",
	    classname = "env_soundscape_proxy",
	    hammerid = 2688677
	})

::env_soundscape_proxy2688680 <- SpawnEntityFromTable("env_soundscape_proxy", {
	    origin = Vector(-6874.24, 3316.32, 104),
	    radius = -1.0,
	    MainSoundscapeName = "Inside",
	    classname = "env_soundscape_proxy",
	    hammerid = 2688680
	})

::env_soundscape_proxy2688683 <- SpawnEntityFromTable("env_soundscape_proxy", {
	    origin = Vector(-5182.22, 3257.87, 40),
	    radius = -1.0,
	    MainSoundscapeName = "Inside",
	    classname = "env_soundscape_proxy",
	    hammerid = 2688683
	})

::env_soundscape_proxy2688689 <- SpawnEntityFromTable("env_soundscape_proxy", {
	    origin = Vector(-4601.19, 7211.68, -184),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 2688689
	})

::env_soundscape_proxy2688692 <- SpawnEntityFromTable("env_soundscape_proxy", {
	    origin = Vector(-6327.61, 7493.9, -88),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 2688692
	})

::env_soundscape_proxy2688695 <- SpawnEntityFromTable("env_soundscape_proxy", {
	    origin = Vector(-5768, 6352, 296),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 2688695
	})

::env_soundscape_proxy2688698 <- SpawnEntityFromTable("env_soundscape_proxy", {
	    origin = Vector(-6003.16, 4303.48, 224.02),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 2688698
	})

::env_soundscape_proxy2688701 <- SpawnEntityFromTable("env_soundscape_proxy", {
	    origin = Vector(-5200.56, 3426.95, 40),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 2688701
	})

::env_soundscape_proxy2688704 <- SpawnEntityFromTable("env_soundscape_proxy", {
	    origin = Vector(-6843.99, 3418.56, 104),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 2688704
	})

::ambient_generic2688713 <- SpawnEntityFromTable("ambient_generic", {
	    origin = Vector(-6767.5, 1976, 248),
	    volstart = 0,
	    targetname = "machines1",
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 0,
	    radius = 0,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "Ambient.MachineHum",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 10,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0,
	    classname = "ambient_generic",
	    hammerid = 2688713
	})

::ambient_generic2688716 <- SpawnEntityFromTable("ambient_generic", {
	    origin = Vector(-6004.37, 1804.18, 456),
	    volstart = 0,
	    targetname = "machines5",
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 0,
	    radius = 0,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "Ambient.MachineHum",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 10,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0,
	    classname = "ambient_generic",
	    hammerid = 2688716
	})

::ambient_generic2688719 <- SpawnEntityFromTable("ambient_generic", {
	    origin = Vector(-6288, 2864, 208),
	    volstart = 0,
	    targetname = "tanks1",
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 0,
	    radius = 0,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "Ambient.MachineHum2",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 10,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0,
	    classname = "ambient_generic",
	    hammerid = 2688719
	})

::ambient_generic2688722 <- SpawnEntityFromTable("ambient_generic", {
	    origin = Vector(-6698.85, 2795.88, 214.946),
	    volstart = 0,
	    targetname = "tanks3",
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 0,
	    radius = 0,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "Ambient.MachineHum2",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 10,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0,
	    classname = "ambient_generic",
	    hammerid = 2688722
	})

::ambient_generic2688725 <- SpawnEntityFromTable("ambient_generic", {
	    origin = Vector(-4568, 6096, 232.199),
	    volstart = 0,
	    targetname = "machines2",
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 0,
	    radius = 0,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "Ambient.MachineHum",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 10,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0,
	    classname = "ambient_generic",
	    hammerid = 2688725
	})

::ambient_generic2688728 <- SpawnEntityFromTable("ambient_generic", {
	    origin = Vector(-6686.9, 3235.64, 440.287),
	    volstart = 0,
	    targetname = "tanks2",
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 0,
	    radius = 0,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "Ambient.MachineHum2",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 10,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0,
	    classname = "ambient_generic",
	    hammerid = 2688728
	})

::ambient_generic2688731 <- SpawnEntityFromTable("ambient_generic", {
	    origin = Vector(-6731.98, 2059.56, 365.44),
	    volstart = 0,
	    targetname = "machines3",
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 0,
	    radius = 0,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "Ambient.MachineHum",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 10,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0,
	    classname = "ambient_generic",
	    hammerid = 2688731
	})

::ambient_generic2688734 <- SpawnEntityFromTable("ambient_generic", {
	    origin = Vector(-5449.31, 8280, -12.5819),
	    volstart = 0,
	    targetname = "machines4",
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 0,
	    radius = 0,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "Ambient.MachineHum",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 10,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0,
	    classname = "ambient_generic",
	    hammerid = 2688734
	})

::env_lightglow2940394 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6848, 3624, 255.007),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 2940394
	})

::light_spot2977583 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6696, 2745, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 2977583
	})

::light_spot2977614 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6353, 2153.7, 273.264),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 2977614
	})

::light_spot2977641 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6387, 2844, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 2977641
	})

::light_spot2977659 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6290, 2844.7, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 2977659
	})

::light_spot2977869 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6722, 2282, 277.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 2977869
	})

::light_spot2977896 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6958, 2129, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 2977896
	})

::light_spot3048760 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6472.25, 2867.98, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3048760
	})

::light_spot3048769 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6259.01, 2867.93, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3048769
	})

::light_spot3048778 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6374.09, 2867.92, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3048778
	})

::light_spot3049017 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5650.83, 2863.3, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3049017
	})

::light_spot3049022 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5749, 2863.35, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3049022
	})

::light_spot3049039 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5535.75, 2863.3, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3049039
	})

::light_spot3049162 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5696, 2862, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3049162
	})

::light_spot3049171 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5558, 2863, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3049171
	})

::light_spot3075748 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5845, 3375, 467.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 0, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 350",
	    _inner_cone = 25,
	    _fifty_percent_distance = 416,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 3075748
	})

::point_spotlight3075753 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-5845, 3375, 465.007),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "154 154 154",
	    renderamt = 255,
	    mindxlevel = 90,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 0, 0),
	    classname = "point_spotlight",
	    hammerid = 3075753
	})

::light_spot3110164 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5180.83, 2625.3, 190.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3110164
	})

::light_spot3110169 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5065.75, 2625.3, 190.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3110169
	})

::light_spot3110182 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5279, 2625.35, 190.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3110182
	})

::light_spot3110218 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5182.08, 3311.3, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3110218
	})

::light_spot3110223 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5067, 3311.3, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3110223
	})

::light_spot3110236 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5280.25, 3311.35, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3110236
	})

::light_spot3118894 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6158, 2194.55, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3118894
	})

::light_spot3118903 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5930.48, 2193.3, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3118903
	})

::light_spot3118998 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6952.24, 2079.18, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3118998
	})

::light_spot3119007 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6727.17, 2082.36, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3119007
	})

::light_spot3119170 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5704.31, 3018.58, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3119170
	})

::light_spot3119188 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6330.24, 3022.21, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3119188
	})

::item_healthkit_small3154692 <- SpawnEntityFromTable("item_healthkit_small", {
	    origin = Vector(-5712, 7112, 206),
	    angles = QAngle(0, 180, 0),
	    classname = "item_healthkit_small",
	    hammerid = 3154692
	})

::point_devshot_camera3238929 <- SpawnEntityFromTable("point_devshot_camera", {
	    origin = Vector(-5716, 7304, -51.3257),
	    FOV = 75,
	    angles = QAngle(0, 67.5, 0),
	    classname = "point_devshot_camera",
	    hammerid = 3238929
	})

::point_devshot_camera3238959 <- SpawnEntityFromTable("point_devshot_camera", {
	    origin = Vector(-7039.41, 5526.71, 521),
	    FOV = 75,
	    angles = QAngle(0, 39, 0),
	    classname = "point_devshot_camera",
	    hammerid = 3238959
	})

::point_devshot_camera3238989 <- SpawnEntityFromTable("point_devshot_camera", {
	    origin = Vector(-7040, 5520, 521),
	    FOV = 75,
	    angles = QAngle(0, 272, 0),
	    classname = "point_devshot_camera",
	    hammerid = 3238989
	})

::point_devshot_camera3238993 <- SpawnEntityFromTable("point_devshot_camera", {
	    origin = Vector(-8148.74, 4062.21, 588.5),
	    FOV = 75,
	    angles = QAngle(0, 7.5, 0),
	    classname = "point_devshot_camera",
	    hammerid = 3238993
	})

::point_devshot_camera3239023 <- SpawnEntityFromTable("point_devshot_camera", {
	    origin = Vector(-6912, 1456, 372.5),
	    FOV = 75,
	    angles = QAngle(0, 359, 0),
	    classname = "point_devshot_camera",
	    hammerid = 3239023
	})

::info_observer_point3275664 <- SpawnEntityFromTable("info_observer_point", {
	    origin = Vector(-6847.03, 4900.08, 280),
	    TeamNum = 0,
	    StartDisabled = 0,
	    FOV = 75,
	    defaultwelcome = 1,
	    angles = QAngle(9, -45, 0),
	    classname = "info_observer_point",
	    hammerid = 3275664
	})

::point_devshot_camera3275666 <- SpawnEntityFromTable("point_devshot_camera", {
	    origin = Vector(-6847.03, 4900.08, 280),
	    FOV = 75,
	    angles = QAngle(9, -45, 0),
	    classname = "point_devshot_camera",
	    hammerid = 3275666
	})

::info_intermission3275668 <- SpawnEntityFromTable("info_intermission", {
	    origin = Vector(-6846.69, 4902.88, 281),
	    target = "cap_red_2",
	    classname = "info_intermission",
	    hammerid = 3275668
	})

::prop_physics_multiplayer3292814 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-6126.25, 6557.21, -91.2204),
	    spawnflags = 4,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/can_crushed002.mdl",
	    minhealthdmg = 0,
	    mindxlevel = 90,
	    maxdxlevel = 0,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 1,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(0, 255, 1),
	    classname = "prop_physics_multiplayer",
	    hammerid = 3292814
	})

::prop_physics_multiplayer3292818 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-6062.25, 6573.21, -91.2204),
	    spawnflags = 4,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/can_crushed001.mdl",
	    minhealthdmg = 0,
	    mindxlevel = 90,
	    maxdxlevel = 0,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 1,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(0, 195, 1),
	    classname = "prop_physics_multiplayer",
	    hammerid = 3292818
	})

::prop_physics_multiplayer3292822 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-5670.25, 6533.21, -91.2204),
	    spawnflags = 4,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/bottle001.mdl",
	    minhealthdmg = 0,
	    mindxlevel = 90,
	    maxdxlevel = 0,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 1,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(15, 300, 91),
	    classname = "prop_physics_multiplayer",
	    hammerid = 3292822
	})

::prop_physics_multiplayer3292826 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-5552, 6544, -85.2194),
	    spawnflags = 256,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    physdamagescale = 0.1,
	    model = "models/props_gameplay/can_crushed001.mdl",
	    mindxlevel = 90,
	    inertiaScale = 1.0,
	    fadescale = 1,
	    fademindist = -1.0,
	    angles = QAngle(0, 180, 0),
	    classname = "prop_physics_multiplayer",
	    hammerid = 3292826
	})

::prop_physics_multiplayer3292830 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-5759.04, 6386.13, -89.4384),
	    spawnflags = 4,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/bottle001.mdl",
	    minhealthdmg = 0,
	    mindxlevel = 90,
	    maxdxlevel = 0,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 1,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(15, 156, -89),
	    classname = "prop_physics_multiplayer",
	    hammerid = 3292830
	})

::prop_physics_multiplayer3292834 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-5752, 6736, -93.9694),
	    spawnflags = 260,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physicsmode = 0,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/orange_cone001.mdl",
	    minhealthdmg = 0,
	    mindxlevel = 90,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 0.5,
	    fademindist = -1.0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(0, 355, 0),
	    classname = "prop_physics_multiplayer",
	    hammerid = 3292834
	})

::prop_physics_multiplayer3292838 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-5731.04, 6222.13, -90.4384),
	    spawnflags = 4,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/can_crushed001.mdl",
	    minhealthdmg = 0,
	    mindxlevel = 90,
	    maxdxlevel = 0,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 1,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(0, 195, 1),
	    classname = "prop_physics_multiplayer",
	    hammerid = 3292838
	})

::sky_camera3300914 <- SpawnEntityFromTable("sky_camera", {
	    origin = Vector(3080, 3980, -25),
	    use_angles = 1,
	    scale = 16,
	    fogstart = 0,
	    fogend = 20000,
	    fogenable = 1,
	    fogdir = "1 0 0",
	    fogcolor2 = "255 255 255",
	    fogcolor = "120 133 158",
	    fogblend = 0,
	    angles = QAngle(0, 310, 0),
	    classname = "sky_camera",
	    hammerid = 3300914
	})

	local func_occluder_brush84 = SpawnEntityFromTable("func_occluder", {
	    occludernumber = 0,
	    model = "",
	    StartActive = 1,
	    classname = "func_occluder",
	    hammerid = 3331683,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_occluder_brush84.KeyValueFromInt("solid", 2)
	func_occluder_brush84.KeyValueFromString("mins", "0 0 0")
	func_occluder_brush84.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush85 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 20,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3331860,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush85.KeyValueFromInt("solid", 2)
	func_areaportal_brush85.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush85.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush86 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 21,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3331891,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush86.KeyValueFromInt("solid", 2)
	func_areaportal_brush86.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush86.KeyValueFromString("maxs", "1 1 1")

::light_spot3360497 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6324, 1510, -400),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 300",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 3360497
	})

::light_spot3360607 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6144, 1196, -452),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 90, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 350",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 3360607
	})

	local func_occluder_brush87 = SpawnEntityFromTable("func_occluder", {
	    occludernumber = 1,
	    model = "",
	    StartActive = 1,
	    classname = "func_occluder",
	    hammerid = 3375995,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_occluder_brush87.KeyValueFromInt("solid", 2)
	func_occluder_brush87.KeyValueFromString("mins", "0 0 0")
	func_occluder_brush87.KeyValueFromString("maxs", "1 1 1")

::light_spot2940389 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6848, 3624, 252.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 400",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 2940389
	})

	local func_occluder_brush88 = SpawnEntityFromTable("func_occluder", {
	    occludernumber = 2,
	    model = "",
	    StartActive = 1,
	    classname = "func_occluder",
	    hammerid = 3391363,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_occluder_brush88.KeyValueFromInt("solid", 2)
	func_occluder_brush88.KeyValueFromString("mins", "0 0 0")
	func_occluder_brush88.KeyValueFromString("maxs", "1 1 1")

	local func_respawnroom_brush89 = SpawnEntityFromTable("func_respawnroom", {
	    model = "*64",
	    TeamNum = 2,
	    targetname = "respawnroom_stage2_red1",
	    StartDisabled = 0,
	    classname = "func_respawnroom",
	    hammerid = 3462137,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_respawnroom_brush89.KeyValueFromInt("solid", 2)
	func_respawnroom_brush89.KeyValueFromString("mins", "0 0 0")
	func_respawnroom_brush89.KeyValueFromString("maxs", "1 1 1")

	local func_brush_brush90 = SpawnEntityFromTable("func_brush", {
	    model = "*65",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solidbsp = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5935.5, 5032.5, 366.42),
	    invert_exclusion = 0,
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_brush",
	    hammerid = 3468016,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_brush_brush90.KeyValueFromInt("solid", 2)
	func_brush_brush90.KeyValueFromString("mins", "0 0 0")
	func_brush_brush90.KeyValueFromString("maxs", "1 1 1")

	local func_nobuild_brush91 = SpawnEntityFromTable("func_nobuild", {
	    model = "*66",
	    TeamNum = 0,
	    StartDisabled = 0,
	    classname = "func_nobuild",
	    hammerid = 3530243,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_nobuild_brush91.KeyValueFromInt("solid", 2)
	func_nobuild_brush91.KeyValueFromString("mins", "0 0 0")
	func_nobuild_brush91.KeyValueFromString("maxs", "1 1 1")

	local func_nobuild_brush92 = SpawnEntityFromTable("func_nobuild", {
	    model = "*67",
	    TeamNum = 0,
	    StartDisabled = 0,
	    classname = "func_nobuild",
	    hammerid = 3530246,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_nobuild_brush92.KeyValueFromInt("solid", 2)
	func_nobuild_brush92.KeyValueFromString("mins", "0 0 0")
	func_nobuild_brush92.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush93 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 22,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3685993,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush93.KeyValueFromInt("solid", 2)
	func_areaportal_brush93.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush93.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush94 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 23,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3686171,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush94.KeyValueFromInt("solid", 2)
	func_areaportal_brush94.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush94.KeyValueFromString("maxs", "1 1 1")

::info_player_start3559279 <- SpawnEntityFromTable("info_player_start", {
	    origin = Vector(-6482.7, -721.54, 96.8973),
	    angles = QAngle(0, 180, 0),
	    classname = "info_player_start",
	    hammerid = 3559279
	})

::info_player_start3559281 <- SpawnEntityFromTable("info_player_start", {
	    origin = Vector(-6928.12, -930.05, 32.8973),
	    angles = QAngle(0, 180, 0),
	    classname = "info_player_start",
	    hammerid = 3559281
	})

::info_player_start3559283 <- SpawnEntityFromTable("info_player_start", {
	    origin = Vector(-5808.8, -901.81, 32.8973),
	    angles = QAngle(0, 180, 0),
	    classname = "info_player_start",
	    hammerid = 3559283
	})

::info_player_start3559285 <- SpawnEntityFromTable("info_player_start", {
	    origin = Vector(-6979.65, -457.08, 32.8973),
	    angles = QAngle(0, 180, 0),
	    classname = "info_player_start",
	    hammerid = 3559285
	})

::info_player_teamspawn3559311 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-6015.59, -3104.04, 97),
	    angles = QAngle(0, 180, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559311
	})

::info_player_teamspawn3559313 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-7708.1, -2242.02, 33),
	    angles = QAngle(0, 180, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559313
	})

::prop_physics_multiplayer3559362 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-5824.97, -4512, -95.5),
	    spawnflags = 9,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physicsmode = 0,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/orange_cone001.mdl",
	    minhealthdmg = 0,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 1,
	    fademindist = -1.0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(0, 5.5, 0),
	    classname = "prop_physics_multiplayer",
	    hammerid = 3559362
	})

::item_healthkit_medium3559533 <- SpawnEntityFromTable("item_healthkit_medium", {
	    origin = Vector(-7448, -3248, 82.2562),
	    angles = QAngle(0, 180, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 3559533
	})

::item_ammopack_full3559535 <- SpawnEntityFromTable("item_ammopack_full", {
	    origin = Vector(-7448, -3312, 82.2562),
	    angles = QAngle(0, 180, 0),
	    classname = "item_ammopack_full",
	    hammerid = 3559535
	})

::item_ammopack_full3559583 <- SpawnEntityFromTable("item_ammopack_full", {
	    origin = Vector(-6320, -3120, 112),
	    angles = QAngle(0, 90, 0),
	    classname = "item_ammopack_full",
	    hammerid = 3559583
	})

::item_healthkit_medium3559585 <- SpawnEntityFromTable("item_healthkit_medium", {
	    origin = Vector(-7432, -608, 40.2562),
	    angles = QAngle(0, 90, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 3559585
	})

::item_ammopack_medium3559587 <- SpawnEntityFromTable("item_ammopack_medium", {
	    origin = Vector(-7488, -608, 40.2562),
	    angles = QAngle(0, 90, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 3559587
	})

::item_healthkit_medium3559589 <- SpawnEntityFromTable("item_healthkit_medium", {
	    origin = Vector(-5984, -872, 48.2562),
	    angles = QAngle(0, 90, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 3559589
	})

::item_ammopack_medium3559591 <- SpawnEntityFromTable("item_ammopack_medium", {
	    origin = Vector(-6048, -872, 48.2562),
	    angles = QAngle(0, 90, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 3559591
	})

::item_ammopack_medium3559593 <- SpawnEntityFromTable("item_ammopack_medium", {
	    origin = Vector(-5984, -2384, -88),
	    angles = QAngle(0, 90, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 3559593
	})

::item_healthkit_medium3559595 <- SpawnEntityFromTable("item_healthkit_medium", {
	    origin = Vector(-6048, -2384, -88),
	    angles = QAngle(0, 90, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 3559595
	})

::prop_physics_multiplayer3559606 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-6602.65, -3954.97, -96),
	    spawnflags = 260,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physicsmode = 3,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/orange_cone001.mdl",
	    minhealthdmg = 0,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 0.5,
	    fademindist = -1.0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(0, 97.5, 0),
	    classname = "prop_physics_multiplayer",
	    hammerid = 3559606
	})

::prop_physics_multiplayer3559610 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-6559.87, -4203.3, -96),
	    spawnflags = 260,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physicsmode = 3,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/orange_cone001.mdl",
	    minhealthdmg = 0,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 0.5,
	    fademindist = -1.0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(0, 336, 0),
	    classname = "prop_physics_multiplayer",
	    hammerid = 3559610
	})

::prop_physics_multiplayer3559630 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-6602.35, -3464.9, -95.75),
	    spawnflags = 260,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physicsmode = 3,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/orange_cone001.mdl",
	    minhealthdmg = 0,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 0.5,
	    fademindist = -1.0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(0, 336, 0),
	    classname = "prop_physics_multiplayer",
	    hammerid = 3559630
	})

::item_healthkit_medium3559634 <- SpawnEntityFromTable("item_healthkit_medium", {
	    origin = Vector(-6027.1, -1754.93, -143.288),
	    angles = QAngle(0, 90, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 3559634
	})

::light_spot3560029 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6351.66, -4639.42, 1.4048),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 270, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 800",
	    _inner_cone = 45,
	    _fifty_percent_distance = 185,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 75,
	    classname = "light_spot",
	    hammerid = 3560029
	})

::env_lightglow3560034 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6351.4, -4639.32, 4.4048),
	    VerticalGlowSize = 30,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 180, 0),
	    classname = "env_lightglow",
	    hammerid = 3560034
	})

::light_spot3560040 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6016, -4688, 28.0067),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 500",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 65,
	    classname = "light_spot",
	    hammerid = 3560040
	})

::env_lightglow3560045 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-6016, -4688, 31.0067),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3560045
	})

	local func_respawnroom_brush95 = SpawnEntityFromTable("func_respawnroom", {
	    model = "*68",
	    TeamNum = 3,
	    targetname = "respawnroom_stage1_blu",
	    StartDisabled = 0,
	    classname = "func_respawnroom",
	    hammerid = 3560047,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_respawnroom_brush95.KeyValueFromInt("solid", 2)
	func_respawnroom_brush95.KeyValueFromString("mins", "0 0 0")
	func_respawnroom_brush95.KeyValueFromString("maxs", "1 1 1")

	local func_regenerate_brush96 = SpawnEntityFromTable("func_regenerate", {
	    model = "*69",
	    TeamNum = 3,
	    associatedmodel = "prop_resupply_red_2",
	    classname = "func_regenerate",
	    hammerid = 3560057,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_regenerate_brush96.KeyValueFromInt("solid", 2)
	func_regenerate_brush96.KeyValueFromString("mins", "0 0 0")
	func_regenerate_brush96.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic3560059 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-6703.15, -4817, -191.84),
	    targetname = "prop_resupply_red_2",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 0,
	    SetBodyGroup = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    model = "models/props_gameplay/resupply_locker.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    fadescale = 1,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    angles = QAngle(0, 270, 0),
	    classname = "prop_dynamic",
	    hammerid = 3560059
	})

	local func_respawnroomvisualizer_brush97 = SpawnEntityFromTable("func_respawnroomvisualizer", {
	    model = "*70",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solid_to_enemies = 1,
	    respawnroomname = "respawnroom_stage1_blu",
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5762.23, -4869.77, -21.35),
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_respawnroomvisualizer",
	    hammerid = 3560070,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_respawnroomvisualizer_brush97.KeyValueFromInt("solid", 2)
	func_respawnroomvisualizer_brush97.KeyValueFromString("mins", "0 0 0")
	func_respawnroomvisualizer_brush97.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic3560081 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-5756.07, -4863.25, 24.073),
	    targetname = "prop_door_stage1_gate1_3a",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 0,
	    SetBodyGroup = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    parentname = "door_stage1_gate1_3a",
	    model = "models/props_gameplay/door_grate003_top.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    fadescale = 0,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    angles = QAngle(0, 45, 0),
	    classname = "prop_dynamic",
	    hammerid = 3560081
	})

::prop_dynamic3560085 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-5756.07, -4863.25, -55.927),
	    targetname = "prop_door_stage1_gate1_3b",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 0,
	    SetBodyGroup = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    parentname = "door_stage1_gate1_3b",
	    model = "models/props_gameplay/door_grate003_bottom.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    fadescale = 0,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    angles = QAngle(0, 45, 0),
	    classname = "prop_dynamic",
	    hammerid = 3560085
	})

	local func_door_brush98 = SpawnEntityFromTable("func_door", {
	    model = "*71",
	    wait = -1.0,
	    unlocked_sentence = 0,
	    targetname = "door_stage1_gate1_3b",
	    speed = 175,
	    spawnflags = 0,
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5761.02, -4868.2, -57.66),
	    movedir = "90 0 0",
	    loopmovesound = 0,
	    locked_sentence = 0,
	    lip = 0,
	    ignoredebris = 0,
	    health = 0,
	    forceclosed = 0,
	    dmg = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_door",
	    hammerid = 3560089,
	    "OnFullyOpen#1": "prop_door_stage1_gate1_3b,Disable,,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_door_brush98.KeyValueFromInt("solid", 2)
	func_door_brush98.KeyValueFromString("mins", "0 0 0")
	func_door_brush98.KeyValueFromString("maxs", "1 1 1")

	local func_door_brush99 = SpawnEntityFromTable("func_door", {
	    model = "*72",
	    wait = -1.0,
	    unlocked_sentence = 0,
	    targetname = "door_stage1_gate1_3a",
	    speed = 175,
	    spawnflags = 0,
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5761.02, -4868.2, 28.43),
	    movedir = "-90 0 0",
	    loopmovesound = 0,
	    locked_sentence = 0,
	    lip = 40,
	    ignoredebris = 0,
	    health = 0,
	    forceclosed = 0,
	    dmg = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_door",
	    hammerid = 3560092,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_door_brush99.KeyValueFromInt("solid", 2)
	func_door_brush99.KeyValueFromString("mins", "0 0 0")
	func_door_brush99.KeyValueFromString("maxs", "1 1 1")

	local func_respawnroomvisualizer_brush100 = SpawnEntityFromTable("func_respawnroomvisualizer", {
	    model = "*73",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solid_to_enemies = 1,
	    respawnroomname = "respawnroom_stage1_blu",
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6816, -4564, -117.35),
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_respawnroomvisualizer",
	    hammerid = 3560103,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_respawnroomvisualizer_brush100.KeyValueFromInt("solid", 2)
	func_respawnroomvisualizer_brush100.KeyValueFromString("mins", "0 0 0")
	func_respawnroomvisualizer_brush100.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic3560114 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-6815.93, -4552, -71.927),
	    targetname = "prop_door_blu_stage1_gate1_1a",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 0,
	    SetBodyGroup = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    parentname = "door_blu_stage1_gate1_1a",
	    model = "models/props_gameplay/door_grate003_top.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    fadescale = 0,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    angles = QAngle(0, 90, 0),
	    classname = "prop_dynamic",
	    hammerid = 3560114
	})

::prop_dynamic3560118 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-6815.93, -4552, -151.927),
	    targetname = "prop_door_blu_stage1_gate1_1b",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 0,
	    SetBodyGroup = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    parentname = "door_blu_stage1_gate1_1b",
	    model = "models/props_gameplay/door_grate003_bottom.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    fadescale = 0,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    angles = QAngle(0, 90, 0),
	    classname = "prop_dynamic",
	    hammerid = 3560118
	})

	local func_door_brush101 = SpawnEntityFromTable("func_door", {
	    model = "*74",
	    wait = -1.0,
	    unlocked_sentence = 0,
	    targetname = "door_blu_stage1_gate1_1b",
	    speed = 175,
	    spawnflags = 0,
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6815.93, -4559, -153.66),
	    movedir = "90 0 0",
	    loopmovesound = 0,
	    locked_sentence = 0,
	    lip = 0,
	    ignoredebris = 0,
	    health = 0,
	    forceclosed = 0,
	    dmg = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_door",
	    hammerid = 3560122,
	    "OnFullyOpen#1": "prop_door_stage1_gate1_1b,Disable,,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_door_brush101.KeyValueFromInt("solid", 2)
	func_door_brush101.KeyValueFromString("mins", "0 0 0")
	func_door_brush101.KeyValueFromString("maxs", "1 1 1")

	local func_door_brush102 = SpawnEntityFromTable("func_door", {
	    model = "*75",
	    wait = -1.0,
	    unlocked_sentence = 0,
	    targetname = "door_blu_stage1_gate1_1a",
	    speed = 175,
	    spawnflags = 0,
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6815.93, -4559, -67.57),
	    movedir = "-90 0 0",
	    loopmovesound = 0,
	    locked_sentence = 0,
	    lip = 40,
	    ignoredebris = 0,
	    health = 0,
	    forceclosed = 0,
	    dmg = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_door",
	    hammerid = 3560125,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_door_brush102.KeyValueFromInt("solid", 2)
	func_door_brush102.KeyValueFromString("mins", "0 0 0")
	func_door_brush102.KeyValueFromString("maxs", "1 1 1")

::prop_dynamic3560136 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-7480, -4568, -128),
	    targetname = "prop_door_blu_stage1_gate1_2b",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 0,
	    SetBodyGroup = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    parentname = "door_blu_stage1_gate1_2b",
	    model = "models/props_gameplay/door_grate002_bottom.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    fadescale = 0,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    angles = QAngle(0, 90, 90),
	    classname = "prop_dynamic",
	    hammerid = 3560136
	})

::prop_dynamic3560140 <- SpawnEntityFromTable("prop_dynamic", {
	    origin = Vector(-7400, -4568, -128),
	    targetname = "prop_door_blu_stage1_gate1_2a",
	    StartDisabled = 0,
	    spawnflags = 0,
	    solid = 6,
	    skin = 0,
	    SetBodyGroup = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    RandomAnimation = 0,
	    pressuredelay = 0,
	    PerformanceMode = 0,
	    parentname = "door_blu_stage1_gate1_2a",
	    model = "models/props_gameplay/door_grate002_top.mdl",
	    mindxlevel = 0,
	    MinAnimTime = 5,
	    maxdxlevel = 0,
	    MaxAnimTime = 10,
	    fadescale = 0,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    angles = QAngle(0, 90, 90),
	    classname = "prop_dynamic",
	    hammerid = 3560140
	})

	local func_door_brush103 = SpawnEntityFromTable("func_door", {
	    model = "*76",
	    wait = -1.0,
	    unlocked_sentence = 0,
	    targetname = "door_blu_stage1_gate1_2b",
	    speed = 175,
	    spawnflags = 0,
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-7485.83, -4575, -128),
	    movedir = "0 180 0",
	    loopmovesound = 0,
	    locked_sentence = 0,
	    lip = 0,
	    ignoredebris = 0,
	    health = 0,
	    forceclosed = 0,
	    dmg = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_door",
	    hammerid = 3560151,
	    "OnFullyOpen#1": "prop_door_blu_stage1_gate1_2b,Disable,,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_door_brush103.KeyValueFromInt("solid", 2)
	func_door_brush103.KeyValueFromString("mins", "0 0 0")
	func_door_brush103.KeyValueFromString("maxs", "1 1 1")

	local func_door_brush104 = SpawnEntityFromTable("func_door", {
	    model = "*77",
	    wait = -1.0,
	    unlocked_sentence = 0,
	    targetname = "door_blu_stage1_gate1_2a",
	    speed = 175,
	    spawnflags = 0,
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-7395.56, -4575, -128),
	    movedir = "0 0 0",
	    loopmovesound = 0,
	    locked_sentence = 0,
	    lip = 0,
	    ignoredebris = 0,
	    health = 0,
	    forceclosed = 0,
	    dmg = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_door",
	    hammerid = 3560154,
	    "OnFullyOpen#1": "prop_door_blu_stage1_gate1_2a,Disable,,0,-1",
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_door_brush104.KeyValueFromInt("solid", 2)
	func_door_brush104.KeyValueFromString("mins", "0 0 0")
	func_door_brush104.KeyValueFromString("maxs", "1 1 1")

	local func_illusionary_brush105 = SpawnEntityFromTable("func_illusionary", {
	    model = "*78",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6512, -536, 156.21),
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_illusionary",
	    hammerid = 3560327,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_illusionary_brush105.KeyValueFromInt("solid", 2)
	func_illusionary_brush105.KeyValueFromString("mins", "0 0 0")
	func_illusionary_brush105.KeyValueFromString("maxs", "1 1 1")

	local func_illusionary_brush106 = SpawnEntityFromTable("func_illusionary", {
	    model = "*79",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6512, -504, 405.11),
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_illusionary",
	    hammerid = 3560342,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_illusionary_brush106.KeyValueFromInt("solid", 2)
	func_illusionary_brush106.KeyValueFromString("mins", "0 0 0")
	func_illusionary_brush106.KeyValueFromString("maxs", "1 1 1")

	local func_illusionary_brush107 = SpawnEntityFromTable("func_illusionary", {
	    model = "*80",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5536, -504, 405.11),
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_illusionary",
	    hammerid = 3560353,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_illusionary_brush107.KeyValueFromInt("solid", 2)
	func_illusionary_brush107.KeyValueFromString("mins", "0 0 0")
	func_illusionary_brush107.KeyValueFromString("maxs", "1 1 1")

	local func_brush_brush108 = SpawnEntityFromTable("func_brush", {
	    model = "*81",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solidbsp = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6399.5, -572.5, 95.43),
	    invert_exclusion = 0,
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_brush",
	    hammerid = 3560478,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_brush_brush108.KeyValueFromInt("solid", 2)
	func_brush_brush108.KeyValueFromString("mins", "0 0 0")
	func_brush_brush108.KeyValueFromString("maxs", "1 1 1")

::info_player_teamspawn3560544 <- SpawnEntityFromTable("info_player_teamspawn", {
	    origin = Vector(-5135.23, -1014.06, 97),
	    angles = QAngle(0, 180, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3560544
	})

	local func_brush_brush109 = SpawnEntityFromTable("func_brush", {
	    model = "*82",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solidbsp = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-7463.5, -3136.5, 134.07),
	    invert_exclusion = 0,
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_brush",
	    hammerid = 3560766,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_brush_brush109.KeyValueFromInt("solid", 2)
	func_brush_brush109.KeyValueFromString("mins", "0 0 0")
	func_brush_brush109.KeyValueFromString("maxs", "1 1 1")

::env_sprite3560799 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-7217.95, -3423.81, 135.023),
	    spawnflags = 1,
	    scale = 0.12,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "243 89 37",
	    renderamt = 200,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 3560799
	})

::item_ammopack_medium3560853 <- SpawnEntityFromTable("item_ammopack_medium", {
	    origin = Vector(-5039.69, -398.33, 290.256),
	    angles = QAngle(0, 270, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 3560853
	})

	local func_brush_brush110 = SpawnEntityFromTable("func_brush", {
	    model = "*83",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solidbsp = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-4960.5, -399.86, 346),
	    invert_exclusion = 0,
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_brush",
	    hammerid = 3560861,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_brush_brush110.KeyValueFromInt("solid", 2)
	func_brush_brush110.KeyValueFromString("mins", "0 0 0")
	func_brush_brush110.KeyValueFromString("maxs", "1 1 1")

::prop_physics_multiplayer3560963 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-6092.11, -4904.87, -95.75),
	    spawnflags = 260,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physicsmode = 3,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/orange_cone001.mdl",
	    minhealthdmg = 0,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 0.5,
	    fademindist = -1.0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(0, 97.5, 0),
	    classname = "prop_physics_multiplayer",
	    hammerid = 3560963
	})

::light3560987 <- SpawnEntityFromTable("light", {
	    origin = Vector(-5933, -5664.45, 1.33153),
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "224 64 10 14",
	    classname = "light",
	    hammerid = 3560987
	})

::env_sprite3560992 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-5497.94, -2758.88, 51.0342),
	    spawnflags = 1,
	    scale = 0.15,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "255 26 26",
	    renderamt = 240,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 3560992
	})

	local func_brush_brush111 = SpawnEntityFromTable("func_brush", {
	    model = "*84",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solidbsp = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6231.5, -4800.5, -129.51),
	    invert_exclusion = 0,
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_brush",
	    hammerid = 3560999,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_brush_brush111.KeyValueFromInt("solid", 2)
	func_brush_brush111.KeyValueFromString("mins", "0 0 0")
	func_brush_brush111.KeyValueFromString("maxs", "1 1 1")

::prop_physics_multiplayer3561036 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-6996.94, -4938.48, -191.75),
	    spawnflags = 260,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physicsmode = 3,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/orange_cone001.mdl",
	    minhealthdmg = 0,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 0.5,
	    fademindist = -1.0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(0, 97.5, 0),
	    classname = "prop_physics_multiplayer",
	    hammerid = 3561036
	})

::env_soundscape3561235 <- SpawnEntityFromTable("env_soundscape", {
	    origin = Vector(-6576.19, -5256, -160),
	    targetname = "Inside",
	    soundscape = "Gorge.Inside",
	    radius = -1.0,
	    classname = "env_soundscape",
	    hammerid = 3561235
	})

::env_soundscape3561246 <- SpawnEntityFromTable("env_soundscape", {
	    origin = Vector(-6806.52, -4512, -168),
	    targetname = "Outside",
	    soundscape = "Gorge.Outside",
	    radius = -1.0,
	    classname = "env_soundscape",
	    hammerid = 3561246
	})

::env_soundscape_proxy3561257 <- SpawnEntityFromTable("env_soundscape_proxy", {
	    origin = Vector(-6825.52, -4644.76, -184),
	    radius = -1.0,
	    MainSoundscapeName = "Inside",
	    classname = "env_soundscape_proxy",
	    hammerid = 3561257
	})

::env_soundscape_proxy3561260 <- SpawnEntityFromTable("env_soundscape_proxy", {
	    origin = Vector(-7433.46, -4638.67, -184),
	    radius = -1.0,
	    MainSoundscapeName = "Inside",
	    classname = "env_soundscape_proxy",
	    hammerid = 3561260
	})

::env_soundscape_proxy3561263 <- SpawnEntityFromTable("env_soundscape_proxy", {
	    origin = Vector(-5798, -4917.08, -88),
	    radius = -1.0,
	    MainSoundscapeName = "Inside",
	    classname = "env_soundscape_proxy",
	    hammerid = 3561263
	})

::env_soundscape_proxy3561266 <- SpawnEntityFromTable("env_soundscape_proxy", {
	    origin = Vector(-5157.76, -628.32, 104),
	    radius = -1.0,
	    MainSoundscapeName = "Inside",
	    classname = "env_soundscape_proxy",
	    hammerid = 3561266
	})

::env_soundscape_proxy3561269 <- SpawnEntityFromTable("env_soundscape_proxy", {
	    origin = Vector(-6849.78, -569.87, 40),
	    radius = -1.0,
	    MainSoundscapeName = "Inside",
	    classname = "env_soundscape_proxy",
	    hammerid = 3561269
	})

::env_soundscape_proxy3561272 <- SpawnEntityFromTable("env_soundscape_proxy", {
	    origin = Vector(-7430.81, -4523.68, -184),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 3561272
	})

::env_soundscape_proxy3561275 <- SpawnEntityFromTable("env_soundscape_proxy", {
	    origin = Vector(-5704.39, -4805.9, -88),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 3561275
	})

::env_soundscape_proxy3561278 <- SpawnEntityFromTable("env_soundscape_proxy", {
	    origin = Vector(-6264, -3664, 296),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 3561278
	})

::env_soundscape_proxy3561281 <- SpawnEntityFromTable("env_soundscape_proxy", {
	    origin = Vector(-6028.84, -1615.48, 224.02),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 3561281
	})

::env_soundscape_proxy3561284 <- SpawnEntityFromTable("env_soundscape_proxy", {
	    origin = Vector(-6831.44, -738.95, 40),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 3561284
	})

::env_soundscape_proxy3561287 <- SpawnEntityFromTable("env_soundscape_proxy", {
	    origin = Vector(-5188.01, -730.56, 104),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 3561287
	})

::ambient_generic3561290 <- SpawnEntityFromTable("ambient_generic", {
	    origin = Vector(-5744, -176, 208),
	    volstart = 0,
	    targetname = "tanks1",
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 0,
	    radius = 0,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "Ambient.MachineHum2",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 10,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0,
	    classname = "ambient_generic",
	    hammerid = 3561290
	})

::ambient_generic3561293 <- SpawnEntityFromTable("ambient_generic", {
	    origin = Vector(-7464, -3408, 232.199),
	    volstart = 0,
	    targetname = "machines2",
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 0,
	    radius = 0,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "Ambient.MachineHum",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 10,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0,
	    classname = "ambient_generic",
	    hammerid = 3561293
	})

::ambient_generic3561296 <- SpawnEntityFromTable("ambient_generic", {
	    origin = Vector(-5345.1, -547.64, 440.287),
	    volstart = 0,
	    targetname = "tanks2",
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 0,
	    radius = 0,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "Ambient.MachineHum2",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 10,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0,
	    classname = "ambient_generic",
	    hammerid = 3561296
	})

::ambient_generic3561299 <- SpawnEntityFromTable("ambient_generic", {
	    origin = Vector(-6582.69, -5592, -12.5819),
	    volstart = 0,
	    targetname = "machines4",
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 0,
	    radius = 0,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "Ambient.MachineHum",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 10,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0,
	    classname = "ambient_generic",
	    hammerid = 3561299
	})

::env_lightglow3562482 <- SpawnEntityFromTable("env_lightglow", {
	    origin = Vector(-5184, -936, 255.007),
	    VerticalGlowSize = 30,
	    spawnflags = 0,
	    rendercolor = "144 144 144",
	    OuterMaxDist = 800,
	    MinDist = 16,
	    MaxDist = 256,
	    HorizontalGlowSize = 30,
	    HDRColorScale = 1.0,
	    GlowProxySize = 8,
	    angles = QAngle(0, 0, 0),
	    classname = "env_lightglow",
	    hammerid = 3562482
	})

::light_spot3562658 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5559.75, -179.98, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 90, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3562658
	})

::light_spot3562667 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5772.99, -179.93, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 90, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3562667
	})

::light_spot3562676 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5657.91, -179.92, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 90, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3562676
	})

::light_spot3562685 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6381.17, -175.3, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 90, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3562685
	})

::light_spot3562690 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6283, -175.35, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 90, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3562690
	})

::light_spot3562707 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6496.25, -175.3, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 90, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3562707
	})

::light_spot3562712 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6336, -174, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3562712
	})

::light_spot3562721 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6474, -175, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3562721
	})

::light_spot3562760 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6187, -687, 467.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 180, 0),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 350",
	    _inner_cone = 25,
	    _fifty_percent_distance = 416,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 3562760
	})

::point_spotlight3562765 <- SpawnEntityFromTable("point_spotlight", {
	    origin = Vector(-6187, -687, 465.007),
	    spotlightwidth = 64,
	    spotlightlength = 256,
	    spawnflags = 3,
	    rendercolor = "154 154 154",
	    renderamt = 255,
	    mindxlevel = 90,
	    HDRColorScale = 1.0,
	    angles = QAngle(90, 180, 0),
	    classname = "point_spotlight",
	    hammerid = 3562765
	})

::light_spot3562775 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6849.92, -623.3, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 90, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3562775
	})

::light_spot3562780 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6965, -623.3, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 90, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3562780
	})

::light_spot3562793 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6751.75, -623.35, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 90, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3562793
	})

::light_spot3562802 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6327.69, -330.58, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 90, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3562802
	})

::light_spot3562811 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5701.76, -334.21, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 90, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3562811
	})

::item_healthkit_small3562908 <- SpawnEntityFromTable("item_healthkit_small", {
	    origin = Vector(-6320, -4424, 206),
	    angles = QAngle(0, 0, 0),
	    classname = "item_healthkit_small",
	    hammerid = 3562908
	})

::point_devshot_camera3562922 <- SpawnEntityFromTable("point_devshot_camera", {
	    origin = Vector(-6316, -4616, -51.3257),
	    FOV = 75,
	    angles = QAngle(0, 247.5, 0),
	    classname = "point_devshot_camera",
	    hammerid = 3562922
	})

::point_devshot_camera3562924 <- SpawnEntityFromTable("point_devshot_camera", {
	    origin = Vector(-4992.59, -2838.71, 521),
	    FOV = 75,
	    angles = QAngle(0, 219, 0),
	    classname = "point_devshot_camera",
	    hammerid = 3562924
	})

::point_devshot_camera3562926 <- SpawnEntityFromTable("point_devshot_camera", {
	    origin = Vector(-4992, -2832, 521),
	    FOV = 75,
	    angles = QAngle(0, 92, 0),
	    classname = "point_devshot_camera",
	    hammerid = 3562926
	})

::point_devshot_camera3562928 <- SpawnEntityFromTable("point_devshot_camera", {
	    origin = Vector(-3883.26, -1374.21, 588.5),
	    FOV = 75,
	    angles = QAngle(0, 187.5, 0),
	    classname = "point_devshot_camera",
	    hammerid = 3562928
	})

::prop_physics_multiplayer3563100 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-5905.75, -3869.21, -91.2204),
	    spawnflags = 4,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/can_crushed002.mdl",
	    minhealthdmg = 0,
	    mindxlevel = 90,
	    maxdxlevel = 0,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 1,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(0, 75, 1),
	    classname = "prop_physics_multiplayer",
	    hammerid = 3563100
	})

::prop_physics_multiplayer3563104 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-5969.75, -3885.21, -91.2204),
	    spawnflags = 4,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/can_crushed001.mdl",
	    minhealthdmg = 0,
	    mindxlevel = 90,
	    maxdxlevel = 0,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 1,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(0, 15, 1),
	    classname = "prop_physics_multiplayer",
	    hammerid = 3563104
	})

::prop_physics_multiplayer3563108 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-6425.75, -3829.21, -91.2204),
	    spawnflags = 4,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/bottle001.mdl",
	    minhealthdmg = 0,
	    mindxlevel = 90,
	    maxdxlevel = 0,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 1,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(15, 120, 91),
	    classname = "prop_physics_multiplayer",
	    hammerid = 3563108
	})

::prop_physics_multiplayer3563112 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-6480, -3856, -85.2194),
	    spawnflags = 256,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    physdamagescale = 0.1,
	    model = "models/props_gameplay/can_crushed001.mdl",
	    mindxlevel = 90,
	    inertiaScale = 1.0,
	    fadescale = 1,
	    fademindist = -1.0,
	    angles = QAngle(0, 0, 0),
	    classname = "prop_physics_multiplayer",
	    hammerid = 3563112
	})

::prop_physics_multiplayer3563116 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-6272.96, -3682.13, -89.4384),
	    spawnflags = 4,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/bottle001.mdl",
	    minhealthdmg = 0,
	    mindxlevel = 90,
	    maxdxlevel = 0,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 1,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(15, 336, -89),
	    classname = "prop_physics_multiplayer",
	    hammerid = 3563116
	})

::prop_physics_multiplayer3563120 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-6280, -3984, -93.9694),
	    spawnflags = 260,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physicsmode = 0,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/orange_cone001.mdl",
	    minhealthdmg = 0,
	    mindxlevel = 90,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 0.5,
	    fademindist = -1.0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(0, 175, 0),
	    classname = "prop_physics_multiplayer",
	    hammerid = 3563120
	})

::prop_physics_multiplayer3563124 <- SpawnEntityFromTable("prop_physics_multiplayer", {
	    origin = Vector(-6300.96, -3534.13, -90.4384),
	    spawnflags = 4,
	    skin = 0,
	    shadowcastdist = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    pressuredelay = 0,
	    physdamagescale = 0.1,
	    PerformanceMode = 0,
	    nodamageforces = 0,
	    model = "models/props_gameplay/can_crushed001.mdl",
	    minhealthdmg = 0,
	    mindxlevel = 90,
	    maxdxlevel = 0,
	    massScale = 0,
	    inertiaScale = 1.0,
	    forcetoenablemotion = 0,
	    fadescale = 1,
	    fademindist = -1.0,
	    fademaxdist = 0,
	    ExplodeRadius = 0,
	    ExplodeDamage = 0,
	    disableshadows = 1,
	    disablereceiveshadows = 0,
	    Damagetype = 0,
	    damagetoenablemotion = 0,
	    angles = QAngle(0, 15, 1),
	    classname = "prop_physics_multiplayer",
	    hammerid = 3563124
	})

::light_spot3563146 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5184, -936, 252.007),
	    style = 0,
	    pitch = -90.0,
	    angles = QAngle(-90, 90, 0),
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 400",
	    _inner_cone = 45,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3563146
	})

	local func_respawnroom_brush112 = SpawnEntityFromTable("func_respawnroom", {
	    model = "*85",
	    TeamNum = 3,
	    targetname = "respawnroom_stage2_blue1",
	    StartDisabled = 0,
	    classname = "func_respawnroom",
	    hammerid = 3563257,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_respawnroom_brush112.KeyValueFromInt("solid", 2)
	func_respawnroom_brush112.KeyValueFromString("mins", "0 0 0")
	func_respawnroom_brush112.KeyValueFromString("maxs", "1 1 1")

	local func_brush_brush113 = SpawnEntityFromTable("func_brush", {
	    model = "*86",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solidbsp = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6096.5, -2344.5, 366.42),
	    invert_exclusion = 0,
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_brush",
	    hammerid = 3563271,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_brush_brush113.KeyValueFromInt("solid", 2)
	func_brush_brush113.KeyValueFromString("mins", "0 0 0")
	func_brush_brush113.KeyValueFromString("maxs", "1 1 1")

	local func_nobuild_brush114 = SpawnEntityFromTable("func_nobuild", {
	    model = "*87",
	    TeamNum = 0,
	    StartDisabled = 0,
	    classname = "func_nobuild",
	    hammerid = 3563346,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_nobuild_brush114.KeyValueFromInt("solid", 2)
	func_nobuild_brush114.KeyValueFromString("mins", "0 0 0")
	func_nobuild_brush114.KeyValueFromString("maxs", "1 1 1")

	local func_nobuild_brush115 = SpawnEntityFromTable("func_nobuild", {
	    model = "*88",
	    TeamNum = 0,
	    StartDisabled = 0,
	    classname = "func_nobuild",
	    hammerid = 3563348,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_nobuild_brush115.KeyValueFromInt("solid", 2)
	func_nobuild_brush115.KeyValueFromString("mins", "0 0 0")
	func_nobuild_brush115.KeyValueFromString("maxs", "1 1 1")

::info_player_start3563877 <- SpawnEntityFromTable("info_player_start", {
	    origin = Vector(-6345.25, 186.37, 96.8973),
	    angles = QAngle(0, 180, 0),
	    classname = "info_player_start",
	    hammerid = 3563877
	})

::item_healthkit_medium3563906 <- SpawnEntityFromTable("item_healthkit_medium", {
	    origin = Vector(-5344, 400, 96.2562),
	    angles = QAngle(0, 270, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 3563906
	})

::item_ammopack_medium3563995 <- SpawnEntityFromTable("item_ammopack_medium", {
	    origin = Vector(-6552, 420, 292.256),
	    angles = QAngle(0, 180, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 3563995
	})

::item_healthkit_medium3563997 <- SpawnEntityFromTable("item_healthkit_medium", {
	    origin = Vector(-6552, 484, 292.256),
	    angles = QAngle(0, 180, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 3563997
	})

::light_spot3563999 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6016.67, 569.33, 449.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 3563999
	})

::light3564121 <- SpawnEntityFromTable("light", {
	    origin = Vector(-5472.25, 224, 268.718),
	    _zero_percent_distance = 250,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "97 199 193 16",
	    _fifty_percent_distance = 15,
	    classname = "light",
	    hammerid = 3564121
	})

	local func_brush_brush116 = SpawnEntityFromTable("func_brush", {
	    model = "*89",
	    vrad_brush_cast_shadows = 0,
	    targetname = "brush_stage2_sneakyroutedoor1",
	    StartDisabled = 1,
	    spawnflags = 2,
	    Solidity = 0,
	    solidbsp = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6608, 224, 166),
	    invert_exclusion = 0,
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_brush",
	    hammerid = 3564152,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_brush_brush116.KeyValueFromInt("solid", 2)
	func_brush_brush116.KeyValueFromString("mins", "0 0 0")
	func_brush_brush116.KeyValueFromString("maxs", "1 1 1")

::light3564218 <- SpawnEntityFromTable("light", {
	    origin = Vector(-7035, 82.16, 112.838),
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "224 64 10 14",
	    classname = "light",
	    hammerid = 3564218
	})

	local func_brush_brush117 = SpawnEntityFromTable("func_brush", {
	    model = "*90",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solidbsp = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-7009.75, 639.5, 170),
	    invert_exclusion = 0,
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_brush",
	    hammerid = 3564234,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_brush_brush117.KeyValueFromInt("solid", 2)
	func_brush_brush117.KeyValueFromString("mins", "0 0 0")
	func_brush_brush117.KeyValueFromString("maxs", "1 1 1")

	local func_brush_brush118 = SpawnEntityFromTable("func_brush", {
	    model = "*91",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solidbsp = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6471.5, 336.5, 342.56),
	    invert_exclusion = 0,
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_brush",
	    hammerid = 3564269,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_brush_brush118.KeyValueFromInt("solid", 2)
	func_brush_brush118.KeyValueFromString("mins", "0 0 0")
	func_brush_brush118.KeyValueFromString("maxs", "1 1 1")

	local func_illusionary_brush119 = SpawnEntityFromTable("func_illusionary", {
	    model = "*92",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6780, 631.5, 372),
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_illusionary",
	    hammerid = 3564273,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_illusionary_brush119.KeyValueFromInt("solid", 2)
	func_illusionary_brush119.KeyValueFromString("mins", "0 0 0")
	func_illusionary_brush119.KeyValueFromString("maxs", "1 1 1")

	local func_illusionary_brush120 = SpawnEntityFromTable("func_illusionary", {
	    model = "*93",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6848, 704, 546),
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_illusionary",
	    hammerid = 3564276,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_illusionary_brush120.KeyValueFromInt("solid", 2)
	func_illusionary_brush120.KeyValueFromString("mins", "0 0 0")
	func_illusionary_brush120.KeyValueFromString("maxs", "1 1 1")

::item_ammopack_medium3564322 <- SpawnEntityFromTable("item_ammopack_medium", {
	    origin = Vector(-5280, 400, 96.2562),
	    angles = QAngle(0, 270, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 3564322
	})

::env_sprite3564324 <- SpawnEntityFromTable("env_sprite", {
	    origin = Vector(-6553.25, 525.91, 411.455),
	    spawnflags = 1,
	    scale = 0.15,
	    rendermode = 9,
	    renderfx = 0,
	    rendercolor = "255 26 26",
	    renderamt = 240,
	    model = "materials/Sprites/light_glow03.vmt",
	    mindxlevel = 0,
	    maxdxlevel = 0,
	    HDRColorScale = 1.0,
	    GlowProxySize = 4,
	    framerate = 10.0,
	    disablereceiveshadows = 0,
	    classname = "env_sprite",
	    hammerid = 3564324
	})

::item_ammopack_full3564327 <- SpawnEntityFromTable("item_ammopack_full", {
	    origin = Vector(-6879.13, -110.48, 36.2361),
	    angles = QAngle(0, 90, 0),
	    classname = "item_ammopack_full",
	    hammerid = 3564327
	})

::item_healthkit_medium3564329 <- SpawnEntityFromTable("item_healthkit_medium", {
	    origin = Vector(-6815.13, -110.48, 36.2361),
	    angles = QAngle(0, 90, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 3564329
	})

::ambient_generic3564331 <- SpawnEntityFromTable("ambient_generic", {
	    origin = Vector(-5333.15, -107.88, 214.946),
	    volstart = 0,
	    targetname = "tanks3",
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 0,
	    radius = 0,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "Ambient.MachineHum2",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 10,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0,
	    classname = "ambient_generic",
	    hammerid = 3564331
	})

::ambient_generic3564334 <- SpawnEntityFromTable("ambient_generic", {
	    origin = Vector(-5300.02, 628.44, 365.44),
	    volstart = 0,
	    targetname = "machines3",
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 0,
	    radius = 0,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "Ambient.MachineHum",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 10,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0,
	    classname = "ambient_generic",
	    hammerid = 3564334
	})

::light_spot3564887 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5336, -57, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 3564887
	})

::light_spot3564900 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5679, 534.3, 273.264),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3564900
	})

::light_spot3564909 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5645, -156, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3564909
	})

::light_spot3564918 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5742, -156.7, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3564918
	})

::light_spot3564923 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5310, 406, 277.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 3564923
	})

::light_spot3564932 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5074, 559, 273.013),
	    style = 0,
	    spawnflags = 0,
	    pitch = -88.5,
	    angles = QAngle(-88.5, 270, -90.0001),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 400",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 50,
	    classname = "light_spot",
	    hammerid = 3564932
	})

::light_spot3565017 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6851.17, 62.7002, 190.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 90, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3565017
	})

::light_spot3565022 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6966.25, 62.7002, 190.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 90, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3565022
	})

::light_spot3565035 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6753, 62.6499, 190.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 90, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3565035
	})

::light_spot3565048 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5874, 493.45, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 90, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3565048
	})

::light_spot3565057 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6101.52, 494.7, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 90, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3565057
	})

::light_spot3565066 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5079.76, 608.82, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 90, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3565066
	})

::light_spot3565075 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5304.83, 605.64, 294.987),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 90, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "252 250 248 200",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3565075
	})

	local func_brush_brush121 = SpawnEntityFromTable("func_brush", {
	    model = "*94",
	    vrad_brush_cast_shadows = 0,
	    targetname = "brush_stage2_sneakyroutedoor1",
	    StartDisabled = 1,
	    spawnflags = 2,
	    Solidity = 0,
	    solidbsp = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6016, 656, 352),
	    invert_exclusion = 0,
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_brush",
	    hammerid = 3565189,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_brush_brush121.KeyValueFromInt("solid", 2)
	func_brush_brush121.KeyValueFromString("mins", "0 0 0")
	func_brush_brush121.KeyValueFromString("maxs", "1 1 1")

::ambient_generic3565330 <- SpawnEntityFromTable("ambient_generic", {
	    origin = Vector(-6027.63, 883.82, 456),
	    volstart = 0,
	    targetname = "machines5",
	    spinup = 0,
	    spindown = 0,
	    spawnflags = 0,
	    radius = 0,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "Ambient.MachineHum",
	    lfotype = 0,
	    lforate = 0,
	    lfomodvol = 0,
	    lfomodpitch = 0,
	    health = 10,
	    fadeoutsecs = 0,
	    fadeinsecs = 0,
	    cspinup = 0,
	    classname = "ambient_generic",
	    hammerid = 3565330
	})

	local func_illusionary_brush122 = SpawnEntityFromTable("func_illusionary", {
	    model = "*95",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6936, 792, 220.21),
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_illusionary",
	    hammerid = 3565458,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_illusionary_brush122.KeyValueFromInt("solid", 2)
	func_illusionary_brush122.KeyValueFromString("mins", "0 0 0")
	func_illusionary_brush122.KeyValueFromString("maxs", "1 1 1")

	local func_brush_brush123 = SpawnEntityFromTable("func_brush", {
	    model = "*96",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solidbsp = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6591.48, 873.04, 154),
	    invert_exclusion = 0,
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_brush",
	    hammerid = 3565488,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_brush_brush123.KeyValueFromInt("solid", 2)
	func_brush_brush123.KeyValueFromString("mins", "0 0 0")
	func_brush_brush123.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush124 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 24,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565665,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush124.KeyValueFromInt("solid", 2)
	func_areaportal_brush124.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush124.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush125 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 25,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565667,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush125.KeyValueFromInt("solid", 2)
	func_areaportal_brush125.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush125.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush126 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 26,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565669,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush126.KeyValueFromInt("solid", 2)
	func_areaportal_brush126.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush126.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush127 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 27,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565671,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush127.KeyValueFromInt("solid", 2)
	func_areaportal_brush127.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush127.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush128 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 28,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565673,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush128.KeyValueFromInt("solid", 2)
	func_areaportal_brush128.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush128.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush129 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 29,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565675,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush129.KeyValueFromInt("solid", 2)
	func_areaportal_brush129.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush129.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush130 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 30,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565677,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush130.KeyValueFromInt("solid", 2)
	func_areaportal_brush130.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush130.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush131 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 31,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565679,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush131.KeyValueFromInt("solid", 2)
	func_areaportal_brush131.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush131.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush132 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 32,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565744,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush132.KeyValueFromInt("solid", 2)
	func_areaportal_brush132.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush132.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush133 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 33,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565746,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush133.KeyValueFromInt("solid", 2)
	func_areaportal_brush133.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush133.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush134 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 34,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565748,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush134.KeyValueFromInt("solid", 2)
	func_areaportal_brush134.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush134.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush135 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 35,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565750,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush135.KeyValueFromInt("solid", 2)
	func_areaportal_brush135.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush135.KeyValueFromString("maxs", "1 1 1")

	local func_occluder_brush136 = SpawnEntityFromTable("func_occluder", {
	    occludernumber = 3,
	    model = "",
	    StartActive = 1,
	    classname = "func_occluder",
	    hammerid = 3565752,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_occluder_brush136.KeyValueFromInt("solid", 2)
	func_occluder_brush136.KeyValueFromString("mins", "0 0 0")
	func_occluder_brush136.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush137 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 36,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565756,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush137.KeyValueFromInt("solid", 2)
	func_areaportal_brush137.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush137.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush138 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 37,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565758,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush138.KeyValueFromInt("solid", 2)
	func_areaportal_brush138.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush138.KeyValueFromString("maxs", "1 1 1")

	local func_occluder_brush139 = SpawnEntityFromTable("func_occluder", {
	    occludernumber = 4,
	    model = "",
	    StartActive = 1,
	    classname = "func_occluder",
	    hammerid = 3565760,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_occluder_brush139.KeyValueFromInt("solid", 2)
	func_occluder_brush139.KeyValueFromString("mins", "0 0 0")
	func_occluder_brush139.KeyValueFromString("maxs", "1 1 1")

	local func_brush_brush140 = SpawnEntityFromTable("func_brush", {
	    model = "*97",
	    vrad_brush_cast_shadows = 0,
	    targetname = "brush_stage2_sneakyroutedoor1",
	    StartDisabled = 1,
	    spawnflags = 2,
	    Solidity = 0,
	    solidbsp = 0,
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6792, 952, 166),
	    invert_exclusion = 0,
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_brush",
	    hammerid = 3565827,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_brush_brush140.KeyValueFromInt("solid", 2)
	func_brush_brush140.KeyValueFromString("mins", "0 0 0")
	func_brush_brush140.KeyValueFromString("maxs", "1 1 1")

	local func_areaportal_brush141 = SpawnEntityFromTable("func_areaportal", {
	    portalnumber = 38,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565830,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_areaportal_brush141.KeyValueFromInt("solid", 2)
	func_areaportal_brush141.KeyValueFromString("mins", "0 0 0")
	func_areaportal_brush141.KeyValueFromString("maxs", "1 1 1")

::logic_relay"OnTrigger#1": "timer_round,AddTime,600,0,-1" <- SpawnEntityFromTable("logic_relay", {
	    origin = Vector(-4240, 4608, 456),
	    targetname = "relay_resettimer",
	    StartDisabled = 0,
	    spawnflags = 0,
	    classname = "logic_relay",
	    hammerid = 3742397,
	    "OnTrigger#1": "timer_round,AddTime,600,0,-1"
	})

::team_round_timer"OnFinished#1": "end_round_suddendeath,RoundWin,,0,-1" <- SpawnEntityFromTable("team_round_timer", {
	    origin = Vector(-4192, 4584, 456),
	    timer_length = 600,
	    targetname = "timer_round",
	    StartDisabled = 0,
	    start_paused = 0,
	    show_time_remaining = 1,
	    show_in_hud = 1,
	    reset_time = 0,
	    max_length = 600,
	    auto_countdown = 1,
	    classname = "team_round_timer",
	    hammerid = 3742399,
	    "OnFinished#1": "end_round_suddendeath,RoundWin,,0,-1"
	})

::team_control_point_master3742401 <- SpawnEntityFromTable("team_control_point_master", {
	    origin = Vector(-4192, 4584, 424),
	    team_base_icon_3 = "sprites/obj_icons/icon_base_blu",
	    team_base_icon_2 = "sprites/obj_icons/icon_base_red",
	    targetname = "master_control_point",
	    StartDisabled = 0,
	    classname = "team_control_point_master",
	    hammerid = 3742401
	})

::game_round_win3742403 <- SpawnEntityFromTable("game_round_win", {
	    origin = Vector(-4192, 4584, 392),
	    TeamNum = 0,
	    targetname = "end_round_suddendeath",
	    force_map_reset = 1,
	    classname = "game_round_win",
	    hammerid = 3742403
	})

	local func_respawnroom_brush142 = SpawnEntityFromTable("func_respawnroom", {
	    model = "*98",
	    TeamNum = 3,
	    targetname = "respawnroom_stage3_blue1",
	    StartDisabled = 0,
	    classname = "func_respawnroom",
	    hammerid = 3758971,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_respawnroom_brush142.KeyValueFromInt("solid", 2)
	func_respawnroom_brush142.KeyValueFromString("mins", "0 0 0")
	func_respawnroom_brush142.KeyValueFromString("maxs", "1 1 1")

	local func_respawnroom_brush143 = SpawnEntityFromTable("func_respawnroom", {
	    model = "*99",
	    TeamNum = 2,
	    targetname = "respawnroom_stage3_red1",
	    StartDisabled = 0,
	    classname = "func_respawnroom",
	    hammerid = 3774039,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_respawnroom_brush143.KeyValueFromInt("solid", 2)
	func_respawnroom_brush143.KeyValueFromString("mins", "0 0 0")
	func_respawnroom_brush143.KeyValueFromString("maxs", "1 1 1")

::ambient_generic3774350 <- SpawnEntityFromTable("ambient_generic", {
	    origin = Vector(-4240, 4584, 416),
	    targetname = "sound_capallpoints",
	    spawnflags = 49,
	    radius = -1.0,
	    preset = 0,
	    pitchstart = 100,
	    pitch = 100,
	    message = "Announcer.CaptureControlPoints",
	    health = 10,
	    classname = "ambient_generic",
	    hammerid = 3774350
	})

::light3801199 <- SpawnEntityFromTable("light", {
	    origin = Vector(-7224, -296, 212),
	    style = 0,
	    spawnflags = 0,
	    _zero_percent_distance = 200,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "208 67 6 75",
	    _hardfalloff = 0,
	    _fifty_percent_distance = 20,
	    _distance = 0,
	    _constant_attn = 0,
	    classname = "light",
	    hammerid = 3801199
	})

::light3801229 <- SpawnEntityFromTable("light", {
	    origin = Vector(-7832, -504, 192),
	    style = 0,
	    spawnflags = 0,
	    _zero_percent_distance = 200,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "208 67 6 75",
	    _hardfalloff = 0,
	    _fifty_percent_distance = 20,
	    _distance = 0,
	    _constant_attn = 0,
	    classname = "light",
	    hammerid = 3801229
	})

::item_ammopack_medium3881934 <- SpawnEntityFromTable("item_ammopack_medium", {
	    origin = Vector(-6632, 912, 288.256),
	    angles = QAngle(0, 270, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 3881934
	})

::item_healthkit_small3881936 <- SpawnEntityFromTable("item_healthkit_small", {
	    origin = Vector(-6672, 912, 288.256),
	    angles = QAngle(0, 270, 0),
	    classname = "item_healthkit_small",
	    hammerid = 3881936
	})

::item_healthkit_full3882757 <- SpawnEntityFromTable("item_healthkit_full", {
	    origin = Vector(-6062, 1348, -95.7649),
	    angles = QAngle(0, 270, 0),
	    classname = "item_healthkit_full",
	    hammerid = 3882757
	})

::light_spot3189625 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5852, 975.17, -667.788),
	    spawnflags = 0,
	    pitch = -75.0,
	    angles = QAngle(-75, 90, 90),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 75",
	    _inner_cone = 35,
	    _fifty_percent_distance = 192,
	    _exponent = 1,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 3189625
	})

::light_spot3207773 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5670.87, 1036, -202.717),
	    spawnflags = 0,
	    pitch = -75.0,
	    angles = QAngle(-75, 180, 90),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 75",
	    _inner_cone = 35,
	    _fifty_percent_distance = 192,
	    _exponent = 1,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 3207773
	})

::light_spot3207836 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5686.64, 1165.76, -349.791),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 50",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3207836
	})

::light_spot3207886 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5687.58, 1361.29, -349.791),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 50",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3207886
	})

::light_spot3207904 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5814.86, 990.08, -349.791),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 50",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3207904
	})

::light_spot3207922 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-5813.84, 1049.81, -349.791),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 50",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3207922
	})

::light_spot3207940 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6024.04, 991.767, -349.791),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 50",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3207940
	})

::light_spot3207958 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6024.43, 1047.37, -349.791),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 50",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3207958
	})

::light_spot3207976 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6271.63, 984.892, -349.791),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 50",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3207976
	})

::light_spot3207994 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6274.37, 1050.2, -349.791),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 50",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3207994
	})

::light_spot3208012 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6298.71, 1138.94, -349.791),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 50",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3208012
	})

::light_spot3208030 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6296.06, 1330.16, -349.791),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 50",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3208030
	})

::light_spot3208048 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6297.59, 1521.67, -349.791),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 50",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3208048
	})

::light_spot3208066 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6299.63, 1718.46, -349.791),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 50",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3208066
	})

::light_spot3208084 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6300.98, 906.457, -349.791),
	    style = 0,
	    spawnflags = 0,
	    pitch = 88.5,
	    angles = QAngle(88.5, 270, 89.9999),
	    _zero_percent_distance = 0,
	    _quadratic_attn = 1,
	    _linear_attn = 0,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 50",
	    _inner_cone = 25,
	    _hardfalloff = 0,
	    _fifty_percent_distance = 0,
	    _exponent = 1,
	    _distance = 0,
	    _constant_attn = 0,
	    _cone = 60,
	    classname = "light_spot",
	    hammerid = 3208084
	})

::light_spot3208463 <- SpawnEntityFromTable("light_spot", {
	    origin = Vector(-6360.83, 962, -177),
	    spawnflags = 0,
	    pitch = -75.0,
	    angles = QAngle(-75, 0, 90),
	    _zero_percent_distance = 512,
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "255 255 255 75",
	    _inner_cone = 35,
	    _fifty_percent_distance = 192,
	    _exponent = 1,
	    _cone = 55,
	    classname = "light_spot",
	    hammerid = 3208463
	})

	local func_occluder_brush144 = SpawnEntityFromTable("func_occluder", {
	    occludernumber = 5,
	    model = "",
	    StartActive = 1,
	    classname = "func_occluder",
	    hammerid = 3948343,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_occluder_brush144.KeyValueFromInt("solid", 2)
	func_occluder_brush144.KeyValueFromString("mins", "0 0 0")
	func_occluder_brush144.KeyValueFromString("maxs", "1 1 1")

	local func_respawnroomvisualizer_brush145 = SpawnEntityFromTable("func_respawnroomvisualizer", {
	    model = "*100",
	    vrad_brush_cast_shadows = 0,
	    StartDisabled = 0,
	    spawnflags = 2,
	    Solidity = 1,
	    solid_to_enemies = 1,
	    respawnroomname = "respawnroom_stage1_blu",
	    rendermode = 0,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-7440, -4576, -133.35),
	    InputFilter = 0,
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_respawnroomvisualizer",
	    hammerid = 3960658,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_respawnroomvisualizer_brush145.KeyValueFromInt("solid", 2)
	func_respawnroomvisualizer_brush145.KeyValueFromString("mins", "0 0 0")
	func_respawnroomvisualizer_brush145.KeyValueFromString("maxs", "1 1 1")

	local func_nobuild_brush146 = SpawnEntityFromTable("func_nobuild", {
	    model = "*101",
	    TeamNum = 3,
	    StartDisabled = 0,
	    classname = "func_nobuild",
	    hammerid = 4032097,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_nobuild_brush146.KeyValueFromInt("solid", 2)
	func_nobuild_brush146.KeyValueFromString("mins", "0 0 0")
	func_nobuild_brush146.KeyValueFromString("maxs", "1 1 1")

	local func_nobuild_brush147 = SpawnEntityFromTable("func_nobuild", {
	    model = "*102",
	    TeamNum = 2,
	    StartDisabled = 0,
	    classname = "func_nobuild",
	    hammerid = 4032128,
	    mins = "0 0 0",
	    maxs = "1 1 1"
	})
	func_nobuild_brush147.KeyValueFromInt("solid", 2)
	func_nobuild_brush147.KeyValueFromString("mins", "0 0 0")
	func_nobuild_brush147.KeyValueFromString("maxs", "1 1 1")

