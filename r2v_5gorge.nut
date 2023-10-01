
	local env_tonemap_controller1 = SpawnEntityFromTable("env_tonemap_controller", {
	    origin = Vector(-4256, 4632, 392),
	    targetname = "tonemap_global",
	    classname = "env_tonemap_controller",
	    hammerid = 1130551
	})

	local logic_auto2 = SpawnEntityFromTable("logic_auto", {
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

	local water_lod_control3 = SpawnEntityFromTable("water_lod_control", {
	    origin = Vector(-4256, 4584, 392),
	    targetname = "water_controller",
	    cheapwaterstartdistance = 1000,
	    cheapwaterenddistance = 2000,
	    classname = "water_lod_control",
	    hammerid = 1130557
	})

	local filter_activator_tfteam4 = SpawnEntityFromTable("filter_activator_tfteam", {
	    origin = Vector(-4256, 4680, 392),
	    TeamNum = 3,
	    targetname = "filter_team_blue",
	    Negated = "Allow entities that match criteria",
	    classname = "filter_activator_tfteam",
	    hammerid = 1130559
	})

	local filter_activator_tfteam5 = SpawnEntityFromTable("filter_activator_tfteam", {
	    origin = Vector(-4256, 4656, 392),
	    TeamNum = 2,
	    targetname = "filter_team_red",
	    Negated = "Allow entities that match criteria",
	    classname = "filter_activator_tfteam",
	    hammerid = 1130561
	})

	local point_spotlight6 = SpawnEntityFromTable("point_spotlight", {
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

	local light_spot7 = SpawnEntityFromTable("light_spot", {
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

	local point_spotlight8 = SpawnEntityFromTable("point_spotlight", {
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

	local light_spot9 = SpawnEntityFromTable("light_spot", {
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

	local point_spotlight10 = SpawnEntityFromTable("point_spotlight", {
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

	local light_spot11 = SpawnEntityFromTable("light_spot", {
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

	local light_spot12 = SpawnEntityFromTable("light_spot", {
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

	local env_lightglow13 = SpawnEntityFromTable("env_lightglow", {
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

	local light_spot14 = SpawnEntityFromTable("light_spot", {
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

	local env_lightglow15 = SpawnEntityFromTable("env_lightglow", {
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

	local point_spotlight16 = SpawnEntityFromTable("point_spotlight", {
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

	local light_spot17 = SpawnEntityFromTable("light_spot", {
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

	local point_spotlight18 = SpawnEntityFromTable("point_spotlight", {
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

	local light_spot19 = SpawnEntityFromTable("light_spot", {
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

