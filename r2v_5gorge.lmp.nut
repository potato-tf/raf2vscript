}
::           � �  { <- function()
{
	local _brush1 = SpawnEntityFromTable("", {
	               � � = "  {",
	    world_maxs = "256 9264 1312",
	    world_mins = "-12288 -6576 -800",
	    skyname = "sky_trainyard_01",
	    maxpropscreenwidth = -1.0,
	    detailvbsp = "detail_trainyard.vbsp",
	    detailmaterial = "detail/detailsprites_trainyard",
	    classname = "worldspawn",
	    mapversion = 3295,
	    hammerid = 0
	})
	_brush1.KeyValueFromInt("solid", 2)
	_brush1.KeyValueFromString("world_mins", "-12288 -6576 -800")
	_brush1.KeyValueFromString("world_maxs", "256 9264 1312")

}
::"origin" "-4256 4632 392" <- function()
{
	local 1 = SpawnEntityFromTable("", {
	    origin = Vector(-4256, 4632, 392),
	    targetname = "tonemap_global",
	    classname = "env_tonemap_controller",
	    hammerid = 1130551
	})

}
::"origin" "-4256 4632 416" <- function()
{
	local 2 = SpawnEntityFromTable("", {
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

}
::"origin" "-4256 4584 392" <- function()
{
	local 3 = SpawnEntityFromTable("", {
	    origin = Vector(-4256, 4584, 392),
	    targetname = "water_controller",
	    cheapwaterstartdistance = 1000,
	    cheapwaterenddistance = 2000,
	    classname = "water_lod_control",
	    hammerid = 1130557
	})

}
::"origin" "-4256 4680 392" <- function()
{
	local 4 = SpawnEntityFromTable("", {
	    origin = Vector(-4256, 4680, 392),
	    TeamNum = 3,
	    targetname = "filter_team_blue",
	    Negated = "Allow entities that match criteria",
	    classname = "filter_activator_tfteam",
	    hammerid = 1130559
	})

}
::"origin" "-4256 4656 392" <- function()
{
	local 5 = SpawnEntityFromTable("", {
	    origin = Vector(-4256, 4656, 392),
	    TeamNum = 2,
	    targetname = "filter_team_red",
	    Negated = "Allow entities that match criteria",
	    classname = "filter_activator_tfteam",
	    hammerid = 1130561
	})

}
::"origin" "-6400 5296 174.007" <- function()
{
	local 6 = SpawnEntityFromTable("", {
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

}
::"origin" "-6400 5296 176.007" <- function()
{
	local 7 = SpawnEntityFromTable("", {
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

}
::"origin" "-6016 5296 174.007" <- function()
{
	local 8 = SpawnEntityFromTable("", {
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

}
::"origin" "-6016 5296 176.007" <- function()
{
	local 9 = SpawnEntityFromTable("", {
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

}
::"origin" "-5648 5296 174.007" <- function()
{
	local 10 = SpawnEntityFromTable("", {
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

}
::"origin" "-5648 5296 176.007" <- function()
{
	local 11 = SpawnEntityFromTable("", {
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

}
::"origin" "-4672 5984 222.007" <- function()
{
	local 12 = SpawnEntityFromTable("", {
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

}
::"origin" "-4672 5984 225.007" <- function()
{
	local 13 = SpawnEntityFromTable("", {
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

}
::"origin" "-6688 5440 94.007" <- function()
{
	local 14 = SpawnEntityFromTable("", {
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

}
::"origin" "-6688 5440 97.007" <- function()
{
	local 15 = SpawnEntityFromTable("", {
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

}
::"origin" "-6832 2512 433.007" <- function()
{
	local 16 = SpawnEntityFromTable("", {
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

}
::"origin" "-6832 2512 435.007" <- function()
{
	local 17 = SpawnEntityFromTable("", {
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

}
::"origin" "-6156 3373 465.007" <- function()
{
	local 18 = SpawnEntityFromTable("", {
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

}
::"origin" "-6156 3373 467.007" <- function()
{
	local 19 = SpawnEntityFromTable("", {
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

}
::"portalnumber" "1" <- function()
{
	local 20 = SpawnEntityFromTable("", {
	    portalnumber = 1,
	    targetname = "portal_main_gate_1",
	    target = "door_main_gate_1",
	    StartOpen = 0,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1199549
	})

}
::"origin" "-5184 3369 31" <- function()
{
	local 21 = SpawnEntityFromTable("", {
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

}
::"model" "*1" <- function()
{
	local 22 = SpawnEntityFromTable("", {
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
	    "OnClose#2": "prop_main_gate_1,SetAnimation,close,0,-1"
	})

}
::"model" "*2" <- function()
{
	local 23 = SpawnEntityFromTable("", {
	    model = "*2",
	    wait = 0,
	    targetname = "trigger_main_gate_1",
	    StartDisabled = 0,
	    spawnflags = 1,
	    origin = Vector(-5184, 3356, 80),
	    classname = "trigger_multiple",
	    hammerid = 1199558,
	    "OnStartTouchAll#1": "door_main_gate_1,Open,,0,-1",
	    "OnUser1#2": "door_main_gate_1,Close,,0,-1"
	})

}
::"origin" "-5183.93 3376.08 85" <- function()
{
	local 24 = SpawnEntityFromTable("", {
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

}
::"portalnumber" "2" <- function()
{
	local 25 = SpawnEntityFromTable("", {
	    portalnumber = 2,
	    targetname = "portal_main_gate_2",
	    target = "door_main_gate_2",
	    StartOpen = 0,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1199981
	})

}
::"origin" "-6848 3369 95" <- function()
{
	local 26 = SpawnEntityFromTable("", {
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

}
::"model" "*3" <- function()
{
	local 27 = SpawnEntityFromTable("", {
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
	    "OnClose#2": "prop_main_gate_2,SetAnimation,close,0,-1"
	})

}
::"model" "*4" <- function()
{
	local 28 = SpawnEntityFromTable("", {
	    model = "*4",
	    wait = 0,
	    targetname = "trigger_main_gate_2",
	    StartDisabled = 0,
	    spawnflags = 1,
	    origin = Vector(-6848, 3368, 144),
	    classname = "trigger_multiple",
	    hammerid = 1199990,
	    "OnStartTouchAll#1": "door_main_gate_2,Open,,0,-1",
	    "OnUser1#2": "door_main_gate_2,Close,,0,-1"
	})

}
::"origin" "-6847.93 3376.08 149" <- function()
{
	local 29 = SpawnEntityFromTable("", {
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

}
::"origin" "-5712 5760 222.335" <- function()
{
	local 30 = SpawnEntityFromTable("", {
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

}
::"origin" "-5712 5760 225.335" <- function()
{
	local 31 = SpawnEntityFromTable("", {
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

}
::"origin" "-5712 5760 44.335" <- function()
{
	local 32 = SpawnEntityFromTable("", {
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

}
::"origin" "-5712 5760 47.335" <- function()
{
	local 33 = SpawnEntityFromTable("", {
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

}
::"origin" "-6544 3624 236.007" <- function()
{
	local 34 = SpawnEntityFromTable("", {
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

}
::"origin" "-6544 3624 239.007" <- function()
{
	local 35 = SpawnEntityFromTable("", {
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

}
::"origin" "-6848 3480 255.007" <- function()
{
	local 36 = SpawnEntityFromTable("", {
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

}
::"origin" "-6848 3480 252.007" <- function()
{
	local 37 = SpawnEntityFromTable("", {
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

}
::"origin" "-6452 2160 478.007" <- function()
{
	local 38 = SpawnEntityFromTable("", {
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

}
::"origin" "-6452 2160 481.007" <- function()
{
	local 39 = SpawnEntityFromTable("", {
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

}
::"origin" "-5183.84 3335.04 173.888" <- function()
{
	local 40 = SpawnEntityFromTable("", {
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

}
::"origin" "-6848.11 3335.04 240.245" <- function()
{
	local 41 = SpawnEntityFromTable("", {
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

}
::"origin" "-5183.75 3408.25 188.25" <- function()
{
	local 42 = SpawnEntityFromTable("", {
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

}
::"origin" "-6591.75 2464 268.718" <- function()
{
	local 43 = SpawnEntityFromTable("", {
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

}
::"origin" "-6848.46 3408.25 244.158" <- function()
{
	local 44 = SpawnEntityFromTable("", {
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

}
::"origin" "-5423.25 5752 52.419" <- function()
{
	local 45 = SpawnEntityFromTable("", {
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

}
::"origin" "-5968.5 5752 52.419" <- function()
{
	local 46 = SpawnEntityFromTable("", {
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

}
::"origin" "-5200.34 2991.42 486.451" <- function()
{
	local 47 = SpawnEntityFromTable("", {
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

}
::"origin" "-5200.6 2991.32 489.451" <- function()
{
	local 48 = SpawnEntityFromTable("", {
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

}
::"origin" "-5879.33 2126.67 273.013" <- function()
{
	local 49 = SpawnEntityFromTable("", {
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

}
::"origin" "-6450 2154 273.013" <- function()
{
	local 50 = SpawnEntityFromTable("", {
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

}
::"origin" "-5567.33 2206.67 273.013" <- function()
{
	local 51 = SpawnEntityFromTable("", {
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

}
::"origin" "-4848 5984 222.007" <- function()
{
	local 52 = SpawnEntityFromTable("", {
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

}
::"origin" "-4848 5984 225.007" <- function()
{
	local 53 = SpawnEntityFromTable("", {
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

}
::"origin" "-5200.34 3023.42 221.893" <- function()
{
	local 54 = SpawnEntityFromTable("", {
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

}
::"origin" "-5200.6 3023.32 224.893" <- function()
{
	local 55 = SpawnEntityFromTable("", {
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

}
::"origin" "-6016.34 3119.42 213.893" <- function()
{
	local 56 = SpawnEntityFromTable("", {
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

}
::"origin" "-6016.6 3119.32 216.893" <- function()
{
	local 57 = SpawnEntityFromTable("", {
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

}
::"origin" "-6016.34 3103.42 485.893" <- function()
{
	local 58 = SpawnEntityFromTable("", {
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

}
::"origin" "-6016.6 3103.32 488.893" <- function()
{
	local 59 = SpawnEntityFromTable("", {
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

}
::"origin" "-6256 6512 -48" <- function()
{
	local 60 = SpawnEntityFromTable("", {
	    origin = Vector(-6256, 6512, -48),
	    angles = QAngle(0, 270, 0),
	    classname = "item_ammopack_full",
	    hammerid = 1227947
	})

}
::"origin" "-6320 6512 -48" <- function()
{
	local 61 = SpawnEntityFromTable("", {
	    origin = Vector(-6320, 6512, -48),
	    angles = QAngle(0, 270, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 1227952
	})

}
::"origin" "-5278 1344 464.859" <- function()
{
	local 62 = SpawnEntityFromTable("", {
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

}
::"origin" "-5278 1344 466.859" <- function()
{
	local 63 = SpawnEntityFromTable("", {
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

}
::"origin" "-6746 1344 464.859" <- function()
{
	local 64 = SpawnEntityFromTable("", {
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

}
::"origin" "-6746 1344 466.859" <- function()
{
	local 65 = SpawnEntityFromTable("", {
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

}
::"origin" "-6693.33 1911.67 265.013" <- function()
{
	local 66 = SpawnEntityFromTable("", {
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

}
::"origin" "-6015.33 1886.67 273.013" <- function()
{
	local 67 = SpawnEntityFromTable("", {
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

}
::"origin" "-5631.33 1886.67 273.013" <- function()
{
	local 68 = SpawnEntityFromTable("", {
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

}
::"origin" "-5567.33 1967.67 537.013" <- function()
{
	local 69 = SpawnEntityFromTable("", {
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

}
::"origin" "-6167.33 1871.67 457.013" <- function()
{
	local 70 = SpawnEntityFromTable("", {
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

}
::"origin" "-6167.33 2126.67 273.013" <- function()
{
	local 71 = SpawnEntityFromTable("", {
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

}
::"origin" "-5296 2296 236.335" <- function()
{
	local 72 = SpawnEntityFromTable("", {
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

}
::"origin" "-5296 2296 239.335" <- function()
{
	local 73 = SpawnEntityFromTable("", {
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

}
::"origin" "-5072 2304 236.335" <- function()
{
	local 74 = SpawnEntityFromTable("", {
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

}
::"origin" "-5072 2304 239.335" <- function()
{
	local 75 = SpawnEntityFromTable("", {
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

}
::"origin" "-5255.33 1878.67 473.013" <- function()
{
	local 76 = SpawnEntityFromTable("", {
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

}
::"origin" "-5183.33 1366.67 273.013" <- function()
{
	local 77 = SpawnEntityFromTable("", {
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

}
::"origin" "-5184 3800 188.203" <- function()
{
	local 78 = SpawnEntityFromTable("", {
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

}
::"origin" "-5184 3800 191.203" <- function()
{
	local 79 = SpawnEntityFromTable("", {
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

}
::"origin" "-5567.33 1570.67 81.013" <- function()
{
	local 80 = SpawnEntityFromTable("", {
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

}
::"origin" "-6015.33 1858.67 81.013" <- function()
{
	local 81 = SpawnEntityFromTable("", {
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

}
::"origin" "-6968 3152 244.007" <- function()
{
	local 82 = SpawnEntityFromTable("", {
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

}
::"origin" "-6968 3152 247.007" <- function()
{
	local 83 = SpawnEntityFromTable("", {
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

}
::"origin" "-6703.33 2463.67 273.013" <- function()
{
	local 84 = SpawnEntityFromTable("", {
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

}
::"origin" "-6696 2840.3 273.013" <- function()
{
	local 85 = SpawnEntityFromTable("", {
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

}
::"origin" "-6696 3160 244.007" <- function()
{
	local 86 = SpawnEntityFromTable("", {
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

}
::"origin" "-6696 3160 247.007" <- function()
{
	local 87 = SpawnEntityFromTable("", {
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

}
::"origin" "-6832.34 3151.42 454.451" <- function()
{
	local 88 = SpawnEntityFromTable("", {
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

}
::"origin" "-6832.6 3151.32 457.451" <- function()
{
	local 89 = SpawnEntityFromTable("", {
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

}
::"origin" "-5183.33 3270.67 273.013" <- function()
{
	local 90 = SpawnEntityFromTable("", {
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

}
::"origin" "-5176 3520 188.203" <- function()
{
	local 91 = SpawnEntityFromTable("", {
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

}
::"origin" "-5176 3520 191.203" <- function()
{
	local 92 = SpawnEntityFromTable("", {
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

}
::"origin" "-4800 5648 222.007" <- function()
{
	local 93 = SpawnEntityFromTable("", {
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

}
::"origin" "-4800 5648 225.007" <- function()
{
	local 94 = SpawnEntityFromTable("", {
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

}
::"origin" "-5863.33 1871.67 457.013" <- function()
{
	local 95 = SpawnEntityFromTable("", {
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

}
::"origin" "-6016.04 4871.92 217.013" <- function()
{
	local 96 = SpawnEntityFromTable("", {
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

}
::"origin" "-6016.04 5071.92 217.013" <- function()
{
	local 97 = SpawnEntityFromTable("", {
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

}
::"origin" "-5216 5728.07 85.0125" <- function()
{
	local 98 = SpawnEntityFromTable("", {
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

}
::"origin" "-6196.9 2011.72 317.868" <- function()
{
	local 99 = SpawnEntityFromTable("", {
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

}
::"origin" "-6221.02 2011.72 349.435" <- function()
{
	local 100 = SpawnEntityFromTable("", {
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

}
::"origin" "-6152.95 2011.72 349.76" <- function()
{
	local 101 = SpawnEntityFromTable("", {
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

}
::"origin" "-6152.95 2011.72 343.76" <- function()
{
	local 102 = SpawnEntityFromTable("", {
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

}
::"origin" "-5761 2012 349" <- function()
{
	local 103 = SpawnEntityFromTable("", {
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

}
::"origin" "-5285.1 964.28 317.868" <- function()
{
	local 104 = SpawnEntityFromTable("", {
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

}
::"origin" "-5260.98 964.28 349.435" <- function()
{
	local 105 = SpawnEntityFromTable("", {
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

}
::"origin" "-5329.05 964.28 349.76" <- function()
{
	local 106 = SpawnEntityFromTable("", {
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

}
::"origin" "-5329.05 964.28 343.76" <- function()
{
	local 107 = SpawnEntityFromTable("", {
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

}
::"origin" "-6602.28 2152 428.109" <- function()
{
	local 108 = SpawnEntityFromTable("", {
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

}
::"model" "*5" <- function()
{
	local 109 = SpawnEntityFromTable("", {
	    model = "*5",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5550.25, 2208.76, 467),
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_illusionary",
	    hammerid = 2152219
	})

}
::"origin" "-6241.92 3625.99 206.671" <- function()
{
	local 110 = SpawnEntityFromTable("", {
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

}
::"origin" "-6241.32 3624.34 198.007" <- function()
{
	local 111 = SpawnEntityFromTable("", {
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

}
::"origin" "-5985.92 3625.99 206.671" <- function()
{
	local 112 = SpawnEntityFromTable("", {
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

}
::"origin" "-5985.32 3624.34 198.007" <- function()
{
	local 113 = SpawnEntityFromTable("", {
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

}
::"origin" "-5729.92 3625.99 206.671" <- function()
{
	local 114 = SpawnEntityFromTable("", {
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

}
::"origin" "-5729.32 3624.34 198.007" <- function()
{
	local 115 = SpawnEntityFromTable("", {
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

}
::"origin" "-5440 3624 132" <- function()
{
	local 116 = SpawnEntityFromTable("", {
	    origin = Vector(-5440, 3624, 132),
	    targetname = "lighting_stage1_leftentrance_1",
	    orientationtype = 1,
	    angles = QAngle(0, 0, 0),
	    classname = "path_track",
	    hammerid = 2188964
	})

}
::"origin" "-4928 3624.01 132" <- function()
{
	local 117 = SpawnEntityFromTable("", {
	    origin = Vector(-4928, 3624.01, 132),
	    targetname = "lighting_stage1_leftentrance_2",
	    orientationtype = 1,
	    angles = QAngle(0, 0, 0),
	    classname = "path_track",
	    hammerid = 2190069
	})

}
::"origin" "-5680.6 7879.32 8.8928" <- function()
{
	local 118 = SpawnEntityFromTable("", {
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

}
::"origin" "-5680.34 7879.42 5.8928" <- function()
{
	local 119 = SpawnEntityFromTable("", {
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

}
::"origin" "-5216.34 7879.42 5.8928" <- function()
{
	local 120 = SpawnEntityFromTable("", {
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

}
::"origin" "-5216.6 7879.32 8.8928" <- function()
{
	local 121 = SpawnEntityFromTable("", {
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

}
::"origin" "-5648.6 8423.32 40.8928" <- function()
{
	local 122 = SpawnEntityFromTable("", {
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

}
::"origin" "-5648.34 8423.42 37.8928" <- function()
{
	local 123 = SpawnEntityFromTable("", {
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

}
::"origin" "-6512.6 9127.32 8.8928" <- function()
{
	local 124 = SpawnEntityFromTable("", {
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

}
::"origin" "-6512.34 9127.42 5.8928" <- function()
{
	local 125 = SpawnEntityFromTable("", {
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

}
::"origin" "-5635.89 8003.92 -176" <- function()
{
	local 126 = SpawnEntityFromTable("", {
	    origin = Vector(-5635.89, 8003.92, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 300, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195534
	})

}
::"origin" "-5651.31 7902.63 -176" <- function()
{
	local 127 = SpawnEntityFromTable("", {
	    origin = Vector(-5651.31, 7902.63, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 300, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195526
	})

}
::"origin" "-5392 7968 -176" <- function()
{
	local 128 = SpawnEntityFromTable("", {
	    origin = Vector(-5392, 7968, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195528
	})

}
::"origin" "-5728 7856 -176" <- function()
{
	local 129 = SpawnEntityFromTable("", {
	    origin = Vector(-5728, 7856, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 300, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195532
	})

}
::"origin" "-5829.88 7891.92 -176" <- function()
{
	local 130 = SpawnEntityFromTable("", {
	    origin = Vector(-5829.88, 7891.92, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 300, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195530
	})

}
::"origin" "-5814.45 7993.2 -176" <- function()
{
	local 131 = SpawnEntityFromTable("", {
	    origin = Vector(-5814.45, 7993.2, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 300, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195524
	})

}
::"origin" "-5731.31 8041.2 -176" <- function()
{
	local 132 = SpawnEntityFromTable("", {
	    origin = Vector(-5731.31, 8041.2, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 300, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195516
	})

}
::"origin" "-5732.88 7947.92 -176" <- function()
{
	local 133 = SpawnEntityFromTable("", {
	    origin = Vector(-5732.88, 7947.92, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 300, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195520
	})

}
::"origin" "-5195.62 7848.2 -176" <- function()
{
	local 134 = SpawnEntityFromTable("", {
	    origin = Vector(-5195.62, 7848.2, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 240, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195506
	})

}
::"origin" "-5108.19 7871.63 -176" <- function()
{
	local 135 = SpawnEntityFromTable("", {
	    origin = Vector(-5108.19, 7871.63, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 240, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195508
	})

}
::"origin" "-5292.61 7904.2 -176" <- function()
{
	local 136 = SpawnEntityFromTable("", {
	    origin = Vector(-5292.61, 7904.2, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 240, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195518
	})

}
::"origin" "-5203.04 7963.34 -176" <- function()
{
	local 137 = SpawnEntityFromTable("", {
	    origin = Vector(-5203.04, 7963.34, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 240, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195522
	})

}
::"origin" "-5115.62 7986.77 -176" <- function()
{
	local 138 = SpawnEntityFromTable("", {
	    origin = Vector(-5115.62, 7986.77, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 240, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195510
	})

}
::"origin" "-5212.61 8042.77 -176" <- function()
{
	local 139 = SpawnEntityFromTable("", {
	    origin = Vector(-5212.61, 8042.77, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 240, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195512
	})

}
::"origin" "-5308.04 8005.49 -176" <- function()
{
	local 140 = SpawnEntityFromTable("", {
	    origin = Vector(-5308.04, 8005.49, -176),
	    TeamNum = 2,
	    controlpoint = "cap_red_1",
	    angles = QAngle(0, 240, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1195514
	})

}
::"origin" "-5456 8816 -187.901" <- function()
{
	local 141 = SpawnEntityFromTable("", {
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

}
::"origin" "-5264 8784 -187.901" <- function()
{
	local 142 = SpawnEntityFromTable("", {
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

}
::"origin" "-5648 8784 -187.901" <- function()
{
	local 143 = SpawnEntityFromTable("", {
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

}
::"origin" "-6608.01 8775 -187.901" <- function()
{
	local 144 = SpawnEntityFromTable("", {
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

}
::"origin" "-4783.82 7758.7 -75.9933" <- function()
{
	local 145 = SpawnEntityFromTable("", {
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

}
::"origin" "-4739.82 7758.7 -75.9933" <- function()
{
	local 146 = SpawnEntityFromTable("", {
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

}
::"origin" "-4739.24 7759.03 -76.8863" <- function()
{
	local 147 = SpawnEntityFromTable("", {
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

}
::"origin" "-4783.24 7759.03 -76.8863" <- function()
{
	local 148 = SpawnEntityFromTable("", {
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

}
::"origin" "-4594.53 7527.82 -75.9933" <- function()
{
	local 149 = SpawnEntityFromTable("", {
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

}
::"origin" "-4594.53 7483.82 -75.9933" <- function()
{
	local 150 = SpawnEntityFromTable("", {
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

}
::"origin" "-4594.2 7483.24 -76.8863" <- function()
{
	local 151 = SpawnEntityFromTable("", {
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

}
::"origin" "-4594.2 7527.24 -76.8863" <- function()
{
	local 152 = SpawnEntityFromTable("", {
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

}
::"origin" "-4802.11 8055.61 -22.8553" <- function()
{
	local 153 = SpawnEntityFromTable("", {
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

}
::"origin" "-4998.28 8352 25.4915" <- function()
{
	local 154 = SpawnEntityFromTable("", {
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

}
::"origin" "-5464.19 7542.72 -31.1044" <- function()
{
	local 155 = SpawnEntityFromTable("", {
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

}
::"origin" "-6016.18 2142.43 248.75" <- function()
{
	local 156 = SpawnEntityFromTable("", {
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

}
::"origin" "-6829.33 1911.67 265.013" <- function()
{
	local 157 = SpawnEntityFromTable("", {
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

}
::"origin" "-6680.39 5536.25 86.638" <- function()
{
	local 158 = SpawnEntityFromTable("", {
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

}
::"origin" "-5704 1510 -400" <- function()
{
	local 159 = SpawnEntityFromTable("", {
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

}
::"origin" "-5712 2656 465.007" <- function()
{
	local 160 = SpawnEntityFromTable("", {
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

}
::"origin" "-5712 2656 467.007" <- function()
{
	local 161 = SpawnEntityFromTable("", {
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

}
::"origin" "-6000 2560 465.007" <- function()
{
	local 162 = SpawnEntityFromTable("", {
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

}
::"origin" "-6000 2560 467.007" <- function()
{
	local 163 = SpawnEntityFromTable("", {
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

}
::"origin" "-6288 2608 465.007" <- function()
{
	local 164 = SpawnEntityFromTable("", {
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

}
::"origin" "-6288 2608 467.007" <- function()
{
	local 165 = SpawnEntityFromTable("", {
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

}
::"origin" "-6135.72 7680.28 47.0067" <- function()
{
	local 166 = SpawnEntityFromTable("", {
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

}
::"origin" "-6135.72 7680.28 44.0067" <- function()
{
	local 167 = SpawnEntityFromTable("", {
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

}
::"origin" "-6023.72 7952.28 44.0067" <- function()
{
	local 168 = SpawnEntityFromTable("", {
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

}
::"origin" "-6023.72 7952.28 47.0067" <- function()
{
	local 169 = SpawnEntityFromTable("", {
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

}
::"model" "*6" <- function()
{
	local 170 = SpawnEntityFromTable("", {
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
	    hammerid = 3460572
	})

}
::"model" "*7" <- function()
{
	local 171 = SpawnEntityFromTable("", {
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
	    "OnEndTouchAll#2": "door_stage2_red_spawn1_1,Close,,0,-1"
	})

}
::"origin" "-5792.27 5005.65 368.497" <- function()
{
	local 172 = SpawnEntityFromTable("", {
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

}
::"model" "*8" <- function()
{
	local 173 = SpawnEntityFromTable("", {
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
	    hammerid = 3460582
	})

}
::"model" "*9" <- function()
{
	local 174 = SpawnEntityFromTable("", {
	    model = "*9",
	    TeamNum = 2,
	    associatedmodel = "prop_resupply_red_1",
	    classname = "func_regenerate",
	    hammerid = 3460826
	})

}
::"origin" "-5588.85 4993 304.16" <- function()
{
	local 175 = SpawnEntityFromTable("", {
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

}
::"origin" "-5696 5208 320" <- function()
{
	local 176 = SpawnEntityFromTable("", {
	    origin = Vector(-5696, 5208, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461545
	})

}
::"origin" "-5600 5208 320" <- function()
{
	local 177 = SpawnEntityFromTable("", {
	    origin = Vector(-5600, 5208, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461547
	})

}
::"origin" "-5584 5264 320" <- function()
{
	local 178 = SpawnEntityFromTable("", {
	    origin = Vector(-5584, 5264, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461549
	})

}
::"origin" "-5568 5328 320" <- function()
{
	local 179 = SpawnEntityFromTable("", {
	    origin = Vector(-5568, 5328, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461551
	})

}
::"origin" "-5800 5208 320" <- function()
{
	local 180 = SpawnEntityFromTable("", {
	    origin = Vector(-5800, 5208, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461553
	})

}
::"origin" "-5602.72 5416.58 320" <- function()
{
	local 181 = SpawnEntityFromTable("", {
	    origin = Vector(-5602.72, 5416.58, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461555
	})

}
::"origin" "-5655.56 5334.4 320" <- function()
{
	local 182 = SpawnEntityFromTable("", {
	    origin = Vector(-5655.56, 5334.4, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461557
	})

}
::"origin" "-5731.94 5337.64 320" <- function()
{
	local 183 = SpawnEntityFromTable("", {
	    origin = Vector(-5731.94, 5337.64, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461559
	})

}
::"origin" "-5760 5264 320" <- function()
{
	local 184 = SpawnEntityFromTable("", {
	    origin = Vector(-5760, 5264, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461561
	})

}
::"origin" "-5680 5264 320" <- function()
{
	local 185 = SpawnEntityFromTable("", {
	    origin = Vector(-5680, 5264, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 274.321, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461563
	})

}
::"origin" "-5840 5264 320" <- function()
{
	local 186 = SpawnEntityFromTable("", {
	    origin = Vector(-5840, 5264, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461565
	})

}
::"origin" "-5760 5408 320" <- function()
{
	local 187 = SpawnEntityFromTable("", {
	    origin = Vector(-5760, 5408, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461567
	})

}
::"origin" "-5832 5408 320" <- function()
{
	local 188 = SpawnEntityFromTable("", {
	    origin = Vector(-5832, 5408, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461569
	})

}
::"origin" "-5687.02 5421.64 320" <- function()
{
	local 189 = SpawnEntityFromTable("", {
	    origin = Vector(-5687.02, 5421.64, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461571
	})

}
::"origin" "-5832.13 5333.64 320" <- function()
{
	local 190 = SpawnEntityFromTable("", {
	    origin = Vector(-5832.13, 5333.64, 320),
	    TeamNum = 2,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 271.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3461573
	})

}
::"origin" "-5808 5136 430.335" <- function()
{
	local 191 = SpawnEntityFromTable("", {
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

}
::"origin" "-5808 5136 433.335" <- function()
{
	local 192 = SpawnEntityFromTable("", {
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

}
::"origin" "-5808 5376 430.335" <- function()
{
	local 193 = SpawnEntityFromTable("", {
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

}
::"origin" "-5808 5376 433.335" <- function()
{
	local 194 = SpawnEntityFromTable("", {
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

}
::"origin" "-5584 5376 430.335" <- function()
{
	local 195 = SpawnEntityFromTable("", {
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

}
::"origin" "-5584 5376 433.335" <- function()
{
	local 196 = SpawnEntityFromTable("", {
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

}
::"origin" "-5584 5136 430.335" <- function()
{
	local 197 = SpawnEntityFromTable("", {
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

}
::"origin" "-5584 5136 433.335" <- function()
{
	local 198 = SpawnEntityFromTable("", {
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

}
::"origin" "-6015.33 834.67 81.013" <- function()
{
	local 199 = SpawnEntityFromTable("", {
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

}
::"origin" "-6467.33 1114.67 77.013" <- function()
{
	local 200 = SpawnEntityFromTable("", {
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

}
::"origin" "-6016 -1648 55" <- function()
{
	local 201 = SpawnEntityFromTable("", {
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

}
::"model" "*10" <- function()
{
	local 202 = SpawnEntityFromTable("", {
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
	    "OnCapTeam2#2": "tf_gamerules,setblueteamrespawnwavetime,10,0,-1"
	})

}
::"origin" "-6016 -1650 48" <- function()
{
	local 203 = SpawnEntityFromTable("", {
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

}
::"origin" "-6272 -3836 64" <- function()
{
	local 204 = SpawnEntityFromTable("", {
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

}
::"origin" "-6272 -3836 -85" <- function()
{
	local 205 = SpawnEntityFromTable("", {
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

}
::"model" "*11" <- function()
{
	local 206 = SpawnEntityFromTable("", {
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
	    hammerid = 3702965
	})

}
::"origin" "-6272 -3836 -92" <- function()
{
	local 207 = SpawnEntityFromTable("", {
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

}
::"origin" "-6016 4336 48" <- function()
{
	local 208 = SpawnEntityFromTable("", {
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

}
::"origin" "-6016 4336 55" <- function()
{
	local 209 = SpawnEntityFromTable("", {
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

}
::"model" "*12" <- function()
{
	local 210 = SpawnEntityFromTable("", {
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
	    "OnCapTeam2#2": "tf_gamerules,setredteamrespawnwavetime,5,0,-1"
	})

}
::"origin" "-5760 6532 -85" <- function()
{
	local 211 = SpawnEntityFromTable("", {
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

}
::"model" "*13" <- function()
{
	local 212 = SpawnEntityFromTable("", {
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
	    hammerid = 3702682
	})

}
::"origin" "-5760 6532 -92" <- function()
{
	local 213 = SpawnEntityFromTable("", {
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

}
::"origin" "-5760 6532 96" <- function()
{
	local 214 = SpawnEntityFromTable("", {
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

}
::"origin" "-6016 1348 103" <- function()
{
	local 215 = SpawnEntityFromTable("", {
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

}
::"model" "*14" <- function()
{
	local 216 = SpawnEntityFromTable("", {
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
	    hammerid = 3702880
	})

}
::"origin" "-6016 1348 96" <- function()
{
	local 217 = SpawnEntityFromTable("", {
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

}
::"origin" "-6015.66 1347.98 254.007" <- function()
{
	local 218 = SpawnEntityFromTable("", {
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

}
::"origin" "-5632 -2608 174.007" <- function()
{
	local 219 = SpawnEntityFromTable("", {
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

}
::"origin" "-5632 -2608 176.007" <- function()
{
	local 220 = SpawnEntityFromTable("", {
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

}
::"origin" "-6016 -2608 174.007" <- function()
{
	local 221 = SpawnEntityFromTable("", {
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

}
::"origin" "-6016 -2608 176.007" <- function()
{
	local 222 = SpawnEntityFromTable("", {
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

}
::"origin" "-6384 -2608 174.007" <- function()
{
	local 223 = SpawnEntityFromTable("", {
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

}
::"origin" "-6384 -2608 176.007" <- function()
{
	local 224 = SpawnEntityFromTable("", {
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

}
::"origin" "-7360 -3296 222.007" <- function()
{
	local 225 = SpawnEntityFromTable("", {
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

}
::"origin" "-7360 -3296 225.007" <- function()
{
	local 226 = SpawnEntityFromTable("", {
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

}
::"origin" "-5344 -2752 94.007" <- function()
{
	local 227 = SpawnEntityFromTable("", {
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

}
::"origin" "-5344 -2752 97.007" <- function()
{
	local 228 = SpawnEntityFromTable("", {
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

}
::"origin" "-5876 -685 465.007" <- function()
{
	local 229 = SpawnEntityFromTable("", {
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

}
::"origin" "-5876 -685 467.007" <- function()
{
	local 230 = SpawnEntityFromTable("", {
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

}
::"portalnumber" "3" <- function()
{
	local 231 = SpawnEntityFromTable("", {
	    portalnumber = 3,
	    targetname = "portal_main_gate_1",
	    target = "door_main_gate_1",
	    StartOpen = 0,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3557224
	})

}
::"origin" "-6848 -681 31" <- function()
{
	local 232 = SpawnEntityFromTable("", {
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

}
::"model" "*15" <- function()
{
	local 233 = SpawnEntityFromTable("", {
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
	    "OnClose#2": "prop_main_gate_1,SetAnimation,close,0,-1"
	})

}
::"model" "*16" <- function()
{
	local 234 = SpawnEntityFromTable("", {
	    model = "*16",
	    wait = 0,
	    targetname = "trigger_main_gate_1",
	    StartDisabled = 0,
	    spawnflags = 1,
	    origin = Vector(-6848, -668, 80),
	    classname = "trigger_multiple",
	    hammerid = 3557233,
	    "OnStartTouchAll#1": "door_main_gate_1,Open,,0,-1",
	    "OnUser1#2": "door_main_gate_1,Close,,0,-1"
	})

}
::"origin" "-6848.07 -688.08 85" <- function()
{
	local 235 = SpawnEntityFromTable("", {
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

}
::"portalnumber" "4" <- function()
{
	local 236 = SpawnEntityFromTable("", {
	    portalnumber = 4,
	    targetname = "portal_main_gate_2",
	    target = "door_main_gate_2",
	    StartOpen = 0,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3557252
	})

}
::"origin" "-5184 -681 95" <- function()
{
	local 237 = SpawnEntityFromTable("", {
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

}
::"model" "*17" <- function()
{
	local 238 = SpawnEntityFromTable("", {
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
	    "OnClose#2": "prop_main_gate_2,SetAnimation,close,0,-1"
	})

}
::"model" "*18" <- function()
{
	local 239 = SpawnEntityFromTable("", {
	    model = "*18",
	    wait = 0,
	    targetname = "trigger_main_gate_2",
	    StartDisabled = 0,
	    spawnflags = 1,
	    origin = Vector(-5184, -680, 144),
	    classname = "trigger_multiple",
	    hammerid = 3557261,
	    "OnStartTouchAll#1": "door_main_gate_2,Open,,0,-1",
	    "OnUser1#2": "door_main_gate_2,Close,,0,-1"
	})

}
::"origin" "-5184.07 -688.08 149" <- function()
{
	local 240 = SpawnEntityFromTable("", {
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

}
::"origin" "-6320 -3072 222.335" <- function()
{
	local 241 = SpawnEntityFromTable("", {
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

}
::"origin" "-6320 -3072 225.335" <- function()
{
	local 242 = SpawnEntityFromTable("", {
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

}
::"origin" "-6320 -3072 44.335" <- function()
{
	local 243 = SpawnEntityFromTable("", {
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

}
::"origin" "-6320 -3072 47.335" <- function()
{
	local 244 = SpawnEntityFromTable("", {
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

}
::"origin" "-5488 -936 236.007" <- function()
{
	local 245 = SpawnEntityFromTable("", {
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

}
::"origin" "-5488 -936 239.007" <- function()
{
	local 246 = SpawnEntityFromTable("", {
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

}
::"origin" "-5184 -792 255.007" <- function()
{
	local 247 = SpawnEntityFromTable("", {
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

}
::"origin" "-5184 -792 252.007" <- function()
{
	local 248 = SpawnEntityFromTable("", {
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

}
::"origin" "-6848.16 -647.04 173.888" <- function()
{
	local 249 = SpawnEntityFromTable("", {
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

}
::"origin" "-5183.89 -647.04 240.245" <- function()
{
	local 250 = SpawnEntityFromTable("", {
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

}
::"origin" "-6848.25 -720.25 188.25" <- function()
{
	local 251 = SpawnEntityFromTable("", {
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

}
::"origin" "-5183.54 -720.25 244.158" <- function()
{
	local 252 = SpawnEntityFromTable("", {
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

}
::"origin" "-6608.75 -3064 52.419" <- function()
{
	local 253 = SpawnEntityFromTable("", {
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

}
::"origin" "-6063.5 -3064 52.419" <- function()
{
	local 254 = SpawnEntityFromTable("", {
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

}
::"origin" "-6831.66 -303.42 486.451" <- function()
{
	local 255 = SpawnEntityFromTable("", {
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

}
::"origin" "-6831.4 -303.32 489.451" <- function()
{
	local 256 = SpawnEntityFromTable("", {
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

}
::"origin" "-7184 -3296 222.007" <- function()
{
	local 257 = SpawnEntityFromTable("", {
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

}
::"origin" "-7184 -3296 225.007" <- function()
{
	local 258 = SpawnEntityFromTable("", {
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

}
::"origin" "-6831.66 -335.42 221.893" <- function()
{
	local 259 = SpawnEntityFromTable("", {
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

}
::"origin" "-6831.4 -335.32 224.893" <- function()
{
	local 260 = SpawnEntityFromTable("", {
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

}
::"origin" "-6015.66 -431.42 213.893" <- function()
{
	local 261 = SpawnEntityFromTable("", {
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

}
::"origin" "-6015.4 -431.32 216.893" <- function()
{
	local 262 = SpawnEntityFromTable("", {
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

}
::"origin" "-6015.66 -415.42 485.893" <- function()
{
	local 263 = SpawnEntityFromTable("", {
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

}
::"origin" "-6015.4 -415.32 488.893" <- function()
{
	local 264 = SpawnEntityFromTable("", {
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

}
::"origin" "-5776 -3824 -48" <- function()
{
	local 265 = SpawnEntityFromTable("", {
	    origin = Vector(-5776, -3824, -48),
	    angles = QAngle(0, 90, 0),
	    classname = "item_ammopack_full",
	    hammerid = 3557513
	})

}
::"origin" "-5712 -3824 -48" <- function()
{
	local 266 = SpawnEntityFromTable("", {
	    origin = Vector(-5712, -3824, -48),
	    angles = QAngle(0, 90, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 3557518
	})

}
::"origin" "-6848 -1112 188.203" <- function()
{
	local 267 = SpawnEntityFromTable("", {
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

}
::"origin" "-6848 -1112 191.203" <- function()
{
	local 268 = SpawnEntityFromTable("", {
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

}
::"origin" "-5064 -464 244.007" <- function()
{
	local 269 = SpawnEntityFromTable("", {
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

}
::"origin" "-5064 -464 247.007" <- function()
{
	local 270 = SpawnEntityFromTable("", {
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

}
::"origin" "-5336 -472 244.007" <- function()
{
	local 271 = SpawnEntityFromTable("", {
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

}
::"origin" "-5336 -472 247.007" <- function()
{
	local 272 = SpawnEntityFromTable("", {
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

}
::"origin" "-5199.66 -463.42 454.451" <- function()
{
	local 273 = SpawnEntityFromTable("", {
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

}
::"origin" "-5199.4 -463.32 457.451" <- function()
{
	local 274 = SpawnEntityFromTable("", {
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

}
::"origin" "-6848.67 -582.67 273.013" <- function()
{
	local 275 = SpawnEntityFromTable("", {
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

}
::"origin" "-6856 -832 188.203" <- function()
{
	local 276 = SpawnEntityFromTable("", {
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

}
::"origin" "-6856 -832 191.203" <- function()
{
	local 277 = SpawnEntityFromTable("", {
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

}
::"origin" "-7232 -2960 222.007" <- function()
{
	local 278 = SpawnEntityFromTable("", {
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

}
::"origin" "-7232 -2960 225.007" <- function()
{
	local 279 = SpawnEntityFromTable("", {
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

}
::"origin" "-6015.96 -2183.92 217.013" <- function()
{
	local 280 = SpawnEntityFromTable("", {
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

}
::"origin" "-6015.96 -2383.92 217.013" <- function()
{
	local 281 = SpawnEntityFromTable("", {
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

}
::"origin" "-6816 -3040.07 85.0125" <- function()
{
	local 282 = SpawnEntityFromTable("", {
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

}
::"origin" "-5790.08 -937.99 206.671" <- function()
{
	local 283 = SpawnEntityFromTable("", {
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

}
::"origin" "-5790.68 -936.34 198.007" <- function()
{
	local 284 = SpawnEntityFromTable("", {
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

}
::"origin" "-6046.08 -937.99 206.671" <- function()
{
	local 285 = SpawnEntityFromTable("", {
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

}
::"origin" "-6046.68 -936.34 198.007" <- function()
{
	local 286 = SpawnEntityFromTable("", {
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

}
::"origin" "-6302.08 -937.99 206.671" <- function()
{
	local 287 = SpawnEntityFromTable("", {
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

}
::"origin" "-6302.68 -936.34 198.007" <- function()
{
	local 288 = SpawnEntityFromTable("", {
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

}
::"origin" "-6592 -936 132" <- function()
{
	local 289 = SpawnEntityFromTable("", {
	    origin = Vector(-6592, -936, 132),
	    targetname = "lighting_stage1_leftentrance_1",
	    orientationtype = 1,
	    angles = QAngle(0, 0, 0),
	    classname = "path_track",
	    hammerid = 3558036
	})

}
::"origin" "-7104 -936.01 132" <- function()
{
	local 290 = SpawnEntityFromTable("", {
	    origin = Vector(-7104, -936.01, 132),
	    targetname = "lighting_stage1_leftentrance_2",
	    orientationtype = 1,
	    angles = QAngle(0, 0, 0),
	    classname = "path_track",
	    hammerid = 3558056
	})

}
::"origin" "-6351.4 -5191.32 8.8928" <- function()
{
	local 291 = SpawnEntityFromTable("", {
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

}
::"origin" "-6351.66 -5191.42 5.8928" <- function()
{
	local 292 = SpawnEntityFromTable("", {
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

}
::"origin" "-6815.66 -5191.42 5.8928" <- function()
{
	local 293 = SpawnEntityFromTable("", {
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

}
::"origin" "-6815.4 -5191.32 8.8928" <- function()
{
	local 294 = SpawnEntityFromTable("", {
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

}
::"origin" "-6383.4 -5735.32 40.8928" <- function()
{
	local 295 = SpawnEntityFromTable("", {
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

}
::"origin" "-6383.66 -5735.42 37.8928" <- function()
{
	local 296 = SpawnEntityFromTable("", {
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

}
::"origin" "-5519.4 -6439.32 8.8928" <- function()
{
	local 297 = SpawnEntityFromTable("", {
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

}
::"origin" "-5519.66 -6439.42 5.8928" <- function()
{
	local 298 = SpawnEntityFromTable("", {
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

}
::"origin" "-6396.11 -5315.92 -176" <- function()
{
	local 299 = SpawnEntityFromTable("", {
	    origin = Vector(-6396.11, -5315.92, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 120, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558523
	})

}
::"origin" "-6380.69 -5214.63 -176" <- function()
{
	local 300 = SpawnEntityFromTable("", {
	    origin = Vector(-6380.69, -5214.63, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 120, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558525
	})

}
::"origin" "-6640 -5280 -176" <- function()
{
	local 301 = SpawnEntityFromTable("", {
	    origin = Vector(-6640, -5280, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558527
	})

}
::"origin" "-6304 -5168 -176" <- function()
{
	local 302 = SpawnEntityFromTable("", {
	    origin = Vector(-6304, -5168, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 120, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558529
	})

}
::"origin" "-6202.12 -5203.92 -176" <- function()
{
	local 303 = SpawnEntityFromTable("", {
	    origin = Vector(-6202.12, -5203.92, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 120, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558531
	})

}
::"origin" "-6217.55 -5305.2 -176" <- function()
{
	local 304 = SpawnEntityFromTable("", {
	    origin = Vector(-6217.55, -5305.2, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 120, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558533
	})

}
::"origin" "-6300.69 -5353.2 -176" <- function()
{
	local 305 = SpawnEntityFromTable("", {
	    origin = Vector(-6300.69, -5353.2, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 120, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558535
	})

}
::"origin" "-6299.12 -5259.92 -176" <- function()
{
	local 306 = SpawnEntityFromTable("", {
	    origin = Vector(-6299.12, -5259.92, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 120, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558537
	})

}
::"origin" "-6836.38 -5160.2 -176" <- function()
{
	local 307 = SpawnEntityFromTable("", {
	    origin = Vector(-6836.38, -5160.2, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 60, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558540
	})

}
::"origin" "-6923.81 -5183.63 -176" <- function()
{
	local 308 = SpawnEntityFromTable("", {
	    origin = Vector(-6923.81, -5183.63, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 60, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558542
	})

}
::"origin" "-6739.39 -5216.2 -176" <- function()
{
	local 309 = SpawnEntityFromTable("", {
	    origin = Vector(-6739.39, -5216.2, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 60, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558544
	})

}
::"origin" "-6828.96 -5275.34 -176" <- function()
{
	local 310 = SpawnEntityFromTable("", {
	    origin = Vector(-6828.96, -5275.34, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 60, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558546
	})

}
::"origin" "-6916.38 -5298.77 -176" <- function()
{
	local 311 = SpawnEntityFromTable("", {
	    origin = Vector(-6916.38, -5298.77, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 60, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558548
	})

}
::"origin" "-6819.39 -5354.77 -176" <- function()
{
	local 312 = SpawnEntityFromTable("", {
	    origin = Vector(-6819.39, -5354.77, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 60, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558550
	})

}
::"origin" "-6723.96 -5317.49 -176" <- function()
{
	local 313 = SpawnEntityFromTable("", {
	    origin = Vector(-6723.96, -5317.49, -176),
	    TeamNum = 3,
	    controlpoint = "cap_blue_1",
	    angles = QAngle(0, 60, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3558552
	})

}
::"origin" "-6576 -6128 -187.901" <- function()
{
	local 314 = SpawnEntityFromTable("", {
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

}
::"origin" "-6768 -6096 -187.901" <- function()
{
	local 315 = SpawnEntityFromTable("", {
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

}
::"origin" "-6384 -6096 -187.901" <- function()
{
	local 316 = SpawnEntityFromTable("", {
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

}
::"origin" "-5423.99 -6087 -187.901" <- function()
{
	local 317 = SpawnEntityFromTable("", {
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

}
::"origin" "-7248.18 -5070.7 -75.9933" <- function()
{
	local 318 = SpawnEntityFromTable("", {
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

}
::"origin" "-7292.18 -5070.7 -75.9933" <- function()
{
	local 319 = SpawnEntityFromTable("", {
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

}
::"origin" "-7292.76 -5071.03 -76.8863" <- function()
{
	local 320 = SpawnEntityFromTable("", {
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

}
::"origin" "-7248.76 -5071.03 -76.8863" <- function()
{
	local 321 = SpawnEntityFromTable("", {
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

}
::"origin" "-7437.47 -4839.82 -75.9933" <- function()
{
	local 322 = SpawnEntityFromTable("", {
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

}
::"origin" "-7437.47 -4795.82 -75.9933" <- function()
{
	local 323 = SpawnEntityFromTable("", {
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

}
::"origin" "-7437.8 -4795.24 -76.8863" <- function()
{
	local 324 = SpawnEntityFromTable("", {
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

}
::"origin" "-7437.8 -4839.24 -76.8863" <- function()
{
	local 325 = SpawnEntityFromTable("", {
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

}
::"origin" "-7229.89 -5367.61 -22.8553" <- function()
{
	local 326 = SpawnEntityFromTable("", {
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

}
::"origin" "-7033.72 -5664 25.4915" <- function()
{
	local 327 = SpawnEntityFromTable("", {
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

}
::"origin" "-6567.81 -4854.72 -31.1044" <- function()
{
	local 328 = SpawnEntityFromTable("", {
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

}
::"origin" "-5351.61 -2848.25 86.638" <- function()
{
	local 329 = SpawnEntityFromTable("", {
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

}
::"origin" "-5896.28 -4992.28 47.0067" <- function()
{
	local 330 = SpawnEntityFromTable("", {
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

}
::"origin" "-5896.28 -4992.28 44.0067" <- function()
{
	local 331 = SpawnEntityFromTable("", {
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

}
::"origin" "-6008.28 -5264.28 44.0067" <- function()
{
	local 332 = SpawnEntityFromTable("", {
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

}
::"origin" "-6008.28 -5264.28 47.0067" <- function()
{
	local 333 = SpawnEntityFromTable("", {
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

}
::"model" "*19" <- function()
{
	local 334 = SpawnEntityFromTable("", {
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
	    hammerid = 3559033
	})

}
::"model" "*20" <- function()
{
	local 335 = SpawnEntityFromTable("", {
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
	    "OnEndTouchAll#2": "door_stage2_blue_spawn1_1,Close,,0,-1"
	})

}
::"origin" "-6239.73 -2317.65 368.497" <- function()
{
	local 336 = SpawnEntityFromTable("", {
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

}
::"model" "*21" <- function()
{
	local 337 = SpawnEntityFromTable("", {
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
	    hammerid = 3559043
	})

}
::"model" "*22" <- function()
{
	local 338 = SpawnEntityFromTable("", {
	    model = "*22",
	    TeamNum = 3,
	    associatedmodel = "prop_resupply_blue_1",
	    classname = "func_regenerate",
	    hammerid = 3559047
	})

}
::"origin" "-6443.15 -2305 304.16" <- function()
{
	local 339 = SpawnEntityFromTable("", {
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

}
::"origin" "-6336 -2520 320" <- function()
{
	local 340 = SpawnEntityFromTable("", {
	    origin = Vector(-6336, -2520, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559054
	})

}
::"origin" "-6432 -2520 320" <- function()
{
	local 341 = SpawnEntityFromTable("", {
	    origin = Vector(-6432, -2520, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559056
	})

}
::"origin" "-6448 -2576 320" <- function()
{
	local 342 = SpawnEntityFromTable("", {
	    origin = Vector(-6448, -2576, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559058
	})

}
::"origin" "-6464 -2640 320" <- function()
{
	local 343 = SpawnEntityFromTable("", {
	    origin = Vector(-6464, -2640, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559060
	})

}
::"origin" "-6232 -2520 320" <- function()
{
	local 344 = SpawnEntityFromTable("", {
	    origin = Vector(-6232, -2520, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559062
	})

}
::"origin" "-6429.28 -2728.58 320" <- function()
{
	local 345 = SpawnEntityFromTable("", {
	    origin = Vector(-6429.28, -2728.58, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559064
	})

}
::"origin" "-6376.44 -2646.4 320" <- function()
{
	local 346 = SpawnEntityFromTable("", {
	    origin = Vector(-6376.44, -2646.4, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559066
	})

}
::"origin" "-6300.06 -2649.64 320" <- function()
{
	local 347 = SpawnEntityFromTable("", {
	    origin = Vector(-6300.06, -2649.64, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559068
	})

}
::"origin" "-6272 -2576 320" <- function()
{
	local 348 = SpawnEntityFromTable("", {
	    origin = Vector(-6272, -2576, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559070
	})

}
::"origin" "-6352 -2576 320" <- function()
{
	local 349 = SpawnEntityFromTable("", {
	    origin = Vector(-6352, -2576, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 94.321, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559072
	})

}
::"origin" "-6192 -2576 320" <- function()
{
	local 350 = SpawnEntityFromTable("", {
	    origin = Vector(-6192, -2576, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559074
	})

}
::"origin" "-6272 -2720 320" <- function()
{
	local 351 = SpawnEntityFromTable("", {
	    origin = Vector(-6272, -2720, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559076
	})

}
::"origin" "-6200 -2720 320" <- function()
{
	local 352 = SpawnEntityFromTable("", {
	    origin = Vector(-6200, -2720, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559078
	})

}
::"origin" "-6344.98 -2733.64 320" <- function()
{
	local 353 = SpawnEntityFromTable("", {
	    origin = Vector(-6344.98, -2733.64, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559080
	})

}
::"origin" "-6199.87 -2645.64 320" <- function()
{
	local 354 = SpawnEntityFromTable("", {
	    origin = Vector(-6199.87, -2645.64, 320),
	    TeamNum = 3,
	    StartDisabled = 0,
	    controlpoint = "cap_middle",
	    angles = QAngle(0, 91.728, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559082
	})

}
::"origin" "-6224 -2448 430.335" <- function()
{
	local 355 = SpawnEntityFromTable("", {
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

}
::"origin" "-6224 -2448 433.335" <- function()
{
	local 356 = SpawnEntityFromTable("", {
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

}
::"origin" "-6224 -2688 430.335" <- function()
{
	local 357 = SpawnEntityFromTable("", {
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

}
::"origin" "-6224 -2688 433.335" <- function()
{
	local 358 = SpawnEntityFromTable("", {
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

}
::"origin" "-6448 -2688 430.335" <- function()
{
	local 359 = SpawnEntityFromTable("", {
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

}
::"origin" "-6448 -2688 433.335" <- function()
{
	local 360 = SpawnEntityFromTable("", {
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

}
::"origin" "-6448 -2448 430.335" <- function()
{
	local 361 = SpawnEntityFromTable("", {
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

}
::"origin" "-6448 -2448 433.335" <- function()
{
	local 362 = SpawnEntityFromTable("", {
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

}
::"origin" "-5200 176 433.007" <- function()
{
	local 363 = SpawnEntityFromTable("", {
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

}
::"origin" "-5200 176 435.007" <- function()
{
	local 364 = SpawnEntityFromTable("", {
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

}
::"origin" "-5580 528 478.007" <- function()
{
	local 365 = SpawnEntityFromTable("", {
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

}
::"origin" "-5580 528 481.007" <- function()
{
	local 366 = SpawnEntityFromTable("", {
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

}
::"origin" "-5440.25 224 268.718" <- function()
{
	local 367 = SpawnEntityFromTable("", {
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

}
::"origin" "-6152.67 561.33 273.013" <- function()
{
	local 368 = SpawnEntityFromTable("", {
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

}
::"origin" "-5582 534 273.013" <- function()
{
	local 369 = SpawnEntityFromTable("", {
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

}
::"origin" "-6464.67 481.33 273.013" <- function()
{
	local 370 = SpawnEntityFromTable("", {
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

}
::"origin" "-5864.67 561.33 273.013" <- function()
{
	local 371 = SpawnEntityFromTable("", {
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

}
::"origin" "-6736 392 236.335" <- function()
{
	local 372 = SpawnEntityFromTable("", {
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

}
::"origin" "-6736 392 239.335" <- function()
{
	local 373 = SpawnEntityFromTable("", {
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

}
::"origin" "-6960 384 236.335" <- function()
{
	local 374 = SpawnEntityFromTable("", {
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

}
::"origin" "-6960 384 239.335" <- function()
{
	local 375 = SpawnEntityFromTable("", {
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

}
::"origin" "-5328.67 224.33 273.013" <- function()
{
	local 376 = SpawnEntityFromTable("", {
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

}
::"origin" "-5336 -152.3 273.013" <- function()
{
	local 377 = SpawnEntityFromTable("", {
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

}
::"origin" "-5429.72 536 428.109" <- function()
{
	local 378 = SpawnEntityFromTable("", {
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

}
::"model" "*23" <- function()
{
	local 379 = SpawnEntityFromTable("", {
	    model = "*23",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6481.75, 479.24, 467),
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_illusionary",
	    hammerid = 3563713
	})

}
::"origin" "-6015.82 545.57 248.75" <- function()
{
	local 380 = SpawnEntityFromTable("", {
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

}
::"origin" "-6320 32 465.007" <- function()
{
	local 381 = SpawnEntityFromTable("", {
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

}
::"origin" "-6320 32 467.007" <- function()
{
	local 382 = SpawnEntityFromTable("", {
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

}
::"origin" "-6032 128 465.007" <- function()
{
	local 383 = SpawnEntityFromTable("", {
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

}
::"origin" "-6032 128 467.007" <- function()
{
	local 384 = SpawnEntityFromTable("", {
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

}
::"origin" "-5744 80 465.007" <- function()
{
	local 385 = SpawnEntityFromTable("", {
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

}
::"origin" "-5744 80 467.007" <- function()
{
	local 386 = SpawnEntityFromTable("", {
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

}
::"origin" "-6168.67 816.33 457.013" <- function()
{
	local 387 = SpawnEntityFromTable("", {
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

}
::"origin" "-5864.67 816.33 457.013" <- function()
{
	local 388 = SpawnEntityFromTable("", {
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

}
::"origin" "-5835.1 676.28 317.868" <- function()
{
	local 389 = SpawnEntityFromTable("", {
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

}
::"origin" "-5810.98 676.28 349.435" <- function()
{
	local 390 = SpawnEntityFromTable("", {
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

}
::"origin" "-5879.05 676.28 349.76" <- function()
{
	local 391 = SpawnEntityFromTable("", {
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

}
::"origin" "-5879.05 676.28 343.76" <- function()
{
	local 392 = SpawnEntityFromTable("", {
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

}
::"origin" "-6271 676 349" <- function()
{
	local 393 = SpawnEntityFromTable("", {
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

}
::"origin" "-6776.67 809.33 473.013" <- function()
{
	local 394 = SpawnEntityFromTable("", {
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

}
::"origin" "-5202.67 776.33 265.013" <- function()
{
	local 395 = SpawnEntityFromTable("", {
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

}
::"origin" "-5338.67 776.33 265.013" <- function()
{
	local 396 = SpawnEntityFromTable("", {
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

}
::"origin" "-6016.67 801.33 273.013" <- function()
{
	local 397 = SpawnEntityFromTable("", {
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

}
::"origin" "-6464.67 720.33 537.013" <- function()
{
	local 398 = SpawnEntityFromTable("", {
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

}
::"origin" "-7243.49 167.28 87" <- function()
{
	local 399 = SpawnEntityFromTable("", {
	    origin = Vector(-7243.49, 167.28, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742960
	})

}
::"origin" "-7240.11 238.72 87" <- function()
{
	local 400 = SpawnEntityFromTable("", {
	    origin = Vector(-7240.11, 238.72, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742962
	})

}
::"origin" "-7248.33 328.03 87" <- function()
{
	local 401 = SpawnEntityFromTable("", {
	    origin = Vector(-7248.33, 328.03, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742964
	})

}
::"origin" "-7315.72 256.59 87" <- function()
{
	local 402 = SpawnEntityFromTable("", {
	    origin = Vector(-7315.72, 256.59, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742966
	})

}
::"origin" "-7475.87 331.47 87" <- function()
{
	local 403 = SpawnEntityFromTable("", {
	    origin = Vector(-7475.87, 331.47, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742968
	})

}
::"origin" "-7473.44 242.16 87" <- function()
{
	local 404 = SpawnEntityFromTable("", {
	    origin = Vector(-7473.44, 242.16, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742970
	})

}
::"origin" "-7456.48 152.85 87" <- function()
{
	local 405 = SpawnEntityFromTable("", {
	    origin = Vector(-7456.48, 152.85, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742972
	})

}
::"origin" "-7386.68 258.16 87" <- function()
{
	local 406 = SpawnEntityFromTable("", {
	    origin = Vector(-7386.68, 258.16, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742974
	})

}
::"origin" "-7433.47 286.07 87" <- function()
{
	local 407 = SpawnEntityFromTable("", {
	    origin = Vector(-7433.47, 286.07, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742976
	})

}
::"origin" "-7401.56 326.88 87" <- function()
{
	local 408 = SpawnEntityFromTable("", {
	    origin = Vector(-7401.56, 326.88, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742978
	})

}
::"origin" "-7417.53 203.64 87" <- function()
{
	local 409 = SpawnEntityFromTable("", {
	    origin = Vector(-7417.53, 203.64, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742980
	})

}
::"origin" "-7358.12 203.64 87" <- function()
{
	local 410 = SpawnEntityFromTable("", {
	    origin = Vector(-7358.12, 203.64, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742982
	})

}
::"origin" "-7358.15 326.88 87" <- function()
{
	local 411 = SpawnEntityFromTable("", {
	    origin = Vector(-7358.15, 326.88, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742984
	})

}
::"origin" "-7298.74 326.88 87" <- function()
{
	local 412 = SpawnEntityFromTable("", {
	    origin = Vector(-7298.74, 326.88, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742986
	})

}
::"origin" "-7298.74 200.58 87" <- function()
{
	local 413 = SpawnEntityFromTable("", {
	    origin = Vector(-7298.74, 200.58, 87),
	    TeamNum = 2,
	    controlpoint = "cap_blue_2",
	    angles = QAngle(0, 270, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742988
	})

}
::"origin" "-4808.51 2440.72 87" <- function()
{
	local 414 = SpawnEntityFromTable("", {
	    origin = Vector(-4808.51, 2440.72, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742991
	})

}
::"origin" "-4811.89 2369.28 87" <- function()
{
	local 415 = SpawnEntityFromTable("", {
	    origin = Vector(-4811.89, 2369.28, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742993
	})

}
::"origin" "-4819.67 2279.97 87" <- function()
{
	local 416 = SpawnEntityFromTable("", {
	    origin = Vector(-4819.67, 2279.97, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742995
	})

}
::"origin" "-4736.28 2351.41 87" <- function()
{
	local 417 = SpawnEntityFromTable("", {
	    origin = Vector(-4736.28, 2351.41, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742997
	})

}
::"origin" "-4576.14 2276.53 87" <- function()
{
	local 418 = SpawnEntityFromTable("", {
	    origin = Vector(-4576.14, 2276.53, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3742999
	})

}
::"origin" "-4578.56 2365.84 87" <- function()
{
	local 419 = SpawnEntityFromTable("", {
	    origin = Vector(-4578.56, 2365.84, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3743001
	})

}
::"origin" "-4595.52 2455.15 87" <- function()
{
	local 420 = SpawnEntityFromTable("", {
	    origin = Vector(-4595.52, 2455.15, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3743003
	})

}
::"origin" "-4665.32 2349.84 87" <- function()
{
	local 421 = SpawnEntityFromTable("", {
	    origin = Vector(-4665.32, 2349.84, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3743005
	})

}
::"origin" "-4618.53 2305.93 87" <- function()
{
	local 422 = SpawnEntityFromTable("", {
	    origin = Vector(-4618.53, 2305.93, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3743007
	})

}
::"origin" "-4650.44 2281.12 87" <- function()
{
	local 423 = SpawnEntityFromTable("", {
	    origin = Vector(-4650.44, 2281.12, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3743009
	})

}
::"origin" "-4634.47 2404.36 87" <- function()
{
	local 424 = SpawnEntityFromTable("", {
	    origin = Vector(-4634.47, 2404.36, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3743011
	})

}
::"origin" "-4709.88 2404.36 87" <- function()
{
	local 425 = SpawnEntityFromTable("", {
	    origin = Vector(-4709.88, 2404.36, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3743013
	})

}
::"origin" "-4709.85 2281.12 87" <- function()
{
	local 426 = SpawnEntityFromTable("", {
	    origin = Vector(-4709.85, 2281.12, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3743015
	})

}
::"origin" "-4769.26 2281.12 87" <- function()
{
	local 427 = SpawnEntityFromTable("", {
	    origin = Vector(-4769.26, 2281.12, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3743017
	})

}
::"origin" "-4769.26 2407.42 87" <- function()
{
	local 428 = SpawnEntityFromTable("", {
	    origin = Vector(-4769.26, 2407.42, 87),
	    TeamNum = 3,
	    controlpoint = "cap_red_2",
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3743019
	})

}
::"model" "*24" <- function()
{
	local 429 = SpawnEntityFromTable("", {
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
	    hammerid = 3758929
	})

}
::"model" "*25" <- function()
{
	local 430 = SpawnEntityFromTable("", {
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
	    "OnEndTouchAll#2": "door_stage3_blue_spawn1_2,Close,,0,-1"
	})

}
::"origin" "-4209.63 3201.07 96.497" <- function()
{
	local 431 = SpawnEntityFromTable("", {
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

}
::"model" "*26" <- function()
{
	local 432 = SpawnEntityFromTable("", {
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
	    hammerid = 3758939
	})

}
::"origin" "-4144.34 2815.42 293.893" <- function()
{
	local 433 = SpawnEntityFromTable("", {
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

}
::"origin" "-4144.6 2815.32 296.893" <- function()
{
	local 434 = SpawnEntityFromTable("", {
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

}
::"model" "*27" <- function()
{
	local 435 = SpawnEntityFromTable("", {
	    model = "*27",
	    TeamNum = 3,
	    associatedmodel = "prop_resupply_blue_3",
	    classname = "func_regenerate",
	    hammerid = 3759100
	})

}
::"origin" "-4595.15 2991 64.25" <- function()
{
	local 436 = SpawnEntityFromTable("", {
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

}
::"origin" "-4672.34 2431.42 301.893" <- function()
{
	local 437 = SpawnEntityFromTable("", {
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

}
::"origin" "-4672.6 2431.32 304.893" <- function()
{
	local 438 = SpawnEntityFromTable("", {
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

}
::"origin" "-4672.34 2815.42 285.893" <- function()
{
	local 439 = SpawnEntityFromTable("", {
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

}
::"origin" "-4672.6 2815.32 288.893" <- function()
{
	local 440 = SpawnEntityFromTable("", {
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

}
::"model" "*28" <- function()
{
	local 441 = SpawnEntityFromTable("", {
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
	    hammerid = 3772286
	})

}
::"model" "*29" <- function()
{
	local 442 = SpawnEntityFromTable("", {
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
	    "OnEndTouchAll#2": "door_stage3_blue_spawn1_1,Close,,0,-1"
	})

}
::"origin" "-4807.73 2994.35 128.497" <- function()
{
	local 443 = SpawnEntityFromTable("", {
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

}
::"model" "*30" <- function()
{
	local 444 = SpawnEntityFromTable("", {
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
	    hammerid = 3772296
	})

}
::"model" "*31" <- function()
{
	local 445 = SpawnEntityFromTable("", {
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
	    hammerid = 3773864
	})

}
::"model" "*32" <- function()
{
	local 446 = SpawnEntityFromTable("", {
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
	    "OnEndTouchAll#2": "door_stage3_red_spawn1_2,Close,,0,-1"
	})

}
::"origin" "-7822.37 -513.071 96.497" <- function()
{
	local 447 = SpawnEntityFromTable("", {
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

}
::"model" "*33" <- function()
{
	local 448 = SpawnEntityFromTable("", {
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
	    hammerid = 3773874
	})

}
::"model" "*34" <- function()
{
	local 449 = SpawnEntityFromTable("", {
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
	    hammerid = 3773886
	})

}
::"model" "*35" <- function()
{
	local 450 = SpawnEntityFromTable("", {
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
	    "OnEndTouchAll#2": "door_stage3_red_spawn1_1,Close,,0,-1"
	})

}
::"origin" "-7224.27 -306.351 128.497" <- function()
{
	local 451 = SpawnEntityFromTable("", {
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

}
::"model" "*36" <- function()
{
	local 452 = SpawnEntityFromTable("", {
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
	    hammerid = 3773896
	})

}
::"origin" "-7359.66 -127.42 285.893" <- function()
{
	local 453 = SpawnEntityFromTable("", {
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

}
::"origin" "-7359.4 -127.32 288.893" <- function()
{
	local 454 = SpawnEntityFromTable("", {
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

}
::"origin" "-7343.66 256.58 300.893" <- function()
{
	local 455 = SpawnEntityFromTable("", {
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

}
::"origin" "-7343.4 256.68 303.893" <- function()
{
	local 456 = SpawnEntityFromTable("", {
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

}
::"origin" "-7887.66 -127.42 293.893" <- function()
{
	local 457 = SpawnEntityFromTable("", {
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

}
::"origin" "-7887.4 -127.32 296.893" <- function()
{
	local 458 = SpawnEntityFromTable("", {
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

}
::"origin" "-6399.33 798.67 273.013" <- function()
{
	local 459 = SpawnEntityFromTable("", {
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

}
::"origin" "-6855.33 1318.67 273.013" <- function()
{
	local 460 = SpawnEntityFromTable("", {
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

}
::"origin" "-6750.9 1723.72 317.868" <- function()
{
	local 461 = SpawnEntityFromTable("", {
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

}
::"origin" "-6775.02 1723.72 349.435" <- function()
{
	local 462 = SpawnEntityFromTable("", {
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

}
::"origin" "-6706.95 1723.72 349.76" <- function()
{
	local 463 = SpawnEntityFromTable("", {
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

}
::"origin" "-6706.95 1723.72 343.76" <- function()
{
	local 464 = SpawnEntityFromTable("", {
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

}
::"origin" "-4196 3192 186.712" <- function()
{
	local 465 = SpawnEntityFromTable("", {
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

}
::"origin" "-4807.94 2984.1 218.712" <- function()
{
	local 466 = SpawnEntityFromTable("", {
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

}
::"origin" "-6463.33 1967.67 537.013" <- function()
{
	local 467 = SpawnEntityFromTable("", {
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

}
::"origin" "-5568.67 720.33 537.013" <- function()
{
	local 468 = SpawnEntityFromTable("", {
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

}
::"origin" "-6783.33 1878.67 473.013" <- function()
{
	local 469 = SpawnEntityFromTable("", {
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

}
::"origin" "-5256.67 809.33 473.013" <- function()
{
	local 470 = SpawnEntityFromTable("", {
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

}
::"origin" "-6741.1 1748.28 317.868" <- function()
{
	local 471 = SpawnEntityFromTable("", {
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

}
::"origin" "-6716.98 1748.28 349.435" <- function()
{
	local 472 = SpawnEntityFromTable("", {
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

}
::"origin" "-6785.05 1748.28 349.76" <- function()
{
	local 473 = SpawnEntityFromTable("", {
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

}
::"origin" "-6785.05 1748.28 343.76" <- function()
{
	local 474 = SpawnEntityFromTable("", {
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

}
::"origin" "-5294.9 939.719 317.868" <- function()
{
	local 475 = SpawnEntityFromTable("", {
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

}
::"origin" "-5319.02 939.719 349.435" <- function()
{
	local 476 = SpawnEntityFromTable("", {
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

}
::"origin" "-5250.95 939.719 349.76" <- function()
{
	local 477 = SpawnEntityFromTable("", {
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

}
::"origin" "-5250.95 939.719 343.76" <- function()
{
	local 478 = SpawnEntityFromTable("", {
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

}
::"origin" "-6399.33 1886.67 273.013" <- function()
{
	local 479 = SpawnEntityFromTable("", {
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

}
::"origin" "-5631.33 798.67 273.013" <- function()
{
	local 480 = SpawnEntityFromTable("", {
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

}
::"origin" "-6015.33 1342.67 73.0125" <- function()
{
	local 481 = SpawnEntityFromTable("", {
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

}
::"origin" "-5549.3 3409.54 96.8973" <- function()
{
	local 482 = SpawnEntityFromTable("", {
	    origin = Vector(-5549.3, 3409.54, 96.8973),
	    angles = QAngle(0, 0, 0),
	    classname = "info_player_start",
	    hammerid = 980239
	})

}
::"origin" "-5103.88 3618.05 32.8973" <- function()
{
	local 483 = SpawnEntityFromTable("", {
	    origin = Vector(-5103.88, 3618.05, 32.8973),
	    angles = QAngle(0, 0, 0),
	    classname = "info_player_start",
	    hammerid = 980253
	})

}
::"origin" "-6223.2 3589.81 32.8973" <- function()
{
	local 484 = SpawnEntityFromTable("", {
	    origin = Vector(-6223.2, 3589.81, 32.8973),
	    angles = QAngle(0, 0, 0),
	    classname = "info_player_start",
	    hammerid = 980255
	})

}
::"origin" "-5052.35 3145.08 32.8973" <- function()
{
	local 485 = SpawnEntityFromTable("", {
	    origin = Vector(-5052.35, 3145.08, 32.8973),
	    angles = QAngle(0, 0, 0),
	    classname = "info_player_start",
	    hammerid = 980282
	})

}
::"origin" "-5686.75 2501.63 96.8973" <- function()
{
	local 486 = SpawnEntityFromTable("", {
	    origin = Vector(-5686.75, 2501.63, 96.8973),
	    angles = QAngle(0, 0, 0),
	    classname = "info_player_start",
	    hammerid = 1009577
	})

}
::"origin" "-6016.41 5792.04 97" <- function()
{
	local 487 = SpawnEntityFromTable("", {
	    origin = Vector(-6016.41, 5792.04, 97),
	    angles = QAngle(0, 0, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1083400
	})

}
::"origin" "-4323.9 4930.02 33" <- function()
{
	local 488 = SpawnEntityFromTable("", {
	    origin = Vector(-4323.9, 4930.02, 33),
	    angles = QAngle(0, 0, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1083420
	})

}
::"origin" "-6207.03 7200 -95.5" <- function()
{
	local 489 = SpawnEntityFromTable("", {
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

}
::"origin" "-4240 4632 456" <- function()
{
	local 490 = SpawnEntityFromTable("", {
	    origin = Vector(-4240, 4632, 456),
	    targetname = "relay_stage1_gates",
	    StartDisabled = 0,
	    spawnflags = 0,
	    classname = "logic_relay",
	    hammerid = 1202602,
	    "OnTrigger#1": "door_stage1_gate1*,Open,,0,-1",
	    "OnTrigger#2": "door_blu_stage1*,Open,,0,-1"
	})

}
::"origin" "-4256 4608 392" <- function()
{
	local 491 = SpawnEntityFromTable("", {
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

}
::"origin" "-4256 4560 392" <- function()
{
	local 492 = SpawnEntityFromTable("", {
	    origin = Vector(-4256, 4560, 392),
	    targetname = "shadow_control",
	    distance = 48,
	    disableallshadows = 0,
	    color = "109 121 152",
	    angles = QAngle(50, 212, 0),
	    classname = "shadow_control",
	    hammerid = 1219206
	})

}
::"origin" "-4256 4536 392" <- function()
{
	local 493 = SpawnEntityFromTable("", {
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

}
::"origin" "-4584 5936 82.2562" <- function()
{
	local 494 = SpawnEntityFromTable("", {
	    origin = Vector(-4584, 5936, 82.2562),
	    angles = QAngle(0, 0, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 1241348
	})

}
::"origin" "-4584 6000 82.2562" <- function()
{
	local 495 = SpawnEntityFromTable("", {
	    origin = Vector(-4584, 6000, 82.2562),
	    angles = QAngle(0, 0, 0),
	    classname = "item_ammopack_full",
	    hammerid = 1241350
	})

}
::"origin" "-6688 2288 96.2562" <- function()
{
	local 496 = SpawnEntityFromTable("", {
	    origin = Vector(-6688, 2288, 96.2562),
	    angles = QAngle(0, 90, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 1259531
	})

}
::"origin" "-5712 5808 112" <- function()
{
	local 497 = SpawnEntityFromTable("", {
	    origin = Vector(-5712, 5808, 112),
	    angles = QAngle(0, 270, 0),
	    classname = "item_ammopack_full",
	    hammerid = 1269792
	})

}
::"origin" "-4600 3296 40.2562" <- function()
{
	local 498 = SpawnEntityFromTable("", {
	    origin = Vector(-4600, 3296, 40.2562),
	    angles = QAngle(0, 270, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 1269806
	})

}
::"origin" "-4544 3296 40.2562" <- function()
{
	local 499 = SpawnEntityFromTable("", {
	    origin = Vector(-4544, 3296, 40.2562),
	    angles = QAngle(0, 270, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 1269808
	})

}
::"origin" "-6048 3560 48.2562" <- function()
{
	local 500 = SpawnEntityFromTable("", {
	    origin = Vector(-6048, 3560, 48.2562),
	    angles = QAngle(0, 270, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 1269826
	})

}
::"origin" "-5984 3560 48.2562" <- function()
{
	local 501 = SpawnEntityFromTable("", {
	    origin = Vector(-5984, 3560, 48.2562),
	    angles = QAngle(0, 270, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 1269828
	})

}
::"origin" "-6048 5072 -88" <- function()
{
	local 502 = SpawnEntityFromTable("", {
	    origin = Vector(-6048, 5072, -88),
	    angles = QAngle(0, 270, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 1280859
	})

}
::"origin" "-5984 5072 -88" <- function()
{
	local 503 = SpawnEntityFromTable("", {
	    origin = Vector(-5984, 5072, -88),
	    angles = QAngle(0, 270, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 1280861
	})

}
::"origin" "-5429.35 6642.97 -96" <- function()
{
	local 504 = SpawnEntityFromTable("", {
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

}
::"origin" "-5472.13 6891.3 -96" <- function()
{
	local 505 = SpawnEntityFromTable("", {
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

}
::"origin" "-5429.65 6152.9 -95.75" <- function()
{
	local 506 = SpawnEntityFromTable("", {
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

}
::"origin" "-6004.9 4442.93 -143.288" <- function()
{
	local 507 = SpawnEntityFromTable("", {
	    origin = Vector(-6004.9, 4442.93, -143.288),
	    angles = QAngle(0, 270, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 1424192
	})

}
::"portalnumber" "5" <- function()
{
	local 508 = SpawnEntityFromTable("", {
	    portalnumber = 5,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1424871
	})

}
::"portalnumber" "6" <- function()
{
	local 509 = SpawnEntityFromTable("", {
	    portalnumber = 6,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1424879
	})

}
::"portalnumber" "7" <- function()
{
	local 510 = SpawnEntityFromTable("", {
	    portalnumber = 7,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1424901
	})

}
::"portalnumber" "8" <- function()
{
	local 511 = SpawnEntityFromTable("", {
	    portalnumber = 8,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1424940
	})

}
::"portalnumber" "9" <- function()
{
	local 512 = SpawnEntityFromTable("", {
	    portalnumber = 9,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1424947
	})

}
::"portalnumber" "10" <- function()
{
	local 513 = SpawnEntityFromTable("", {
	    portalnumber = 10,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1424954
	})

}
::"portalnumber" "11" <- function()
{
	local 514 = SpawnEntityFromTable("", {
	    portalnumber = 11,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1424961
	})

}
::"origin" "-5944.9 1060.52 -95" <- function()
{
	local 515 = SpawnEntityFromTable("", {
	    origin = Vector(-5944.9, 1060.52, -95),
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_start",
	    hammerid = 1523242
	})

}
::"origin" "-6402.6 1043.7 -95" <- function()
{
	local 516 = SpawnEntityFromTable("", {
	    origin = Vector(-6402.6, 1043.7, -95),
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_start",
	    hammerid = 1523244
	})

}
::"origin" "-5491.4 1679.09 97" <- function()
{
	local 517 = SpawnEntityFromTable("", {
	    origin = Vector(-5491.4, 1679.09, 97),
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_start",
	    hammerid = 1523252
	})

}
::"origin" "-5276.7 1826.25 97" <- function()
{
	local 518 = SpawnEntityFromTable("", {
	    origin = Vector(-5276.7, 1826.25, 97),
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_start",
	    hammerid = 1523270
	})

}
::"origin" "-5513.4 1739.49 -95" <- function()
{
	local 519 = SpawnEntityFromTable("", {
	    origin = Vector(-5513.4, 1739.49, -95),
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_start",
	    hammerid = 1523276
	})

}
::"origin" "-5820.1 1944.58 97" <- function()
{
	local 520 = SpawnEntityFromTable("", {
	    origin = Vector(-5820.1, 1944.58, 97),
	    angles = QAngle(0, 90, 0),
	    classname = "info_player_start",
	    hammerid = 1523278
	})

}
::"portalnumber" "12" <- function()
{
	local 521 = SpawnEntityFromTable("", {
	    portalnumber = 12,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1530344
	})

}
::"portalnumber" "13" <- function()
{
	local 522 = SpawnEntityFromTable("", {
	    portalnumber = 13,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1530372
	})

}
::"portalnumber" "14" <- function()
{
	local 523 = SpawnEntityFromTable("", {
	    portalnumber = 14,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1530406
	})

}
::"portalnumber" "15" <- function()
{
	local 524 = SpawnEntityFromTable("", {
	    portalnumber = 15,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1530418
	})

}
::"origin" "-5480 2268 292.256" <- function()
{
	local 525 = SpawnEntityFromTable("", {
	    origin = Vector(-5480, 2268, 292.256),
	    angles = QAngle(0, 0, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 1531988
	})

}
::"origin" "-5480 2204 292.256" <- function()
{
	local 526 = SpawnEntityFromTable("", {
	    origin = Vector(-5480, 2204, 292.256),
	    angles = QAngle(0, 0, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 1531990
	})

}
::"origin" "-6015.33 2118.67 449.013" <- function()
{
	local 527 = SpawnEntityFromTable("", {
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

}
::"model" "*37" <- function()
{
	local 528 = SpawnEntityFromTable("", {
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
	    hammerid = 1562701
	})

}
::"origin" "-6651.8 1856.63 556.078" <- function()
{
	local 529 = SpawnEntityFromTable("", {
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

}
::"portalnumber" "16" <- function()
{
	local 530 = SpawnEntityFromTable("", {
	    portalnumber = 16,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1768474
	})

}
::"portalnumber" "17" <- function()
{
	local 531 = SpawnEntityFromTable("", {
	    portalnumber = 17,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1768488
	})

}
::"origin" "-5385.88 1783.13 288.256" <- function()
{
	local 532 = SpawnEntityFromTable("", {
	    origin = Vector(-5385.88, 1783.13, 288.256),
	    angles = QAngle(0, 90, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 1781237
	})

}
::"origin" "-5345.88 1783.13 288.256" <- function()
{
	local 533 = SpawnEntityFromTable("", {
	    origin = Vector(-5345.88, 1783.13, 288.256),
	    angles = QAngle(0, 90, 0),
	    classname = "item_healthkit_small",
	    hammerid = 1781239
	})

}
::"origin" "-5993.21 1592.66 -95" <- function()
{
	local 534 = SpawnEntityFromTable("", {
	    origin = Vector(-5993.21, 1592.66, -95),
	    angles = QAngle(0, 0, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 1781834
	})

}
::"portalnumber" "18" <- function()
{
	local 535 = SpawnEntityFromTable("", {
	    portalnumber = 18,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 1794236
	})

}
::"origin" "-5680.34 7327.42 1.4048" <- function()
{
	local 536 = SpawnEntityFromTable("", {
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

}
::"origin" "-5680.6 7327.32 4.4048" <- function()
{
	local 537 = SpawnEntityFromTable("", {
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

}
::"origin" "-6016 7376 28.0067" <- function()
{
	local 538 = SpawnEntityFromTable("", {
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

}
::"origin" "-6016 7376 31.0067" <- function()
{
	local 539 = SpawnEntityFromTable("", {
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

}
::"model" "*38" <- function()
{
	local 540 = SpawnEntityFromTable("", {
	    model = "*38",
	    TeamNum = 2,
	    targetname = "respawnroom_stage1_red",
	    StartDisabled = 0,
	    classname = "func_respawnroom",
	    hammerid = 1401327
	})

}
::"model" "*39" <- function()
{
	local 541 = SpawnEntityFromTable("", {
	    model = "*39",
	    TeamNum = 2,
	    associatedmodel = "prop_resupply_red_2",
	    classname = "func_regenerate",
	    hammerid = 1195061
	})

}
::"origin" "-5328.85 7505 -191.84" <- function()
{
	local 542 = SpawnEntityFromTable("", {
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

}
::"model" "*40" <- function()
{
	local 543 = SpawnEntityFromTable("", {
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
	    hammerid = 1418987
	})

}
::"origin" "-6275.93 7551.25 24.073" <- function()
{
	local 544 = SpawnEntityFromTable("", {
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

}
::"origin" "-6275.93 7551.25 -55.927" <- function()
{
	local 545 = SpawnEntityFromTable("", {
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

}
::"model" "*41" <- function()
{
	local 546 = SpawnEntityFromTable("", {
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
	    "OnFullyOpen#1": "prop_door_stage1_gate1_3b,Disable,,0,-1"
	})

}
::"model" "*42" <- function()
{
	local 547 = SpawnEntityFromTable("", {
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
	    hammerid = 1206609
	})

}
::"model" "*43" <- function()
{
	local 548 = SpawnEntityFromTable("", {
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
	    hammerid = 1418917
	})

}
::"origin" "-5216.07 7240 -71.927" <- function()
{
	local 549 = SpawnEntityFromTable("", {
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

}
::"origin" "-5216.07 7240 -151.927" <- function()
{
	local 550 = SpawnEntityFromTable("", {
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

}
::"model" "*44" <- function()
{
	local 551 = SpawnEntityFromTable("", {
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
	    "OnFullyOpen#1": "prop_door_stage1_gate1_1b,Disable,,0,-1"
	})

}
::"model" "*45" <- function()
{
	local 552 = SpawnEntityFromTable("", {
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
	    hammerid = 1197372
	})

}
::"origin" "-4552 7256 -128" <- function()
{
	local 553 = SpawnEntityFromTable("", {
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

}
::"origin" "-4632 7256 -128" <- function()
{
	local 554 = SpawnEntityFromTable("", {
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

}
::"model" "*46" <- function()
{
	local 555 = SpawnEntityFromTable("", {
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
	    hammerid = 1418962
	})

}
::"model" "*47" <- function()
{
	local 556 = SpawnEntityFromTable("", {
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
	    "OnFullyOpen#1": "prop_door_stage1_gate1_2b,Disable,,0,-1"
	})

}
::"model" "*48" <- function()
{
	local 557 = SpawnEntityFromTable("", {
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
	    "OnFullyOpen#1": "prop_door_stage1_gate1_2a,Disable,,0,-1"
	})

}
::"origin" "-5974 1348 -95.7438" <- function()
{
	local 558 = SpawnEntityFromTable("", {
	    origin = Vector(-5974, 1348, -95.7438),
	    angles = QAngle(0, 180, 0),
	    classname = "item_ammopack_full",
	    hammerid = 1828503
	})

}
::"origin" "-6559.75 2464 268.718" <- function()
{
	local 559 = SpawnEntityFromTable("", {
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

}
::"model" "*49" <- function()
{
	local 560 = SpawnEntityFromTable("", {
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
	    hammerid = 1884523
	})

}
::"model" "*50" <- function()
{
	local 561 = SpawnEntityFromTable("", {
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
	    hammerid = 1884690
	})

}
::"model" "*51" <- function()
{
	local 562 = SpawnEntityFromTable("", {
	    model = "*51",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5520, 3224, 156.21),
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_illusionary",
	    hammerid = 1889301
	})

}
::"model" "*52" <- function()
{
	local 563 = SpawnEntityFromTable("", {
	    model = "*52",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5520, 3192, 405.11),
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_illusionary",
	    hammerid = 1890181
	})

}
::"model" "*53" <- function()
{
	local 564 = SpawnEntityFromTable("", {
	    model = "*53",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6496, 3192, 405.11),
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_illusionary",
	    hammerid = 1890429
	})

}
::"model" "*54" <- function()
{
	local 565 = SpawnEntityFromTable("", {
	    model = "*54",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5096, 1896, 220.21),
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_illusionary",
	    hammerid = 1935801
	})

}
::"origin" "-4997 2605.84 112.838" <- function()
{
	local 566 = SpawnEntityFromTable("", {
	    origin = Vector(-4997, 2605.84, 112.838),
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "224 64 10 14",
	    classname = "light",
	    hammerid = 2131312
	})

}
::"model" "*55" <- function()
{
	local 567 = SpawnEntityFromTable("", {
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
	    hammerid = 2131656
	})

}
::"model" "*56" <- function()
{
	local 568 = SpawnEntityFromTable("", {
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
	    hammerid = 2131901
	})

}
::"model" "*57" <- function()
{
	local 569 = SpawnEntityFromTable("", {
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
	    hammerid = 2132003
	})

}
::"model" "*58" <- function()
{
	local 570 = SpawnEntityFromTable("", {
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
	    hammerid = 2152728
	})

}
::"model" "*59" <- function()
{
	local 571 = SpawnEntityFromTable("", {
	    model = "*59",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5252, 2056.5, 372),
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_illusionary",
	    hammerid = 2160576
	})

}
::"model" "*60" <- function()
{
	local 572 = SpawnEntityFromTable("", {
	    model = "*60",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5184, 1984, 546),
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_illusionary",
	    hammerid = 2160651
	})

}
::"origin" "-6896.77 3702.06 97" <- function()
{
	local 573 = SpawnEntityFromTable("", {
	    origin = Vector(-6896.77, 3702.06, 97),
	    angles = QAngle(0, 0, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 2188118
	})

}
::"model" "*61" <- function()
{
	local 574 = SpawnEntityFromTable("", {
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
	    hammerid = 2320799
	})

}
::"origin" "-4814.05 6111.81 135.023" <- function()
{
	local 575 = SpawnEntityFromTable("", {
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

}
::"origin" "-6752 2288 96.2562" <- function()
{
	local 576 = SpawnEntityFromTable("", {
	    origin = Vector(-6752, 2288, 96.2562),
	    angles = QAngle(0, 90, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 1259529
	})

}
::"origin" "-6992.31 3086.33 290.256" <- function()
{
	local 577 = SpawnEntityFromTable("", {
	    origin = Vector(-6992.31, 3086.33, 290.256),
	    angles = QAngle(0, 90, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 2404188
	})

}
::"model" "*62" <- function()
{
	local 578 = SpawnEntityFromTable("", {
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
	    hammerid = 2404415
	})

}
::"origin" "-5939.89 7592.87 -95.75" <- function()
{
	local 579 = SpawnEntityFromTable("", {
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

}
::"origin" "-6099 8352.45 1.33153" <- function()
{
	local 580 = SpawnEntityFromTable("", {
	    origin = Vector(-6099, 8352.45, 1.33153),
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "224 64 10 14",
	    classname = "light",
	    hammerid = 2461553
	})

}
::"origin" "-6534.06 5446.88 51.0342" <- function()
{
	local 581 = SpawnEntityFromTable("", {
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

}
::"origin" "-5478.75 2162.09 411.455" <- function()
{
	local 582 = SpawnEntityFromTable("", {
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

}
::"model" "*63" <- function()
{
	local 583 = SpawnEntityFromTable("", {
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
	    hammerid = 2524775
	})

}
::"origin" "-5035.06 7626.48 -191.75" <- function()
{
	local 584 = SpawnEntityFromTable("", {
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

}
::"portalnumber" "19" <- function()
{
	local 585 = SpawnEntityFromTable("", {
	    portalnumber = 19,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 2573831
	})

}
::"origin" "-5152.87 2798.48 36.2361" <- function()
{
	local 586 = SpawnEntityFromTable("", {
	    origin = Vector(-5152.87, 2798.48, 36.2361),
	    angles = QAngle(0, 270, 0),
	    classname = "item_ammopack_full",
	    hammerid = 2574050
	})

}
::"origin" "-5216.87 2798.48 36.2361" <- function()
{
	local 587 = SpawnEntityFromTable("", {
	    origin = Vector(-5216.87, 2798.48, 36.2361),
	    angles = QAngle(0, 270, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 2574052
	})

}
::"origin" "-5455.81 7944 -160" <- function()
{
	local 588 = SpawnEntityFromTable("", {
	    origin = Vector(-5455.81, 7944, -160),
	    targetname = "Inside",
	    soundscape = "Gorge.Inside",
	    radius = -1.0,
	    classname = "env_soundscape",
	    hammerid = 2688649
	})

}
::"origin" "-5225.48 7200 -168" <- function()
{
	local 589 = SpawnEntityFromTable("", {
	    origin = Vector(-5225.48, 7200, -168),
	    targetname = "Outside",
	    soundscape = "Gorge.Outside",
	    radius = -1.0,
	    classname = "env_soundscape",
	    hammerid = 2688660
	})

}
::"origin" "-5206.48 7332.76 -184" <- function()
{
	local 590 = SpawnEntityFromTable("", {
	    origin = Vector(-5206.48, 7332.76, -184),
	    radius = -1.0,
	    MainSoundscapeName = "Inside",
	    classname = "env_soundscape_proxy",
	    hammerid = 2688671
	})

}
::"origin" "-4598.54 7326.67 -184" <- function()
{
	local 591 = SpawnEntityFromTable("", {
	    origin = Vector(-4598.54, 7326.67, -184),
	    radius = -1.0,
	    MainSoundscapeName = "Inside",
	    classname = "env_soundscape_proxy",
	    hammerid = 2688674
	})

}
::"origin" "-6234 7605.08 -88" <- function()
{
	local 592 = SpawnEntityFromTable("", {
	    origin = Vector(-6234, 7605.08, -88),
	    radius = -1.0,
	    MainSoundscapeName = "Inside",
	    classname = "env_soundscape_proxy",
	    hammerid = 2688677
	})

}
::"origin" "-6874.24 3316.32 104" <- function()
{
	local 593 = SpawnEntityFromTable("", {
	    origin = Vector(-6874.24, 3316.32, 104),
	    radius = -1.0,
	    MainSoundscapeName = "Inside",
	    classname = "env_soundscape_proxy",
	    hammerid = 2688680
	})

}
::"origin" "-5182.22 3257.87 40" <- function()
{
	local 594 = SpawnEntityFromTable("", {
	    origin = Vector(-5182.22, 3257.87, 40),
	    radius = -1.0,
	    MainSoundscapeName = "Inside",
	    classname = "env_soundscape_proxy",
	    hammerid = 2688683
	})

}
::"origin" "-4601.19 7211.68 -184" <- function()
{
	local 595 = SpawnEntityFromTable("", {
	    origin = Vector(-4601.19, 7211.68, -184),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 2688689
	})

}
::"origin" "-6327.61 7493.9 -88" <- function()
{
	local 596 = SpawnEntityFromTable("", {
	    origin = Vector(-6327.61, 7493.9, -88),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 2688692
	})

}
::"origin" "-5768 6352 296" <- function()
{
	local 597 = SpawnEntityFromTable("", {
	    origin = Vector(-5768, 6352, 296),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 2688695
	})

}
::"origin" "-6003.16 4303.48 224.02" <- function()
{
	local 598 = SpawnEntityFromTable("", {
	    origin = Vector(-6003.16, 4303.48, 224.02),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 2688698
	})

}
::"origin" "-5200.56 3426.95 40" <- function()
{
	local 599 = SpawnEntityFromTable("", {
	    origin = Vector(-5200.56, 3426.95, 40),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 2688701
	})

}
::"origin" "-6843.99 3418.56 104" <- function()
{
	local 600 = SpawnEntityFromTable("", {
	    origin = Vector(-6843.99, 3418.56, 104),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 2688704
	})

}
::"origin" "-6767.5 1976 248" <- function()
{
	local 601 = SpawnEntityFromTable("", {
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

}
::"origin" "-6004.37 1804.18 456" <- function()
{
	local 602 = SpawnEntityFromTable("", {
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

}
::"origin" "-6288 2864 208" <- function()
{
	local 603 = SpawnEntityFromTable("", {
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

}
::"origin" "-6698.85 2795.88 214.946" <- function()
{
	local 604 = SpawnEntityFromTable("", {
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

}
::"origin" "-4568 6096 232.199" <- function()
{
	local 605 = SpawnEntityFromTable("", {
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

}
::"origin" "-6686.9 3235.64 440.287" <- function()
{
	local 606 = SpawnEntityFromTable("", {
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

}
::"origin" "-6731.98 2059.56 365.44" <- function()
{
	local 607 = SpawnEntityFromTable("", {
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

}
::"origin" "-5449.31 8280 -12.5819" <- function()
{
	local 608 = SpawnEntityFromTable("", {
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

}
::"origin" "-6848 3624 255.007" <- function()
{
	local 609 = SpawnEntityFromTable("", {
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

}
::"origin" "-6696 2745 273.013" <- function()
{
	local 610 = SpawnEntityFromTable("", {
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

}
::"origin" "-6353 2153.7 273.264" <- function()
{
	local 611 = SpawnEntityFromTable("", {
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

}
::"origin" "-6387 2844 273.013" <- function()
{
	local 612 = SpawnEntityFromTable("", {
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

}
::"origin" "-6290 2844.7 273.013" <- function()
{
	local 613 = SpawnEntityFromTable("", {
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

}
::"origin" "-6722 2282 277.013" <- function()
{
	local 614 = SpawnEntityFromTable("", {
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

}
::"origin" "-6958 2129 273.013" <- function()
{
	local 615 = SpawnEntityFromTable("", {
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

}
::"origin" "-6472.25 2867.98 294.987" <- function()
{
	local 616 = SpawnEntityFromTable("", {
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

}
::"origin" "-6259.01 2867.93 294.987" <- function()
{
	local 617 = SpawnEntityFromTable("", {
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

}
::"origin" "-6374.09 2867.92 294.987" <- function()
{
	local 618 = SpawnEntityFromTable("", {
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

}
::"origin" "-5650.83 2863.3 294.987" <- function()
{
	local 619 = SpawnEntityFromTable("", {
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

}
::"origin" "-5749 2863.35 294.987" <- function()
{
	local 620 = SpawnEntityFromTable("", {
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

}
::"origin" "-5535.75 2863.3 294.987" <- function()
{
	local 621 = SpawnEntityFromTable("", {
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

}
::"origin" "-5696 2862 273.013" <- function()
{
	local 622 = SpawnEntityFromTable("", {
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

}
::"origin" "-5558 2863 273.013" <- function()
{
	local 623 = SpawnEntityFromTable("", {
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

}
::"origin" "-5845 3375 467.007" <- function()
{
	local 624 = SpawnEntityFromTable("", {
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

}
::"origin" "-5845 3375 465.007" <- function()
{
	local 625 = SpawnEntityFromTable("", {
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

}
::"origin" "-5180.83 2625.3 190.987" <- function()
{
	local 626 = SpawnEntityFromTable("", {
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

}
::"origin" "-5065.75 2625.3 190.987" <- function()
{
	local 627 = SpawnEntityFromTable("", {
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

}
::"origin" "-5279 2625.35 190.987" <- function()
{
	local 628 = SpawnEntityFromTable("", {
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

}
::"origin" "-5182.08 3311.3 294.987" <- function()
{
	local 629 = SpawnEntityFromTable("", {
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

}
::"origin" "-5067 3311.3 294.987" <- function()
{
	local 630 = SpawnEntityFromTable("", {
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

}
::"origin" "-5280.25 3311.35 294.987" <- function()
{
	local 631 = SpawnEntityFromTable("", {
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

}
::"origin" "-6158 2194.55 294.987" <- function()
{
	local 632 = SpawnEntityFromTable("", {
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

}
::"origin" "-5930.48 2193.3 294.987" <- function()
{
	local 633 = SpawnEntityFromTable("", {
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

}
::"origin" "-6952.24 2079.18 294.987" <- function()
{
	local 634 = SpawnEntityFromTable("", {
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

}
::"origin" "-6727.17 2082.36 294.987" <- function()
{
	local 635 = SpawnEntityFromTable("", {
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

}
::"origin" "-5704.31 3018.58 294.987" <- function()
{
	local 636 = SpawnEntityFromTable("", {
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

}
::"origin" "-6330.24 3022.21 294.987" <- function()
{
	local 637 = SpawnEntityFromTable("", {
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

}
::"origin" "-5712 7112 206" <- function()
{
	local 638 = SpawnEntityFromTable("", {
	    origin = Vector(-5712, 7112, 206),
	    angles = QAngle(0, 180, 0),
	    classname = "item_healthkit_small",
	    hammerid = 3154692
	})

}
::"origin" "-5716 7304 -51.3257" <- function()
{
	local 639 = SpawnEntityFromTable("", {
	    origin = Vector(-5716, 7304, -51.3257),
	    FOV = 75,
	    angles = QAngle(0, 67.5, 0),
	    classname = "point_devshot_camera",
	    hammerid = 3238929
	})

}
::"origin" "-7039.41 5526.71 521" <- function()
{
	local 640 = SpawnEntityFromTable("", {
	    origin = Vector(-7039.41, 5526.71, 521),
	    FOV = 75,
	    angles = QAngle(0, 39, 0),
	    classname = "point_devshot_camera",
	    hammerid = 3238959
	})

}
::"origin" "-7040 5520 521" <- function()
{
	local 641 = SpawnEntityFromTable("", {
	    origin = Vector(-7040, 5520, 521),
	    FOV = 75,
	    angles = QAngle(0, 272, 0),
	    classname = "point_devshot_camera",
	    hammerid = 3238989
	})

}
::"origin" "-8148.74 4062.21 588.5" <- function()
{
	local 642 = SpawnEntityFromTable("", {
	    origin = Vector(-8148.74, 4062.21, 588.5),
	    FOV = 75,
	    angles = QAngle(0, 7.5, 0),
	    classname = "point_devshot_camera",
	    hammerid = 3238993
	})

}
::"origin" "-6912 1456 372.5" <- function()
{
	local 643 = SpawnEntityFromTable("", {
	    origin = Vector(-6912, 1456, 372.5),
	    FOV = 75,
	    angles = QAngle(0, 359, 0),
	    classname = "point_devshot_camera",
	    hammerid = 3239023
	})

}
::"origin" "-6847.03 4900.08 280" <- function()
{
	local 644 = SpawnEntityFromTable("", {
	    origin = Vector(-6847.03, 4900.08, 280),
	    TeamNum = 0,
	    StartDisabled = 0,
	    FOV = 75,
	    defaultwelcome = 1,
	    angles = QAngle(9, -45, 0),
	    classname = "info_observer_point",
	    hammerid = 3275664
	})

	local 645 = SpawnEntityFromTable("", {
	    origin = Vector(-6847.03, 4900.08, 280),
	    FOV = 75,
	    angles = QAngle(9, -45, 0),
	    classname = "point_devshot_camera",
	    hammerid = 3275666
	})

}
::"origin" "-6846.69 4902.88 281" <- function()
{
	local 646 = SpawnEntityFromTable("", {
	    origin = Vector(-6846.69, 4902.88, 281),
	    target = "cap_red_2",
	    classname = "info_intermission",
	    hammerid = 3275668
	})

}
::"origin" "-6126.25 6557.21 -91.2204" <- function()
{
	local 647 = SpawnEntityFromTable("", {
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

}
::"origin" "-6062.25 6573.21 -91.2204" <- function()
{
	local 648 = SpawnEntityFromTable("", {
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

}
::"origin" "-5670.25 6533.21 -91.2204" <- function()
{
	local 649 = SpawnEntityFromTable("", {
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

}
::"origin" "-5552 6544 -85.2194" <- function()
{
	local 650 = SpawnEntityFromTable("", {
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

}
::"origin" "-5759.04 6386.13 -89.4384" <- function()
{
	local 651 = SpawnEntityFromTable("", {
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

}
::"origin" "-5752 6736 -93.9694" <- function()
{
	local 652 = SpawnEntityFromTable("", {
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

}
::"origin" "-5731.04 6222.13 -90.4384" <- function()
{
	local 653 = SpawnEntityFromTable("", {
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

}
::"origin" "3080 3980 -25" <- function()
{
	local 654 = SpawnEntityFromTable("", {
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

}
::"occludernumber" "0" <- function()
{
	local 655 = SpawnEntityFromTable("", {
	    occludernumber = 0,
	    model = "",
	    StartActive = 1,
	    classname = "func_occluder",
	    hammerid = 3331683
	})

}
::"portalnumber" "20" <- function()
{
	local 656 = SpawnEntityFromTable("", {
	    portalnumber = 20,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3331860
	})

}
::"portalnumber" "21" <- function()
{
	local 657 = SpawnEntityFromTable("", {
	    portalnumber = 21,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3331891
	})

}
::"origin" "-6324 1510 -400" <- function()
{
	local 658 = SpawnEntityFromTable("", {
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

}
::"origin" "-6144 1196 -452" <- function()
{
	local 659 = SpawnEntityFromTable("", {
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

}
::"occludernumber" "1" <- function()
{
	local 660 = SpawnEntityFromTable("", {
	    occludernumber = 1,
	    model = "",
	    StartActive = 1,
	    classname = "func_occluder",
	    hammerid = 3375995
	})

}
::"origin" "-6848 3624 252.007" <- function()
{
	local 661 = SpawnEntityFromTable("", {
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

}
::"occludernumber" "2" <- function()
{
	local 662 = SpawnEntityFromTable("", {
	    occludernumber = 2,
	    model = "",
	    StartActive = 1,
	    classname = "func_occluder",
	    hammerid = 3391363
	})

}
::"model" "*64" <- function()
{
	local 663 = SpawnEntityFromTable("", {
	    model = "*64",
	    TeamNum = 2,
	    targetname = "respawnroom_stage2_red1",
	    StartDisabled = 0,
	    classname = "func_respawnroom",
	    hammerid = 3462137
	})

}
::"model" "*65" <- function()
{
	local 664 = SpawnEntityFromTable("", {
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
	    hammerid = 3468016
	})

}
::"model" "*66" <- function()
{
	local 665 = SpawnEntityFromTable("", {
	    model = "*66",
	    TeamNum = 0,
	    StartDisabled = 0,
	    classname = "func_nobuild",
	    hammerid = 3530243
	})

}
::"model" "*67" <- function()
{
	local 666 = SpawnEntityFromTable("", {
	    model = "*67",
	    TeamNum = 0,
	    StartDisabled = 0,
	    classname = "func_nobuild",
	    hammerid = 3530246
	})

}
::"portalnumber" "22" <- function()
{
	local 667 = SpawnEntityFromTable("", {
	    portalnumber = 22,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3685993
	})

}
::"portalnumber" "23" <- function()
{
	local 668 = SpawnEntityFromTable("", {
	    portalnumber = 23,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3686171
	})

}
::"origin" "-6482.7 -721.54 96.8973" <- function()
{
	local 669 = SpawnEntityFromTable("", {
	    origin = Vector(-6482.7, -721.54, 96.8973),
	    angles = QAngle(0, 180, 0),
	    classname = "info_player_start",
	    hammerid = 3559279
	})

}
::"origin" "-6928.12 -930.05 32.8973" <- function()
{
	local 670 = SpawnEntityFromTable("", {
	    origin = Vector(-6928.12, -930.05, 32.8973),
	    angles = QAngle(0, 180, 0),
	    classname = "info_player_start",
	    hammerid = 3559281
	})

}
::"origin" "-5808.8 -901.81 32.8973" <- function()
{
	local 671 = SpawnEntityFromTable("", {
	    origin = Vector(-5808.8, -901.81, 32.8973),
	    angles = QAngle(0, 180, 0),
	    classname = "info_player_start",
	    hammerid = 3559283
	})

}
::"origin" "-6979.65 -457.08 32.8973" <- function()
{
	local 672 = SpawnEntityFromTable("", {
	    origin = Vector(-6979.65, -457.08, 32.8973),
	    angles = QAngle(0, 180, 0),
	    classname = "info_player_start",
	    hammerid = 3559285
	})

}
::"origin" "-6015.59 -3104.04 97" <- function()
{
	local 673 = SpawnEntityFromTable("", {
	    origin = Vector(-6015.59, -3104.04, 97),
	    angles = QAngle(0, 180, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559311
	})

}
::"origin" "-7708.1 -2242.02 33" <- function()
{
	local 674 = SpawnEntityFromTable("", {
	    origin = Vector(-7708.1, -2242.02, 33),
	    angles = QAngle(0, 180, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3559313
	})

}
::"origin" "-5824.97 -4512 -95.5" <- function()
{
	local 675 = SpawnEntityFromTable("", {
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

}
::"origin" "-7448 -3248 82.2562" <- function()
{
	local 676 = SpawnEntityFromTable("", {
	    origin = Vector(-7448, -3248, 82.2562),
	    angles = QAngle(0, 180, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 3559533
	})

}
::"origin" "-7448 -3312 82.2562" <- function()
{
	local 677 = SpawnEntityFromTable("", {
	    origin = Vector(-7448, -3312, 82.2562),
	    angles = QAngle(0, 180, 0),
	    classname = "item_ammopack_full",
	    hammerid = 3559535
	})

}
::"origin" "-6320 -3120 112" <- function()
{
	local 678 = SpawnEntityFromTable("", {
	    origin = Vector(-6320, -3120, 112),
	    angles = QAngle(0, 90, 0),
	    classname = "item_ammopack_full",
	    hammerid = 3559583
	})

}
::"origin" "-7432 -608 40.2562" <- function()
{
	local 679 = SpawnEntityFromTable("", {
	    origin = Vector(-7432, -608, 40.2562),
	    angles = QAngle(0, 90, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 3559585
	})

}
::"origin" "-7488 -608 40.2562" <- function()
{
	local 680 = SpawnEntityFromTable("", {
	    origin = Vector(-7488, -608, 40.2562),
	    angles = QAngle(0, 90, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 3559587
	})

}
::"origin" "-5984 -872 48.2562" <- function()
{
	local 681 = SpawnEntityFromTable("", {
	    origin = Vector(-5984, -872, 48.2562),
	    angles = QAngle(0, 90, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 3559589
	})

}
::"origin" "-6048 -872 48.2562" <- function()
{
	local 682 = SpawnEntityFromTable("", {
	    origin = Vector(-6048, -872, 48.2562),
	    angles = QAngle(0, 90, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 3559591
	})

}
::"origin" "-5984 -2384 -88" <- function()
{
	local 683 = SpawnEntityFromTable("", {
	    origin = Vector(-5984, -2384, -88),
	    angles = QAngle(0, 90, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 3559593
	})

}
::"origin" "-6048 -2384 -88" <- function()
{
	local 684 = SpawnEntityFromTable("", {
	    origin = Vector(-6048, -2384, -88),
	    angles = QAngle(0, 90, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 3559595
	})

}
::"origin" "-6602.65 -3954.97 -96" <- function()
{
	local 685 = SpawnEntityFromTable("", {
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

}
::"origin" "-6559.87 -4203.3 -96" <- function()
{
	local 686 = SpawnEntityFromTable("", {
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

}
::"origin" "-6602.35 -3464.9 -95.75" <- function()
{
	local 687 = SpawnEntityFromTable("", {
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

}
::"origin" "-6027.1 -1754.93 -143.288" <- function()
{
	local 688 = SpawnEntityFromTable("", {
	    origin = Vector(-6027.1, -1754.93, -143.288),
	    angles = QAngle(0, 90, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 3559634
	})

}
::"origin" "-6351.66 -4639.42 1.4048" <- function()
{
	local 689 = SpawnEntityFromTable("", {
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

}
::"origin" "-6351.4 -4639.32 4.4048" <- function()
{
	local 690 = SpawnEntityFromTable("", {
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

}
::"origin" "-6016 -4688 28.0067" <- function()
{
	local 691 = SpawnEntityFromTable("", {
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

}
::"origin" "-6016 -4688 31.0067" <- function()
{
	local 692 = SpawnEntityFromTable("", {
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

}
::"model" "*68" <- function()
{
	local 693 = SpawnEntityFromTable("", {
	    model = "*68",
	    TeamNum = 3,
	    targetname = "respawnroom_stage1_blu",
	    StartDisabled = 0,
	    classname = "func_respawnroom",
	    hammerid = 3560047
	})

}
::"model" "*69" <- function()
{
	local 694 = SpawnEntityFromTable("", {
	    model = "*69",
	    TeamNum = 3,
	    associatedmodel = "prop_resupply_red_2",
	    classname = "func_regenerate",
	    hammerid = 3560057
	})

}
::"origin" "-6703.15 -4817 -191.84" <- function()
{
	local 695 = SpawnEntityFromTable("", {
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

}
::"model" "*70" <- function()
{
	local 696 = SpawnEntityFromTable("", {
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
	    hammerid = 3560070
	})

}
::"origin" "-5756.07 -4863.25 24.073" <- function()
{
	local 697 = SpawnEntityFromTable("", {
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

}
::"origin" "-5756.07 -4863.25 -55.927" <- function()
{
	local 698 = SpawnEntityFromTable("", {
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

}
::"model" "*71" <- function()
{
	local 699 = SpawnEntityFromTable("", {
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
	    "OnFullyOpen#1": "prop_door_stage1_gate1_3b,Disable,,0,-1"
	})

}
::"model" "*72" <- function()
{
	local 700 = SpawnEntityFromTable("", {
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
	    hammerid = 3560092
	})

}
::"model" "*73" <- function()
{
	local 701 = SpawnEntityFromTable("", {
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
	    hammerid = 3560103
	})

}
::"origin" "-6815.93 -4552 -71.927" <- function()
{
	local 702 = SpawnEntityFromTable("", {
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

}
::"origin" "-6815.93 -4552 -151.927" <- function()
{
	local 703 = SpawnEntityFromTable("", {
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

}
::"model" "*74" <- function()
{
	local 704 = SpawnEntityFromTable("", {
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
	    "OnFullyOpen#1": "prop_door_stage1_gate1_1b,Disable,,0,-1"
	})

}
::"model" "*75" <- function()
{
	local 705 = SpawnEntityFromTable("", {
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
	    hammerid = 3560125
	})

}
::"origin" "-7480 -4568 -128" <- function()
{
	local 706 = SpawnEntityFromTable("", {
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

}
::"origin" "-7400 -4568 -128" <- function()
{
	local 707 = SpawnEntityFromTable("", {
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

}
::"model" "*76" <- function()
{
	local 708 = SpawnEntityFromTable("", {
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
	    "OnFullyOpen#1": "prop_door_blu_stage1_gate1_2b,Disable,,0,-1"
	})

}
::"model" "*77" <- function()
{
	local 709 = SpawnEntityFromTable("", {
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
	    "OnFullyOpen#1": "prop_door_blu_stage1_gate1_2a,Disable,,0,-1"
	})

}
::"model" "*78" <- function()
{
	local 710 = SpawnEntityFromTable("", {
	    model = "*78",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6512, -536, 156.21),
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_illusionary",
	    hammerid = 3560327
	})

}
::"model" "*79" <- function()
{
	local 711 = SpawnEntityFromTable("", {
	    model = "*79",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6512, -504, 405.11),
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_illusionary",
	    hammerid = 3560342
	})

}
::"model" "*80" <- function()
{
	local 712 = SpawnEntityFromTable("", {
	    model = "*80",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-5536, -504, 405.11),
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_illusionary",
	    hammerid = 3560353
	})

}
::"model" "*81" <- function()
{
	local 713 = SpawnEntityFromTable("", {
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
	    hammerid = 3560478
	})

}
::"origin" "-5135.23 -1014.06 97" <- function()
{
	local 714 = SpawnEntityFromTable("", {
	    origin = Vector(-5135.23, -1014.06, 97),
	    angles = QAngle(0, 180, 0),
	    classname = "info_player_teamspawn",
	    hammerid = 3560544
	})

}
::"model" "*82" <- function()
{
	local 715 = SpawnEntityFromTable("", {
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
	    hammerid = 3560766
	})

}
::"origin" "-7217.95 -3423.81 135.023" <- function()
{
	local 716 = SpawnEntityFromTable("", {
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

}
::"origin" "-5039.69 -398.33 290.256" <- function()
{
	local 717 = SpawnEntityFromTable("", {
	    origin = Vector(-5039.69, -398.33, 290.256),
	    angles = QAngle(0, 270, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 3560853
	})

}
::"model" "*83" <- function()
{
	local 718 = SpawnEntityFromTable("", {
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
	    hammerid = 3560861
	})

}
::"origin" "-6092.11 -4904.87 -95.75" <- function()
{
	local 719 = SpawnEntityFromTable("", {
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

}
::"origin" "-5933 -5664.45 1.33153" <- function()
{
	local 720 = SpawnEntityFromTable("", {
	    origin = Vector(-5933, -5664.45, 1.33153),
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "224 64 10 14",
	    classname = "light",
	    hammerid = 3560987
	})

}
::"origin" "-5497.94 -2758.88 51.0342" <- function()
{
	local 721 = SpawnEntityFromTable("", {
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

}
::"model" "*84" <- function()
{
	local 722 = SpawnEntityFromTable("", {
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
	    hammerid = 3560999
	})

}
::"origin" "-6996.94 -4938.48 -191.75" <- function()
{
	local 723 = SpawnEntityFromTable("", {
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

}
::"origin" "-6576.19 -5256 -160" <- function()
{
	local 724 = SpawnEntityFromTable("", {
	    origin = Vector(-6576.19, -5256, -160),
	    targetname = "Inside",
	    soundscape = "Gorge.Inside",
	    radius = -1.0,
	    classname = "env_soundscape",
	    hammerid = 3561235
	})

}
::"origin" "-6806.52 -4512 -168" <- function()
{
	local 725 = SpawnEntityFromTable("", {
	    origin = Vector(-6806.52, -4512, -168),
	    targetname = "Outside",
	    soundscape = "Gorge.Outside",
	    radius = -1.0,
	    classname = "env_soundscape",
	    hammerid = 3561246
	})

}
::"origin" "-6825.52 -4644.76 -184" <- function()
{
	local 726 = SpawnEntityFromTable("", {
	    origin = Vector(-6825.52, -4644.76, -184),
	    radius = -1.0,
	    MainSoundscapeName = "Inside",
	    classname = "env_soundscape_proxy",
	    hammerid = 3561257
	})

}
::"origin" "-7433.46 -4638.67 -184" <- function()
{
	local 727 = SpawnEntityFromTable("", {
	    origin = Vector(-7433.46, -4638.67, -184),
	    radius = -1.0,
	    MainSoundscapeName = "Inside",
	    classname = "env_soundscape_proxy",
	    hammerid = 3561260
	})

}
::"origin" "-5798 -4917.08 -88" <- function()
{
	local 728 = SpawnEntityFromTable("", {
	    origin = Vector(-5798, -4917.08, -88),
	    radius = -1.0,
	    MainSoundscapeName = "Inside",
	    classname = "env_soundscape_proxy",
	    hammerid = 3561263
	})

}
::"origin" "-5157.76 -628.32 104" <- function()
{
	local 729 = SpawnEntityFromTable("", {
	    origin = Vector(-5157.76, -628.32, 104),
	    radius = -1.0,
	    MainSoundscapeName = "Inside",
	    classname = "env_soundscape_proxy",
	    hammerid = 3561266
	})

}
::"origin" "-6849.78 -569.87 40" <- function()
{
	local 730 = SpawnEntityFromTable("", {
	    origin = Vector(-6849.78, -569.87, 40),
	    radius = -1.0,
	    MainSoundscapeName = "Inside",
	    classname = "env_soundscape_proxy",
	    hammerid = 3561269
	})

}
::"origin" "-7430.81 -4523.68 -184" <- function()
{
	local 731 = SpawnEntityFromTable("", {
	    origin = Vector(-7430.81, -4523.68, -184),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 3561272
	})

}
::"origin" "-5704.39 -4805.9 -88" <- function()
{
	local 732 = SpawnEntityFromTable("", {
	    origin = Vector(-5704.39, -4805.9, -88),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 3561275
	})

}
::"origin" "-6264 -3664 296" <- function()
{
	local 733 = SpawnEntityFromTable("", {
	    origin = Vector(-6264, -3664, 296),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 3561278
	})

}
::"origin" "-6028.84 -1615.48 224.02" <- function()
{
	local 734 = SpawnEntityFromTable("", {
	    origin = Vector(-6028.84, -1615.48, 224.02),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 3561281
	})

}
::"origin" "-6831.44 -738.95 40" <- function()
{
	local 735 = SpawnEntityFromTable("", {
	    origin = Vector(-6831.44, -738.95, 40),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 3561284
	})

}
::"origin" "-5188.01 -730.56 104" <- function()
{
	local 736 = SpawnEntityFromTable("", {
	    origin = Vector(-5188.01, -730.56, 104),
	    radius = -1.0,
	    MainSoundscapeName = "Outside",
	    classname = "env_soundscape_proxy",
	    hammerid = 3561287
	})

}
::"origin" "-5744 -176 208" <- function()
{
	local 737 = SpawnEntityFromTable("", {
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

}
::"origin" "-7464 -3408 232.199" <- function()
{
	local 738 = SpawnEntityFromTable("", {
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

}
::"origin" "-5345.1 -547.64 440.287" <- function()
{
	local 739 = SpawnEntityFromTable("", {
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

}
::"origin" "-6582.69 -5592 -12.5819" <- function()
{
	local 740 = SpawnEntityFromTable("", {
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

}
::"origin" "-5184 -936 255.007" <- function()
{
	local 741 = SpawnEntityFromTable("", {
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

}
::"origin" "-5559.75 -179.98 294.987" <- function()
{
	local 742 = SpawnEntityFromTable("", {
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

}
::"origin" "-5772.99 -179.93 294.987" <- function()
{
	local 743 = SpawnEntityFromTable("", {
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

}
::"origin" "-5657.91 -179.92 294.987" <- function()
{
	local 744 = SpawnEntityFromTable("", {
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

}
::"origin" "-6381.17 -175.3 294.987" <- function()
{
	local 745 = SpawnEntityFromTable("", {
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

}
::"origin" "-6283 -175.35 294.987" <- function()
{
	local 746 = SpawnEntityFromTable("", {
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

}
::"origin" "-6496.25 -175.3 294.987" <- function()
{
	local 747 = SpawnEntityFromTable("", {
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

}
::"origin" "-6336 -174 273.013" <- function()
{
	local 748 = SpawnEntityFromTable("", {
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

}
::"origin" "-6474 -175 273.013" <- function()
{
	local 749 = SpawnEntityFromTable("", {
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

}
::"origin" "-6187 -687 467.007" <- function()
{
	local 750 = SpawnEntityFromTable("", {
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

}
::"origin" "-6187 -687 465.007" <- function()
{
	local 751 = SpawnEntityFromTable("", {
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

}
::"origin" "-6849.92 -623.3 294.987" <- function()
{
	local 752 = SpawnEntityFromTable("", {
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

}
::"origin" "-6965 -623.3 294.987" <- function()
{
	local 753 = SpawnEntityFromTable("", {
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

}
::"origin" "-6751.75 -623.35 294.987" <- function()
{
	local 754 = SpawnEntityFromTable("", {
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

}
::"origin" "-6327.69 -330.58 294.987" <- function()
{
	local 755 = SpawnEntityFromTable("", {
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

}
::"origin" "-5701.76 -334.21 294.987" <- function()
{
	local 756 = SpawnEntityFromTable("", {
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

}
::"origin" "-6320 -4424 206" <- function()
{
	local 757 = SpawnEntityFromTable("", {
	    origin = Vector(-6320, -4424, 206),
	    angles = QAngle(0, 0, 0),
	    classname = "item_healthkit_small",
	    hammerid = 3562908
	})

}
::"origin" "-6316 -4616 -51.3257" <- function()
{
	local 758 = SpawnEntityFromTable("", {
	    origin = Vector(-6316, -4616, -51.3257),
	    FOV = 75,
	    angles = QAngle(0, 247.5, 0),
	    classname = "point_devshot_camera",
	    hammerid = 3562922
	})

}
::"origin" "-4992.59 -2838.71 521" <- function()
{
	local 759 = SpawnEntityFromTable("", {
	    origin = Vector(-4992.59, -2838.71, 521),
	    FOV = 75,
	    angles = QAngle(0, 219, 0),
	    classname = "point_devshot_camera",
	    hammerid = 3562924
	})

}
::"origin" "-4992 -2832 521" <- function()
{
	local 760 = SpawnEntityFromTable("", {
	    origin = Vector(-4992, -2832, 521),
	    FOV = 75,
	    angles = QAngle(0, 92, 0),
	    classname = "point_devshot_camera",
	    hammerid = 3562926
	})

}
::"origin" "-3883.26 -1374.21 588.5" <- function()
{
	local 761 = SpawnEntityFromTable("", {
	    origin = Vector(-3883.26, -1374.21, 588.5),
	    FOV = 75,
	    angles = QAngle(0, 187.5, 0),
	    classname = "point_devshot_camera",
	    hammerid = 3562928
	})

}
::"origin" "-5905.75 -3869.21 -91.2204" <- function()
{
	local 762 = SpawnEntityFromTable("", {
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

}
::"origin" "-5969.75 -3885.21 -91.2204" <- function()
{
	local 763 = SpawnEntityFromTable("", {
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

}
::"origin" "-6425.75 -3829.21 -91.2204" <- function()
{
	local 764 = SpawnEntityFromTable("", {
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

}
::"origin" "-6480 -3856 -85.2194" <- function()
{
	local 765 = SpawnEntityFromTable("", {
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

}
::"origin" "-6272.96 -3682.13 -89.4384" <- function()
{
	local 766 = SpawnEntityFromTable("", {
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

}
::"origin" "-6280 -3984 -93.9694" <- function()
{
	local 767 = SpawnEntityFromTable("", {
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

}
::"origin" "-6300.96 -3534.13 -90.4384" <- function()
{
	local 768 = SpawnEntityFromTable("", {
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

}
::"origin" "-5184 -936 252.007" <- function()
{
	local 769 = SpawnEntityFromTable("", {
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

}
::"model" "*85" <- function()
{
	local 770 = SpawnEntityFromTable("", {
	    model = "*85",
	    TeamNum = 3,
	    targetname = "respawnroom_stage2_blue1",
	    StartDisabled = 0,
	    classname = "func_respawnroom",
	    hammerid = 3563257
	})

}
::"model" "*86" <- function()
{
	local 771 = SpawnEntityFromTable("", {
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
	    hammerid = 3563271
	})

}
::"model" "*87" <- function()
{
	local 772 = SpawnEntityFromTable("", {
	    model = "*87",
	    TeamNum = 0,
	    StartDisabled = 0,
	    classname = "func_nobuild",
	    hammerid = 3563346
	})

}
::"model" "*88" <- function()
{
	local 773 = SpawnEntityFromTable("", {
	    model = "*88",
	    TeamNum = 0,
	    StartDisabled = 0,
	    classname = "func_nobuild",
	    hammerid = 3563348
	})

}
::"origin" "-6345.25 186.37 96.8973" <- function()
{
	local 774 = SpawnEntityFromTable("", {
	    origin = Vector(-6345.25, 186.37, 96.8973),
	    angles = QAngle(0, 180, 0),
	    classname = "info_player_start",
	    hammerid = 3563877
	})

}
::"origin" "-5344 400 96.2562" <- function()
{
	local 775 = SpawnEntityFromTable("", {
	    origin = Vector(-5344, 400, 96.2562),
	    angles = QAngle(0, 270, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 3563906
	})

}
::"origin" "-6552 420 292.256" <- function()
{
	local 776 = SpawnEntityFromTable("", {
	    origin = Vector(-6552, 420, 292.256),
	    angles = QAngle(0, 180, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 3563995
	})

}
::"origin" "-6552 484 292.256" <- function()
{
	local 777 = SpawnEntityFromTable("", {
	    origin = Vector(-6552, 484, 292.256),
	    angles = QAngle(0, 180, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 3563997
	})

}
::"origin" "-6016.67 569.33 449.013" <- function()
{
	local 778 = SpawnEntityFromTable("", {
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

}
::"origin" "-5472.25 224 268.718" <- function()
{
	local 779 = SpawnEntityFromTable("", {
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

}
::"model" "*89" <- function()
{
	local 780 = SpawnEntityFromTable("", {
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
	    hammerid = 3564152
	})

}
::"origin" "-7035 82.16 112.838" <- function()
{
	local 781 = SpawnEntityFromTable("", {
	    origin = Vector(-7035, 82.16, 112.838),
	    _quadratic_attn = 1,
	    _lightscaleHDR = 1,
	    _lightHDR = "-1 -1 -1 1",
	    _light = "224 64 10 14",
	    classname = "light",
	    hammerid = 3564218
	})

}
::"model" "*90" <- function()
{
	local 782 = SpawnEntityFromTable("", {
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
	    hammerid = 3564234
	})

}
::"model" "*91" <- function()
{
	local 783 = SpawnEntityFromTable("", {
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
	    hammerid = 3564269
	})

}
::"model" "*92" <- function()
{
	local 784 = SpawnEntityFromTable("", {
	    model = "*92",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6780, 631.5, 372),
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_illusionary",
	    hammerid = 3564273
	})

}
::"model" "*93" <- function()
{
	local 785 = SpawnEntityFromTable("", {
	    model = "*93",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6848, 704, 546),
	    disableshadows = 1,
	    disablereceiveshadows = 1,
	    classname = "func_illusionary",
	    hammerid = 3564276
	})

}
::"origin" "-5280 400 96.2562" <- function()
{
	local 786 = SpawnEntityFromTable("", {
	    origin = Vector(-5280, 400, 96.2562),
	    angles = QAngle(0, 270, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 3564322
	})

}
::"origin" "-6553.25 525.91 411.455" <- function()
{
	local 787 = SpawnEntityFromTable("", {
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

}
::"origin" "-6879.13 -110.48 36.2361" <- function()
{
	local 788 = SpawnEntityFromTable("", {
	    origin = Vector(-6879.13, -110.48, 36.2361),
	    angles = QAngle(0, 90, 0),
	    classname = "item_ammopack_full",
	    hammerid = 3564327
	})

}
::"origin" "-6815.13 -110.48 36.2361" <- function()
{
	local 789 = SpawnEntityFromTable("", {
	    origin = Vector(-6815.13, -110.48, 36.2361),
	    angles = QAngle(0, 90, 0),
	    classname = "item_healthkit_medium",
	    hammerid = 3564329
	})

}
::"origin" "-5333.15 -107.88 214.946" <- function()
{
	local 790 = SpawnEntityFromTable("", {
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

}
::"origin" "-5300.02 628.44 365.44" <- function()
{
	local 791 = SpawnEntityFromTable("", {
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

}
::"origin" "-5336 -57 273.013" <- function()
{
	local 792 = SpawnEntityFromTable("", {
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

}
::"origin" "-5679 534.3 273.264" <- function()
{
	local 793 = SpawnEntityFromTable("", {
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

}
::"origin" "-5645 -156 273.013" <- function()
{
	local 794 = SpawnEntityFromTable("", {
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

}
::"origin" "-5742 -156.7 273.013" <- function()
{
	local 795 = SpawnEntityFromTable("", {
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

}
::"origin" "-5310 406 277.013" <- function()
{
	local 796 = SpawnEntityFromTable("", {
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

}
::"origin" "-5074 559 273.013" <- function()
{
	local 797 = SpawnEntityFromTable("", {
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

}
::"origin" "-6851.17 62.7002 190.987" <- function()
{
	local 798 = SpawnEntityFromTable("", {
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

}
::"origin" "-6966.25 62.7002 190.987" <- function()
{
	local 799 = SpawnEntityFromTable("", {
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

}
::"origin" "-6753 62.6499 190.987" <- function()
{
	local 800 = SpawnEntityFromTable("", {
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

}
::"origin" "-5874 493.45 294.987" <- function()
{
	local 801 = SpawnEntityFromTable("", {
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

}
::"origin" "-6101.52 494.7 294.987" <- function()
{
	local 802 = SpawnEntityFromTable("", {
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

}
::"origin" "-5079.76 608.82 294.987" <- function()
{
	local 803 = SpawnEntityFromTable("", {
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

}
::"origin" "-5304.83 605.64 294.987" <- function()
{
	local 804 = SpawnEntityFromTable("", {
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

}
::"model" "*94" <- function()
{
	local 805 = SpawnEntityFromTable("", {
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
	    hammerid = 3565189
	})

}
::"origin" "-6027.63 883.82 456" <- function()
{
	local 806 = SpawnEntityFromTable("", {
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

}
::"model" "*95" <- function()
{
	local 807 = SpawnEntityFromTable("", {
	    model = "*95",
	    rendermode = 10,
	    renderfx = 0,
	    rendercolor = "255 255 255",
	    renderamt = 255,
	    origin = Vector(-6936, 792, 220.21),
	    disableshadows = 0,
	    disablereceiveshadows = 0,
	    classname = "func_illusionary",
	    hammerid = 3565458
	})

}
::"model" "*96" <- function()
{
	local 808 = SpawnEntityFromTable("", {
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
	    hammerid = 3565488
	})

}
::"portalnumber" "24" <- function()
{
	local 809 = SpawnEntityFromTable("", {
	    portalnumber = 24,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565665
	})

}
::"portalnumber" "25" <- function()
{
	local 810 = SpawnEntityFromTable("", {
	    portalnumber = 25,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565667
	})

}
::"portalnumber" "26" <- function()
{
	local 811 = SpawnEntityFromTable("", {
	    portalnumber = 26,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565669
	})

}
::"portalnumber" "27" <- function()
{
	local 812 = SpawnEntityFromTable("", {
	    portalnumber = 27,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565671
	})

}
::"portalnumber" "28" <- function()
{
	local 813 = SpawnEntityFromTable("", {
	    portalnumber = 28,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565673
	})

}
::"portalnumber" "29" <- function()
{
	local 814 = SpawnEntityFromTable("", {
	    portalnumber = 29,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565675
	})

}
::"portalnumber" "30" <- function()
{
	local 815 = SpawnEntityFromTable("", {
	    portalnumber = 30,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565677
	})

}
::"portalnumber" "31" <- function()
{
	local 816 = SpawnEntityFromTable("", {
	    portalnumber = 31,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565679
	})

}
::"portalnumber" "32" <- function()
{
	local 817 = SpawnEntityFromTable("", {
	    portalnumber = 32,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565744
	})

}
::"portalnumber" "33" <- function()
{
	local 818 = SpawnEntityFromTable("", {
	    portalnumber = 33,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565746
	})

}
::"portalnumber" "34" <- function()
{
	local 819 = SpawnEntityFromTable("", {
	    portalnumber = 34,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565748
	})

}
::"portalnumber" "35" <- function()
{
	local 820 = SpawnEntityFromTable("", {
	    portalnumber = 35,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565750
	})

}
::"occludernumber" "3" <- function()
{
	local 821 = SpawnEntityFromTable("", {
	    occludernumber = 3,
	    model = "",
	    StartActive = 1,
	    classname = "func_occluder",
	    hammerid = 3565752
	})

}
::"portalnumber" "36" <- function()
{
	local 822 = SpawnEntityFromTable("", {
	    portalnumber = 36,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565756
	})

}
::"portalnumber" "37" <- function()
{
	local 823 = SpawnEntityFromTable("", {
	    portalnumber = 37,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565758
	})

}
::"occludernumber" "4" <- function()
{
	local 824 = SpawnEntityFromTable("", {
	    occludernumber = 4,
	    model = "",
	    StartActive = 1,
	    classname = "func_occluder",
	    hammerid = 3565760
	})

}
::"model" "*97" <- function()
{
	local 825 = SpawnEntityFromTable("", {
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
	    hammerid = 3565827
	})

}
::"portalnumber" "38" <- function()
{
	local 826 = SpawnEntityFromTable("", {
	    portalnumber = 38,
	    StartOpen = 1,
	    PortalVersion = 1,
	    classname = "func_areaportal",
	    hammerid = 3565830
	})

}
::"origin" "-4240 4608 456" <- function()
{
	local 827 = SpawnEntityFromTable("", {
	    origin = Vector(-4240, 4608, 456),
	    targetname = "relay_resettimer",
	    StartDisabled = 0,
	    spawnflags = 0,
	    classname = "logic_relay",
	    hammerid = 3742397,
	    "OnTrigger#1": "timer_round,AddTime,600,0,-1"
	})

}
::"origin" "-4192 4584 456" <- function()
{
	local 828 = SpawnEntityFromTable("", {
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

}
::"origin" "-4192 4584 424" <- function()
{
	local 829 = SpawnEntityFromTable("", {
	    origin = Vector(-4192, 4584, 424),
	    team_base_icon_3 = "sprites/obj_icons/icon_base_blu",
	    team_base_icon_2 = "sprites/obj_icons/icon_base_red",
	    targetname = "master_control_point",
	    StartDisabled = 0,
	    classname = "team_control_point_master",
	    hammerid = 3742401
	})

}
::"origin" "-4192 4584 392" <- function()
{
	local 830 = SpawnEntityFromTable("", {
	    origin = Vector(-4192, 4584, 392),
	    TeamNum = 0,
	    targetname = "end_round_suddendeath",
	    force_map_reset = 1,
	    classname = "game_round_win",
	    hammerid = 3742403
	})

}
::"model" "*98" <- function()
{
	local 831 = SpawnEntityFromTable("", {
	    model = "*98",
	    TeamNum = 3,
	    targetname = "respawnroom_stage3_blue1",
	    StartDisabled = 0,
	    classname = "func_respawnroom",
	    hammerid = 3758971
	})

}
::"model" "*99" <- function()
{
	local 832 = SpawnEntityFromTable("", {
	    model = "*99",
	    TeamNum = 2,
	    targetname = "respawnroom_stage3_red1",
	    StartDisabled = 0,
	    classname = "func_respawnroom",
	    hammerid = 3774039
	})

}
::"origin" "-4240 4584 416" <- function()
{
	local 833 = SpawnEntityFromTable("", {
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

}
::"origin" "-7224 -296 212" <- function()
{
	local 834 = SpawnEntityFromTable("", {
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

}
::"origin" "-7832 -504 192" <- function()
{
	local 835 = SpawnEntityFromTable("", {
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

}
::"origin" "-6632 912 288.256" <- function()
{
	local 836 = SpawnEntityFromTable("", {
	    origin = Vector(-6632, 912, 288.256),
	    angles = QAngle(0, 270, 0),
	    classname = "item_ammopack_medium",
	    hammerid = 3881934
	})

}
::"origin" "-6672 912 288.256" <- function()
{
	local 837 = SpawnEntityFromTable("", {
	    origin = Vector(-6672, 912, 288.256),
	    angles = QAngle(0, 270, 0),
	    classname = "item_healthkit_small",
	    hammerid = 3881936
	})

}
::"origin" "-6062 1348 -95.7649" <- function()
{
	local 838 = SpawnEntityFromTable("", {
	    origin = Vector(-6062, 1348, -95.7649),
	    angles = QAngle(0, 270, 0),
	    classname = "item_healthkit_full",
	    hammerid = 3882757
	})

}
::"origin" "-5852 975.17 -667.788" <- function()
{
	local 839 = SpawnEntityFromTable("", {
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

}
::"origin" "-5670.87 1036 -202.717" <- function()
{
	local 840 = SpawnEntityFromTable("", {
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

}
::"origin" "-5686.64 1165.76 -349.791" <- function()
{
	local 841 = SpawnEntityFromTable("", {
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

}
::"origin" "-5687.58 1361.29 -349.791" <- function()
{
	local 842 = SpawnEntityFromTable("", {
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

}
::"origin" "-5814.86 990.08 -349.791" <- function()
{
	local 843 = SpawnEntityFromTable("", {
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

}
::"origin" "-5813.84 1049.81 -349.791" <- function()
{
	local 844 = SpawnEntityFromTable("", {
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

}
::"origin" "-6024.04 991.767 -349.791" <- function()
{
	local 845 = SpawnEntityFromTable("", {
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

}
::"origin" "-6024.43 1047.37 -349.791" <- function()
{
	local 846 = SpawnEntityFromTable("", {
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

}
::"origin" "-6271.63 984.892 -349.791" <- function()
{
	local 847 = SpawnEntityFromTable("", {
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

}
::"origin" "-6274.37 1050.2 -349.791" <- function()
{
	local 848 = SpawnEntityFromTable("", {
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

}
::"origin" "-6298.71 1138.94 -349.791" <- function()
{
	local 849 = SpawnEntityFromTable("", {
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

}
::"origin" "-6296.06 1330.16 -349.791" <- function()
{
	local 850 = SpawnEntityFromTable("", {
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

}
::"origin" "-6297.59 1521.67 -349.791" <- function()
{
	local 851 = SpawnEntityFromTable("", {
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

}
::"origin" "-6299.63 1718.46 -349.791" <- function()
{
	local 852 = SpawnEntityFromTable("", {
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

}
::"origin" "-6300.98 906.457 -349.791" <- function()
{
	local 853 = SpawnEntityFromTable("", {
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

}
::"origin" "-6360.83 962 -177" <- function()
{
	local 854 = SpawnEntityFromTable("", {
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

}
::"occludernumber" "5" <- function()
{
	local 855 = SpawnEntityFromTable("", {
	    occludernumber = 5,
	    model = "",
	    StartActive = 1,
	    classname = "func_occluder",
	    hammerid = 3948343
	})

}
::"model" "*100" <- function()
{
	local 856 = SpawnEntityFromTable("", {
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
	    hammerid = 3960658
	})

}
::"model" "*101" <- function()
{
	local 857 = SpawnEntityFromTable("", {
	    model = "*101",
	    TeamNum = 3,
	    StartDisabled = 0,
	    classname = "func_nobuild",
	    hammerid = 4032097
	})

}
::"model" "*102" <- function()
{
	local 858 = SpawnEntityFromTable("", {
	    model = "*102",
	    TeamNum = 2,
	    StartDisabled = 0,
	    classname = "func_nobuild",
	    hammerid = 4032128
	})

}
