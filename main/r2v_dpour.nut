::env_soundscape1696108 <- SpawnEntityFromTable("env_soundscape", {
    origin = "-3008 -824 184",
    targetname = "soundscape_spawn2",
    StartDisabled = "0",
    soundscape = "sawmill.deepinside",
    radius = "512",
    classname = "env_soundscape",
    hammerid = "1696108"
})

::info_particle_system2502207 <- SpawnEntityFromTable("info_particle_system", {
    origin = "1595.78 -228 372.438",
    start_active = "0",
    flag_as_weather = "0",
    effect_name = "env_rain_gutterdrip",
    cpoint7_parent = "0",
    cpoint6_parent = "0",
    cpoint5_parent = "0",
    cpoint4_parent = "0",
    cpoint3_parent = "0",
    cpoint2_parent = "0",
    cpoint1_parent = "0",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "2502207"
})

::info_particle_system2502294 <- SpawnEntityFromTable("info_particle_system", {
    origin = "1555.78 -180 372.438",
    start_active = "0",
    flag_as_weather = "0",
    effect_name = "env_rain_gutterdrip",
    cpoint7_parent = "0",
    cpoint6_parent = "0",
    cpoint5_parent = "0",
    cpoint4_parent = "0",
    cpoint3_parent = "0",
    cpoint2_parent = "0",
    cpoint1_parent = "0",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "2502294"
})

::func_forcefield2583247 <- SpawnEntityFromTable("func_forcefield", {
    model = "*1",
    TeamNum = "2",
    targetname = "tunnelforcefield",
    StartDisabled = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "2566 213 -4",
    disablereceiveshadows = "0",
    classname = "func_forcefield",
    hammerid = "2583247",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_forcefield2583247.KeyValueFromInt("solid", 2)
func_forcefield2583247.KeyValueFromString(""mins"", "-1 -1 -1")
func_forcefield2583247.KeyValueFromString(""maxs"", "1 1 1")

::info_player_teamspawn2583287 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "1564.4 545.065 272",
    TeamNum = "0",
    targetname = "thirdspawn",
    StartDisabled = "1",
    spawnflags = "511",
    angles = "0 0 0",
    classname = "info_player_teamspawn",
    hammerid = "2583287"
})

::info_particle_system2569699 <- SpawnEntityFromTable("info_particle_system", {
    origin = "480 -1712 545",
    targetname = "truckfx",
    start_active = "0",
    flag_as_weather = "0",
    effect_name = "fireSmoke_Collumn_mvmAcres_sm",
    cpoint7_parent = "0",
    cpoint6_parent = "0",
    cpoint5_parent = "0",
    cpoint4_parent = "0",
    cpoint3_parent = "0",
    cpoint2_parent = "0",
    cpoint1_parent = "0",
    angles = "90 0 0",
    classname = "info_particle_system",
    hammerid = "2569699"
})

::prop_dynamic2461443 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "1767 -205.5 224.472",
    targetname = "PT_SWITCH5",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_barnblitz/track_switchbox_bb.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 90 -90",
    classname = "prop_dynamic",
    hammerid = "2461443"
})

::env_spark2461639 <- SpawnEntityFromTable("env_spark", {
    origin = "1573.06 -226.302 268",
    TrailLength = "1",
    targetname = "PT_WATERSPARK",
    spawnflags = "192",
    MaxDelay = "0.1",
    Magnitude = "1",
    angles = "0 0 0",
    classname = "env_spark",
    hammerid = "2461639"
})

::env_spark2461663 <- SpawnEntityFromTable("env_spark", {
    origin = "1685.06 -178.302 268",
    TrailLength = "1",
    targetname = "PT_WATERSPARK",
    spawnflags = "192",
    MaxDelay = "1",
    Magnitude = "1",
    angles = "0 0 0",
    classname = "env_spark",
    hammerid = "2461663"
})

::trigger_teleport2542757 <- SpawnEntityFromTable("trigger_teleport", {
    model = "*2",
    targetname = "spawntele2",
    target = "playerspawn",
    StartDisabled = "0",
    spawnflags = "4097",
    origin = "-3724.31 -608 63.99",
    angles = "0 0 0",
    classname = "trigger_teleport",
    hammerid = "2542757",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
trigger_teleport2542757.KeyValueFromInt("solid", 2)
trigger_teleport2542757.KeyValueFromString(""mins"", "-1 -1 -1")
trigger_teleport2542757.KeyValueFromString(""maxs"", "1 1 1")

::trigger_hurt2461695 <- SpawnEntityFromTable("trigger_hurt", {
    model = "*3",
    targetname = "PT_WATERHURT",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "1641 -208 194",
    nodmgforce = "1",
    damagetype = "256",
    damagemodel = "1",
    damagecap = "30",
    damage = "12",
    classname = "trigger_hurt",
    hammerid = "2461695",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
trigger_hurt2461695.KeyValueFromInt("solid", 2)
trigger_hurt2461695.KeyValueFromString(""mins"", "-1 -1 -1")
trigger_hurt2461695.KeyValueFromString(""maxs"", "1 1 1")

::prop_dynamic2461746 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "1580 -164.75 153.689",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "0.75",
    model = "models/props_2fort/ladder001.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "-75 225 -90",
    classname = "prop_dynamic",
    hammerid = "2461746"
})

::info_particle_system2515699 <- SpawnEntityFromTable("info_particle_system", {
    origin = "1556.54 -181.265 261.028",
    targetname = "drip_normal",
    start_active = "1",
    effect_name = "env_rain_guttersplash",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "2515699"
})

::env_soundscape_proxy2529246 <- SpawnEntityFromTable("env_soundscape_proxy", {
    origin = "1576.78 -144 389.974",
    radius = "256",
    MainSoundscapeName = "soundscape_tunnel1",
    classname = "env_soundscape_proxy",
    hammerid = "2529246"
})

::info_particle_system2515765 <- SpawnEntityFromTable("info_particle_system", {
    origin = "1597.49 -230.948 261.028",
    targetname = "drip_normal",
    start_active = "1",
    effect_name = "env_rain_guttersplash",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "2515765"
})

::trigger_once2597113 <- SpawnEntityFromTable("trigger_once", {
    model = "*4",
    targetname = "PT_WINTRIGGER",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "-2828 -616 88",
    filtername = "filter_blu_team",
    classname = "trigger_once",
    hammerid = "2597113",
    OnStartTouch = "win_botsAddOutputtargetname DONTTRIGGER0-1",
    OnStartTouch = "gamerulesCallScriptFunctionEndWaveChangeTeam0.02-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
trigger_once2597113.KeyValueFromInt("solid", 2)
trigger_once2597113.KeyValueFromString(""mins"", "-1 -1 -1")
trigger_once2597113.KeyValueFromString(""maxs"", "1 1 1")

::ambient_generic2502074 <- SpawnEntityFromTable("ambient_generic", {
    origin = "1605.06 -210.302 300",
    volstart = "0",
    targetname = "PT_WATERSPARKSOUND",
    spinup = "0",
    spindown = "0",
    spawnflags = "0",
    radius = "150",
    preset = "0",
    pitchstart = "100",
    pitch = "100",
    message = "Ambient.NucleusElectricity",
    lfotype = "0",
    lforate = "0",
    lfomodvol = "0",
    lfomodpitch = "0",
    health = "10",
    fadeoutsecs = "0",
    fadeinsecs = "0",
    cspinup = "0",
    classname = "ambient_generic",
    hammerid = "2502074"
})

::prop_dynamic2475606 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4380 -977 -127",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/buildables/spawn_room/spawn_turret.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "2475606"
})

::func_breakable2462068 <- SpawnEntityFromTable("func_breakable", {
    model = "*5",
    spawnobject = "0",
    spawnflags = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    propdata = "24",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    origin = "1490 65 373",
    nodamageforces = "0",
    minhealthdmg = "0",
    material = "0",
    health = "50",
    gibdir = "0 0 0",
    explosion = "0",
    ExplodeRadius = "0",
    explodemagnitude = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    classname = "func_breakable",
    hammerid = "2462068",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_breakable2462068.KeyValueFromInt("solid", 2)
func_breakable2462068.KeyValueFromString(""mins"", "-1 -1 -1")
func_breakable2462068.KeyValueFromString(""maxs"", "1 1 1")

::info_player_teamspawn2399677 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "-3920.55 -752.451 -120",
    TeamNum = "2",
    targetname = "genspawn",
    StartDisabled = "1",
    spawnflags = "511",
    angles = "0 0 0",
    classname = "info_player_teamspawn",
    hammerid = "2399677"
})

::env_soundscape_proxy2386342 <- SpawnEntityFromTable("env_soundscape_proxy", {
    origin = "1519 19.0898 -13.5051",
    radius = "223",
    MainSoundscapeName = "soundscape_outside1",
    classname = "env_soundscape_proxy",
    hammerid = "2386342"
})

::func_rot_button2386404 <- SpawnEntityFromTable("func_rot_button", {
    model = "*6",
    wait = "-1",
    targetname = "w2computerbutton",
    speed = "2000",
    spawnflags = "3617",
    sounds = "21",
    rendercolor = "255 255 255",
    renderamt = "255",
    parentname = "w2computer",
    origin = "-2912.64 -1252.7 198",
    distance = "10",
    angles = "0 0 0",
    classname = "func_rot_button",
    hammerid = "2386404",
    OnPressed = "door_red*Unlock0-1",
    OnPressed = "stormhintShow2-1",
    OnPressed = "PT_GENERATORGLOWEnable2-1",
    OnPressed = "PT_GENERATORGLOW3Enable2-1",
    OnPressed = "gamerulesPlayVObuttons/button9.wav0-1",
    OnPressed = "tunnelboss_supportEnable5-1",
    OnPressed = "!selfKill6-1",
    OnPressed = "door_red*Open0.01-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_rot_button2386404.KeyValueFromInt("solid", 2)
func_rot_button2386404.KeyValueFromString(""mins"", "-1 -1 -1")
func_rot_button2386404.KeyValueFromString(""maxs"", "1 1 1")

::prop_dynamic2373045 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4670 -3138 201",
    targetname = "skybox_terrain",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props/generated_prop.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 270 0",
    classname = "prop_dynamic",
    hammerid = "2373045"
})

::tf_glow1736718 <- SpawnEntityFromTable("tf_glow", {
    origin = "-2744 -890.139 120.255",
    targetname = "computerglow",
    target = "w2computer",
    StartDisabled = "1",
    Mode = "2",
    GlowColor = "238 0 0 255",
    classname = "tf_glow",
    hammerid = "1736718"
})

::color_correction2319749 <- SpawnEntityFromTable("color_correction", {
    origin = "183.444 -2800 215.174",
    targetname = "globalcc",
    StartDisabled = "0",
    minfalloff = "-1",
    maxweight = "0.4",
    maxfalloff = "-1",
    filename = "materials/colorcorrection/downpour.raw",
    fadeOutDuration = "0",
    fadeInDuration = "0",
    classname = "color_correction",
    hammerid = "2319749"
})

::func_upgradestation2235087 <- SpawnEntityFromTable("func_upgradestation", {
    model = "*7",
    targetname = "upgradestation",
    StartDisabled = "0",
    classname = "func_upgradestation",
    hammerid = "2235087",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_upgradestation2235087.KeyValueFromInt("solid", 2)
func_upgradestation2235087.KeyValueFromString(""mins"", "-1 -1 -1")
func_upgradestation2235087.KeyValueFromString(""maxs"", "1 1 1")

::env_soundscape_proxy2208286 <- SpawnEntityFromTable("env_soundscape_proxy", {
    origin = "548.714 -992.517 185.872",
    radius = "223",
    MainSoundscapeName = "soundscape_outside1",
    classname = "env_soundscape_proxy",
    hammerid = "2208286"
})

::env_soundscape_proxy2208294 <- SpawnEntityFromTable("env_soundscape_proxy", {
    origin = "1032.51 -891.127 157.899",
    radius = "223",
    MainSoundscapeName = "soundscape_outside1",
    classname = "env_soundscape_proxy",
    hammerid = "2208294"
})

::env_soundscape_proxy2155390 <- SpawnEntityFromTable("env_soundscape_proxy", {
    origin = "1073.14 -3625.93 180.439",
    radius = "223",
    MainSoundscapeName = "soundscape_outside1",
    classname = "env_soundscape_proxy",
    hammerid = "2155390"
})

::func_forcefield1273084 <- SpawnEntityFromTable("func_forcefield", {
    model = "*8",
    vrad_brush_cast_shadows = "0",
    texframeindex = "0",
    TeamNum = "3",
    targetname = "tunnelforcefieldblu",
    StartDisabled = "1",
    spawnflags = "2",
    solidbsp = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "2290.5 -175.94 28.94",
    effects = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_forcefield",
    hammerid = "1273084",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_forcefield1273084.KeyValueFromInt("solid", 2)
func_forcefield1273084.KeyValueFromString(""mins"", "-1 -1 -1")
func_forcefield1273084.KeyValueFromString(""maxs"", "1 1 1")

::ambient_generic2502127 <- SpawnEntityFromTable("ambient_generic", {
    origin = "1605.06 -186.302 300",
    volstart = "0",
    targetname = "PT_WATERSPARKSOUND",
    spinup = "0",
    spindown = "0",
    spawnflags = "0",
    radius = "150",
    preset = "0",
    pitchstart = "100",
    pitch = "100",
    message = "Ambient.NucleusElectricity",
    lfotype = "0",
    lforate = "0",
    lfomodvol = "0",
    lfomodpitch = "0",
    health = "10",
    fadeoutsecs = "0",
    fadeinsecs = "0",
    cspinup = "0",
    classname = "ambient_generic",
    hammerid = "2502127"
})

::env_soundscape_proxy2181716 <- SpawnEntityFromTable("env_soundscape_proxy", {
    origin = "751.08 -4371.95 486.33",
    radius = "744",
    MainSoundscapeName = "soundscape_outside3",
    classname = "env_soundscape_proxy",
    hammerid = "2181716"
})

::env_soundscape_proxy2168454 <- SpawnEntityFromTable("env_soundscape_proxy", {
    origin = "1640 -3136 321.583",
    radius = "223",
    MainSoundscapeName = "soundscape_outside1",
    classname = "env_soundscape_proxy",
    hammerid = "2168454"
})

::env_soundscape_proxy2181644 <- SpawnEntityFromTable("env_soundscape_proxy", {
    origin = "1218.62 -1672.66 165.571",
    radius = "223",
    MainSoundscapeName = "soundscape_outside1",
    classname = "env_soundscape_proxy",
    hammerid = "2181644"
})

::env_soundscape_proxy2181647 <- SpawnEntityFromTable("env_soundscape_proxy", {
    origin = "317.81 -3423.04 176.787",
    radius = "223",
    MainSoundscapeName = "soundscape_outside1",
    classname = "env_soundscape_proxy",
    hammerid = "2181647"
})

::item_healthkit_medium477364 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "-1184 304 -39.7439",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "477364"
})

::trigger_multiple1518363 <- SpawnEntityFromTable("trigger_multiple", {
    model = "*9",
    wait = "0",
    targetname = "lighttrigger",
    StartDisabled = "1",
    spawnflags = "1",
    parentname = "crystal_spin",
    origin = "-256 -255.99 -0.43",
    filtername = "filter_blu_team",
    angles = "0 0 0",
    classname = "trigger_multiple",
    hammerid = "1518363",
    OnStartTouchAll = "crystallightTurnOn0-1",
    OnEndTouchAll = "crystallightTurnOff0-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
trigger_multiple1518363.KeyValueFromInt("solid", 2)
trigger_multiple1518363.KeyValueFromString(""mins"", "-1 -1 -1")
trigger_multiple1518363.KeyValueFromString(""maxs"", "1 1 1")

::info_particle_system529706 <- SpawnEntityFromTable("info_particle_system", {
    origin = "248 -568 1064",
    targetname = "rain_normal",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "529706"
})

::prop_dynamic1942295 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-3915.36 645.097 -3154.24",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_2fort/lantern001.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 45 0",
    classname = "prop_dynamic",
    hammerid = "1942295"
})

::light1942299 <- SpawnEntityFromTable("light", {
    origin = "-3915.36 645.097 -3146.24",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_sprite1942304 <- SpawnEntityFromTable("env_sprite", {
    origin = "-3915.36 645.097 -3146.24",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "242 180 96",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "1942304"
})

::prop_dynamic1941959 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-2527.93 -2581.13 -3096.69",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_2fort/lantern001.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 45 0",
    classname = "prop_dynamic",
    hammerid = "1941959"
})

::light1941963 <- SpawnEntityFromTable("light", {
    origin = "-2527.93 -2581.13 -3088.69",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_sprite1941968 <- SpawnEntityFromTable("env_sprite", {
    origin = "-2527.93 -2581.13 -3088.69",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "242 180 96",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "1941968"
})

::prop_dynamic1941137 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-3860.71 -1049.67 -3366.13",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/player/items/demo/top_hat.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "750",
    fademaxdist = "750",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "-13.5 135 0",
    classname = "prop_dynamic",
    hammerid = "1941137"
})

::prop_dynamic1941141 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-3883.34 -1027.04 -3359.13",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/player/items/all_class/sd_glasses_heavy_cigar.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "750",
    fademaxdist = "750",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "-35 135 0",
    classname = "prop_dynamic",
    hammerid = "1941141"
})

::prop_dynamic1957368 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-2508.21 -1637.97 -2858.41",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_2fort/lantern001.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 45 0",
    classname = "prop_dynamic",
    hammerid = "1957368"
})

::light1957372 <- SpawnEntityFromTable("light", {
    origin = "-2508.21 -1637.97 -2850.41",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_sprite1957379 <- SpawnEntityFromTable("env_sprite", {
    origin = "-2508.21 -1637.97 -2850.41",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "242 180 96",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "1957379"
})

::prop_dynamic1941704 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-2901.13 1852.98 -2899.23",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_2fort/lantern001.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 45 0",
    classname = "prop_dynamic",
    hammerid = "1941704"
})

::light1941708 <- SpawnEntityFromTable("light", {
    origin = "-2901.13 1852.98 -2891.23",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_sprite1941713 <- SpawnEntityFromTable("env_sprite", {
    origin = "-2901.13 1852.98 -2891.23",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "242 180 96",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "1941713"
})

::prop_dynamic1425552 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "3442.19 -1175.43 133.845",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_2fort/lantern001.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 70 0",
    classname = "prop_dynamic",
    hammerid = "1425552"
})

::env_sprite1425556 <- SpawnEntityFromTable("env_sprite", {
    origin = "3442.19 -1175.43 141.845",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "242 180 96",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "1425556"
})

::light1425560 <- SpawnEntityFromTable("light", {
    origin = "3442.19 -1175.43 141.845",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light592532 <- SpawnEntityFromTable("light", {
    origin = "1248 -2032 216",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::info_particle_system591270 <- SpawnEntityFromTable("info_particle_system", {
    origin = "352 -5368 1064",
    targetname = "rain_normal",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "591270"
})

::info_particle_system591010 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-1488 -4408 1064",
    targetname = "rain_normal",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "591010"
})

::info_particle_system590620 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-1840 -3488 1064",
    targetname = "rain_normal",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "590620"
})

::info_particle_system590555 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-1840 -2816 1064",
    targetname = "rain_normal",
    start_active = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "590555"
})

::info_player_teamspawn585356 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "-2256 -4880 -56",
    TeamNum = "3",
    targetname = "spawnbot_invasion",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "585356"
})

::info_player_teamspawn585348 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "224 -6344 440",
    TeamNum = "3",
    targetname = "spawnbot_invasion",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "585348"
})

::info_player_teamspawn585342 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "112 -6272 440",
    TeamNum = "3",
    targetname = "spawnbot_invasion",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "585342"
})

::info_player_teamspawn585318 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "1984 -4928 284",
    TeamNum = "3",
    targetname = "spawnbot_invasion",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "585318"
})

::info_player_teamspawn585290 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "1936 -4880 284",
    TeamNum = "3",
    targetname = "spawnbot_mission_spy",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "585290"
})

::info_player_teamspawn585284 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "2032 -4976 284",
    TeamNum = "3",
    targetname = "spawnbot_mission_sniper",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "585284"
})

::info_player_teamspawn585278 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "1936 -4976 284",
    TeamNum = "3",
    targetname = "spawnbot_left",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "585278"
})

::info_player_teamspawn585272 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "2032 -4880 284",
    TeamNum = "3",
    targetname = "spawnbot_left",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "585272"
})

::func_nobuild573011 <- SpawnEntityFromTable("func_nobuild", {
    model = "*10",
    TeamNum = "0",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "64 -4328 68",
    angles = "0 0 0",
    AllowTeleporters = "0",
    AllowSentry = "0",
    AllowDispenser = "0",
    classname = "func_nobuild",
    hammerid = "573011",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nobuild573011.KeyValueFromInt("solid", 2)
func_nobuild573011.KeyValueFromString(""mins"", "-1 -1 -1")
func_nobuild573011.KeyValueFromString(""maxs"", "1 1 1")

::func_nobuild572999 <- SpawnEntityFromTable("func_nobuild", {
    model = "*11",
    TeamNum = "0",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "160 -4104 68",
    angles = "0 0 0",
    AllowTeleporters = "0",
    AllowSentry = "0",
    AllowDispenser = "0",
    classname = "func_nobuild",
    hammerid = "572999",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nobuild572999.KeyValueFromInt("solid", 2)
func_nobuild572999.KeyValueFromString(""mins"", "-1 -1 -1")
func_nobuild572999.KeyValueFromString(""maxs"", "1 1 1")

::tf_point_nav_interface1040689 <- SpawnEntityFromTable("tf_point_nav_interface", {
    origin = "231.296 -2800 220.936",
    targetname = "nav_interface",
    classname = "tf_point_nav_interface",
    hammerid = "1040689"
})

::func_nav_avoid571324 <- SpawnEntityFromTable("func_nav_avoid", {
    model = "*12",
    team = "3",
    tags = "bomb_carrier mission_sentry_buster common flank_front flank_mid1 flank_mid2 flank_back",
    start_disabled = "0",
    origin = "1212 -3776 -76",
    angles = "0 0 0",
    classname = "func_nav_avoid",
    hammerid = "571324",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nav_avoid571324.KeyValueFromInt("solid", 2)
func_nav_avoid571324.KeyValueFromString(""mins"", "-1 -1 -1")
func_nav_avoid571324.KeyValueFromString(""maxs"", "1 1 1")

::light571232 <- SpawnEntityFromTable("light", {
    origin = "96 -3448 200",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::info_particle_system569965 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-472 -3976 1064",
    targetname = "rain_normal",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "569965"
})

::info_particle_system569900 <- SpawnEntityFromTable("info_particle_system", {
    origin = "408 -3976 1064",
    targetname = "rain_normal",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "569900"
})

::info_particle_system569250 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-472 -4856 1064",
    targetname = "rain_normal",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "569250"
})

::info_particle_system569055 <- SpawnEntityFromTable("info_particle_system", {
    origin = "408 -4856 1064",
    targetname = "rain_normal",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "569055"
})

::info_particle_system568665 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-1056 -3488 1064",
    targetname = "rain_normal",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "568665"
})

::info_particle_system568470 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-1056 -2816 1064",
    targetname = "rain_normal",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "568470"
})

::info_particle_system568275 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-632 -2592 1064",
    targetname = "rain_normal",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "568275"
})

::info_particle_system567820 <- SpawnEntityFromTable("info_particle_system", {
    origin = "1144 -2728 1064",
    targetname = "rain_normal",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "567820"
})

::info_particle_system567560 <- SpawnEntityFromTable("info_particle_system", {
    origin = "768 -1992 1064",
    targetname = "rain_normal",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "567560"
})

::info_particle_system567300 <- SpawnEntityFromTable("info_particle_system", {
    origin = "904 -216 1064",
    targetname = "rain_normal",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "567300"
})

::info_particle_system528666 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-2056 696 1064",
    targetname = "rain_normal",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "528666"
})

::info_particle_system528471 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-1048 696 1064",
    targetname = "rain_normal",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "528471"
})

::info_particle_system522040 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-1048 -1320 1064",
    targetname = "rain_normal",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "522040"
})

::info_particle_system521975 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-2056 -1320 1064",
    targetname = "rain_normal",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "521975"
})

::info_particle_system521126 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-1048 -312 1064",
    targetname = "rain_normal",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "521126"
})

::info_particle_system520299 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-2056 -312 1064",
    targetname = "rain_normal",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "520299"
})

::item_ammopack_medium477555 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "-880 -2120 16.2561",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "477555"
})

::item_healthkit_medium477551 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "-912 -2120 16.2561",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "477551"
})

::item_healthkit_medium477527 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "-192 -4704 -152",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "477527"
})

::item_ammopack_medium477507 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "-800 -4168 0.256134",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "477507"
})

::item_ammopack_medium477368 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "-1152 304 -39.7439",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "477368"
})

::phys_ballsocket1634961 <- SpawnEntityFromTable("phys_ballsocket", {
    origin = "658 -4480 500",
    torquelimit = "0",
    teleportfollowdistance = "0",
    targetname = "bucketsocket",
    spawnflags = "0",
    forcelimit = "0",
    attach1 = "bucket",
    angles = "0 0 0",
    classname = "phys_ballsocket",
    hammerid = "1634961"
})

::prop_physics_multiplayer599634 <- SpawnEntityFromTable("prop_physics_multiplayer", {
    origin = "659 -4480 361",
    texframeindex = "0",
    targetname = "bucket",
    spawnflags = "8196",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    physicsmode = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    nodamageforces = "0",
    modelscale = "1.0",
    model = "models/props_2fort/metalbucket001_up.mdl",
    minhealthdmg = "0",
    massScale = "1.0",
    inertiaScale = "1.0",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "0",
    Damagetype = "0",
    damagetoenablemotion = "0",
    body = "0",
    angles = "0 0 0",
    classname = "prop_physics_multiplayer",
    hammerid = "599634"
})

::prop_dynamic567121 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "1800 -4480 440",
    targetname = "lantern",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_2fort/lantern001.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 150 0",
    classname = "prop_dynamic",
    hammerid = "567121"
})

::light567116 <- SpawnEntityFromTable("light", {
    origin = "1800 -4480 448",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::prop_dynamic567094 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "1424 -4248 440",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_2fort/lantern001.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 45 0",
    classname = "prop_dynamic",
    hammerid = "567094"
})

::light567089 <- SpawnEntityFromTable("light", {
    origin = "1424 -4248 448",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light1635453 <- SpawnEntityFromTable("light", {
    origin = "2723.02 -4732.16 -397.021",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::trigger_wind1635927 <- SpawnEntityFromTable("trigger_wind", {
    model = "*13",
    targetname = "bucketpush",
    StartDisabled = "0",
    SpeedNoise = "40",
    speed = "35",
    spawnflags = "1032",
    origin = "663 -4484 392",
    HoldTime = "6",
    HoldNoise = "3",
    DirectionNoise = "30",
    angles = "0 0 0",
    classname = "trigger_wind",
    hammerid = "1635927",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
trigger_wind1635927.KeyValueFromInt("solid", 2)
trigger_wind1635927.KeyValueFromString(""mins"", "-1 -1 -1")
trigger_wind1635927.KeyValueFromString(""maxs"", "1 1 1")

::item_healthkit_medium560685 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "1184 -2776 56",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "560685"
})

::item_ammopack_full560669 <- SpawnEntityFromTable("item_ammopack_full", {
    origin = "1184 -2744 56",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_full",
    hammerid = "560669"
})

::env_soundscape560482 <- SpawnEntityFromTable("env_soundscape", {
    origin = "1848 -160 136",
    targetname = "soundscape_tunnel1",
    StartDisabled = "0",
    soundscape = "Upward.Inside",
    radius = "640",
    classname = "env_soundscape",
    hammerid = "560482"
})

::env_soundscape560306 <- SpawnEntityFromTable("env_soundscape", {
    origin = "1136 -1248 248",
    targetname = "soundscape_inside4",
    StartDisabled = "0",
    soundscape = "sawmill.inside",
    radius = "1024",
    classname = "env_soundscape",
    hammerid = "560306"
})

::env_soundscape560174 <- SpawnEntityFromTable("env_soundscape", {
    origin = "544 -1080 240",
    targetname = "soundscape_inside2",
    StartDisabled = "0",
    soundscape = "sawmill.inside",
    radius = "480",
    classname = "env_soundscape",
    hammerid = "560174"
})

::env_soundscape560037 <- SpawnEntityFromTable("env_soundscape", {
    origin = "-320 64 360",
    targetname = "soundscape_inside1",
    StartDisabled = "0",
    soundscape = "sawmill.inside",
    radius = "350",
    classname = "env_soundscape",
    hammerid = "560037"
})

::trigger_hurt2048941 <- SpawnEntityFromTable("trigger_hurt", {
    model = "*14",
    targetname = "afkslay",
    StartDisabled = "1",
    spawnflags = "1",
    origin = "2001 -4843 376",
    nodmgforce = "0",
    damagetype = "0",
    damagemodel = "0",
    damagecap = "20",
    damage = "9999",
    angles = "0 0 0",
    classname = "trigger_hurt",
    hammerid = "2048941",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
trigger_hurt2048941.KeyValueFromInt("solid", 2)
trigger_hurt2048941.KeyValueFromString(""mins"", "-1 -1 -1")
trigger_hurt2048941.KeyValueFromString(""maxs"", "1 1 1")

::light627855 <- SpawnEntityFromTable("light", {
    origin = "-2608 -616 192",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_soundscape626233 <- SpawnEntityFromTable("env_soundscape", {
    origin = "1848 -1520 240",
    targetname = "soundscape_tunnel3",
    StartDisabled = "0",
    soundscape = "Upward.Inside",
    radius = "352",
    classname = "env_soundscape",
    hammerid = "626233"
})

::prop_dynamic1975809 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "606.329 -1061.22 465.105",
    texframeindex = "0",
    targetname = "midblockerwindow",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_forest/sawmill_window1b.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "0",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "0 90 0",
    classname = "prop_dynamic",
    hammerid = "1975809"
})

::light599170 <- SpawnEntityFromTable("light", {
    origin = "384 -2904 200",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_soundscape598524 <- SpawnEntityFromTable("env_soundscape", {
    portalnumber = "1",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    portalnumber = "2",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    portalnumber = "3",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    origin = "1288 -2008 200",
    targetname = "soundscape_inside5",
    StartDisabled = "0",
    soundscape = "sawmill.inside",
    radius = "300",
    classname = "env_soundscape",
    hammerid = "598524"
})

::light592550 <- SpawnEntityFromTable("light", {
    portalnumber = "4",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    origin = "1544 -2088 216",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::item_healthkit_medium1412731 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "2542.78 611.191 36.2613",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 90 0",
    classname = "item_healthkit_medium",
    hammerid = "1412731"
})

::env_sprite1412404 <- SpawnEntityFromTable("env_sprite", {
    origin = "2092.28 557.53 298.482",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "1412404"
})

::prop_dynamic940369 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-1720 -192 0",
    targetname = "arrows_path2",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 220 0",
    classname = "prop_dynamic",
    hammerid = "940369"
})

::env_entity_maker4169 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "52.783 -3114 50.3157",
    targetname = "crystalspawner",
    spawnflags = "0",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_moonbase/moon_gravel_crystal_blue.mdl",
    EntityTemplate = "respawncrystal",
    angles = "45 0 0",
    classname = "env_entity_maker",
    hammerid = "4169",
    OnEntitySpawned = "crystallight*TurnOff1-1"
})

::env_entity_maker1336306 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "1238.07 -1530.27 35.6744",
    targetname = "crystalspawner",
    spawnflags = "0",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_moonbase/moon_gravel_crystal_blue.mdl",
    EntityTemplate = "respawncrystal",
    angles = "45 0 0",
    classname = "env_entity_maker",
    hammerid = "1336306",
    OnEntitySpawned = "crystallight*TurnOff1-1"
})

::func_nav_avoid636956 <- SpawnEntityFromTable("func_nav_avoid", {
    model = "*15",
    team = "3",
    tags = "bomb_carrier",
    start_disabled = "0",
    origin = "352 -3188 24",
    angles = "0 0 0",
    classname = "func_nav_avoid",
    hammerid = "636956",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nav_avoid636956.KeyValueFromInt("solid", 2)
func_nav_avoid636956.KeyValueFromString(""mins"", "-1 -1 -1")
func_nav_avoid636956.KeyValueFromString(""maxs"", "1 1 1")

::info_particle_system679956 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-80 -3600 8",
    start_active = "1",
    effect_name = "env_rain_guttersplash",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "679956"
})

::info_particle_system678395 <- SpawnEntityFromTable("info_particle_system", {
    origin = "264 -2304 392",
    targetname = "drip_normal",
    start_active = "1",
    effect_name = "env_rain_gutterdrip",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "678395"
})

::info_particle_system679241 <- SpawnEntityFromTable("info_particle_system", {
    origin = "528 -2792 9.02827",
    targetname = "drip_normal",
    start_active = "1",
    effect_name = "env_rain_guttersplash",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "679241"
})

::info_particle_system678785 <- SpawnEntityFromTable("info_particle_system", {
    origin = "264 -2304 0",
    targetname = "drip_normal",
    start_active = "1",
    effect_name = "env_rain_guttersplash",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "678785"
})

::info_particle_system1602096 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-4816.57 -3168.23 159.521",
    targetname = "particle_lightning_sw",
    start_active = "0",
    effect_name = "wrenchmotron_teleport_beam",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "1602096"
})

::logic_relay678316 <- SpawnEntityFromTable("logic_relay", {
    origin = "144 -2768 88",
    targetname = "downpour_end_relay",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "678316",
    OnTrigger = "skybox_fogToggle0-1",
    OnTrigger = "downpour_thunder_timerDisable0-1",
    OnTrigger = "snd_downpour_heavyrainStopSound1-1",
    OnTrigger = "particle_storm_ripples1Stop0-1",
    OnTrigger = "snd_downpour_strongwindVolume20.6-1",
    OnTrigger = "snd_downpour_strongwindStopSound1-1",
    OnTrigger = "snd_downpour_strongwindVolume40.4-1",
    OnTrigger = "snd_downpour_strongwindVolume00.8-1",
    OnTrigger = "rain_angledstormStop0-1",
    OnTrigger = "rain_normalStart0-1",
    OnTrigger = "drip_normalStart0-1",
    OnTrigger = "drip_stormStop0-1",
    OnTrigger = "chimney_smoke*Start0-1",
    OnTrigger = "playerSetFogControllerfog_default0-1",
    OnTrigger = "red_door_triggerAddOutputOnStartTouchAll !activator:SetFogController:fog_default:0:-10.2-1",
    OnTrigger = "fade3Fade0-1"
})

::logic_relay678298 <- SpawnEntityFromTable("logic_relay", {
    origin = "120 -2768 88",
    targetname = "downpour_start_relay",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "678298",
    OnTrigger = "particle_storm_rain1Start0.1-1",
    OnTrigger = "red_door_triggerAddOutputOnStartTouchAll !activator:SetFogController:fog_storm:0:-10.1-1",
    OnTrigger = "downpour_thunder_timerEnable1-1",
    OnTrigger = "snd_downpour_heavyrainPlaySound1-1",
    OnTrigger = "downpour_thunder_rand_casePickRandom0-1",
    OnTrigger = "particle_storm_ripples1Start0.1-1",
    OnTrigger = "snd_downpour_strongwindPlaySound1-1",
    OnTrigger = "snd_downpour_strongwindVolume21.2-1",
    OnTrigger = "downpour_lightning_rand_casePickRandom0-1",
    OnTrigger = "playerSetFogControllerfog_storm0-1"
})

::logic_relay3230 <- SpawnEntityFromTable("logic_relay", {
    origin = "-272 -256 96",
    targetname = "storm_end_relay",
    classname = "logic_relay",
    hammerid = "3230"
})

::point_template1323959 <- SpawnEntityFromTable("point_template", {
    origin = "-197.5 -204.783 63.3574",
    Template04 = "glow1b",
    Template03 = "PT_WEAPONCASE2",
    Template02 = "gunbox_counter2",
    Template01 = "PT_SWITCHGUNBUTTON2",
    targetname = "gunboxes",
    spawnflags = "0",
    classname = "point_template",
    hammerid = "1323959"
})

::env_fog_controller678274 <- SpawnEntityFromTable("env_fog_controller", {
    origin = "-1872 -576 480",
    use_angles = "0",
    targetname = "fog_storm",
    spawnflags = "0",
    mindxlevel = "0",
    maxdxlevel = "0",
    fogstart = "250.0",
    fogmaxdensity = "0.3",
    foglerptime = "2",
    fogend = "900.0",
    fogenable = "0",
    fogdir = "1 0 0",
    fogcolor2 = "187 188 198",
    fogcolor = "176 177 208",
    fogblend = "1",
    farz = "-1",
    angles = "0 0 0",
    classname = "env_fog_controller",
    hammerid = "678274"
})

::light678092 <- SpawnEntityFromTable("light", {
    origin = "-296 -1952 144",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light677987 <- SpawnEntityFromTable("light", {
    origin = "160 -1776 144",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light677969 <- SpawnEntityFromTable("light", {
    origin = "64 -2112 144",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light677170 <- SpawnEntityFromTable("light", {
    origin = "-64 -24 144",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::info_player_teamspawn665652 <- SpawnEntityFromTable("info_player_teamspawn", {
    portalnumber = "5",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    origin = "168 -6304 440",
    TeamNum = "3",
    targetname = "spawnbot_chief",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "665652"
})

::info_observer_point654775 <- SpawnEntityFromTable("info_observer_point", {
    origin = "-984 -4096 257.196",
    fov = "0",
    defaultwelcome = "0",
    angles = "13.1705 1.862 1.66164",
    classname = "info_observer_point",
    hammerid = "654775"
})

::trigger_player_respawn_override2625027 <- SpawnEntityFromTable("trigger_player_respawn_override", {
    model = "*16",
    targetname = "respawnoverride",
    StartDisabled = "0",
    spawnflags = "1",
    RespawnTime = "99999",
    origin = "2316.1 412 -5.81",
    classname = "trigger_player_respawn_override",
    hammerid = "2625027",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
trigger_player_respawn_override2625027.KeyValueFromInt("solid", 2)
trigger_player_respawn_override2625027.KeyValueFromString(""mins"", "-1 -1 -1")
trigger_player_respawn_override2625027.KeyValueFromString(""maxs"", "1 1 1")

::ambient_generic649612 <- SpawnEntityFromTable("ambient_generic", {
    origin = "-3400 -1300 68",
    volstart = "0",
    targetname = "snd_rosen",
    spinup = "0",
    spindown = "0",
    spawnflags = "48",
    radius = "600",
    preset = "0",
    pitchstart = "100",
    pitch = "100",
    message = "rosen/getout.wav",
    lfotype = "0",
    lforate = "0",
    lfomodvol = "0",
    lfomodpitch = "0",
    health = "10",
    fadeoutsecs = "0",
    fadeinsecs = "0",
    cspinup = "0",
    classname = "ambient_generic",
    hammerid = "649612"
})

::bot_hint_engineer_nest649542 <- SpawnEntityFromTable("bot_hint_engineer_nest", {
    origin = "880 -1232 24",
    TeamNum = "3",
    targetname = "engineer_nest10",
    StartDisabled = "0",
    spawnflags = "0",
    angles = "0 93 0",
    classname = "bot_hint_engineer_nest",
    hammerid = "649542"
})

::bot_hint_teleporter_exit649540 <- SpawnEntityFromTable("bot_hint_teleporter_exit", {
    origin = "880 -1232 8",
    TeamNum = "3",
    targetname = "engineer_nest10",
    StartDisabled = "0",
    spawnflags = "0",
    angles = "0 163 0",
    classname = "bot_hint_teleporter_exit",
    hammerid = "649540"
})

::bot_hint_sentrygun649538 <- SpawnEntityFromTable("bot_hint_sentrygun", {
    origin = "608 -1128 8",
    TeamNum = "3",
    targetname = "engineer_nest10",
    sticky = "0",
    StartDisabled = "0",
    spawnflags = "0",
    sequence = "5",
    rangehelper = "1100",
    angles = "0 126 0",
    classname = "bot_hint_sentrygun",
    hammerid = "649538"
})

::bot_hint_engineer_nest649502 <- SpawnEntityFromTable("bot_hint_engineer_nest", {
    origin = "856 104 -33.5628",
    TeamNum = "3",
    targetname = "engineer_nest9",
    StartDisabled = "0",
    spawnflags = "0",
    angles = "0 93 0",
    classname = "bot_hint_engineer_nest",
    hammerid = "649502"
})

::bot_hint_teleporter_exit649500 <- SpawnEntityFromTable("bot_hint_teleporter_exit", {
    origin = "856 104 -49.5628",
    TeamNum = "3",
    targetname = "engineer_nest9",
    StartDisabled = "0",
    spawnflags = "0",
    angles = "0 219 0",
    classname = "bot_hint_teleporter_exit",
    hammerid = "649500"
})

::bot_hint_sentrygun649498 <- SpawnEntityFromTable("bot_hint_sentrygun", {
    origin = "720 -32 -33.5628",
    TeamNum = "3",
    targetname = "engineer_nest9",
    sticky = "0",
    StartDisabled = "0",
    spawnflags = "0",
    sequence = "5",
    rangehelper = "1100",
    angles = "0 252.5 0",
    classname = "bot_hint_sentrygun",
    hammerid = "649498"
})

::bot_hint_engineer_nest649462 <- SpawnEntityFromTable("bot_hint_engineer_nest", {
    origin = "2336 136 -96",
    TeamNum = "3",
    targetname = "engineer_nest8",
    StartDisabled = "0",
    spawnflags = "0",
    angles = "0 93 0",
    classname = "bot_hint_engineer_nest",
    hammerid = "649462"
})

::bot_hint_teleporter_exit649460 <- SpawnEntityFromTable("bot_hint_teleporter_exit", {
    origin = "2336 136 -112",
    TeamNum = "3",
    targetname = "engineer_nest8",
    StartDisabled = "0",
    spawnflags = "0",
    angles = "0 194.5 0",
    classname = "bot_hint_teleporter_exit",
    hammerid = "649460"
})

::bot_hint_sentrygun649458 <- SpawnEntityFromTable("bot_hint_sentrygun", {
    origin = "2176 168 -112",
    TeamNum = "3",
    targetname = "engineer_nest8",
    sticky = "0",
    StartDisabled = "0",
    spawnflags = "0",
    sequence = "5",
    rangehelper = "1100",
    angles = "0 187.5 0",
    classname = "bot_hint_sentrygun",
    hammerid = "649458"
})

::bot_hint_teleporter_exit649422 <- SpawnEntityFromTable("bot_hint_teleporter_exit", {
    origin = "2200 -1232 -128",
    TeamNum = "3",
    targetname = "engineer_nest7",
    StartDisabled = "0",
    spawnflags = "0",
    angles = "0 80.5 0",
    classname = "bot_hint_teleporter_exit",
    hammerid = "649422"
})

::bot_hint_engineer_nest649420 <- SpawnEntityFromTable("bot_hint_engineer_nest", {
    origin = "2200 -1232 -112",
    TeamNum = "3",
    targetname = "engineer_nest7",
    StartDisabled = "0",
    spawnflags = "0",
    angles = "0 93 0",
    classname = "bot_hint_engineer_nest",
    hammerid = "649420"
})

::bot_hint_sentrygun649418 <- SpawnEntityFromTable("bot_hint_sentrygun", {
    origin = "2184 -1080 -128",
    TeamNum = "3",
    targetname = "engineer_nest7",
    sticky = "0",
    StartDisabled = "0",
    spawnflags = "0",
    sequence = "5",
    rangehelper = "1100",
    angles = "0 86 0",
    classname = "bot_hint_sentrygun",
    hammerid = "649418"
})

::bot_hint_teleporter_exit649336 <- SpawnEntityFromTable("bot_hint_teleporter_exit", {
    origin = "-192 -4792 -160",
    TeamNum = "3",
    targetname = "engineer_nest1",
    StartDisabled = "0",
    spawnflags = "0",
    angles = "0 2 0",
    classname = "bot_hint_teleporter_exit",
    hammerid = "649336"
})

::bot_hint_engineer_nest649334 <- SpawnEntityFromTable("bot_hint_engineer_nest", {
    origin = "-192 -4792 -144",
    TeamNum = "3",
    targetname = "engineer_nest1",
    StartDisabled = "0",
    spawnflags = "0",
    angles = "0 93 0",
    classname = "bot_hint_engineer_nest",
    hammerid = "649334"
})

::env_soundscape709404 <- SpawnEntityFromTable("env_soundscape", {
    origin = "360 -1304 424",
    targetname = "soundscape_inside9",
    StartDisabled = "0",
    soundscape = "sawmill.inside",
    radius = "640",
    classname = "env_soundscape",
    hammerid = "709404"
})

::env_soundscape709349 <- SpawnEntityFromTable("env_soundscape", {
    origin = "352 -1680 176",
    targetname = "soundscape_inside8",
    StartDisabled = "0",
    soundscape = "sawmill.inside",
    radius = "256",
    classname = "env_soundscape",
    hammerid = "709349"
})

::env_soundscape709283 <- SpawnEntityFromTable("env_soundscape", {
    origin = "1272 -3624 208",
    targetname = "soundscape_inside7",
    StartDisabled = "0",
    soundscape = "sawmill.inside",
    radius = "256",
    classname = "env_soundscape",
    hammerid = "709283"
})

::light709254 <- SpawnEntityFromTable("light", {
    origin = "400 -1680 167.75",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light709209 <- SpawnEntityFromTable("light", {
    origin = "264 -1304 392",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light709191 <- SpawnEntityFromTable("light", {
    origin = "48 -1440 144",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::item_ammopack_medium708805 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "2160 -2104 -128",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "708805"
})

::item_healthkit_medium708801 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "2192 -2104 -128",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "708801"
})

::logic_case707338 <- SpawnEntityFromTable("logic_case", {
    origin = "144 -2720 88",
    targetname = "downpour_thunder_rand_case",
    classname = "logic_case",
    hammerid = "707338",
    OnCase03 = "gamerulesPlayVOambient/thunder4.wav0-1",
    OnCase02 = "gamerulesPlayVOambient/thunder3.wav0-1",
    OnCase01 = "gamerulesPlayVOambient/thunder2.wav0-1",
    OnCase04 = "gamerulesPlayVOambient/atmosphere/thunder3.wav0-1"
})

::info_player_teamspawn1234261 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "103.115 -3039.43 22.6568",
    TeamNum = "0",
    targetname = "extrafrontspawn",
    StartDisabled = "1",
    spawnflags = "511",
    angles = "0 0 0",
    classname = "info_player_teamspawn",
    hammerid = "1234261"
})

::env_fog_controller1075794 <- SpawnEntityFromTable("env_fog_controller", {
    origin = "-1872 -556 480",
    use_angles = "0",
    targetname = "fog_heavy_storm",
    spawnflags = "0",
    mindxlevel = "0",
    maxdxlevel = "0",
    fogstart = "30",
    fogmaxdensity = "1",
    foglerptime = "2",
    fogend = "2000",
    fogenable = "0",
    fogdir = "1 0 0",
    fogcolor2 = "83 92 94",
    fogcolor = "83 92 94",
    fogblend = "1",
    farz = "-1",
    angles = "0 0 0",
    classname = "env_fog_controller",
    hammerid = "1075794"
})

::prop_dynamic1075660 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-2150.31 -544.885 6",
    targetname = "hatch_open",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_moonbase/moon_water_hatch01.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 180 0",
    classname = "prop_dynamic",
    hammerid = "1075660"
})

::logic_timer707245 <- SpawnEntityFromTable("logic_timer", {
    origin = "144 -2744 88",
    UseRandomTime = "1",
    UpperRandomBound = "7",
    targetname = "downpour_thunder_timer",
    StartDisabled = "1",
    spawnflags = "0",
    LowerRandomBound = "5",
    classname = "logic_timer",
    hammerid = "707245",
    OnTimer = "downpour_thunder_rand_casePickRandom0-1",
    OnTimer = "downpour_lightning_rand_casePickRandom0-1"
})

::prop_dynamic698945 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "2048 -2256 56",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_2fort/lantern001.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 110 0",
    classname = "prop_dynamic",
    hammerid = "698945"
})

::light698940 <- SpawnEntityFromTable("light", {
    origin = "2048 -2256 64",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::item_ammopack_medium698690 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "1272 -3528 8.23605",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "698690"
})

::item_healthkit_medium698686 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "1304 -3528 8.23605",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "698686"
})

::light698597 <- SpawnEntityFromTable("light", {
    origin = "1640 -3456 264",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light698511 <- SpawnEntityFromTable("light", {
    origin = "1328 -3632 176",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::info_particle_system697944 <- SpawnEntityFromTable("info_particle_system", {
    origin = "128 -4488 16",
    start_active = "1",
    effect_name = "env_rain_gutterdrip",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "697944"
})

::info_particle_system697879 <- SpawnEntityFromTable("info_particle_system", {
    origin = "128 -4488 -168",
    start_active = "1",
    effect_name = "env_rain_guttersplash",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "697879"
})

::item_ammopack_medium697693 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "-328 -168 -16",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "697693"
})

::info_player_teamspawn1234335 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "-690.44 -2796.38 16",
    TeamNum = "0",
    targetname = "extrafrontspawn",
    StartDisabled = "1",
    spawnflags = "511",
    angles = "0 0 0",
    classname = "info_player_teamspawn",
    hammerid = "1234335"
})

::info_particle_system697057 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-1048 696 1080",
    targetname = "particle_storm_rain1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "697057"
})

::info_particle_system691656 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-1048 -1320 1080",
    targetname = "particle_storm_rain1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "691656"
})

::info_particle_system691136 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-2056 -312 1080",
    targetname = "particle_storm_rain1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "691136"
})

::info_particle_system690746 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-2056 -1320 1080",
    targetname = "particle_storm_rain1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "690746"
})

::info_particle_system690226 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-2056 696 1080",
    targetname = "particle_storm_rain1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "690226"
})

::info_particle_system689836 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-1048 -312 1080",
    targetname = "particle_storm_rain1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "689836"
})

::info_particle_system689251 <- SpawnEntityFromTable("info_particle_system", {
    origin = "248 -568 1080",
    targetname = "particle_storm_rain1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "689251"
})

::info_particle_system688861 <- SpawnEntityFromTable("info_particle_system", {
    origin = "904 -216 1080",
    targetname = "particle_storm_rain1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "688861"
})

::bot_hint_sentrygun649332 <- SpawnEntityFromTable("bot_hint_sentrygun", {
    origin = "200 -4536 -176",
    TeamNum = "3",
    targetname = "engineer_nest1",
    sticky = "0",
    StartDisabled = "0",
    spawnflags = "0",
    sequence = "5",
    rangehelper = "1100",
    angles = "0 88 0",
    classname = "bot_hint_sentrygun",
    hammerid = "649332"
})

::bot_hint_engineer_nest649248 <- SpawnEntityFromTable("bot_hint_engineer_nest", {
    origin = "488 -1640 18",
    TeamNum = "3",
    targetname = "engineer_nest6",
    StartDisabled = "0",
    spawnflags = "0",
    angles = "0 93 0",
    classname = "bot_hint_engineer_nest",
    hammerid = "649248"
})

::bot_hint_teleporter_exit649246 <- SpawnEntityFromTable("bot_hint_teleporter_exit", {
    origin = "488 -1640 2.00002",
    TeamNum = "3",
    targetname = "engineer_nest6",
    StartDisabled = "0",
    spawnflags = "0",
    angles = "0 1 0",
    classname = "bot_hint_teleporter_exit",
    hammerid = "649246"
})

::bot_hint_sentrygun649244 <- SpawnEntityFromTable("bot_hint_sentrygun", {
    origin = "664 -1624 0",
    TeamNum = "3",
    targetname = "engineer_nest6",
    sticky = "0",
    StartDisabled = "0",
    spawnflags = "0",
    sequence = "5",
    rangehelper = "1100",
    angles = "0 10.5 0",
    classname = "bot_hint_sentrygun",
    hammerid = "649244"
})

::bot_hint_sentrygun649170 <- SpawnEntityFromTable("bot_hint_sentrygun", {
    origin = "-424 -2208 16",
    TeamNum = "3",
    targetname = "engineer_nest4",
    sticky = "0",
    StartDisabled = "0",
    spawnflags = "0",
    sequence = "5",
    rangehelper = "1100",
    angles = "0 320.5 0",
    classname = "bot_hint_sentrygun",
    hammerid = "649170"
})

::bot_hint_engineer_nest649168 <- SpawnEntityFromTable("bot_hint_engineer_nest", {
    origin = "-576 -2176 32",
    TeamNum = "3",
    targetname = "engineer_nest4",
    StartDisabled = "0",
    spawnflags = "0",
    angles = "0 93 0",
    classname = "bot_hint_engineer_nest",
    hammerid = "649168"
})

::bot_hint_teleporter_exit649166 <- SpawnEntityFromTable("bot_hint_teleporter_exit", {
    origin = "-576 -2176 16",
    TeamNum = "3",
    targetname = "engineer_nest4",
    StartDisabled = "0",
    spawnflags = "0",
    angles = "0 279 0",
    classname = "bot_hint_teleporter_exit",
    hammerid = "649166"
})

::bot_hint_sentrygun649118 <- SpawnEntityFromTable("bot_hint_sentrygun", {
    origin = "472 -3512 8",
    TeamNum = "3",
    targetname = "engineer_nest3",
    sticky = "0",
    StartDisabled = "0",
    spawnflags = "0",
    sequence = "5",
    rangehelper = "1100",
    angles = "0 359 0",
    classname = "bot_hint_sentrygun",
    hammerid = "649118"
})

::bot_hint_teleporter_exit649116 <- SpawnEntityFromTable("bot_hint_teleporter_exit", {
    origin = "352 -3400 8",
    TeamNum = "3",
    targetname = "engineer_nest3",
    StartDisabled = "0",
    spawnflags = "0",
    angles = "0 279 0",
    classname = "bot_hint_teleporter_exit",
    hammerid = "649116"
})

::bot_hint_engineer_nest649114 <- SpawnEntityFromTable("bot_hint_engineer_nest", {
    origin = "352 -3400 24",
    TeamNum = "3",
    targetname = "engineer_nest3",
    StartDisabled = "0",
    spawnflags = "0",
    angles = "0 93 0",
    classname = "bot_hint_engineer_nest",
    hammerid = "649114"
})

::bot_hint_teleporter_exit649082 <- SpawnEntityFromTable("bot_hint_teleporter_exit", {
    origin = "-704 -3976 0",
    TeamNum = "3",
    targetname = "engineer_nest2",
    StartDisabled = "0",
    spawnflags = "0",
    angles = "0 89 0",
    classname = "bot_hint_teleporter_exit",
    hammerid = "649082"
})

::bot_hint_engineer_nest649080 <- SpawnEntityFromTable("bot_hint_engineer_nest", {
    origin = "-704 -3976 16.25",
    TeamNum = "3",
    targetname = "engineer_nest2",
    StartDisabled = "0",
    spawnflags = "0",
    angles = "0 93 0",
    classname = "bot_hint_engineer_nest",
    hammerid = "649080"
})

::bot_hint_sentrygun649078 <- SpawnEntityFromTable("bot_hint_sentrygun", {
    origin = "-504 -3736 0.25",
    TeamNum = "3",
    targetname = "engineer_nest2",
    sticky = "0",
    StartDisabled = "0",
    spawnflags = "0",
    sequence = "5",
    rangehelper = "1100",
    angles = "0 79 0",
    classname = "bot_hint_sentrygun",
    hammerid = "649078"
})

::func_nobuild648588 <- SpawnEntityFromTable("func_nobuild", {
    occludernumber = "0",
    model = "",
    StartActive = "1",
     = "",
     = "",
     = "",
     = "",
    model = "*17",
    TeamNum = "0",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "1232 -1640 228",
    angles = "0 0 0",
    AllowTeleporters = "0",
    AllowSentry = "0",
    AllowDispenser = "0",
    classname = "func_nobuild",
    hammerid = "648588",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nobuild648588.KeyValueFromInt("solid", 2)
func_nobuild648588.KeyValueFromString(""mins"", "-1 -1 -1")
func_nobuild648588.KeyValueFromString(""maxs"", "1 1 1")

::func_nobuild734917 <- SpawnEntityFromTable("func_nobuild", {
    model = "*18",
    TeamNum = "0",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "-2168 -380 121.98",
    angles = "0 0 0",
    AllowTeleporters = "0",
    AllowSentry = "0",
    AllowDispenser = "0",
    classname = "func_nobuild",
    hammerid = "734917",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nobuild734917.KeyValueFromInt("solid", 2)
func_nobuild734917.KeyValueFromString(""mins"", "-1 -1 -1")
func_nobuild734917.KeyValueFromString(""maxs"", "1 1 1")

::func_nobuild734907 <- SpawnEntityFromTable("func_nobuild", {
    model = "*19",
    TeamNum = "0",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "-2152 -288 160.72",
    angles = "0 0 0",
    AllowTeleporters = "0",
    AllowSentry = "0",
    AllowDispenser = "0",
    classname = "func_nobuild",
    hammerid = "734907",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nobuild734907.KeyValueFromInt("solid", 2)
func_nobuild734907.KeyValueFromString(""mins"", "-1 -1 -1")
func_nobuild734907.KeyValueFromString(""maxs"", "1 1 1")

::func_nobuild734901 <- SpawnEntityFromTable("func_nobuild", {
    model = "*20",
    TeamNum = "0",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "-1712 -352 160.72",
    angles = "0 0 0",
    AllowTeleporters = "0",
    AllowSentry = "0",
    AllowDispenser = "0",
    classname = "func_nobuild",
    hammerid = "734901",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nobuild734901.KeyValueFromInt("solid", 2)
func_nobuild734901.KeyValueFromString(""mins"", "-1 -1 -1")
func_nobuild734901.KeyValueFromString(""maxs"", "1 1 1")

::func_nobuild734895 <- SpawnEntityFromTable("func_nobuild", {
    model = "*21",
    TeamNum = "0",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "-1308 -376 124",
    angles = "0 0 0",
    AllowTeleporters = "0",
    AllowSentry = "0",
    AllowDispenser = "0",
    classname = "func_nobuild",
    hammerid = "734895",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nobuild734895.KeyValueFromInt("solid", 2)
func_nobuild734895.KeyValueFromString(""mins"", "-1 -1 -1")
func_nobuild734895.KeyValueFromString(""maxs"", "1 1 1")

::func_nobuild734889 <- SpawnEntityFromTable("func_nobuild", {
    model = "*22",
    TeamNum = "0",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "-1300 -160 124",
    angles = "0 0 0",
    AllowTeleporters = "0",
    AllowSentry = "0",
    AllowDispenser = "0",
    classname = "func_nobuild",
    hammerid = "734889",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nobuild734889.KeyValueFromInt("solid", 2)
func_nobuild734889.KeyValueFromString(""mins"", "-1 -1 -1")
func_nobuild734889.KeyValueFromString(""maxs"", "1 1 1")

::func_nobuild734881 <- SpawnEntityFromTable("func_nobuild", {
    model = "*23",
    TeamNum = "0",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "-1304 -76 156",
    angles = "0 0 0",
    AllowTeleporters = "0",
    AllowSentry = "0",
    AllowDispenser = "0",
    classname = "func_nobuild",
    hammerid = "734881",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nobuild734881.KeyValueFromInt("solid", 2)
func_nobuild734881.KeyValueFromString(""mins"", "-1 -1 -1")
func_nobuild734881.KeyValueFromString(""maxs"", "1 1 1")

::func_nobuild734875 <- SpawnEntityFromTable("func_nobuild", {
    model = "*24",
    TeamNum = "0",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "-736 -832 108",
    angles = "0 0 0",
    AllowTeleporters = "0",
    AllowSentry = "0",
    AllowDispenser = "0",
    classname = "func_nobuild",
    hammerid = "734875",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nobuild734875.KeyValueFromInt("solid", 2)
func_nobuild734875.KeyValueFromString(""mins"", "-1 -1 -1")
func_nobuild734875.KeyValueFromString(""maxs"", "1 1 1")

::func_nobuild734865 <- SpawnEntityFromTable("func_nobuild", {
    model = "*25",
    TeamNum = "0",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "-792 -748 156",
    angles = "0 0 0",
    AllowTeleporters = "0",
    AllowSentry = "0",
    AllowDispenser = "0",
    classname = "func_nobuild",
    hammerid = "734865",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nobuild734865.KeyValueFromInt("solid", 2)
func_nobuild734865.KeyValueFromString(""mins"", "-1 -1 -1")
func_nobuild734865.KeyValueFromString(""maxs"", "1 1 1")

::func_nobuild734855 <- SpawnEntityFromTable("func_nobuild", {
    model = "*26",
    TeamNum = "0",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "2032 -1064 156",
    angles = "0 0 0",
    AllowTeleporters = "0",
    AllowSentry = "0",
    AllowDispenser = "0",
    classname = "func_nobuild",
    hammerid = "734855",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nobuild734855.KeyValueFromInt("solid", 2)
func_nobuild734855.KeyValueFromString(""mins"", "-1 -1 -1")
func_nobuild734855.KeyValueFromString(""maxs"", "1 1 1")

::func_nobuild734843 <- SpawnEntityFromTable("func_nobuild", {
    model = "*27",
    TeamNum = "0",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "-152 -2484 236",
    angles = "0 0 0",
    AllowTeleporters = "0",
    AllowSentry = "0",
    AllowDispenser = "0",
    classname = "func_nobuild",
    hammerid = "734843",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nobuild734843.KeyValueFromInt("solid", 2)
func_nobuild734843.KeyValueFromString(""mins"", "-1 -1 -1")
func_nobuild734843.KeyValueFromString(""maxs"", "1 1 1")

::func_nobuild734833 <- SpawnEntityFromTable("func_nobuild", {
    model = "*28",
    TeamNum = "0",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "988 -2632 140",
    angles = "0 0 0",
    AllowTeleporters = "0",
    AllowSentry = "0",
    AllowDispenser = "0",
    classname = "func_nobuild",
    hammerid = "734833",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nobuild734833.KeyValueFromInt("solid", 2)
func_nobuild734833.KeyValueFromString(""mins"", "-1 -1 -1")
func_nobuild734833.KeyValueFromString(""maxs"", "1 1 1")

::info_particle_system734298 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-2608 -616 200",
    start_active = "1",
    flag_as_weather = "0",
    effect_name = "superrare_flies",
    cpoint7_parent = "0",
    cpoint6_parent = "0",
    cpoint5_parent = "0",
    cpoint4_parent = "0",
    cpoint3_parent = "0",
    cpoint2_parent = "0",
    cpoint1_parent = "0",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "734298"
})

::light734164 <- SpawnEntityFromTable("light", {
    origin = "1584 -32 76.06",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::info_particle_system733885 <- SpawnEntityFromTable("info_particle_system", {
    origin = "88 40 152",
    start_active = "1",
    flag_as_weather = "0",
    effect_name = "superrare_flies",
    cpoint7_parent = "0",
    cpoint6_parent = "0",
    cpoint5_parent = "0",
    cpoint4_parent = "0",
    cpoint3_parent = "0",
    cpoint2_parent = "0",
    cpoint1_parent = "0",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "733885"
})

::info_particle_system733474 <- SpawnEntityFromTable("info_particle_system", {
    origin = "1088 -3232 -8",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_ripples",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "733474"
})

::info_particle_system732468 <- SpawnEntityFromTable("info_particle_system", {
    origin = "152 -3968 32",
    start_active = "1",
    flag_as_weather = "0",
    effect_name = "superrare_flies",
    cpoint7_parent = "0",
    cpoint6_parent = "0",
    cpoint5_parent = "0",
    cpoint4_parent = "0",
    cpoint3_parent = "0",
    cpoint2_parent = "0",
    cpoint1_parent = "0",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "732468"
})

::light732463 <- SpawnEntityFromTable("light", {
    origin = "152 -3969.95 20.06",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light732007 <- SpawnEntityFromTable("light", {
    style = "32",
    origin = "2056 -1369.95 156.06",
    targetname = "tunnel_light1",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::ambient_generic731506 <- SpawnEntityFromTable("ambient_generic", {
    origin = "96 -2768 88",
    volstart = "0",
    targetname = "snd_downpour_heavyrain",
    spinup = "50",
    spindown = "0",
    spawnflags = "17",
    radius = "1250",
    preset = "0",
    pitchstart = "25",
    pitch = "100",
    message = "ambient/rain.wav",
    lfotype = "0",
    lforate = "0",
    lfomodvol = "0",
    lfomodpitch = "0",
    health = "10",
    fadeoutsecs = "0",
    fadeinsecs = "0",
    cspinup = "0",
    classname = "ambient_generic",
    hammerid = "731506"
})

::info_particle_system729778 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-2784 -928 224",
    start_active = "1",
    effect_name = "env_rain_gutterdrip",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "729778"
})

::ambient_generic729775 <- SpawnEntityFromTable("ambient_generic", {
    origin = "-2784 -928 8",
    volstart = "0",
    spinup = "0",
    spindown = "0",
    spawnflags = "0",
    radius = "256",
    preset = "0",
    pitchstart = "100",
    pitch = "100",
    message = "ambient/water/leak_1.wav",
    lfotype = "0",
    lforate = "0",
    lfomodvol = "0",
    lfomodpitch = "0",
    health = "10",
    fadeoutsecs = "0",
    fadeinsecs = "0",
    cspinup = "0",
    classname = "ambient_generic",
    hammerid = "729775"
})

::info_particle_system729710 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-2784 -928 0",
    start_active = "1",
    effect_name = "env_rain_guttersplash",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "729710"
})

::ambient_generic729550 <- SpawnEntityFromTable("ambient_generic", {
    origin = "2312 -488 -136",
    volstart = "0",
    spinup = "0",
    spindown = "0",
    spawnflags = "0",
    radius = "256",
    preset = "0",
    pitchstart = "100",
    pitch = "100",
    message = "ambient/water/leak_1.wav",
    lfotype = "0",
    lforate = "0",
    lfomodvol = "0",
    lfomodpitch = "0",
    health = "10",
    fadeoutsecs = "0",
    fadeinsecs = "0",
    cspinup = "0",
    classname = "ambient_generic",
    hammerid = "729550"
})

::env_soundscape729495 <- SpawnEntityFromTable("env_soundscape", {
    origin = "1552 -3400 296",
    targetname = "soundscape_inside15",
    StartDisabled = "0",
    soundscape = "sawmill.inside",
    radius = "400",
    classname = "env_soundscape",
    hammerid = "729495"
})

::item_healthkit_medium729459 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "272 -1568 0.26128",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "729459"
})

::item_ammopack_medium729455 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "240 -1568 0.26128",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "729455"
})

::func_tfbot_hint729407 <- SpawnEntityFromTable("func_tfbot_hint", {
    model = "*29",
    team = "3",
    StartDisabled = "0",
    origin = "784 -1152 280",
    hint = "0",
    angles = "0 0 0",
    classname = "func_tfbot_hint",
    hammerid = "729407",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_tfbot_hint729407.KeyValueFromInt("solid", 2)
func_tfbot_hint729407.KeyValueFromString(""mins"", "-1 -1 -1")
func_tfbot_hint729407.KeyValueFromString(""maxs"", "1 1 1")

::func_tfbot_hint729399 <- SpawnEntityFromTable("func_tfbot_hint", {
    model = "*30",
    team = "3",
    StartDisabled = "0",
    origin = "944 -1032 280",
    hint = "0",
    angles = "0 0 0",
    classname = "func_tfbot_hint",
    hammerid = "729399",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_tfbot_hint729399.KeyValueFromInt("solid", 2)
func_tfbot_hint729399.KeyValueFromString(""mins"", "-1 -1 -1")
func_tfbot_hint729399.KeyValueFromString(""maxs"", "1 1 1")

::func_tfbot_hint729388 <- SpawnEntityFromTable("func_tfbot_hint", {
    model = "*31",
    team = "3",
    StartDisabled = "0",
    origin = "1176 -3048 288",
    hint = "0",
    angles = "0 0 0",
    classname = "func_tfbot_hint",
    hammerid = "729388",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_tfbot_hint729388.KeyValueFromInt("solid", 2)
func_tfbot_hint729388.KeyValueFromString(""mins"", "-1 -1 -1")
func_tfbot_hint729388.KeyValueFromString(""maxs"", "1 1 1")

::prop_dynamic728792 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-944 -2752 -24",
    targetname = "arrows_path1",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 30 0",
    classname = "prop_dynamic",
    hammerid = "728792"
})

::prop_dynamic727991 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-160 -1744 -31.75",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_hydro/barrel_crate.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 0.5 0",
    classname = "prop_dynamic",
    hammerid = "727991"
})

::prop_dynamic727909 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-88 -1744 -31.75",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_hydro/barrel_crate.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 0.5 0",
    classname = "prop_dynamic",
    hammerid = "727909"
})

::info_particle_system688341 <- SpawnEntityFromTable("info_particle_system", {
    portalnumber = "6",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    origin = "768 -1992 1080",
    targetname = "particle_storm_rain1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "688341"
})

::info_particle_system687951 <- SpawnEntityFromTable("info_particle_system", {
    origin = "1144 -2728 1080",
    targetname = "particle_storm_rain1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "687951"
})

::info_particle_system687561 <- SpawnEntityFromTable("info_particle_system", {
    origin = "408 -3976 1080",
    targetname = "particle_storm_rain1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "687561"
})

::info_particle_system687171 <- SpawnEntityFromTable("info_particle_system", {
    origin = "352 -5368 1080",
    targetname = "particle_storm_rain1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "687171"
})

::info_particle_system686781 <- SpawnEntityFromTable("info_particle_system", {
    origin = "408 -4856 1080",
    targetname = "particle_storm_rain1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "686781"
})

::info_particle_system686391 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-472 -4856 1080",
    targetname = "particle_storm_rain1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "686391"
})

::info_particle_system686001 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-1840 -3488 1080",
    targetname = "particle_storm_rain1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "686001"
})

::info_particle_system685351 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-632 -2592 1080",
    targetname = "particle_storm_rain1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "685351"
})

::info_particle_system684961 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-1056 -2816 1080",
    targetname = "particle_storm_rain1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "684961"
})

::info_particle_system684571 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-1056 -3488 1080",
    targetname = "particle_storm_rain1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "684571"
})

::info_particle_system684181 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-472 -3976 1080",
    targetname = "particle_storm_rain1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "684181"
})

::info_particle_system683206 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-1488 -4408 1080",
    targetname = "particle_storm_rain1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "683206"
})

::info_particle_system682751 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-1520 -1648 241.028",
    start_active = "1",
    effect_name = "env_rain_guttersplash",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "682751"
})

::info_particle_system682686 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-1520 -1648 592",
    start_active = "1",
    effect_name = "env_rain_gutterdrip",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "682686"
})

::info_particle_system682166 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-2528 -1464 249.028",
    start_active = "1",
    effect_name = "env_rain_guttersplash",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "682166"
})

::info_particle_system682101 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-2528 -1464 472",
    start_active = "1",
    effect_name = "env_rain_gutterdrip",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "682101"
})

::info_particle_system680606 <- SpawnEntityFromTable("info_particle_system", {
    origin = "2312 -488 440",
    start_active = "1",
    effect_name = "env_rain_gutterdrip",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "680606"
})

::info_particle_system680541 <- SpawnEntityFromTable("info_particle_system", {
    origin = "2312 -488 -144",
    start_active = "1",
    effect_name = "env_rain_guttersplash",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "680541"
})

::info_particle_system765950 <- SpawnEntityFromTable("info_particle_system", {
    origin = "32 -2744 -8",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_ripples",
    angles = "0 90 0",
    classname = "info_particle_system",
    hammerid = "765950"
})

::info_particle_system765885 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-88 -2744 -8",
    targetname = "particle_storm_ripples1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_ripples",
    angles = "0 90 0",
    classname = "info_particle_system",
    hammerid = "765885"
})

::info_particle_system764909 <- SpawnEntityFromTable("info_particle_system", {
    origin = "128 -4408 -168",
    targetname = "particle_storm_ripples1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_ripples",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "764909"
})

::info_particle_system764519 <- SpawnEntityFromTable("info_particle_system", {
    origin = "1088 -3272 -8",
    targetname = "particle_storm_ripples1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_ripples",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "764519"
})

::func_nav_avoid763885 <- SpawnEntityFromTable("func_nav_avoid", {
    model = "*32",
    team = "3",
    tags = "bomb_carrier common flank_front flank_mid1 flank_mid2 flank_back",
    start_disabled = "0",
    origin = "1444 -1924 16",
    angles = "0 0 0",
    classname = "func_nav_avoid",
    hammerid = "763885",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nav_avoid763885.KeyValueFromInt("solid", 2)
func_nav_avoid763885.KeyValueFromString(""mins"", "-1 -1 -1")
func_nav_avoid763885.KeyValueFromString(""maxs"", "1 1 1")

::trigger_multiple763839 <- SpawnEntityFromTable("trigger_multiple", {
    model = "*33",
    wait = "1",
    targetname = "bomb_kill_linger",
    StartDisabled = "1",
    spawnflags = "1",
    origin = "-2088 -608 72",
    angles = "0 0 0",
    classname = "trigger_multiple",
    hammerid = "763839",
    OnStartTouch = "!activatorSetHealth-10000-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
trigger_multiple763839.KeyValueFromInt("solid", 2)
trigger_multiple763839.KeyValueFromString(""mins"", "-1 -1 -1")
trigger_multiple763839.KeyValueFromString(""maxs"", "1 1 1")

::info_player_teamspawn1075474 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "951.69 -5395.52 -152",
    TeamNum = "3",
    targetname = "spawnbot_tank",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "1075474"
})

::logic_relay1076191 <- SpawnEntityFromTable("logic_relay", {
    origin = "144.631 -2800 179.506",
    targetname = "downpour_start_heavy_relay",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "1076191",
    OnTrigger = "downpour_thunder_timerEnable1-1",
    OnTrigger = "snd_downpour_heavyrainPlaySound1-1",
    OnTrigger = "downpour_thunder_rand_casePickRandom0-1",
    OnTrigger = "particle_storm_ripples1Start1-1",
    OnTrigger = "snd_downpour_strongwindPlaySound1-1",
    OnTrigger = "rain_normal*Stop0-1",
    OnTrigger = "particle_storm_rain1Stop0-1",
    OnTrigger = "drip_storm*Start0.1-1",
    OnTrigger = "ccvolumeEnable0-1",
    OnTrigger = "ccspawnEnable0.1-1",
    OnTrigger = "stormshakeStartShake3-1",
    OnTrigger = "skybox_fogToggle0-1",
    OnTrigger = "drip_normal*Stop0-1",
    OnTrigger = "chimney_smoke*Stop0-1",
    OnTrigger = "playerSetFogControllerfog_heavy_storm0-1",
    OnTrigger = "red_door_triggerAddOutputOnStartTouchAll !activator:SetFogController:fog_heavy_storm:0:-10.15-1",
    OnTrigger = "downpour_lightning_rand_casePickRandom0.01-1",
    OnTrigger = "rain_angledstormStart1-1",
    OnTrigger = "snd_downpour_strongwindVolume21.3-1",
    OnTrigger = "snd_downpour_strongwindVolume61.7-1"
})

::logic_relay1076186 <- SpawnEntityFromTable("logic_relay", {
    origin = "61.383 -2800 181.422",
    targetname = "mid_close_relay",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "1076186",
    OnTrigger = "midblocker*Enable0-1",
    OnTrigger = "midblockerwallEnable0-1",
    OnTrigger = "midblockerdoorClose0-1",
    OnTrigger = "nav_interfaceRecomputeBlockers3-1",
    OnTrigger = "midblocker*EnableCollision0.01-1",
    OnTrigger = "midblockeroccluder*Activate1-1",
    OnTrigger = "nav_interfaceRecomputeBlockers3.01-1",
    OnTrigger = "nav_interfaceRecomputeBlockers3.1-1"
})

::env_entity_maker4155 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "2577.55 -2022.49 -105.411",
    targetname = "boxspawner",
    spawnflags = "0",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_island/mannco_case_large.mdl",
    EntityTemplate = "gunboxes",
    angles = "0 0 0",
    classname = "env_entity_maker",
    hammerid = "4155"
})

::func_nobuild736115 <- SpawnEntityFromTable("func_nobuild", {
    model = "*34",
    TeamNum = "0",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "152 -1536 128.96",
    angles = "0 0 0",
    AllowTeleporters = "0",
    AllowSentry = "0",
    AllowDispenser = "0",
    classname = "func_nobuild",
    hammerid = "736115",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nobuild736115.KeyValueFromInt("solid", 2)
func_nobuild736115.KeyValueFromString(""mins"", "-1 -1 -1")
func_nobuild736115.KeyValueFromString(""maxs"", "1 1 1")

::item_ammopack_full727827 <- SpawnEntityFromTable("item_ammopack_full", {
    portalnumber = "7",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    portalnumber = "8",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    origin = "-64 -24 -31.7894",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_full",
    hammerid = "727827"
})

::info_particle_system719028 <- SpawnEntityFromTable("info_particle_system", {
    origin = "128 -4504 -168",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_ripples",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "719028"
})

::info_player_teamspawn1075292 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "-3976 -800 -121.316",
    TeamNum = "0",
    targetname = "ccspawn",
    StartDisabled = "1",
    spawnflags = "511",
    angles = "0 0 0",
    classname = "info_player_teamspawn",
    hammerid = "1075292"
})

::prop_dynamic710200 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "2680 -1360 56",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_2fort/lantern001.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 90 0",
    classname = "prop_dynamic",
    hammerid = "710200"
})

::light710195 <- SpawnEntityFromTable("light", {
    origin = "2680 -1360 64",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::prop_dynamic710164 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "2808 -2032 56",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_2fort/lantern001.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 70 0",
    classname = "prop_dynamic",
    hammerid = "710164"
})

::light710159 <- SpawnEntityFromTable("light", {
    origin = "2808 -2032 64",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::prop_dynamic710128 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "2088 -1928 56",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_2fort/lantern001.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 155 0",
    classname = "prop_dynamic",
    hammerid = "710128"
})

::light710123 <- SpawnEntityFromTable("light", {
    origin = "2088 -1928 64",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_soundscape709767 <- SpawnEntityFromTable("env_soundscape", {
    origin = "1752 -2232 80",
    targetname = "soundscape_tunnel4",
    StartDisabled = "0",
    soundscape = "Upward.Inside",
    radius = "832",
    classname = "env_soundscape",
    hammerid = "709767"
})

::env_soundscape709690 <- SpawnEntityFromTable("env_soundscape", {
    origin = "-24 -112 168",
    targetname = "soundscape_inside14",
    StartDisabled = "0",
    soundscape = "sawmill.inside",
    radius = "640",
    classname = "env_soundscape",
    hammerid = "709690"
})

::env_soundscape709580 <- SpawnEntityFromTable("env_soundscape", {
    origin = "-264 -728 176",
    targetname = "soundscape_inside12",
    StartDisabled = "0",
    soundscape = "sawmill.inside",
    radius = "640",
    classname = "env_soundscape",
    hammerid = "709580"
})

::env_soundscape709525 <- SpawnEntityFromTable("env_soundscape", {
    origin = "-504 -2072 176",
    targetname = "soundscape_inside11",
    StartDisabled = "0",
    soundscape = "sawmill.inside",
    radius = "256",
    classname = "env_soundscape",
    hammerid = "709525"
})

::func_respawnflag2234993 <- SpawnEntityFromTable("func_respawnflag", {
    model = "*35",
    targetname = "flagreset",
    StartDisabled = "0",
    classname = "func_respawnflag",
    hammerid = "2234993",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_respawnflag2234993.KeyValueFromInt("solid", 2)
func_respawnflag2234993.KeyValueFromString(""mins"", "-1 -1 -1")
func_respawnflag2234993.KeyValueFromString(""maxs"", "1 1 1")

::func_areaportalwindow1100038 <- SpawnEntityFromTable("func_areaportalwindow", {
    portalnumber = "9",
    TranslucencyLimit = "0.0",
    target = "windowbrush",
    PortalVersion = "1",
    FadeStartDist = "512",
    FadeDist = "1024",
    classname = "func_areaportalwindow",
    hammerid = "1100038",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_areaportalwindow1100038.KeyValueFromInt("solid", 2)
func_areaportalwindow1100038.KeyValueFromString(""mins"", "-1 -1 -1")
func_areaportalwindow1100038.KeyValueFromString(""maxs"", "1 1 1")

::func_nav_prefer850253 <- SpawnEntityFromTable("func_nav_prefer", {
    model = "*36",
    team = "3",
    targetname = "nav_prefer_flank_mid1",
    tags = "flank_mid1",
    start_disabled = "0",
    origin = "2284 -1562 -40",
    angles = "0 0 0",
    classname = "func_nav_prefer",
    hammerid = "850253",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nav_prefer850253.KeyValueFromInt("solid", 2)
func_nav_prefer850253.KeyValueFromString(""mins"", "-1 -1 -1")
func_nav_prefer850253.KeyValueFromString(""maxs"", "1 1 1")

::func_nav_prefer849707 <- SpawnEntityFromTable("func_nav_prefer", {
    model = "*37",
    team = "3",
    targetname = "nav_prefer_flank_front",
    tags = "flank_front",
    start_disabled = "0",
    origin = "248 -1684 24",
    angles = "0 0 0",
    classname = "func_nav_prefer",
    hammerid = "849707",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nav_prefer849707.KeyValueFromInt("solid", 2)
func_nav_prefer849707.KeyValueFromString(""mins"", "-1 -1 -1")
func_nav_prefer849707.KeyValueFromString(""maxs"", "1 1 1")

::info_particle_system1601915 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-4592.51 -3273.51 188.226",
    targetname = "particle_lightning_e",
    start_active = "0",
    effect_name = "wrenchmotron_teleport_beam",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "1601915"
})

::logic_case838292 <- SpawnEntityFromTable("logic_case", {
    origin = "144 -2696 88",
    targetname = "downpour_lightning_rand_case",
    classname = "logic_case",
    hammerid = "838292",
    OnCase01 = "particle_lightning_nStart0-1",
    OnCase01 = "particle_lightning_nStop0.9-1",
    OnCase02 = "particle_lightning_sStart0-1",
    OnCase03 = "particle_lightning_eStart0-1",
    OnCase04 = "particle_lightning_nwStart0-1",
    OnCase02 = "particle_lightning_sStop0.9-1",
    OnCase03 = "particle_lightning_eStop0.9-1",
    OnCase04 = "particle_lightning_nwStop0.9-1",
    OnCase05 = "particle_lightning_swStart0-1",
    OnCase05 = "particle_lightning_swStop0.9-1"
})

::env_fog_controller1588450 <- SpawnEntityFromTable("env_fog_controller", {
    origin = "-1376 -6304 736",
    targetname = "?UnlitGeneric",
    spawnflags = "1",
    fogstart = "30",
    fogmaxdensity = "1",
    foglerptime = "2",
    fogend = "800",
    fogenable = "0",
    fogdir = "1 0 0",
    fogcolor2 = "133 131 117",
    fogcolor = "133 131 117",
    fogblend = "1",
    farz = "-1",
    angles = "0 0 0",
    classname = "env_fog_controller",
    hammerid = "1588450"
})

::info_particle_system837380 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-4808 -3344 176",
    targetname = "particle_lightning_s",
    start_active = "0",
    effect_name = "wrenchmotron_teleport_beam",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "837380"
})

::info_particle_system1601774 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-4539.5 -2929.23 159.521",
    targetname = "particle_lightning_n",
    start_active = "0",
    effect_name = "wrenchmotron_teleport_beam",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "1601774"
})

::info_particle_system1601635 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-4793.39 -2936.48 159.521",
    targetname = "particle_lightning_nw",
    start_active = "0",
    effect_name = "wrenchmotron_teleport_beam",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "1601635"
})

::ambient_generic836408 <- SpawnEntityFromTable("ambient_generic", {
    origin = "72 -2768 88",
    volstart = "0",
    targetname = "snd_downpour_strongwind",
    spinup = "30",
    spindown = "0",
    spawnflags = "17",
    radius = "1250",
    preset = "0",
    pitchstart = "5",
    pitch = "100",
    message = "l4d2/whistle_debris_loop.wav",
    lfotype = "0",
    lforate = "0",
    lfomodvol = "0",
    lfomodpitch = "0",
    health = "0",
    fadeoutsecs = "0",
    fadeinsecs = "0",
    cspinup = "0",
    classname = "ambient_generic",
    hammerid = "836408"
})

::bot_hint_sentrygun826968 <- SpawnEntityFromTable("bot_hint_sentrygun", {
    origin = "1352 -2496 58",
    TeamNum = "3",
    targetname = "engineer_nest5",
    sticky = "0",
    StartDisabled = "0",
    spawnflags = "0",
    sequence = "5",
    rangehelper = "1100",
    angles = "0 172.5 0",
    classname = "bot_hint_sentrygun",
    hammerid = "826968"
})

::bot_hint_engineer_nest826966 <- SpawnEntityFromTable("bot_hint_engineer_nest", {
    origin = "1568 -2624 74",
    TeamNum = "3",
    targetname = "engineer_nest5",
    StartDisabled = "0",
    spawnflags = "0",
    angles = "0 93 0",
    classname = "bot_hint_engineer_nest",
    hammerid = "826966"
})

::bot_hint_teleporter_exit826964 <- SpawnEntityFromTable("bot_hint_teleporter_exit", {
    origin = "1568 -2624 58",
    TeamNum = "3",
    targetname = "engineer_nest5",
    StartDisabled = "0",
    spawnflags = "0",
    angles = "0 152.5 0",
    classname = "bot_hint_teleporter_exit",
    hammerid = "826964"
})

::prop_dynamic817547 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "1480 -1528 0",
    targetname = "arrows_all",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 5 0",
    classname = "prop_dynamic",
    hammerid = "817547"
})

::prop_dynamic817499 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "920 -2624 0",
    targetname = "arrows_path2",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 120 0",
    classname = "prop_dynamic",
    hammerid = "817499"
})

::prop_dynamic817427 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "448 -2368 0",
    targetname = "arrows_path1",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 70 0",
    classname = "prop_dynamic",
    hammerid = "817427"
})

::prop_dynamic807980 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "344 -4672 -160",
    targetname = "arrows_all",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 105 0",
    classname = "prop_dynamic",
    hammerid = "807980"
})

::prop_dynamic807908 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-936 -3376 -24",
    targetname = "arrows_path1",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 90 0",
    classname = "prop_dynamic",
    hammerid = "807908"
})

::prop_dynamic807832 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-496 -3624 0",
    targetname = "arrows_path2",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 350 0",
    classname = "prop_dynamic",
    hammerid = "807832"
})

::prop_dynamic807684 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-56 -4104 -160",
    targetname = "arrows_all",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 170 0",
    classname = "prop_dynamic",
    hammerid = "807684"
})

::point_spotlight798301 <- SpawnEntityFromTable("point_spotlight", {
    origin = "1021 -729 207",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 210 -150",
     = "",
     = ""
})

::light798296 <- SpawnEntityFromTable("light", {
    origin = "1014.05 -728 172.06",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light797579 <- SpawnEntityFromTable("light", {
    origin = "600 -3064 180.06",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::point_spotlight797523 <- SpawnEntityFromTable("point_spotlight", {
    origin = "83 97 415",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 30 -150",
     = "",
     = ""
})

::light797518 <- SpawnEntityFromTable("light", {
    origin = "89.95 96 380.06",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light797452 <- SpawnEntityFromTable("light", {
    origin = "896 142.05 132.06",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light797340 <- SpawnEntityFromTable("light", {
    origin = "464 -2040 180.06",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light797257 <- SpawnEntityFromTable("light", {
    origin = "-936 -3096 148.06",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::prop_dynamic735267 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-1992 -680 -320",
    texframeindex = "0",
    targetname = "hatch_barrels",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_badlands/barrel_flatbed01.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "0",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "0 90 0",
    classname = "prop_dynamic",
    hammerid = "735267"
})

::prop_dynamic735244 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-1992 -528 -319.737",
    texframeindex = "0",
    targetname = "hatch_barrels",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_badlands/barrel_flatbed01.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "0",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "0 270 0",
    classname = "prop_dynamic",
    hammerid = "735244"
})

::prop_dynamic735192 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-2200 -688 -319.737",
    texframeindex = "0",
    targetname = "hatch_barrels",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_badlands/barrel02.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "0",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "0 335 0",
    classname = "prop_dynamic",
    hammerid = "735192"
})

::prop_dynamic735165 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-2088 -520 -319.951",
    texframeindex = "0",
    targetname = "hatch_barrels",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_badlands/barrel02.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "0",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "0 160 0",
    classname = "prop_dynamic",
    hammerid = "735165"
})

::prop_dynamic735141 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-2112 -688 -319.951",
    texframeindex = "0",
    targetname = "hatch_barrels",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_badlands/barrel01.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "0",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "0 160 0",
    classname = "prop_dynamic",
    hammerid = "735141"
})

::prop_dynamic735009 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-2168 -520 -320",
    texframeindex = "0",
    targetname = "hatch_barrels",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_badlands/barrel01.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "0",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "0 340 0",
    classname = "prop_dynamic",
    hammerid = "735009"
})

::item_teamflag2034477 <- SpawnEntityFromTable("item_teamflag", {
    origin = "187.433 -6041.15 440.458",
    trail_effect = "1",
    TeamNum = "3",
    targetname = "bomb2",
    StartDisabled = "1",
    ScoringType = "0",
    ReturnTime = "99999",
    ReturnBetweenWaves = "1",
    rendercolor = "255 255 255",
    renderamt = "255",
    PointValue = "1",
    physdamagescale = "1.0",
    NeutralType = "1",
    modelscale = "1.0",
    GameType = "1",
    flag_trail = "flagtrail",
    flag_paper = "player_intel_papertrail",
    flag_model = "models/props_td/atom_bomb.mdl",
    flag_icon = "../hud/objectives_flagpanel_carried",
    fadescale = "1.0",
    fademindist = "-1",
    angles = "0 180 0",
    classname = "item_teamflag",
    hammerid = "2034477"
})

::item_teamflag2034473 <- SpawnEntityFromTable("item_teamflag", {
    origin = "187.433 -6105.15 440.458",
    trail_effect = "1",
    TeamNum = "3",
    targetname = "bomb1",
    StartDisabled = "0",
    ScoringType = "0",
    ReturnTime = "99999",
    ReturnBetweenWaves = "1",
    rendercolor = "255 255 255",
    renderamt = "255",
    PointValue = "1",
    physdamagescale = "1.0",
    NeutralType = "1",
    modelscale = "1.0",
    GameType = "1",
    flag_trail = "flagtrail",
    flag_paper = "player_intel_papertrail",
    flag_model = "models/props_td/atom_bomb.mdl",
    flag_icon = "../hud/objectives_flagpanel_carried",
    fadescale = "1.0",
    fademindist = "-1",
    angles = "0 180 0",
    classname = "item_teamflag",
    hammerid = "2034473"
})

::item_teamflag2034481 <- SpawnEntityFromTable("item_teamflag", {
    origin = "187.433 -5977.15 440.458",
    trail_effect = "1",
    TeamNum = "3",
    targetname = "bomb3",
    StartDisabled = "1",
    ScoringType = "0",
    ReturnTime = "99999",
    ReturnBetweenWaves = "1",
    rendercolor = "255 255 255",
    renderamt = "255",
    PointValue = "1",
    physdamagescale = "1.0",
    NeutralType = "1",
    modelscale = "1.0",
    GameType = "1",
    flag_trail = "flagtrail",
    flag_paper = "player_intel_papertrail",
    flag_model = "models/props_td/atom_bomb.mdl",
    flag_icon = "../hud/objectives_flagpanel_carried",
    fadescale = "1.0",
    fademindist = "-1",
    angles = "0 180 0",
    classname = "item_teamflag",
    hammerid = "2034481"
})

::point_spotlight298713 <- SpawnEntityFromTable("point_spotlight", {
    origin = "306.86 -3165.09 104",
    spotlightwidth = "80",
    spotlightlength = "150",
    spawnflags = "3",
    rendercolor = "255 235 180",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 180 0",
     = "",
     = ""
})

::light_spot298708 <- SpawnEntityFromTable("light_spot", {
    origin = "306.86 -3076.93 101.679",
    spawnflags = "0",
    pitch = "-90",
    angles = "-90 180 0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 235 180 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::point_spotlight298706 <- SpawnEntityFromTable("point_spotlight", {
    origin = "306.33 -3077.09 104",
    spotlightwidth = "80",
    spotlightlength = "150",
    spawnflags = "3",
    rendercolor = "255 235 180",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 180 0",
     = "",
     = ""
})

::env_sprite863317 <- SpawnEntityFromTable("env_sprite", {
    origin = "384 -2904 224",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "863317"
})

::point_spotlight863226 <- SpawnEntityFromTable("point_spotlight", {
    origin = "662 -6203 1097",
    spotlightwidth = "80",
    spotlightlength = "1800",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "87 89 89",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "16 23 0",
     = "",
     = ""
})

::point_spotlight863224 <- SpawnEntityFromTable("point_spotlight", {
    origin = "625 -6162 1102",
    spotlightwidth = "80",
    spotlightlength = "1800",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "87 89 89",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "0 58 0",
     = "",
     = ""
})

::point_spotlight863196 <- SpawnEntityFromTable("point_spotlight", {
    origin = "78 -5834 1102",
    spotlightwidth = "80",
    spotlightlength = "1800",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "87 89 89",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "0 58 0",
     = "",
     = ""
})

::point_spotlight863144 <- SpawnEntityFromTable("point_spotlight", {
    origin = "25 -5821 1096",
    spotlightwidth = "80",
    spotlightlength = "1800",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "87 89 89",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "16 96 0",
     = "",
     = ""
})

::env_sprite863133 <- SpawnEntityFromTable("env_sprite", {
    origin = "-64 -24 168",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "863133"
})

::env_sprite863124 <- SpawnEntityFromTable("env_sprite", {
    origin = "88 40 168",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "863124"
})

::light862444 <- SpawnEntityFromTable("light", {
    origin = "104 -5856 608",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 50 50 150",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light862404 <- SpawnEntityFromTable("light", {
    origin = "600 -6152 608",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 50 50 150",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light862364 <- SpawnEntityFromTable("light", {
    origin = "56 -6000 560",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 135",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light862359 <- SpawnEntityFromTable("light", {
    origin = "-16 -6120 560",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 135",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light862354 <- SpawnEntityFromTable("light", {
    origin = "-80 -6232 560",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 135",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light862289 <- SpawnEntityFromTable("light", {
    origin = "496 -6256 560",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 135",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light862284 <- SpawnEntityFromTable("light", {
    origin = "424 -6376 560",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 135",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light862279 <- SpawnEntityFromTable("light", {
    origin = "360 -6488 560",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 135",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light862109 <- SpawnEntityFromTable("light", {
    origin = "144 -6048 648",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 135",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light862104 <- SpawnEntityFromTable("light", {
    origin = "72 -6168 648",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 135",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light862099 <- SpawnEntityFromTable("light", {
    origin = "8 -6280 648",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 135",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light862049 <- SpawnEntityFromTable("light", {
    origin = "264 -6432 648",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 135",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light862009 <- SpawnEntityFromTable("light", {
    origin = "328 -6320 648",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 135",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light861979 <- SpawnEntityFromTable("light", {
    origin = "400 -6200 648",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 135",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_sprite861884 <- SpawnEntityFromTable("env_sprite", {
    origin = "1800 -4480 448",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "242 180 96",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861884"
})

::env_sprite861867 <- SpawnEntityFromTable("env_sprite", {
    origin = "1424 -4248 448",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "242 180 96",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861867"
})

::env_sprite861654 <- SpawnEntityFromTable("env_sprite", {
    origin = "2680 -1360 64",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "242 180 96",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861654"
})

::env_sprite861645 <- SpawnEntityFromTable("env_sprite", {
    origin = "2808 -2032 64",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "242 180 96",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861645"
})

::env_sprite861636 <- SpawnEntityFromTable("env_sprite", {
    origin = "2088 -1928 64",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "242 180 96",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861636"
})

::env_sprite861576 <- SpawnEntityFromTable("env_sprite", {
    origin = "2048 -2256 64",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "242 180 96",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861576"
})

::env_sprite861567 <- SpawnEntityFromTable("env_sprite", {
    origin = "1640 -3456 288",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861567"
})

::env_sprite861558 <- SpawnEntityFromTable("env_sprite", {
    origin = "1328 -3632 200",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861558"
})

::env_sprite861549 <- SpawnEntityFromTable("env_sprite", {
    origin = "96 -3448 224",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861549"
})

::env_sprite861540 <- SpawnEntityFromTable("env_sprite", {
    origin = "88 -3168 224",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861540"
})

::env_sprite861531 <- SpawnEntityFromTable("env_sprite", {
    origin = "88 -2928 224",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861531"
})

::env_sprite861522 <- SpawnEntityFromTable("env_sprite", {
    origin = "-296 -1952 168",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861522"
})

::env_sprite861513 <- SpawnEntityFromTable("env_sprite", {
    origin = "64 -2112 168",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861513"
})

::env_sprite861504 <- SpawnEntityFromTable("env_sprite", {
    origin = "160 -1776 168",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861504"
})

::env_sprite861495 <- SpawnEntityFromTable("env_sprite", {
    origin = "48 -1440 168",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861495"
})

::env_sprite861486 <- SpawnEntityFromTable("env_sprite", {
    origin = "264 -1304 416",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861486"
})

::env_sprite861468 <- SpawnEntityFromTable("env_sprite", {
    origin = "400 -1680 192",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861468"
})

::env_sprite861459 <- SpawnEntityFromTable("env_sprite", {
    origin = "1544 -2088 240",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861459"
})

::light797202 <- SpawnEntityFromTable("light", {
    origin = "-832 -2337.95 164.06",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light797168 <- SpawnEntityFromTable("light", {
    origin = "8 -2338.95 156.06",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::func_nobuild787693 <- SpawnEntityFromTable("func_nobuild", {
    model = "*38",
    TeamNum = "0",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "280 -1680 76",
    angles = "0 0 0",
    AllowTeleporters = "0",
    AllowSentry = "0",
    AllowDispenser = "0",
    classname = "func_nobuild",
    hammerid = "787693",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nobuild787693.KeyValueFromInt("solid", 2)
func_nobuild787693.KeyValueFromString(""mins"", "-1 -1 -1")
func_nobuild787693.KeyValueFromString(""maxs"", "1 1 1")

::func_nav_avoid778362 <- SpawnEntityFromTable("func_nav_avoid", {
    model = "*39",
    team = "3",
    tags = "bomb_carrier",
    start_disabled = "0",
    origin = "112 -1796 -16",
    angles = "0 0 0",
    classname = "func_nav_avoid",
    hammerid = "778362",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nav_avoid778362.KeyValueFromInt("solid", 2)
func_nav_avoid778362.KeyValueFromString(""mins"", "-1 -1 -1")
func_nav_avoid778362.KeyValueFromString(""maxs"", "1 1 1")

::env_sprite879172 <- SpawnEntityFromTable("env_sprite", {
    origin = "-192 -4664 16",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "879172"
})

::light879140 <- SpawnEntityFromTable("light", {
    origin = "96 -3636 208",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 80",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light879115 <- SpawnEntityFromTable("light", {
    origin = "288 -2756 224",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 80",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light879080 <- SpawnEntityFromTable("light", {
    origin = "-2612 -480 152",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 80",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light878942 <- SpawnEntityFromTable("light", {
    origin = "1040 -2760 180",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light_spot878937 <- SpawnEntityFromTable("light_spot", {
    origin = "1044 -2761 209",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 210 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::point_spotlight878935 <- SpawnEntityFromTable("point_spotlight", {
    origin = "1045 -2761 217",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 210 -150",
     = "",
     = ""
})

::light_spot878896 <- SpawnEntityFromTable("light_spot", {
    origin = "153 -3964 49",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 300 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::light_spot878876 <- SpawnEntityFromTable("light_spot", {
    origin = "-932 -3097 177",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 210 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::light_spot878851 <- SpawnEntityFromTable("light_spot", {
    origin = "-831 -2332 194",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 300 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::light_spot878836 <- SpawnEntityFromTable("light_spot", {
    origin = "9 -2333 186",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 300 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::light_spot878816 <- SpawnEntityFromTable("light_spot", {
    origin = "596 -3063 209",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 30 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::light_spot878801 <- SpawnEntityFromTable("light_spot", {
    origin = "460 -2039 209",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 30 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::light_spot878776 <- SpawnEntityFromTable("light_spot", {
    origin = "1569 -1364 183",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 300 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::light_spot878761 <- SpawnEntityFromTable("light_spot", {
    style = "32",
    origin = "2057 -1364 183",
    targetname = "tunnel_light1",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 300 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::light_spot878736 <- SpawnEntityFromTable("light_spot", {
    style = "33",
    origin = "2187 -1159 176",
    targetname = "tunnel_light",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 30 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::light_spot878716 <- SpawnEntityFromTable("light_spot", {
    style = "33",
    origin = "2372 -337 176",
    targetname = "tunnel_light",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 210 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::light_spot878684 <- SpawnEntityFromTable("light_spot", {
    origin = "1583 -36 104",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 120 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::light_spot878652 <- SpawnEntityFromTable("light_spot", {
    origin = "84 97 408",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 30 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::light_spot878625 <- SpawnEntityFromTable("light_spot", {
    origin = "897 149 163",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 300 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::light_spot878355 <- SpawnEntityFromTable("light_spot", {
    origin = "1021 -729 200",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 210 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::light878261 <- SpawnEntityFromTable("light", {
    origin = "1088 -2172 192",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_sprite878254 <- SpawnEntityFromTable("env_sprite", {
    origin = "1112 -2172 192",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "878254"
})

::light878189 <- SpawnEntityFromTable("light", {
    origin = "-2056 -1072 120",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_sprite878186 <- SpawnEntityFromTable("env_sprite", {
    origin = "-2080 -1072 120",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "878186"
})

::light878129 <- SpawnEntityFromTable("light", {
    origin = "-2504 -1040 376",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_sprite878126 <- SpawnEntityFromTable("env_sprite", {
    origin = "-2528 -1040 376",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "878126"
})

::light867675 <- SpawnEntityFromTable("light", {
    origin = "2816 -576 168",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_sprite867668 <- SpawnEntityFromTable("env_sprite", {
    origin = "2816 -576 192",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "867668"
})

::light867055 <- SpawnEntityFromTable("light", {
    origin = "2560 136 56",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_sprite867048 <- SpawnEntityFromTable("env_sprite", {
    origin = "2560 136 80",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "867048"
})

::light866995 <- SpawnEntityFromTable("light", {
    origin = "2592 -192 128",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_sprite866988 <- SpawnEntityFromTable("env_sprite", {
    origin = "2592 -192 152",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "866988"
})

::env_sprite861450 <- SpawnEntityFromTable("env_sprite", {
    origin = "1248 -2032 240",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861450"
})

::env_sprite861417 <- SpawnEntityFromTable("env_sprite", {
    origin = "1192 -880 240",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861417"
})

::env_sprite861408 <- SpawnEntityFromTable("env_sprite", {
    origin = "1472 -1184 240",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861408"
})

::env_sprite861399 <- SpawnEntityFromTable("env_sprite", {
    origin = "1672 -768 240",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861399"
})

::env_sprite861390 <- SpawnEntityFromTable("env_sprite", {
    origin = "1904 -1064 240",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861390"
})

::env_sprite861381 <- SpawnEntityFromTable("env_sprite", {
    origin = "2704 -1168 88",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861381"
})

::env_sprite861372 <- SpawnEntityFromTable("env_sprite", {
    origin = "2816 -960 192",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861372"
})

::env_sprite861363 <- SpawnEntityFromTable("env_sprite", {
    origin = "2584 -496 192",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861363"
})

::env_sprite861354 <- SpawnEntityFromTable("env_sprite", {
    origin = "2432 48 88",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861354"
})

::env_sprite861345 <- SpawnEntityFromTable("env_sprite", {
    origin = "1824 48 176",
    targetname = "tunnel_lightglow",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861345"
})

::env_sprite861336 <- SpawnEntityFromTable("env_sprite", {
    origin = "2272 376 56",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861336"
})

::env_sprite861327 <- SpawnEntityFromTable("env_sprite", {
    origin = "2000 376 56",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861327"
})

::trigger_hurt2048797 <- SpawnEntityFromTable("trigger_hurt", {
    model = "*40",
    targetname = "end_wave",
    StartDisabled = "1",
    spawnflags = "1",
    origin = "-3768.02 -581.58 -8",
    nodmgforce = "0",
    damagetype = "0",
    damagemodel = "0",
    damagecap = "20",
    damage = "10000",
    angles = "0 0 0",
    classname = "trigger_hurt",
    hammerid = "2048797",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
trigger_hurt2048797.KeyValueFromInt("solid", 2)
trigger_hurt2048797.KeyValueFromString(""mins"", "-1 -1 -1")
trigger_hurt2048797.KeyValueFromString(""maxs"", "1 1 1")

::env_sprite861300 <- SpawnEntityFromTable("env_sprite", {
    origin = "544 -1224 232",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861300"
})

::env_sprite861291 <- SpawnEntityFromTable("env_sprite", {
    origin = "976 -1224 232",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861291"
})

::env_sprite861125 <- SpawnEntityFromTable("env_sprite", {
    origin = "-760 168 168",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861125"
})

::env_sprite861116 <- SpawnEntityFromTable("env_sprite", {
    origin = "-384 -240 168",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861116"
})

::env_sprite861107 <- SpawnEntityFromTable("env_sprite", {
    origin = "-432 -784 128",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "861107"
})

::light905181 <- SpawnEntityFromTable("light", {
    origin = "-280 -3289.95 172.06",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light_spot905176 <- SpawnEntityFromTable("light_spot", {
    origin = "-279 -3283 200",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 300 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::point_spotlight905170 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-279 -3283 207",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 300 -150",
     = "",
     = ""
})

::light892807 <- SpawnEntityFromTable("light", {
    origin = "2720 -1728 64",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_sprite892804 <- SpawnEntityFromTable("env_sprite", {
    origin = "2720 -1728 64",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "242 180 96",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "892804"
})

::prop_dynamic892800 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "2720 -1728 56",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_2fort/lantern001.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 70 0",
    classname = "prop_dynamic",
    hammerid = "892800"
})

::light892648 <- SpawnEntityFromTable("light", {
    origin = "2352 -2064 64",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_sprite892645 <- SpawnEntityFromTable("env_sprite", {
    origin = "2352 -2064 64",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "242 180 96",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "892645"
})

::prop_dynamic892641 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "2352 -2064 56",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_2fort/lantern001.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 40 0",
    classname = "prop_dynamic",
    hammerid = "892641"
})

::env_sprite891532 <- SpawnEntityFromTable("env_sprite", {
    origin = "-2224 -600 -176",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "891532"
})

::light891527 <- SpawnEntityFromTable("light", {
    origin = "-2200 -600 -176",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_sprite891464 <- SpawnEntityFromTable("env_sprite", {
    origin = "-1936 -600 -176",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "891464"
})

::light891455 <- SpawnEntityFromTable("light", {
    style = "34",
    origin = "-1960 -600 -176",
    targetname = "hatch_light",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 120",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::point_spotlight891323 <- SpawnEntityFromTable("point_spotlight", {
    origin = "1005 -3713 217",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 210 -150",
     = "",
     = ""
})

::light_spot891318 <- SpawnEntityFromTable("light_spot", {
    origin = "1004 -3713 209",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 210 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::light891313 <- SpawnEntityFromTable("light", {
    origin = "1000 -3712 180.06",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light891119 <- SpawnEntityFromTable("light", {
    origin = "1016 -4856 36.06",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light_spot891114 <- SpawnEntityFromTable("light_spot", {
    origin = "1020 -4857 65",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 210 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::point_spotlight891112 <- SpawnEntityFromTable("point_spotlight", {
    origin = "1021 -4857 73",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 210 -150",
     = "",
     = ""
})

::point_spotlight890914 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-799 -4339 81",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 300 -150",
     = "",
     = ""
})

::light_spot890909 <- SpawnEntityFromTable("light_spot", {
    origin = "-799 -4340 73",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 300 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::light890904 <- SpawnEntityFromTable("light", {
    origin = "-800 -4345.95 44.06",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_sprite890876 <- SpawnEntityFromTable("env_sprite", {
    origin = "96 -3636 208",
    spawnflags = "0",
    scale = "1.5",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "125",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "50",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "890876"
})

::env_sprite890867 <- SpawnEntityFromTable("env_sprite", {
    origin = "288 -2756 224",
    spawnflags = "0",
    scale = "1.5",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "125",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "50",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "890867"
})

::env_sprite890833 <- SpawnEntityFromTable("env_sprite", {
    origin = "-2612 -480 152",
    spawnflags = "0",
    scale = "1.5",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "125",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "50",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "890833"
})

::env_sprite890824 <- SpawnEntityFromTable("env_sprite", {
    origin = "-384 -240 428",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "890824"
})

::light890594 <- SpawnEntityFromTable("light", {
    origin = "-1944 472 198.645",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light_spot890589 <- SpawnEntityFromTable("light_spot", {
    origin = "-1943 476 227.645",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 300 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::point_spotlight890587 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-1943 477 235.645",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 300 -150",
     = "",
     = ""
})

::light890430 <- SpawnEntityFromTable("light", {
    origin = "-2576 64 132",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light_spot890425 <- SpawnEntityFromTable("light_spot", {
    origin = "-2580 65 161",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 30 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::point_spotlight890423 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-2581 65 169",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 30 -150",
     = "",
     = ""
})

::point_spotlight890114 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-1641 -189 209",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 120 -150",
     = "",
     = ""
})

::light_spot890109 <- SpawnEntityFromTable("light_spot", {
    origin = "-1641 -188 201",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 120 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::light890104 <- SpawnEntityFromTable("light", {
    origin = "-1640 -184 172",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_sprite890025 <- SpawnEntityFromTable("env_sprite", {
    origin = "-384 -528 168",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "890025"
})

::info_particle_system866278 <- SpawnEntityFromTable("info_particle_system", {
    origin = "520 -832 -40",
    start_active = "1",
    flag_as_weather = "1",
    effect_name = "env_rain_ripples",
    angles = "0 90 0",
    classname = "info_particle_system",
    hammerid = "866278"
})

::info_particle_system866213 <- SpawnEntityFromTable("info_particle_system", {
    origin = "400 -832 -40",
    targetname = "particle_storm_ripples1",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_ripples",
    angles = "0 90 0",
    classname = "info_particle_system",
    hammerid = "866213"
})

::point_spotlight864159 <- SpawnEntityFromTable("point_spotlight", {
    origin = "153 -3963 57",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 300 -150",
     = "",
     = ""
})

::point_spotlight864147 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-931 -3097 185",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 210 -150",
     = "",
     = ""
})

::point_spotlight864135 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-831 -2331 201",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 300 -150",
     = "",
     = ""
})

::point_spotlight864119 <- SpawnEntityFromTable("point_spotlight", {
    origin = "9 -2332 193",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 300 -150",
     = "",
     = ""
})

::point_spotlight864107 <- SpawnEntityFromTable("point_spotlight", {
    origin = "595 -3063 217",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 30 -150",
     = "",
     = ""
})

::point_spotlight864097 <- SpawnEntityFromTable("point_spotlight", {
    origin = "459 -2039 217",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 30 -150",
     = "",
     = ""
})

::point_spotlight864089 <- SpawnEntityFromTable("point_spotlight", {
    origin = "1569 -1363 191",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 300 -150",
     = "",
     = ""
})

::point_spotlight864079 <- SpawnEntityFromTable("point_spotlight", {
    origin = "2057 -1363 191",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 300 -150",
     = "",
     = ""
})

::point_spotlight864067 <- SpawnEntityFromTable("point_spotlight", {
    origin = "2187 -1159 183",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 30 -150",
     = "",
     = ""
})

::point_spotlight864053 <- SpawnEntityFromTable("point_spotlight", {
    origin = "2373 -337 183",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 210 -150",
     = "",
     = ""
})

::point_spotlight863914 <- SpawnEntityFromTable("point_spotlight", {
    origin = "1583 -37 111",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 120 -150",
     = "",
     = ""
})

::point_spotlight863672 <- SpawnEntityFromTable("point_spotlight", {
    origin = "897 149 170",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 300 -150",
     = "",
     = ""
})

::light_spot298730 <- SpawnEntityFromTable("light_spot", {
    origin = "306.86 -3252.93 101.679",
    spawnflags = "0",
    pitch = "-90",
    angles = "-90 180 0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 235 180 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::point_spotlight298728 <- SpawnEntityFromTable("point_spotlight", {
    origin = "306.33 -3253.09 104",
    spotlightwidth = "80",
    spotlightlength = "150",
    spawnflags = "3",
    rendercolor = "255 235 180",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 180 0",
     = "",
     = ""
})

::light_spot298719 <- SpawnEntityFromTable("light_spot", {
    origin = "307.39 -3164.93 101.679",
    spawnflags = "0",
    pitch = "-90",
    angles = "-90 180 0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 235 180 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::env_sprite919100 <- SpawnEntityFromTable("env_sprite", {
    origin = "2080 -1192 64",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "919100"
})

::light919095 <- SpawnEntityFromTable("light", {
    origin = "2056 -1192 64",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::prop_dynamic918820 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4142 -995 -77",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/bots/gibs/heavybot_gib_leg.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "1750",
    fademaxdist = "2000",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "-20 300 90",
    classname = "prop_dynamic",
    hammerid = "918820"
})

::prop_dynamic918790 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4152 -1015 -87",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/bots/gibs/heavybot_gib_leg2.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "1750",
    fademaxdist = "2000",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "-70 270 90",
    classname = "prop_dynamic",
    hammerid = "918790"
})

::light_spot918160 <- SpawnEntityFromTable("light_spot", {
    origin = "-4560 -672 256",
    spawnflags = "0",
    pitch = "-90",
    angles = "-90 270 0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 600",
    _inner_cone = "55",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "65",
     = "",
     = ""
})

::light918155 <- SpawnEntityFromTable("light", {
    origin = "-4560 -672 232",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::point_spotlight918153 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-4536 -672 268",
    spotlightwidth = "80",
    spotlightlength = "225",
    spawnflags = "3",
    rendercolor = "255 255 255",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 270 0",
     = "",
     = ""
})

::point_spotlight918151 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-4584 -672 268",
    spotlightwidth = "80",
    spotlightlength = "225",
    spawnflags = "3",
    rendercolor = "255 255 255",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 270 0",
     = "",
     = ""
})

::light_spot918142 <- SpawnEntityFromTable("light_spot", {
    origin = "-4560 -928 256",
    spawnflags = "0",
    pitch = "-90",
    angles = "-90 270 0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 600",
    _inner_cone = "55",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "65",
     = "",
     = ""
})

::point_spotlight918136 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-4584 -928 268",
    spotlightwidth = "80",
    spotlightlength = "225",
    spawnflags = "3",
    rendercolor = "255 255 255",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 270 0",
     = "",
     = ""
})

::light918131 <- SpawnEntityFromTable("light", {
    origin = "-4560 -928 232",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::point_spotlight918129 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-4536 -928 268",
    spotlightwidth = "80",
    spotlightlength = "225",
    spawnflags = "3",
    rendercolor = "255 255 255",
    renderamt = "255",
    HDRColorScale = "1.0",
    angles = "90 270 0",
     = "",
     = ""
})

::prop_dynamic917163 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4152 -952 -88",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/weapons/c_models/c_wrench/c_wrench.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "1750",
    fademaxdist = "2000",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 70 -90",
    classname = "prop_dynamic",
    hammerid = "917163"
})

::prop_dynamic917108 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4136 -960 -89",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "1",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/bots/gibs/scoutbot_gib_chest.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "1750",
    fademaxdist = "2000",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "90 200 0",
    classname = "prop_dynamic",
    hammerid = "917108"
})

::prop_dynamic917085 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4184 -936 -74",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/weapons/c_models/c_toolbox/c_toolbox.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "1750",
    fademaxdist = "2000",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 340 0",
    classname = "prop_dynamic",
    hammerid = "917085"
})

::light916527 <- SpawnEntityFromTable("light", {
    origin = "-4128 -1056 -16",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light_spot916522 <- SpawnEntityFromTable("light_spot", {
    origin = "-4128 -1056 8",
    spawnflags = "0",
    pitch = "-90",
    angles = "-90 270 0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 600",
    _inner_cone = "55",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "65",
     = "",
     = ""
})

::point_spotlight916520 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-4128 -1032 20",
    spotlightwidth = "80",
    spotlightlength = "225",
    spawnflags = "3",
    rendercolor = "255 255 255",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 270 0",
     = "",
     = ""
})

::point_spotlight916518 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-4128 -1080 20",
    spotlightwidth = "80",
    spotlightlength = "225",
    spawnflags = "3",
    rendercolor = "255 255 255",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 270 0",
     = "",
     = ""
})

::light916453 <- SpawnEntityFromTable("light", {
    origin = "-3872 -1056 -16",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light_spot916448 <- SpawnEntityFromTable("light_spot", {
    origin = "-3872 -1056 8",
    spawnflags = "0",
    pitch = "-90",
    angles = "-90 270 0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 600",
    _inner_cone = "55",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "65",
     = "",
     = ""
})

::light916369 <- SpawnEntityFromTable("light", {
    origin = "-3968 -704 168",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light_spot916364 <- SpawnEntityFromTable("light_spot", {
    origin = "-3968 -704 192",
    spawnflags = "0",
    pitch = "-90",
    angles = "-90 270 0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 600",
    _inner_cone = "55",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "65",
     = "",
     = ""
})

::point_spotlight916362 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-3992 -704 204",
    spotlightwidth = "80",
    spotlightlength = "225",
    spawnflags = "3",
    rendercolor = "255 255 255",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 270 0",
     = "",
     = ""
})

::point_spotlight916360 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-3944 -704 204",
    spotlightwidth = "80",
    spotlightlength = "225",
    spawnflags = "3",
    rendercolor = "255 255 255",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 270 0",
     = "",
     = ""
})

::light_spot916355 <- SpawnEntityFromTable("light_spot", {
    origin = "-3968 -448 192",
    spawnflags = "0",
    pitch = "-90",
    angles = "-90 270 0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 600",
    _inner_cone = "55",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "65",
     = "",
     = ""
})

::light890016 <- SpawnEntityFromTable("light", {
    origin = "-384 -528 144",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light879881 <- SpawnEntityFromTable("light", {
    origin = "-2992 -468 216",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 80",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::point_spotlight879714 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-881 -189 169",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 120 -150",
     = "",
     = ""
})

::light_spot879709 <- SpawnEntityFromTable("light_spot", {
    origin = "-881 -188 161",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 120 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::light879704 <- SpawnEntityFromTable("light", {
    origin = "-880 -184 132",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::point_spotlight879576 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-1577 -1333 161",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 120 -150",
     = "",
     = ""
})

::light_spot879571 <- SpawnEntityFromTable("light_spot", {
    origin = "-1577 -1332 153",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 120 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::light879566 <- SpawnEntityFromTable("light", {
    origin = "-1576 -1328 124",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light879439 <- SpawnEntityFromTable("light", {
    origin = "-608 -1152 124",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light_spot879434 <- SpawnEntityFromTable("light_spot", {
    origin = "-604 -1153 153",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 210 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::point_spotlight879432 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-603 -1153 161",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 210 -150",
     = "",
     = ""
})

::light879290 <- SpawnEntityFromTable("light", {
    origin = "200 -1032 148",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light_spot879285 <- SpawnEntityFromTable("light_spot", {
    origin = "199 -1036 177",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 120 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::point_spotlight879283 <- SpawnEntityFromTable("point_spotlight", {
    origin = "199 -1037 185",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 120 -150",
     = "",
     = ""
})

::trigger_teleport1990662 <- SpawnEntityFromTable("trigger_teleport", {
    portalnumber = "10",
    targetname = "dropportal",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    model = "*41",
    targetname = "spawntele",
    target = "playerspawn",
    StartDisabled = "0",
    spawnflags = "4097",
    origin = "-1016.46 -3517.53 302.96",
    angles = "0 0 0",
    classname = "trigger_teleport",
    hammerid = "1990662",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
trigger_teleport1990662.KeyValueFromInt("solid", 2)
trigger_teleport1990662.KeyValueFromString(""mins"", "-1 -1 -1")
trigger_teleport1990662.KeyValueFromString(""maxs"", "1 1 1")

::prop_dynamic940337 <- SpawnEntityFromTable("prop_dynamic", {
    portalnumber = "11",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    origin = "-1232 -128 -40",
    targetname = "arrows_path2",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 185 0",
    classname = "prop_dynamic",
    hammerid = "940337"
})

::prop_dynamic940283 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-560 -472 -28",
    targetname = "arrows_path2",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 120 0",
    classname = "prop_dynamic",
    hammerid = "940283"
})

::func_nav_avoid940187 <- SpawnEntityFromTable("func_nav_avoid", {
    model = "*42",
    team = "3",
    targetname = "avoid_path2",
    tags = "bomb_carrier",
    start_disabled = "0",
    origin = "-644 -200 4",
    angles = "0 0 0",
    classname = "func_nav_avoid",
    hammerid = "940187",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nav_avoid940187.KeyValueFromInt("solid", 2)
func_nav_avoid940187.KeyValueFromString(""mins"", "-1 -1 -1")
func_nav_avoid940187.KeyValueFromString(""maxs"", "1 1 1")

::func_nav_avoid940173 <- SpawnEntityFromTable("func_nav_avoid", {
    model = "*43",
    team = "3",
    targetname = "avoid_path1",
    tags = "bomb_carrier",
    start_disabled = "0",
    origin = "-1192 152 -28",
    angles = "0 0 0",
    classname = "func_nav_avoid",
    hammerid = "940173",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nav_avoid940173.KeyValueFromInt("solid", 2)
func_nav_avoid940173.KeyValueFromString(""mins"", "-1 -1 -1")
func_nav_avoid940173.KeyValueFromString(""maxs"", "1 1 1")

::func_nav_avoid940157 <- SpawnEntityFromTable("func_nav_avoid", {
    model = "*44",
    team = "3",
    tags = "bomb_carrier common flank_front flank_mid1 flank_mid2 flank_back",
    start_disabled = "0",
    origin = "348 -3052 24",
    angles = "0 0 0",
    classname = "func_nav_avoid",
    hammerid = "940157",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nav_avoid940157.KeyValueFromInt("solid", 2)
func_nav_avoid940157.KeyValueFromString(""mins"", "-1 -1 -1")
func_nav_avoid940157.KeyValueFromString(""maxs"", "1 1 1")

::keyframe_rope929415 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-1599 -2277 695",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "conduit2_2",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "929415"
})

::move_rope929408 <- SpawnEntityFromTable("move_rope", {
    origin = "-547 -2967 194",
    Width = "1",
    Type = "0",
    TextureScale = "1",
    targetname = "conduit2_1",
    Subdiv = "3",
    Slack = "100",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "0",
    NextKey = "conduit2_2",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 90 0",
    classname = "move_rope",
    hammerid = "929408"
})

::keyframe_rope929341 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "407 -2234 401",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "conduit1_3",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "929341"
})

::prop_dynamic928887 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4056 -960 -128",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "1",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/bots/gibs/heavybot_gib_chest.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "1750",
    fademaxdist = "2000",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "-70 15 -45",
    classname = "prop_dynamic",
    hammerid = "928887"
})

::prop_dynamic928856 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4080 -960 -84",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "1",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/bots/gibs/heavybot_gib_head.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "1750",
    fademaxdist = "2000",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "-50 240 90",
    classname = "prop_dynamic",
    hammerid = "928856"
})

::prop_dynamic928817 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4136 -1056 -88",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "1",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/bots/gibs/pyrobot_gib_head.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "1750",
    fademaxdist = "2000",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "-20 70 -90",
    classname = "prop_dynamic",
    hammerid = "928817"
})

::prop_dynamic928714 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4168 -932 -115",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "1",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/bots/gibs/pyrobot_gib_arm1.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "1750",
    fademaxdist = "2000",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "-10 0 70",
    classname = "prop_dynamic",
    hammerid = "928714"
})

::prop_dynamic928671 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4098 -916 -80",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "1",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/bots/gibs/scoutbot_gib_arm1.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "1750",
    fademaxdist = "2000",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "-90 14.5 0",
    classname = "prop_dynamic",
    hammerid = "928671"
})

::prop_dynamic928632 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4220 -1032 -68",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "1",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/bots/gibs/pyrobot_gib_pelvis.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "1750",
    fademaxdist = "2000",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "-70 0 160",
    classname = "prop_dynamic",
    hammerid = "928632"
})

::info_particle_system927857 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-1676 -2664 768",
    targetname = "chimney_smoke",
    start_active = "1",
    effect_name = "smoke_wispy_black_hoodoo",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "927857"
})

::info_particle_system924743 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-496 -1176 1016",
    targetname = "chimney_smoke",
    start_active = "1",
    effect_name = "smoke_wispy_black_hoodoo",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "924743"
})

::info_particle_system923617 <- SpawnEntityFromTable("info_particle_system", {
    origin = "1128 -3144 792",
    targetname = "chimney_smoke",
    start_active = "1",
    effect_name = "smoke_wispy_black_hoodoo",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "923617"
})

::light916350 <- SpawnEntityFromTable("light", {
    origin = "-3968 -448 168",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::point_spotlight916348 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-3944 -448 204",
    spotlightwidth = "80",
    spotlightlength = "225",
    spawnflags = "3",
    rendercolor = "255 255 255",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 270 0",
     = "",
     = ""
})

::point_spotlight916346 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-3992 -448 204",
    spotlightwidth = "80",
    spotlightlength = "225",
    spawnflags = "3",
    rendercolor = "255 255 255",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 270 0",
     = "",
     = ""
})

::light_spot916285 <- SpawnEntityFromTable("light_spot", {
    origin = "-3528 -448 192",
    spawnflags = "0",
    pitch = "-90",
    angles = "-90 270 0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 600",
    _inner_cone = "55",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "65",
     = "",
     = ""
})

::light916280 <- SpawnEntityFromTable("light", {
    origin = "-3528 -448 168",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::point_spotlight916278 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-3504 -448 204",
    spotlightwidth = "80",
    spotlightlength = "225",
    spawnflags = "3",
    rendercolor = "255 255 255",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 270 0",
     = "",
     = ""
})

::point_spotlight916276 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-3552 -448 204",
    spotlightwidth = "80",
    spotlightlength = "225",
    spawnflags = "3",
    rendercolor = "255 255 255",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 270 0",
     = "",
     = ""
})

::point_spotlight916217 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-3504 -704 204",
    spotlightwidth = "80",
    spotlightlength = "225",
    spawnflags = "3",
    rendercolor = "255 255 255",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 270 0",
     = "",
     = ""
})

::light916172 <- SpawnEntityFromTable("light", {
    origin = "-3528 -704 168",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light_spot916167 <- SpawnEntityFromTable("light_spot", {
    origin = "-3528 -704 192",
    spawnflags = "0",
    pitch = "-90",
    angles = "-90 270 0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 600",
    _inner_cone = "55",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "65",
     = "",
     = ""
})

::point_spotlight916165 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-3552 -704 204",
    spotlightwidth = "80",
    spotlightlength = "225",
    spawnflags = "3",
    rendercolor = "255 255 255",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 270 0",
     = "",
     = ""
})

::env_sprite915631 <- SpawnEntityFromTable("env_sprite", {
    origin = "-2992 -468 216",
    spawnflags = "0",
    scale = "1.5",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "125",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "50",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "915631"
})

::info_particle_system1051609 <- SpawnEntityFromTable("info_particle_system", {
    portalnumber = "12",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    portalnumber = "13",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    portalnumber = "14",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    portalnumber = "15",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    portalnumber = "16",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    origin = "526.558 -2788.97 241.786",
    targetname = "drip_normal",
    start_active = "1",
    effect_name = "env_rain_gutterdrip",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "1051609"
})

::info_particle_system1051543 <- SpawnEntityFromTable("info_particle_system", {
    origin = "526.558 -2788.97 247.786",
    targetname = "drip_storm",
    start_active = "0",
    effect_name = "env_rain_gutterdrip",
    angles = "-45 0 0",
    classname = "info_particle_system",
    hammerid = "1051543"
})

::env_soundscape1040851 <- SpawnEntityFromTable("env_soundscape", {
    origin = "-12.455 -1879.7 176",
    targetname = "soundscape_inside6",
    StartDisabled = "0",
    soundscape = "sawmill.inside",
    radius = "512",
    classname = "env_soundscape",
    hammerid = "1040851"
})

::env_soundscape1040827 <- SpawnEntityFromTable("env_soundscape", {
    origin = "167.046 -2996.93 196",
    targetname = "soundscape_inside6",
    StartDisabled = "0",
    soundscape = "sawmill.inside",
    radius = "256",
    classname = "env_soundscape",
    hammerid = "1040827"
})

::env_soundscape_proxy1040812 <- SpawnEntityFromTable("env_soundscape_proxy", {
    origin = "95.207 -3256 174.908",
    radius = "256",
    MainSoundscapeName = "soundscape_inside6",
    classname = "env_soundscape_proxy",
    hammerid = "1040812"
})

::env_soundscape1040715 <- SpawnEntityFromTable("env_soundscape", {
    origin = "393.654 -2904 190.944",
    targetname = "soundscape_inside6",
    StartDisabled = "0",
    soundscape = "sawmill.inside",
    radius = "256",
    classname = "env_soundscape",
    hammerid = "1040715"
})

::func_door1040631 <- SpawnEntityFromTable("func_door", {
    model = "*45",
    wait = "-1",
    vrad_brush_cast_shadows = "0",
    texframeindex = "0",
    targetname = "midblockerdoor",
    speed = "3000",
    spawnpos = "1",
    spawnflags = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "740 -1224 452",
    movedir = "90 0 0",
    loopmovesound = "0",
    lip = "-1000",
    ignoredebris = "0",
    forceclosed = "1",
    effects = "0",
    dmg = "1000",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_door",
    hammerid = "1040631",
    OnFullyClosed = "nav_interfaceRecomputeBlockers1-1",
    OnFullyOpen = "nav_interfaceRecomputeBlockers1-1",
    OnFullyClosed = "midroofToggle1-1",
    OnOpen = "midroofToggle0-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_door1040631.KeyValueFromInt("solid", 2)
func_door1040631.KeyValueFromString(""mins"", "-1 -1 -1")
func_door1040631.KeyValueFromString(""maxs"", "1 1 1")

::func_door1040423 <- SpawnEntityFromTable("func_door", {
    model = "*46",
    wait = "-1",
    vrad_brush_cast_shadows = "0",
    texframeindex = "0",
    targetname = "midblockerdoor",
    speed = "3000",
    spawnpos = "1",
    spawnflags = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "1504 -940 80.82",
    movedir = "90 0 0",
    loopmovesound = "0",
    lip = "-1000",
    ignoredebris = "0",
    forceclosed = "1",
    effects = "0",
    dmg = "1000",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_door",
    hammerid = "1040423",
    OnFullyOpen = "nav_interfaceRecomputeBlockers1-1",
    OnFullyClosed = "nav_interfaceRecomputeBlockers1-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_door1040423.KeyValueFromInt("solid", 2)
func_door1040423.KeyValueFromString(""mins"", "-1 -1 -1")
func_door1040423.KeyValueFromString(""maxs"", "1 1 1")

::info_player_teamspawn2596887 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "505.713 -5540.19 251.547",
    TeamNum = "0",
    targetname = "extrafrontspawnred",
    StartDisabled = "1",
    spawnflags = "511",
    angles = "0 0 0",
    classname = "info_player_teamspawn",
    hammerid = "2596887"
})

::prop_dynamic1040299 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "544.368 -1473.87 7.56396",
    texframeindex = "0",
    targetname = "midblockerdebris",
    StartDisabled = "1",
    spawnflags = "256",
    solid = "6",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_medical/beer_barrels.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "1",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "0 270 0",
    classname = "prop_dynamic",
    hammerid = "1040299"
})

::prop_dynamic1040282 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "1159 -903.017 4.25",
    texframeindex = "0",
    targetname = "midblockerbarrel2",
    StartDisabled = "1",
    spawnflags = "256",
    solid = "6",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_hydro/water_barrel_cluster3.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "0",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "1040282"
})

::env_soundscape_proxy2155490 <- SpawnEntityFromTable("env_soundscape_proxy", {
    origin = "382.925 -2792.51 180.521",
    radius = "223",
    MainSoundscapeName = "soundscape_outside1",
    classname = "env_soundscape_proxy",
    hammerid = "2155490"
})

::func_respawnroomvisualizer1029233 <- SpawnEntityFromTable("func_respawnroomvisualizer", {
    model = "*47",
    vrad_brush_cast_shadows = "0",
    TeamNum = "3",
    StartDisabled = "0",
    spawnflags = "2",
    Solidity = "1",
    solid_to_enemies = "1",
    respawnroomname = "respawn_bot",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "952 -5068 -48",
    InputFilter = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_respawnroomvisualizer",
    hammerid = "1029233",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_respawnroomvisualizer1029233.KeyValueFromInt("solid", 2)
func_respawnroomvisualizer1029233.KeyValueFromString(""mins"", "-1 -1 -1")
func_respawnroomvisualizer1029233.KeyValueFromString(""maxs"", "1 1 1")

::func_respawnroomvisualizer1029221 <- SpawnEntityFromTable("func_respawnroomvisualizer", {
    model = "*48",
    vrad_brush_cast_shadows = "0",
    StartDisabled = "0",
    spawnflags = "2",
    Solidity = "1",
    solid_to_enemies = "1",
    respawnroomname = "respawn_bot",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "772 -4352 368",
    InputFilter = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_respawnroomvisualizer",
    hammerid = "1029221",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_respawnroomvisualizer1029221.KeyValueFromInt("solid", 2)
func_respawnroomvisualizer1029221.KeyValueFromString(""mins"", "-1 -1 -1")
func_respawnroomvisualizer1029221.KeyValueFromString(""maxs"", "1 1 1")

::logic_relay986709 <- SpawnEntityFromTable("logic_relay", {
    portalnumber = "17",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    origin = "376 -2696 88",
    targetname = "wave_start_clusterfuck_relay",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "986709",
    OnTrigger = "bomb2Enable0-1",
    OnTrigger = "bomb3Enable0-1",
    OnTrigger = "bomb1_timedEnable0-1",
    OnTrigger = "bomb2_timedEnable0-1",
    OnTrigger = "bomb3_timedEnable0-1",
    OnTrigger = "bomb1Enable0-1",
    OnTrigger = "wave_start_relayTrigger0-1"
})

::logic_relay986625 <- SpawnEntityFromTable("logic_relay", {
    origin = "424 -2768 88",
    targetname = "wave_start_relay",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "986625",
    OnTrigger = "bombpath_arrows_clear_relayTrigger0-1",
    OnTrigger = "upgradestation_frontlineDisable0-1",
    OnTrigger = "door_upgradeClose0-1",
    OnTrigger = "particle_steam_whistle_redStop7-1",
    OnTrigger = "particle_steam_whistle_redStart0-1",
    OnTrigger = "sound_steam_whistle_redPlaySound0-1",
    OnTrigger = "sound_steam_whistle_redStopSound10-1"
})

::logic_relay986281 <- SpawnEntityFromTable("logic_relay", {
    origin = "472 -2720 88",
    targetname = "bombpath_arrows_left_relay",
    StartDisabled = "0",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "986281",
    OnTrigger = "arrows_allEnable0-1",
    OnTrigger = "arrows_path1Enable0-1",
    OnTrigger = "arrows_path2Disable0-1"
})

::logic_relay986253 <- SpawnEntityFromTable("logic_relay", {
    origin = "520 -2720 88",
    targetname = "bombpath_arrows_right_relay",
    StartDisabled = "0",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "986253",
    OnTrigger = "arrows_allEnable0-1",
    OnTrigger = "arrows_path1Disable0-1",
    OnTrigger = "arrows_path2Enable0-1"
})

::point_populator_interface986178 <- SpawnEntityFromTable("point_populator_interface", {
    origin = "-1800 -656 480",
    targetname = "pop_interface",
    classname = "point_populator_interface",
    hammerid = "986178"
})

::info_particle_system1073980 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-1840 -2816 1072",
    targetname = "rain_angledstorm",
    start_active = "0",
    effect_name = "env_rain_001",
    angles = "-45 0 0",
    classname = "info_particle_system",
    hammerid = "1073980"
})

::env_sprite1438435 <- SpawnEntityFromTable("env_sprite", {
    origin = "1572.08 558.321 423.75",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "1438435"
})

::env_sprite860981 <- SpawnEntityFromTable("env_sprite", {
    origin = "-264 240 416",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "860981"
})

::env_shake1076197 <- SpawnEntityFromTable("env_shake", {
    origin = "143.589 -2800 155.121",
    targetname = "stormshake",
    spawnflags = "21",
    radius = "9999",
    frequency = "40",
    duration = "999",
    angles = "0 0 0",
    amplitude = "1.3",
    classname = "env_shake",
    hammerid = "1076197"
})

::logic_relay974157 <- SpawnEntityFromTable("logic_relay", {
    origin = "312 -2720 88",
    targetname = "bomb_relay1",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "974157",
    OnTrigger = "bomb1Enable0-1",
    OnTrigger = "gamerulesPlayVOmisc/doomsday_lift_warning.wav0-1",
    OnTrigger = "gamerulesPlayVOvo/mvm_bomb_alerts02.mp31.5-1",
    OnTrigger = "gamerulesPlayVOmisc/doomsday_lift_start.wav0-1"
})

::logic_relay974155 <- SpawnEntityFromTable("logic_relay", {
    origin = "264 -2720 88",
    targetname = "bomb_timed_relay1",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "974155",
    OnTrigger = "bomb1_timedEnable0-1",
    OnTrigger = "gamerulesPlayVOmisc/doomsday_lift_warning.wav0-1",
    OnTrigger = "gamerulesPlayVOvo/mvm_another_bomb05.mp31.5-1",
    OnTrigger = "gamerulesPlayVOmisc/doomsday_lift_start.wav0-1"
})

::logic_relay963184 <- SpawnEntityFromTable("logic_relay", {
    origin = "392 -2720 88",
    targetname = "wave_start_1bomb_relay",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "963184",
    OnTrigger = "bomb2Disable0-1",
    OnTrigger = "bomb3Disable0-1",
    OnTrigger = "bomb1_timedDisable0-1",
    OnTrigger = "bomb2_timedDisable0-1",
    OnTrigger = "bomb3_timedDisable0-1",
    OnTrigger = "bomb1Enable0-1",
    OnTrigger = "wave_start_relayTrigger0-1"
})

::logic_relay963182 <- SpawnEntityFromTable("logic_relay", {
    origin = "392 -2744 88",
    targetname = "wave_start_2bomb_relay",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "963182",
    OnTrigger = "wave_start_relayTrigger0-1",
    OnTrigger = "bomb1Enable0-1",
    OnTrigger = "bomb3_timedDisable0-1",
    OnTrigger = "bomb2_timedDisable0-1",
    OnTrigger = "bomb1_timedDisable0-1",
    OnTrigger = "bomb3Disable0-1",
    OnTrigger = "bomb2Enable0-1"
})

::logic_relay963180 <- SpawnEntityFromTable("logic_relay", {
    origin = "392 -2768 88",
    targetname = "wave_start_3bomb_relay",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "963180",
    OnTrigger = "wave_start_relayTrigger0-1",
    OnTrigger = "bomb1Enable0-1",
    OnTrigger = "bomb3_timedDisable0-1",
    OnTrigger = "bomb2_timedDisable0-1",
    OnTrigger = "bomb1_timedDisable0-1",
    OnTrigger = "bomb3Enable0-1",
    OnTrigger = "bomb2Enable0-1"
})

::logic_relay963140 <- SpawnEntityFromTable("logic_relay", {
    origin = "264 -2768 88",
    targetname = "bomb_timed_relay3",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "963140",
    OnTrigger = "bomb3_timedEnable0-1",
    OnTrigger = "gamerulesPlayVOvo/mvm_another_bomb06.mp31.5-1",
    OnTrigger = "gamerulesPlayVOmisc/doomsday_lift_warning.wav0-1",
    OnTrigger = "gamerulesPlayVOmisc/doomsday_lift_start.wav0-1"
})

::logic_relay963138 <- SpawnEntityFromTable("logic_relay", {
    origin = "264 -2744 88",
    targetname = "bomb_timed_relay2",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "963138",
    OnTrigger = "bomb2_timedEnable0-1",
    OnTrigger = "gamerulesPlayVOmisc/doomsday_lift_warning.wav0-1",
    OnTrigger = "gamerulesPlayVOvo/mvm_another_bomb04.mp31.5-1",
    OnTrigger = "gamerulesPlayVOmisc/doomsday_lift_start.wav0-1"
})

::env_sprite860904 <- SpawnEntityFromTable("env_sprite", {
    origin = "-2640 -1640 384",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "860904"
})

::env_sprite860969 <- SpawnEntityFromTable("env_sprite", {
    origin = "-2608 -616 216",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "860969"
})

::light962893 <- SpawnEntityFromTable("light", {
    origin = "896 -1473.95 172.06",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light_spot962888 <- SpawnEntityFromTable("light_spot", {
    origin = "897 -1467 200",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 300 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::point_spotlight962886 <- SpawnEntityFromTable("point_spotlight", {
    origin = "897 -1467 207",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 300 -150",
     = "",
     = ""
})

::light952038 <- SpawnEntityFromTable("light", {
    origin = "1224 -2760 216",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_sprite952035 <- SpawnEntityFromTable("env_sprite", {
    origin = "1224 -2760 240",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "952035"
})

::light951963 <- SpawnEntityFromTable("light", {
    origin = "1224 -3152 408",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_sprite951960 <- SpawnEntityFromTable("env_sprite", {
    origin = "1224 -3176 408",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "951960"
})

::light951891 <- SpawnEntityFromTable("light", {
    origin = "392 -3344 160",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::prop_dynamic920734 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "2980 -1164 -82",
    texframeindex = "0",
    targetname = "minesign",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_medical/street_sign004.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "1",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "-22.5 180 0",
    classname = "prop_dynamic",
    hammerid = "920734"
})

::prop_dynamic920699 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "2987 -1164 -128",
    texframeindex = "0",
    targetname = "minesign",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_gameplay/sign_barricade001a.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "1",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "0 180 0",
    classname = "prop_dynamic",
    hammerid = "920699"
})

::func_respawnroomvisualizer920015 <- SpawnEntityFromTable("func_respawnroomvisualizer", {
    model = "*49",
    vrad_brush_cast_shadows = "0",
    StartDisabled = "0",
    spawnflags = "2",
    Solidity = "1",
    solid_to_enemies = "1",
    respawnroomname = "respawn_bot",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "344 -4964 224",
    InputFilter = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_respawnroomvisualizer",
    hammerid = "920015",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_respawnroomvisualizer920015.KeyValueFromInt("solid", 2)
func_respawnroomvisualizer920015.KeyValueFromString(""mins"", "-1 -1 -1")
func_respawnroomvisualizer920015.KeyValueFromString(""maxs"", "1 1 1")

::func_respawnroomvisualizer919993 <- SpawnEntityFromTable("func_respawnroomvisualizer", {
    model = "*50",
    vrad_brush_cast_shadows = "0",
    StartDisabled = "0",
    spawnflags = "2",
    Solidity = "1",
    solid_to_enemies = "1",
    respawnroomname = "respawn_bot",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "-1092 -4736 216",
    InputFilter = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_respawnroomvisualizer",
    hammerid = "919993",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_respawnroomvisualizer919993.KeyValueFromInt("solid", 2)
func_respawnroomvisualizer919993.KeyValueFromString(""mins"", "-1 -1 -1")
func_respawnroomvisualizer919993.KeyValueFromString(""maxs"", "1 1 1")

::func_respawnroomvisualizer919945 <- SpawnEntityFromTable("func_respawnroomvisualizer", {
    model = "*51",
    vrad_brush_cast_shadows = "0",
    StartDisabled = "0",
    spawnflags = "2",
    Solidity = "1",
    solid_to_enemies = "1",
    respawnroomname = "respawn_bot",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "-3196 -4832 96",
    InputFilter = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_respawnroomvisualizer",
    hammerid = "919945",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_respawnroomvisualizer919945.KeyValueFromInt("solid", 2)
func_respawnroomvisualizer919945.KeyValueFromString(""mins"", "-1 -1 -1")
func_respawnroomvisualizer919945.KeyValueFromString(""maxs"", "1 1 1")

::info_particle_system1073650 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-472 -4856 1072",
    targetname = "rain_angledstorm",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "-45 0 0",
    classname = "info_particle_system",
    hammerid = "1073650"
})

::prop_dynamic1975667 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "556.421 -1386.44 486.778",
    texframeindex = "0",
    targetname = "midblockerwindow",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_forest/sawmill_window1b.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "0",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "0 270 0",
    classname = "prop_dynamic",
    hammerid = "1975667"
})

::prop_dynamic1975729 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "590.921 -1384.25 215.767",
    texframeindex = "0",
    targetname = "midblockerwindow",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_doomsday/western_wood_door001.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "0",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "0 270 0",
    classname = "prop_dynamic",
    hammerid = "1975729"
})

::env_shake4114 <- SpawnEntityFromTable("env_shake", {
    origin = "-445.888 -238.907 65",
    targetname = "shakeit2",
    spawnflags = "21",
    radius = "50000",
    frequency = "40",
    duration = "999",
    angles = "0 0 0",
    amplitude = "1.5",
    classname = "env_shake",
    hammerid = "4114"
})

::prop_dynamic1975686 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "949.48 -1386.46 488.226",
    texframeindex = "0",
    targetname = "midblockerwindow",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_forest/sawmill_window1a.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "0",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "0 270 0",
    classname = "prop_dynamic",
    hammerid = "1975686"
})

::info_particle_system1073386 <- SpawnEntityFromTable("info_particle_system", {
    origin = "248 -568 1072",
    targetname = "rain_angledstorm",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "-45 0 0",
    classname = "info_particle_system",
    hammerid = "1073386"
})

::info_particle_system1681909 <- SpawnEntityFromTable("info_particle_system", {
    origin = "2493 -4981 -510.972",
    targetname = "drip_normal",
    start_active = "1",
    effect_name = "env_rain_guttersplash",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "1681909"
})

::info_particle_system1681977 <- SpawnEntityFromTable("info_particle_system", {
    origin = "2334 -4704 -511",
    targetname = "drip_normal",
    start_active = "1",
    effect_name = "env_rain_guttersplash",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "1681977"
})

::prop_dynamic1695742 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "2720.2 -4731.95 -426.305",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_2fort/lantern001.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 150 0",
    classname = "prop_dynamic",
    hammerid = "1695742"
})

::logic_relay1709608 <- SpawnEntityFromTable("logic_relay", {
    origin = "-256 -256 0",
    targetname = "spawncrystals",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "1709608",
    OnTrigger = "gamerulesRunScriptCodeClientPrintSafe(null, `^1337ADRespawn crystals spawning soon...^`)0-1",
    OnTrigger = "door_red*Close0-1",
    OnTrigger = "afkslayEnable0-1",
    OnTrigger = "gamerulesRunScriptCodeClientPrint(null, 4 , `Respawn crystals spawned!`)20-1",
    OnTrigger = "gamerulesRunScriptCodeClientPrintSafe(null, `^1337ADRespawn crystals spawned! ^`)20-1",
    OnTrigger = "gamerulesPlayVOBluehl1/fvox/bell.wav20-1",
    OnTrigger = "func_rotatingStart20-1",
    OnTrigger = "crystal*Enable20-1",
    OnTrigger = "lighttrigger*Enable20-1"
})

::func_respawnroom1750244 <- SpawnEntityFromTable("func_respawnroom", {
    model = "*52",
    TeamNum = "3",
    targetname = "respawn_bot",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "1208 -5012 -72.01",
    angles = "0 0 0",
    classname = "func_respawnroom",
    hammerid = "1750244",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_respawnroom1750244.KeyValueFromInt("solid", 2)
func_respawnroom1750244.KeyValueFromString(""mins"", "-1 -1 -1")
func_respawnroom1750244.KeyValueFromString(""maxs"", "1 1 1")

::item_teamflag1750367 <- SpawnEntityFromTable("item_teamflag", {
    origin = "945.91 -5263.66 -149.328",
    trail_effect = "1",
    TeamNum = "3",
    targetname = "bomb1_timed",
    StartDisabled = "1",
    ScoringType = "0",
    ReturnTime = "60",
    ReturnBetweenWaves = "1",
    rendercolor = "255 255 255",
    renderamt = "255",
    PointValue = "1",
    physdamagescale = "1.0",
    NeutralType = "1",
    modelscale = "1.0",
    GameType = "1",
    flag_trail = "flagtrail",
    flag_paper = "player_intel_papertrail",
    flag_model = "models/props_td/atom_bomb.mdl",
    flag_icon = "../hud/objectives_flagpanel_carried",
    fadescale = "1.0",
    fademindist = "-1",
    angles = "0 180 0",
    classname = "item_teamflag",
    hammerid = "1750367",
    OnPickupTeam1 = "!selfForceResetSilent0-1",
    OnPickupTeam1 = "!selfSetTeam30-1"
})

::func_respawnroom1763899 <- SpawnEntityFromTable("func_respawnroom", {
    model = "*53",
    TeamNum = "2",
    targetname = "respawn_red",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "-3512.02 -348.58 0",
    angles = "0 0 0",
    classname = "func_respawnroom",
    hammerid = "1763899",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_respawnroom1763899.KeyValueFromInt("solid", 2)
func_respawnroom1763899.KeyValueFromString(""mins"", "-1 -1 -1")
func_respawnroom1763899.KeyValueFromString(""maxs"", "1 1 1")

::filter_tf_bot_has_tag1777643 <- SpawnEntityFromTable("filter_tf_bot_has_tag", {
    origin = "-3673.07 -888 48.5515",
    targetname = "filter_bluebot",
    tags = "bluebot",
    require_all_tags = "1",
    Negated = "Allow entities that match criteria",
    classname = "filter_tf_bot_has_tag",
    hammerid = "1777643"
})

::env_fog_controller4111 <- SpawnEntityFromTable("env_fog_controller", {
    origin = "-320 -256 80",
    targetname = "mist",
    spawnflags = "1",
    fogstart = "30",
    fogmaxdensity = "1",
    foglerptime = "2",
    fogend = "2000",
    fogenable = "0",
    fogdir = "1 0 0",
    fogcolor2 = "77 82 71",
    fogcolor = "77 82 71",
    fogblend = "1",
    farz = "2000",
    angles = "0 0 0",
    classname = "env_fog_controller",
    hammerid = "4111"
})

::info_particle_system1073848 <- SpawnEntityFromTable("info_particle_system", {
    origin = "352 -5368 1072",
    targetname = "rain_angledstorm",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "-45 0 0",
    classname = "info_particle_system",
    hammerid = "1073848"
})

::info_particle_system1073914 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-1488 -4408 1072",
    targetname = "rain_angledstorm",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "-45 0 0",
    classname = "info_particle_system",
    hammerid = "1073914"
})

::info_particle_system1073782 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-1840 -3488 1072",
    targetname = "rain_angledstorm",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "-45 0 0",
    classname = "info_particle_system",
    hammerid = "1073782"
})

::info_particle_system1074574 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-2056 -312 1072",
    targetname = "rain_angledstorm",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "-45 0 0",
    classname = "info_particle_system",
    hammerid = "1074574"
})

::info_particle_system1074813 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-522 -568 1072",
    targetname = "rain_angledstorm",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "-45 0 0",
    classname = "info_particle_system",
    hammerid = "1074813"
})

::info_particle_system1074376 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-2056 696 1072",
    targetname = "rain_angledstorm",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "-45 0 0",
    classname = "info_particle_system",
    hammerid = "1074376"
})

::info_particle_system1074244 <- SpawnEntityFromTable("info_particle_system", {
    origin = "1144 -2728 1072",
    targetname = "rain_angledstorm",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "-45 0 0",
    classname = "info_particle_system",
    hammerid = "1074244"
})

::info_particle_system1073716 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-472 -3976 1072",
    targetname = "rain_angledstorm",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "-45 0 0",
    classname = "info_particle_system",
    hammerid = "1073716"
})

::info_player_teamspawn1234384 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "1377.49 -1548.36 16",
    TeamNum = "0",
    targetname = "frontspawnbarricade",
    StartDisabled = "1",
    spawnflags = "511",
    angles = "0 0 0",
    classname = "info_player_teamspawn",
    hammerid = "1234384"
})

::point_worldtext1791383 <- SpawnEntityFromTable("point_worldtext", {
    origin = "1745 -4745.33 365.999",
    textspacingy = "14",
    textsize = "5",
    targetname = "commandhint",
    rainbow = "0",
    orientation = "0",
    message = "glow_outline_effect_enable 1: heavily used effect in this mission",
    r_dynamic = "0: Disables crystal lighting",
    cl_mvm_wave_status_visible_during_wave = "1: self-explanatory",
    +use_action_slot_item = - Bind this to a better key, used to interact with buttons.",
    font = "11",
    angles = "0 180 0",
    classname = "point_worldtext",
    hammerid = "1791383"
})

::tf_glow1723124 <- SpawnEntityFromTable("tf_glow", {
    origin = "2146.42 -4354.24 320",
    targetname = "tutorialglow2",
    target = "tutorialhint",
    StartDisabled = "1",
    Mode = "2",
    GlowColor = "3 128 0 255",
    classname = "tf_glow",
    hammerid = "1723124"
})

::prop_dynamic1695755 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "1874.99 -4633.17 -454.592",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_2fort/lantern001.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "-75 180 0",
    classname = "prop_dynamic",
    hammerid = "1695755"
})

::func_breakable1234100 <- SpawnEntityFromTable("func_breakable", {
    model = "*54",
    targetname = "PT_ROCKBREAKABLE",
    spawnflags = "3072",
    rendercolor = "255 255 255",
    renderamt = "255",
    propdata = "Stone.Large",
    physdamagescale = "1.0",
    origin = "1201.5 -4364 405.94",
    max_health = "500",
    material = "8",
    health = "500",
    gibdir = "0 0 0",
    explosion = "0",
    explodemagnitude = "0",
    angles = "0 0 0",
    classname = "func_breakable",
    hammerid = "1234100",
    OnBreak = "gamerulesPlayVOmusic/hl2_song8.mp32-1",
    OnBreak = "truckfireStart0-1",
    OnBreak = "tutorial*Kill0-1",
    OnBreak = "PT_ROCKKill0-1",
    OnBreak = "rockhintKill0-1",
    OnBreak = "ccspawnEnable0-1",
    OnBreak = "glow1*Enable3-1",
    OnBreak = "glow1*Kill40-1",
    OnBreak = "playerSetFogControllermist0.01-1",
    OnBreak = "mistTurnOn0-1",
    OnBreak = "ccvolumeEnable0-1",
    OnBreak = "spawnteleDisable0-1",
    OnBreak = "spawnportalOpen0-1",
    OnBreak = "gamerulesRunScriptCodeAnnotations(2)3-1",
    OnBreak = "gamerulesRunScriptCodeSetTurretState(0)0-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_breakable1234100.KeyValueFromInt("solid", 2)
func_breakable1234100.KeyValueFromString(""mins"", "-1 -1 -1")
func_breakable1234100.KeyValueFromString(""maxs"", "1 1 1")

::logic_case4113 <- SpawnEntityFromTable("logic_case", {
    origin = "-336 -256 64",
    targetname = "windshuffle",
    classname = "logic_case",
    hammerid = "4113",
    OnCase14 = "tf_gamerulesPlayVOambient/wind_gust2.wav0-1",
    OnCase13 = "tf_gamerulesPlayVOambient/wind_gust1.wav0-1",
    OnCase12 = "tf_gamerulesPlayVOambient/wind/wind_snippet1.wav0-1",
    OnCase11 = "tf_gamerulesPlayVOambient/wind/wind_snippet2.wav0-1",
    OnCase10 = "tf_gamerulesPlayVOambient/wind/wind_snippet3.wav0-1",
    OnCase09 = "tf_gamerulesPlayVOambient/wind/wind_hit3.wav0-1",
    OnCase08 = "tf_gamerulesPlayVOambient/wind/wind_hit2.wav0-1",
    OnCase07 = "tf_gamerulesPlayVOambient/wind/wind_hit1.wav0-1",
    OnCase06 = "tf_gamerulesPlayVOambient/wind/wind_med2.wav0-1",
    OnCase05 = "tf_gamerulesPlayVOambient/wind/wind_med1.wav0-1",
    OnCase04 = "tf_gamerulesPlayVOambient/wind/wind_med1.wav0-1",
    OnCase03 = "tf_gamerulesPlayVOambient/wind/windgust_strong.wav0-1",
    OnCase02 = "tf_gamerulesPlayVOambient/wind_gust1.wav0-1",
    OnCase01 = "tf_gamerulesPlayVOambient/atmosphere/terrain_rumble1.wav0-1"
})

::env_fog_controller4112 <- SpawnEntityFromTable("env_fog_controller", {
    origin = "-336 -256 80",
    targetname = "mist2",
    spawnflags = "1",
    fogstart = "30",
    fogmaxdensity = "1",
    foglerptime = "2",
    fogend = "800",
    fogenable = "0",
    fogdir = "1 0 0",
    fogcolor2 = "77 82 71",
    fogcolor = "77 82 71",
    fogblend = "1",
    farz = "800",
    angles = "0 0 0",
    classname = "env_fog_controller",
    hammerid = "4112"
})

::prop_dynamic1975805 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "870.33 -1061.22 465.105",
    texframeindex = "0",
    targetname = "midblockerwindow",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_forest/sawmill_window1c.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "0",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "0 90 0",
    classname = "prop_dynamic",
    hammerid = "1975805"
})

::light_spot1942137 <- SpawnEntityFromTable("light_spot", {
    origin = "-2864 -452.163 -2700",
    pitch = "-90",
    angles = "-90 0 0",
    _quadratic_attn = "0",
    _linear_attn = "1",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _inner_cone = "45",
    _exponent = "1",
    _cone = "60",
     = "",
     = ""
})

::light_spot1942153 <- SpawnEntityFromTable("light_spot", {
    origin = "-2016 -688 -2700",
    pitch = "-90",
    angles = "-90 0 0",
    _quadratic_attn = "0",
    _linear_attn = "1",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _inner_cone = "45",
    _exponent = "1",
    _cone = "60",
     = "",
     = ""
})

::light_spot1942165 <- SpawnEntityFromTable("light_spot", {
    origin = "-1700 528 -2700",
    pitch = "-90",
    angles = "-90 0 0",
    _quadratic_attn = "0",
    _linear_attn = "1",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _inner_cone = "45",
    _exponent = "1",
    _cone = "60",
     = "",
     = ""
})

::light_spot1959729 <- SpawnEntityFromTable("light_spot", {
    origin = "-1371.88 -1095.65 -2875.41",
    pitch = "-18.657",
    angles = "-18.657 128.488 -8.04194",
    _quadratic_attn = "0",
    _linear_attn = "1",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _inner_cone = "30",
    _exponent = "30",
    _cone = "32",
     = "",
     = ""
})

::light_spot1942159 <- SpawnEntityFromTable("light_spot", {
    origin = "-1252 -1044 -2700",
    pitch = "-90",
    angles = "-90 0 0",
    _quadratic_attn = "0",
    _linear_attn = "1",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _inner_cone = "45",
    _exponent = "1",
    _cone = "60",
     = "",
     = ""
})

::light_spot1942171 <- SpawnEntityFromTable("light_spot", {
    origin = "-896 980 -2552",
    pitch = "-90",
    angles = "-90 0 0",
    _quadratic_attn = "0",
    _linear_attn = "1",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _inner_cone = "45",
    _exponent = "1",
    _cone = "60",
     = "",
     = ""
})

::point_spotlight1958988 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-3662.53 550.182 -2943.9",
    spotlightwidth = "32",
    spotlightlength = "512",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "242 180 96 200",
    renderamt = "255",
    mindxlevel = "0",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "22.616 346.497 4.68512",
     = "",
     = ""
})

::point_spotlight1960368 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-2795.21 1417.44 -2709.41",
    spotlightwidth = "32",
    spotlightlength = "512",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "242 180 96 200",
    renderamt = "255",
    mindxlevel = "0",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "22.616 316.497 4.68512",
     = "",
     = ""
})

::light_spot1942195 <- SpawnEntityFromTable("light_spot", {
    origin = "-3004 -1144 -2700",
    pitch = "-90",
    angles = "-90 0 0",
    _quadratic_attn = "0",
    _linear_attn = "1",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _inner_cone = "45",
    _exponent = "1",
    _cone = "60",
     = "",
     = ""
})

::point_spotlight1959726 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-1369.18 -1097.9 -2873.15",
    spotlightwidth = "32",
    spotlightlength = "512",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "242 180 96 200",
    renderamt = "255",
    mindxlevel = "0",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "22.616 121.497 4.68512",
     = "",
     = ""
})

::info_particle_system1051703 <- SpawnEntityFromTable("info_particle_system", {
    origin = "600 -2790 9.02827",
    targetname = "drip_storm",
    start_active = "0",
    effect_name = "env_rain_guttersplash",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "1051703"
})

::info_particle_system1073254 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-2056 -1320 1072",
    targetname = "rain_angledstorm",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "-45 0 0",
    classname = "info_particle_system",
    hammerid = "1073254"
})

::env_soundscape1062527 <- SpawnEntityFromTable("env_soundscape", {
    origin = "2053.4 -4477.84 399",
    targetname = "soundscape_botcave",
    soundscape = "Nightfall.Cavern",
    radius = "578",
    classname = "env_soundscape",
    hammerid = "1062527"
})

::func_brush1062357 <- SpawnEntityFromTable("func_brush", {
    model = "*55",
    vrad_brush_cast_shadows = "0",
    texframeindex = "0",
    targetname = "midblockerwall",
    StartDisabled = "1",
    spawnflags = "2",
    Solidity = "0",
    solidbsp = "0",
    rendermode = "10",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "740 -1224 576",
    invert_exclusion = "0",
    effects = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_brush",
    hammerid = "1062357",
    OnFullyClosed = "nav_interfaceRecomputeBlockers1-1",
    OnFullyOpen = "nav_interfaceRecomputeBlockers1-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_brush1062357.KeyValueFromInt("solid", 2)
func_brush1062357.KeyValueFromString(""mins"", "-1 -1 -1")
func_brush1062357.KeyValueFromString(""maxs"", "1 1 1")

::info_player_teamspawn1942111 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "-2908.41 -2493.93 -3196",
    TeamNum = "0",
    targetname = "boss_fight_support",
    spawnflags = "511",
    angles = "0 0 0",
    classname = "info_player_teamspawn",
    hammerid = "1942111"
})

::info_player_teamspawn1942117 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "-3738.09 -387.33 -3246.26",
    TeamNum = "0",
    targetname = "boss_fight_dude",
    spawnflags = "511",
    angles = "0 0 0",
    classname = "info_player_teamspawn",
    hammerid = "1942117"
})

::func_dustcloud1961208 <- SpawnEntityFromTable("func_dustcloud", {
    model = "*56",
    targetname = "dustclouds",
    SpeedMax = "1",
    SpawnRate = "50",
    SizeMin = "100",
    SizeMax = "200",
    LifetimeMin = "3",
    LifetimeMax = "8",
    Frozen = "0",
    FallSpeed = "50",
    DistMax = "1024",
    Color = "42 21 11",
    angles = "0 0 0",
    Alpha = "250",
    classname = "func_dustcloud",
    hammerid = "1961208",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_dustcloud1961208.KeyValueFromInt("solid", 2)
func_dustcloud1961208.KeyValueFromString(""mins"", "-1 -1 -1")
func_dustcloud1961208.KeyValueFromString(""maxs"", "1 1 1")

::light1920122 <- SpawnEntityFromTable("light", {
    origin = "-1533.32 -415.589 -3287.75",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 120",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_sprite951884 <- SpawnEntityFromTable("env_sprite", {
    origin = "392 -3328 160",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "951884"
})

::light951831 <- SpawnEntityFromTable("light", {
    origin = "1224 -2352 408",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_sprite951824 <- SpawnEntityFromTable("env_sprite", {
    origin = "1224 -2336 408",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "951824"
})

::light951402 <- SpawnEntityFromTable("light", {
    origin = "-544 -3856 181",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light_spot951397 <- SpawnEntityFromTable("light_spot", {
    origin = "-540 -3857 210",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 210 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::point_spotlight951391 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-539 -3857 217.957",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 210 -150",
     = "",
     = ""
})

::light951247 <- SpawnEntityFromTable("light", {
    origin = "576 -232 148",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light_spot951242 <- SpawnEntityFromTable("light_spot", {
    origin = "571 -231 177",
    spawnflags = "0",
    pitch = "-86",
    angles = "-86 30 150",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::point_spotlight951236 <- SpawnEntityFromTable("point_spotlight", {
    origin = "571 -231 185",
    spotlightwidth = "80",
    spotlightlength = "180",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 238 168",
    renderamt = "255",
    mindxlevel = "90",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "86 30 -150",
     = "",
     = ""
})

::light951173 <- SpawnEntityFromTable("light", {
    origin = "-1448 352 336",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_sprite951166 <- SpawnEntityFromTable("env_sprite", {
    origin = "-1448 368 336",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "951166"
})

::light_spot1942189 <- SpawnEntityFromTable("light_spot", {
    origin = "-3768 -676 -2700",
    pitch = "-90",
    angles = "-90 0 0",
    _quadratic_attn = "0",
    _linear_attn = "1",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _inner_cone = "45",
    _exponent = "1",
    _cone = "60",
     = "",
     = ""
})

::func_flagdetectionzone1961168 <- SpawnEntityFromTable("func_flagdetectionzone", {
    model = "*57",
    TeamNum = "0",
    StartDisabled = "0",
    origin = "-2535.98 896 -4240",
    angles = "0 0 0",
    alarm = "0",
    classname = "func_flagdetectionzone",
    hammerid = "1961168",
    OnStartTouchFlag = "deathpit_bomb_relayTrigger0-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_flagdetectionzone1961168.KeyValueFromInt("solid", 2)
func_flagdetectionzone1961168.KeyValueFromString(""mins"", "-1 -1 -1")
func_flagdetectionzone1961168.KeyValueFromString(""maxs"", "1 1 1")

::point_spotlight1960357 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-2828.53 1410.54 -2709.41",
    spotlightwidth = "32",
    spotlightlength = "512",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "242 180 96 200",
    renderamt = "255",
    mindxlevel = "0",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "22.616 241.497 4.68512",
     = "",
     = ""
})

::light_spot1960349 <- SpawnEntityFromTable("light_spot", {
    origin = "-2829.12 1407.08 -2711.67",
    pitch = "-18.657",
    angles = "-18.657 248.488 -8.04194",
    _quadratic_attn = "0",
    _linear_attn = "1",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _inner_cone = "30",
    _exponent = "30",
    _cone = "32",
     = "",
     = ""
})

::point_spotlight1959715 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-1335.21 -1099.85 -2873.15",
    spotlightwidth = "32",
    spotlightlength = "512",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "242 180 96 200",
    renderamt = "255",
    mindxlevel = "0",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "22.616 46.497 4.68512",
     = "",
     = ""
})

::light_spot1959707 <- SpawnEntityFromTable("light_spot", {
    origin = "-1333.74 -1096.66 -2875.41",
    pitch = "-18.657",
    angles = "-18.657 53.488 -8.04194",
    _quadratic_attn = "0",
    _linear_attn = "1",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _inner_cone = "30",
    _exponent = "30",
    _cone = "32",
     = "",
     = ""
})

::light_spot1959243 <- SpawnEntityFromTable("light_spot", {
    origin = "-785.877 -57.101 -2608.11",
    pitch = "-18.657",
    angles = "-18.657 218.488 -8.04194",
    _quadratic_attn = "0",
    _linear_attn = "1",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _inner_cone = "30",
    _exponent = "30",
    _cone = "32",
     = "",
     = ""
})

::point_spotlight1959240 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-783.631 -54.395 -2605.85",
    spotlightwidth = "32",
    spotlightlength = "512",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "242 180 96 200",
    renderamt = "255",
    mindxlevel = "0",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "22.616 211.497 4.68512",
     = "",
     = ""
})

::point_spotlight1959229 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-781.673 -20.426 -2605.85",
    spotlightwidth = "32",
    spotlightlength = "512",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "242 180 96 200",
    renderamt = "255",
    mindxlevel = "0",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "22.616 136.497 4.68512",
     = "",
     = ""
})

::light_spot1959221 <- SpawnEntityFromTable("light_spot", {
    origin = "-784.868 -18.956 -2608.11",
    pitch = "-18.657",
    angles = "-18.657 143.488 -8.04194",
    _quadratic_attn = "0",
    _linear_attn = "1",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _inner_cone = "30",
    _exponent = "30",
    _cone = "32",
     = "",
     = ""
})

::light_spot1958980 <- SpawnEntityFromTable("light_spot", {
    origin = "-3659.03 550.507 -2946.16",
    pitch = "-18.657",
    angles = "-18.657 353.488 -8.04194",
    _quadratic_attn = "0",
    _linear_attn = "1",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _inner_cone = "30",
    _exponent = "30",
    _cone = "32",
     = "",
     = ""
})

::point_spotlight1958925 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-3687.93 527.546 -2943.9",
    spotlightwidth = "32",
    spotlightlength = "512",
    spawnflags = "3",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "242 180 96 200",
    renderamt = "255",
    mindxlevel = "0",
    maxdxlevel = "0",
    IgnoreSolid = "0",
    HDRColorScale = "1.0",
    disablereceiveshadows = "0",
    angles = "22.616 271.497 4.68512",
     = "",
     = ""
})

::light_spot1958917 <- SpawnEntityFromTable("light_spot", {
    origin = "-3686.71 524.248 -2946.16",
    pitch = "-18.657",
    angles = "-18.657 278.488 -8.04194",
    _quadratic_attn = "0",
    _linear_attn = "1",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _inner_cone = "30",
    _exponent = "30",
    _cone = "32",
     = "",
     = ""
})

::light_spot1957252 <- SpawnEntityFromTable("light_spot", {
    origin = "-2061.18 -601.455 -333.169",
    pitch = "-90",
    angles = "-90 0 0",
    _quadratic_attn = "0",
    _linear_attn = "1",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _inner_cone = "45",
    _exponent = "1",
    _cone = "60",
     = "",
     = ""
})

::keyframe_rope1936807 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-2688 704 -3272",
    Width = "2",
    TextureScale = "1",
    targetname = "cavern_lift_rope_b2",
    Subdiv = "2",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    MoveSpeed = "64",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "1936807"
})

::item_teamflag1874392 <- SpawnEntityFromTable("item_teamflag", {
    origin = "-3769.63 -588.494 -120.668",
    trail_effect = "1",
    TeamNum = "2",
    targetname = "bomb3_timed",
    StartDisabled = "0",
    ScoringType = "0",
    ReturnTime = "10",
    ReturnBetweenWaves = "1",
    rendercolor = "255 255 255",
    renderamt = "255",
    PointValue = "1",
    physdamagescale = "1.0",
    NeutralType = "1",
    modelscale = "0.001",
    GameType = "1",
    flag_trail = "flagtrail",
    flag_paper = "player_intel_papertrail",
    flag_model = "models/props_td/atom_bomb.mdl",
    flag_icon = "../hud/objectives_flagpanel_carried",
    fadescale = "1.0",
    fademindist = "-1",
    angles = "0 180 0",
    classname = "item_teamflag",
    hammerid = "1874392"
})

::info_player_teamspawn475975 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "288 -6264 440",
    TeamNum = "3",
    targetname = "spawnbot",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "475975"
})

::func_brush1860326 <- SpawnEntityFromTable("func_brush", {
    model = "*58",
    vrad_brush_cast_shadows = "0",
    texframeindex = "0",
    targetname = "doorbrush3",
    StartDisabled = "0",
    spawnflags = "2",
    Solidity = "1",
    solidbsp = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "-516.17 -321.95 288",
    invert_exclusion = "0",
    effects = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_brush",
    hammerid = "1860326",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_brush1860326.KeyValueFromInt("solid", 2)
func_brush1860326.KeyValueFromString(""mins"", "-1 -1 -1")
func_brush1860326.KeyValueFromString(""maxs"", "1 1 1")

::func_areaportalwindow1860322 <- SpawnEntityFromTable("func_areaportalwindow", {
    portalnumber = "18",
    TranslucencyLimit = "0.0",
    target = "doorbrush3",
    PortalVersion = "1",
    FadeStartDist = "1024",
    FadeDist = "4096",
    classname = "func_areaportalwindow",
    hammerid = "1860322",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_areaportalwindow1860322.KeyValueFromInt("solid", 2)
func_areaportalwindow1860322.KeyValueFromString(""mins"", "-1 -1 -1")
func_areaportalwindow1860322.KeyValueFromString(""maxs"", "1 1 1")

::func_brush1860207 <- SpawnEntityFromTable("func_brush", {
    model = "*59",
    vrad_brush_cast_shadows = "0",
    texframeindex = "0",
    targetname = "doorbrush2",
    StartDisabled = "0",
    spawnflags = "2",
    Solidity = "1",
    solidbsp = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "-520.17 156.02 272",
    invert_exclusion = "0",
    effects = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_brush",
    hammerid = "1860207",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_brush1860207.KeyValueFromInt("solid", 2)
func_brush1860207.KeyValueFromString(""mins"", "-1 -1 -1")
func_brush1860207.KeyValueFromString(""maxs"", "1 1 1")

::func_areaportalwindow1860203 <- SpawnEntityFromTable("func_areaportalwindow", {
    portalnumber = "19",
    TranslucencyLimit = "0.0",
    target = "doorbrush2",
    PortalVersion = "1",
    FadeStartDist = "1024",
    FadeDist = "2048",
    classname = "func_areaportalwindow",
    hammerid = "1860203",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_areaportalwindow1860203.KeyValueFromInt("solid", 2)
func_areaportalwindow1860203.KeyValueFromString(""mins"", "-1 -1 -1")
func_areaportalwindow1860203.KeyValueFromString(""maxs"", "1 1 1")

::func_areaportalwindow1860142 <- SpawnEntityFromTable("func_areaportalwindow", {
    portalnumber = "20",
    TranslucencyLimit = "0.0",
    target = "doorbrush",
    PortalVersion = "1",
    FadeStartDist = "1024",
    FadeDist = "2048",
    classname = "func_areaportalwindow",
    hammerid = "1860142",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_areaportalwindow1860142.KeyValueFromInt("solid", 2)
func_areaportalwindow1860142.KeyValueFromString(""mins"", "-1 -1 -1")
func_areaportalwindow1860142.KeyValueFromString(""maxs"", "1 1 1")

::func_brush1860113 <- SpawnEntityFromTable("func_brush", {
    model = "*60",
    vrad_brush_cast_shadows = "0",
    texframeindex = "0",
    targetname = "doorbrush",
    StartDisabled = "0",
    spawnflags = "2",
    Solidity = "1",
    solidbsp = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "-4 -28 272",
    invert_exclusion = "0",
    effects = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_brush",
    hammerid = "1860113",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_brush1860113.KeyValueFromInt("solid", 2)
func_brush1860113.KeyValueFromString(""mins"", "-1 -1 -1")
func_brush1860113.KeyValueFromString(""maxs"", "1 1 1")

::light879179 <- SpawnEntityFromTable("light", {
    origin = "-192 -4680 16",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::info_player_teamspawn1941838 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "-4094.7 1266.49 -3288",
    TeamNum = "0",
    targetname = "boss_fight_support",
    spawnflags = "511",
    angles = "0 270 0",
    classname = "info_player_teamspawn",
    hammerid = "1941838"
})

::info_player_teamspawn1941826 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "-2512 1960 -3035",
    TeamNum = "0",
    targetname = "boss_fight_support",
    spawnflags = "511",
    angles = "0 180 0",
    classname = "info_player_teamspawn",
    hammerid = "1941826"
})

::prop_dynamic1920114 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-1533.32 -415.589 -3295.75",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_2fort/lantern001.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 45 0",
    classname = "prop_dynamic",
    hammerid = "1920114"
})

::prop_dynamic1940472 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-3703 558 -3172.25",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mining/tunnel_truss03c.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 45 0",
    classname = "prop_dynamic",
    hammerid = "1940472"
})

::prop_dynamic1940448 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-2505 -1640 -2908.25",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mining/tunnel_truss03c.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "1940448"
})

::info_player_teamspawn1942105 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "-2144.79 -2487.11 -3196",
    TeamNum = "0",
    targetname = "boss_fight_support",
    spawnflags = "511",
    angles = "0 180 0",
    classname = "info_player_teamspawn",
    hammerid = "1942105"
})

::prop_dynamic1939814 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-2814 1440.05 -3134",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mining/tunnel_truss03c.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 180 -180",
    classname = "prop_dynamic",
    hammerid = "1939814"
})

::prop_dynamic1939715 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-2816 1440.05 -2887",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mining/tunnel_truss03c.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "1939715"
})

::keyframe_rope1936800 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-2688 704 -2848.3",
    Width = "2",
    TextureScale = "1",
    targetname = "cavern_lift_rope_b1",
    Subdiv = "2",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NextKey = "cavern_lift_rope_b2",
    MoveSpeed = "64",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "1936800"
})

::keyframe_rope1936750 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-2944 704 -3272",
    Width = "2",
    TextureScale = "1",
    targetname = "cavern_lift_rope_a2",
    Subdiv = "2",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    MoveSpeed = "64",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "1936750"
})

::keyframe_rope1936741 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-2944 704 -2848.3",
    Width = "2",
    TextureScale = "1",
    targetname = "cavern_lift_rope_a1",
    Subdiv = "2",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NextKey = "cavern_lift_rope_a2",
    MoveSpeed = "64",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "1936741"
})

::light_spot1960371 <- SpawnEntityFromTable("light_spot", {
    origin = "-2792.02 1415.97 -2711.67",
    pitch = "-18.657",
    angles = "-18.657 323.488 -8.04194",
    _quadratic_attn = "0",
    _linear_attn = "1",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _inner_cone = "30",
    _exponent = "30",
    _cone = "32",
     = "",
     = ""
})

::trigger_hurt1961171 <- SpawnEntityFromTable("trigger_hurt", {
    model = "*61",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "-2791.98 640 -4244",
    nodmgforce = "1",
    damagetype = "32",
    damagemodel = "0",
    damagecap = "99999",
    damage = "99999",
    angles = "0 0 0",
    classname = "trigger_hurt",
    hammerid = "1961171",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
trigger_hurt1961171.KeyValueFromInt("solid", 2)
trigger_hurt1961171.KeyValueFromString(""mins"", "-1 -1 -1")
trigger_hurt1961171.KeyValueFromString(""maxs"", "1 1 1")

::func_brush1920151 <- SpawnEntityFromTable("func_brush", {
    model = "*62",
    vrad_brush_cast_shadows = "0",
    texframeindex = "0",
    targetname = "hatch_cover",
    StartDisabled = "0",
    spawnflags = "2",
    Solidity = "0",
    solidbsp = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "-2088 -608 9",
    invert_exclusion = "0",
    effects = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_brush",
    hammerid = "1920151",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_brush1920151.KeyValueFromInt("solid", 2)
func_brush1920151.KeyValueFromString(""mins"", "-1 -1 -1")
func_brush1920151.KeyValueFromString(""maxs"", "1 1 1")

::func_brush1915385 <- SpawnEntityFromTable("func_brush", {
    model = "*63",
    vrad_brush_cast_shadows = "0",
    texframeindex = "0",
    targetname = "hatchdrop",
    StartDisabled = "0",
    spawnflags = "2",
    Solidity = "1",
    solidbsp = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "-2080 -604 -324",
    invert_exclusion = "0",
    effects = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_brush",
    hammerid = "1915385",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_brush1915385.KeyValueFromInt("solid", 2)
func_brush1915385.KeyValueFromString(""mins"", "-1 -1 -1")
func_brush1915385.KeyValueFromString(""maxs"", "1 1 1")

::env_sprite1920118 <- SpawnEntityFromTable("env_sprite", {
    origin = "-1533.32 -415.589 -3287.75",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "242 180 96",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "1920118"
})

::func_respawnroom585251 <- SpawnEntityFromTable("func_respawnroom", {
    portalnumber = "21",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    occludernumber = "1",
    model = "",
    StartActive = "1",
     = "",
     = "",
     = "",
     = "",
    portalnumber = "22",
    targetname = "spawnportal",
    StartOpen = "0",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    occludernumber = "2",
    model = "",
    StartActive = "1",
     = "",
     = "",
     = "",
     = "",
    occludernumber = "3",
    model = "",
    targetname = "frontoccluder",
    StartActive = "1",
     = "",
     = "",
     = "",
     = "",
    occludernumber = "4",
    model = "",
    targetname = "frontoccluder",
    StartActive = "1",
     = "",
     = "",
     = "",
     = "",
    model = "*64",
    TeamNum = "3",
    targetname = "respawn_bot",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "1641 -4392 372",
    angles = "0 0 0",
    classname = "func_respawnroom",
    hammerid = "585251",
    OnStartTouch = "!activatorRunScriptCodeself.AddCustomAttribute(`no_attack`, 1 , 0)0-1",
    OnStartTouch = "!activatorRunScriptCodeself.AddCond(51)0-1",
    OnEndTouch = "!activatorRunScriptCodeself.RemoveCustomAttribute(`no_attack`)0-1",
    OnEndTouch = "!activatorRunScriptCodeself.RemoveCond(51)0-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_respawnroom585251.KeyValueFromInt("solid", 2)
func_respawnroom585251.KeyValueFromString(""mins"", "-1 -1 -1")
func_respawnroom585251.KeyValueFromString(""maxs"", "1 1 1")

::env_soundscape2128858 <- SpawnEntityFromTable("env_soundscape", {
    origin = "-928.57 -2758.43 186.708",
    targetname = "soundscape_outside3",
    StartDisabled = "0",
    soundscape = "sawmill.outside",
    radius = "744",
    classname = "env_soundscape",
    hammerid = "2128858"
})

::info_player_teamspawn1234127 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "1954 -4800 353",
    TeamNum = "3",
    targetname = "playerspawn",
    StartDisabled = "0",
    spawnflags = "511",
    angles = "0 0 0",
    classname = "info_player_teamspawn",
    hammerid = "1234127"
})

::info_player_teamspawn1234137 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "-3012.77 -993.943 32",
    TeamNum = "3",
    targetname = "playerspawn2",
    StartDisabled = "1",
    spawnflags = "511",
    angles = "0 0 0",
    classname = "info_player_teamspawn",
    hammerid = "1234137"
})

::func_brush1413075 <- SpawnEntityFromTable("func_brush", {
    model = "*65",
    vrad_brush_cast_shadows = "0",
    texframeindex = "0",
    targetname = "mineblocker",
    StartDisabled = "0",
    spawnflags = "2",
    Solidity = "0",
    solidbsp = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "2972 -1168 -12",
    invert_exclusion = "0",
    effects = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_brush",
    hammerid = "1413075",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_brush1413075.KeyValueFromInt("solid", 2)
func_brush1413075.KeyValueFromString(""mins"", "-1 -1 -1")
func_brush1413075.KeyValueFromString(""maxs"", "1 1 1")

::item_teamflag2034485 <- SpawnEntityFromTable("item_teamflag", {
    origin = "123.433 -6041.15 440.458",
    trail_effect = "1",
    TeamNum = "3",
    targetname = "bomb2_timed",
    StartDisabled = "1",
    ScoringType = "0",
    ReturnTime = "45",
    ReturnBetweenWaves = "1",
    rendercolor = "255 255 255",
    renderamt = "255",
    PointValue = "1",
    physdamagescale = "1.0",
    NeutralType = "1",
    modelscale = "1.0",
    GameType = "1",
    flag_trail = "flagtrail",
    flag_paper = "player_intel_papertrail",
    flag_model = "models/props_td/atom_bomb.mdl",
    flag_icon = "../hud/objectives_flagpanel_carried",
    fadescale = "1.0",
    fademindist = "-1",
    angles = "0 180 0",
    classname = "item_teamflag",
    hammerid = "2034485"
})

::item_healthkit_full1298732 <- SpawnEntityFromTable("item_healthkit_full", {
    origin = "1620.85 35.135 264.236",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_full",
    hammerid = "1298732"
})

::trigger_add_or_remove_tf_player_attributes1298932 <- SpawnEntityFromTable("trigger_add_or_remove_tf_player_attributes", {
    model = "*66",
    value = "1.0",
    targetname = "nofall",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "1077.5 -4096 377.94",
    duration = "10",
    attribute_name = "cancel falling damage",
    angles = "0 0 0",
    add_or_remove = "0",
    classname = "trigger_add_or_remove_tf_player_attributes",
    hammerid = "1298932",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
trigger_add_or_remove_tf_player_attributes1298932.KeyValueFromInt("solid", 2)
trigger_add_or_remove_tf_player_attributes1298932.KeyValueFromString(""mins"", "-1 -1 -1")
trigger_add_or_remove_tf_player_attributes1298932.KeyValueFromString(""maxs"", "1 1 1")

::tf_glow1649214 <- SpawnEntityFromTable("tf_glow", {
    origin = "574.003 -3080.81 55.2512",
    targetname = "crystalglow",
    target = "crystal",
    Mode = "2",
    GlowColor = "0 78 255 255",
    classname = "tf_glow",
    hammerid = "1649214"
})

::env_entity_maker4172 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "-90.213 -936.853 159.889",
    targetname = "crystalspawner",
    spawnflags = "4",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_moonbase/moon_gravel_crystal_blue.mdl",
    EntityTemplate = "respawncrystal",
    angles = "45 0 0",
    classname = "env_entity_maker",
    hammerid = "4172",
    OnEntitySpawned = "crystallight*TurnOff1-1"
})

::env_sprite1635449 <- SpawnEntityFromTable("env_sprite", {
    origin = "2723.02 -4732.16 -419.021",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "242 180 96",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "1635449"
})

::info_particle_system1682241 <- SpawnEntityFromTable("info_particle_system", {
    origin = "2432 -4304 512",
    targetname = "drip_normal",
    start_active = "1",
    effect_name = "env_rain_gutterdrip",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "1682241"
})

::point_worldtext1791386 <- SpawnEntityFromTable("point_worldtext", {
    origin = "1745 -4745.33 381.999",
    textspacingy = "2",
    textsize = "5",
    targetname = "commandhint",
    rainbow = "0",
    orientation = "0",
    message = "Helpful Console Commands:",
    color = "0 161 196",
    angles = "0 180 0",
    classname = "point_worldtext",
    hammerid = "1791386"
})

::light1620094 <- SpawnEntityFromTable("light", {
    origin = "2364.6 -4769.06 440.8",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_sprite1620090 <- SpawnEntityFromTable("env_sprite", {
    origin = "2364.6 -4769.06 440.8",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "242 180 96",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "1620090"
})

::prop_dynamic1620101 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "2364.6 -4769.06 432.8",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_2fort/lantern001.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 150 0",
    classname = "prop_dynamic",
    hammerid = "1620101"
})

::env_sprite1663658 <- SpawnEntityFromTable("env_sprite", {
    origin = "1879.72 -4632.19 -455.686",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "242 180 96",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "1663658"
})

::filter_tf_bot_has_tag1562480 <- SpawnEntityFromTable("filter_tf_bot_has_tag", {
    origin = "-304 -256 0",
    targetname = "filter_tunnel3",
    tags = "bot_tunnel3",
    require_all_tags = "1",
    Negated = "0",
    classname = "filter_tf_bot_has_tag",
    hammerid = "1562480"
})

::filter_tf_bot_has_tag1562484 <- SpawnEntityFromTable("filter_tf_bot_has_tag", {
    origin = "-304 -256 16",
    targetname = "filter_tunnel4",
    tags = "bot_tunnel4",
    require_all_tags = "1",
    Negated = "0",
    classname = "filter_tf_bot_has_tag",
    hammerid = "1562484"
})

::info_particle_system1620303 <- SpawnEntityFromTable("info_particle_system", {
    origin = "2492.81 -4980.7 501.529",
    targetname = "drip_normal",
    start_active = "1",
    effect_name = "env_rain_gutterdrip",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "1620303"
})

::func_dustcloud1588038 <- SpawnEntityFromTable("func_dustcloud", {
    model = "*67",
    targetname = "dustclouds",
    SpeedMax = "300",
    SpawnRate = "10",
    SizeMin = "100",
    SizeMax = "200",
    LifetimeMin = "3",
    LifetimeMax = "8",
    Frozen = "0",
    FallSpeed = "0",
    DistMax = "1024",
    Color = "54 54 54",
    angles = "0 0 0",
    Alpha = "255",
    classname = "func_dustcloud",
    hammerid = "1588038",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_dustcloud1588038.KeyValueFromInt("solid", 2)
func_dustcloud1588038.KeyValueFromString(""mins"", "-1 -1 -1")
func_dustcloud1588038.KeyValueFromString(""maxs"", "1 1 1")

::light1663662 <- SpawnEntityFromTable("light", {
    origin = "1879.72 -4632.19 -433.686",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "242 180 96 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::info_particle_system1620570 <- SpawnEntityFromTable("info_particle_system", {
    origin = "2334 -4704 537",
    targetname = "drip_normal",
    start_active = "1",
    effect_name = "env_rain_gutterdrip",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "1620570"
})

::info_particle_system1602593 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-80.007 -3599.39 247.951",
    targetname = "drip_storm",
    start_active = "0",
    effect_name = "env_rain_gutterdrip",
    angles = "-45 0 0",
    classname = "info_particle_system",
    hammerid = "1602593"
})

::info_particle_system1602932 <- SpawnEntityFromTable("info_particle_system", {
    origin = "859.74 -1521.01 430.667",
    targetname = "rain_angledstorm",
    start_active = "0",
    effect_name = "env_rain_001",
    angles = "-45 0 0",
    classname = "info_particle_system",
    hammerid = "1602932"
})

::info_particle_system1603134 <- SpawnEntityFromTable("info_particle_system", {
    origin = "271.902 120.952 1223.75",
    targetname = "rain_angledstorm",
    start_active = "0",
    effect_name = "env_rain_001",
    angles = "-45 0 0",
    classname = "info_particle_system",
    hammerid = "1603134"
})

::func_dustcloud1588123 <- SpawnEntityFromTable("func_dustcloud", {
    model = "*68",
    targetname = "dustclouds",
    SpeedMax = "300",
    SpawnRate = "20",
    SizeMin = "100",
    SizeMax = "150",
    LifetimeMin = "3",
    LifetimeMax = "8",
    Frozen = "0",
    FallSpeed = "0",
    DistMax = "1024",
    Color = "54 54 54",
    angles = "0 0 0",
    Alpha = "200",
    classname = "func_dustcloud",
    hammerid = "1588123",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_dustcloud1588123.KeyValueFromInt("solid", 2)
func_dustcloud1588123.KeyValueFromString(""mins"", "-1 -1 -1")
func_dustcloud1588123.KeyValueFromString(""maxs"", "1 1 1")

::info_particle_system1682175 <- SpawnEntityFromTable("info_particle_system", {
    origin = "2432 -4304 -516",
    targetname = "drip_normal",
    start_active = "1",
    effect_name = "env_rain_guttersplash",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "1682175"
})

::func_dustcloud1587851 <- SpawnEntityFromTable("func_dustcloud", {
    model = "*69",
    targetname = "dustclouds",
    SpeedMax = "300",
    SpawnRate = "10",
    SizeMin = "150",
    SizeMax = "150",
    LifetimeMin = "3",
    LifetimeMax = "8",
    Frozen = "0",
    FallSpeed = "0",
    DistMax = "1024",
    Color = "54 54 54",
    angles = "0 0 0",
    Alpha = "255",
    classname = "func_dustcloud",
    hammerid = "1587851",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_dustcloud1587851.KeyValueFromInt("solid", 2)
func_dustcloud1587851.KeyValueFromString(""mins"", "-1 -1 -1")
func_dustcloud1587851.KeyValueFromString(""maxs"", "1 1 1")

::info_particle_system1602527 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-80.007 -3599.39 241.951",
    targetname = "drip_normal",
    start_active = "1",
    effect_name = "env_rain_gutterdrip",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "1602527"
})

::func_dustcloud1588507 <- SpawnEntityFromTable("func_dustcloud", {
    model = "*70",
    targetname = "dustclouds",
    SpeedMax = "1200",
    SpawnRate = "10",
    SizeMin = "100",
    SizeMax = "200",
    LifetimeMin = "3",
    LifetimeMax = "8",
    Frozen = "0",
    FallSpeed = "0",
    DistMax = "1024",
    Color = "54 54 54",
    angles = "0 0 0",
    Alpha = "250",
    classname = "func_dustcloud",
    hammerid = "1588507",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_dustcloud1588507.KeyValueFromInt("solid", 2)
func_dustcloud1588507.KeyValueFromString(""mins"", "-1 -1 -1")
func_dustcloud1588507.KeyValueFromString(""maxs"", "1 1 1")

::func_brush1602855 <- SpawnEntityFromTable("func_brush", {
    model = "*71",
    vrad_brush_cast_shadows = "0",
    texframeindex = "0",
    targetname = "midblockerroof",
    StartDisabled = "1",
    spawnflags = "2",
    Solidity = "0",
    solidbsp = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "742.5 -1224 726",
    invert_exclusion = "0",
    effects = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_brush",
    hammerid = "1602855",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_brush1602855.KeyValueFromInt("solid", 2)
func_brush1602855.KeyValueFromString(""mins"", "-1 -1 -1")
func_brush1602855.KeyValueFromString(""maxs"", "1 1 1")

::info_particle_system1051311 <- SpawnEntityFromTable("info_particle_system", {
    origin = "264 -2304 398",
    targetname = "drip_storm",
    start_active = "0",
    effect_name = "env_rain_gutterdrip",
    angles = "-45 0 0",
    classname = "info_particle_system",
    hammerid = "1051311"
})

::math_counter1575150 <- SpawnEntityFromTable("math_counter", {
    origin = "-192 -256 44",
    targetname = "generator_counter",
    startvalue = "3",
    min = "0",
    max = "3",
    classname = "math_counter",
    hammerid = "1575150",
    OnHitMin = "w2end_relayTrigger1-1"
})

::env_soundscape_proxy1604776 <- SpawnEntityFromTable("env_soundscape_proxy", {
    origin = "1585.35 459.967 431.66",
    radius = "256",
    MainSoundscapeName = "soundscape_tunnel1",
    classname = "env_soundscape_proxy",
    hammerid = "1604776"
})

::info_particle_system1603248 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-1046.87 -485.961 1069.76",
    targetname = "rain_angledstorm",
    start_active = "0",
    effect_name = "env_rain_001",
    angles = "-45 0 0",
    classname = "info_particle_system",
    hammerid = "1603248"
})

::point_template1323903 <- SpawnEntityFromTable("point_template", {
    origin = "-216.5 -204.783 63.3574",
    Template06 = "lighttrigger",
    Template05 = "crystalglow",
    Template04 = "crystaltrigger",
    Template03 = "crystallight",
    Template02 = "crystal_spin",
    Template01 = "crystal",
    targetname = "respawncrystal",
    spawnflags = "0",
    classname = "point_template",
    hammerid = "1323903"
})

::light1438443 <- SpawnEntityFromTable("light", {
    origin = "1572.08 558.321 399.75",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_entity_maker4173 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "-1458.08 210.803 217.837",
    targetname = "crystalspawner",
    spawnflags = "0",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_moonbase/moon_gravel_crystal_blue.mdl",
    EntityTemplate = "respawncrystal",
    angles = "45 0 0",
    classname = "env_entity_maker",
    hammerid = "4173",
    OnEntitySpawned = "crystallight*TurnOff1-1"
})

::obj_sentrygun2194996 <- SpawnEntityFromTable("obj_sentrygun", {
    origin = "1728 -64 85",
    TeamNum = "2",
    targetname = "PT_TURRETS",
    spawnflags = "10",
    model = "buildables/spawn_room/spawn_turret.mdl",
    defaultupgrade = "1",
    angles = "0 0 0",
    classname = "obj_sentrygun",
    hammerid = "2194996"
})

::env_entity_maker4154 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "1681.18 -3628.47 31.7487",
    targetname = "boxspawner",
    spawnflags = "0",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_island/mannco_case_large.mdl",
    EntityTemplate = "gunboxes",
    angles = "0 0 0",
    classname = "env_entity_maker",
    hammerid = "4154"
})

::env_entity_maker4161 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "620.003 -3168.81 23.2513",
    targetname = "boxspawner",
    spawnflags = "0",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_island/mannco_case_large.mdl",
    EntityTemplate = "gunboxes",
    angles = "0 270 0",
    classname = "env_entity_maker",
    hammerid = "4161"
})

::env_entity_maker1518967 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "330.362 -4013.1 -126.215",
    targetname = "boxspawner",
    spawnflags = "0",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_island/mannco_case_large.mdl",
    EntityTemplate = "gunboxes",
    angles = "0 180 0",
    classname = "env_entity_maker",
    hammerid = "1518967"
})

::env_entity_maker4157 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "83.008 129.517 216.392",
    targetname = "boxspawner",
    spawnflags = "0",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_island/mannco_case_large.mdl",
    EntityTemplate = "gunboxes",
    angles = "0 270 0",
    classname = "env_entity_maker",
    hammerid = "4157"
})

::env_entity_maker4158 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "86.876 -818.181 2.30104",
    targetname = "boxspawner",
    spawnflags = "0",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_island/mannco_case_large.mdl",
    EntityTemplate = "gunboxes",
    angles = "0 270 0",
    classname = "env_entity_maker",
    hammerid = "4158"
})

::env_entity_maker4160 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "48.211 -1664.04 25.0899",
    targetname = "boxspawner",
    spawnflags = "0",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_island/mannco_case_large.mdl",
    EntityTemplate = "gunboxes",
    angles = "0 270 0",
    classname = "env_entity_maker",
    hammerid = "4160"
})

::env_entity_maker4159 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "-2879.61 -457.434 26.1368",
    targetname = "boxspawner",
    spawnflags = "0",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_island/mannco_case_large.mdl",
    EntityTemplate = "gunboxes",
    angles = "0 100 0",
    classname = "env_entity_maker",
    hammerid = "4159"
})

::env_soundscape_proxy2181641 <- SpawnEntityFromTable("env_soundscape_proxy", {
    origin = "1064.51 -2174.57 198.532",
    radius = "223",
    MainSoundscapeName = "soundscape_outside1",
    classname = "env_soundscape_proxy",
    hammerid = "2181641"
})

::prop_dynamic1517990 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4526 -803 -127",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/bots/pyro_boss/bot_pyro_boss_gibby.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "1517990"
})

::env_soundscape_proxy2155494 <- SpawnEntityFromTable("env_soundscape_proxy", {
    origin = "-405.915 -2112 179.862",
    radius = "223",
    MainSoundscapeName = "soundscape_outside1",
    classname = "env_soundscape_proxy",
    hammerid = "2155494"
})

::prop_dynamic1517973 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4526 -1041 -127",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/bots/heavy_boss/bot_heavy_boss_gibby.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "1517973"
})

::prop_dynamic1517960 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4526 -859 -127",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/bots/soldier_boss/bot_soldier_boss_gibby.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "1517960"
})

::prop_dynamic1517942 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4526 -915 -127",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/bots/soldier/bot_soldier_gibby.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "1517942"
})

::prop_dynamic1517935 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4526 -977 -127",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/bots/heavy/bot_heavy_gibby.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "1517935"
})

::func_forcefield1517877 <- SpawnEntityFromTable("func_forcefield", {
    model = "*72",
    vrad_brush_cast_shadows = "0",
    texframeindex = "0",
    TeamNum = "2",
    targetname = "midforcefield",
    StartDisabled = "0",
    spawnflags = "2",
    solidbsp = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "2098.85 -1196 -52",
    effects = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_forcefield",
    hammerid = "1517877",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_forcefield1517877.KeyValueFromInt("solid", 2)
func_forcefield1517877.KeyValueFromString(""mins"", "-1 -1 -1")
func_forcefield1517877.KeyValueFromString(""maxs"", "1 1 1")

::func_nav_avoid643452 <- SpawnEntityFromTable("func_nav_avoid", {
    model = "*73",
    team = "3",
    tags = "bomb_carrier common flank_front flank_mid1 flank_mid2 flank_back",
    start_disabled = "0",
    origin = "1680 -912 24",
    angles = "0 0 0",
    classname = "func_nav_avoid",
    hammerid = "643452",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nav_avoid643452.KeyValueFromInt("solid", 2)
func_nav_avoid643452.KeyValueFromString(""mins"", "-1 -1 -1")
func_nav_avoid643452.KeyValueFromString(""maxs"", "1 1 1")

::sky_camera26649 <- SpawnEntityFromTable("sky_camera", {
    origin = "-4648 -2920 192",
    use_angles = "0",
    scale = "16",
    fogstart = "0",
    fogmaxdensity = "1",
    fogend = "20000",
    fogenable = "1",
    fogdir = "1 0 0",
    fogcolor2 = "83 92 94",
    fogcolor = "83 92 94",
    fogblend = "0",
    angles = "0 0 0",
    classname = "sky_camera",
    hammerid = "26649"
})

::env_entity_maker4167 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "-1004.28 -4030.09 -11.8788",
    targetname = "boxspawner",
    spawnflags = "0",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_island/mannco_case_large.mdl",
    EntityTemplate = "gunboxes",
    angles = "0 270 0",
    classname = "env_entity_maker",
    hammerid = "4167"
})

::env_entity_maker4165 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "-686.902 -2173.87 39.2513",
    targetname = "boxspawner",
    spawnflags = "0",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_island/mannco_case_large.mdl",
    EntityTemplate = "gunboxes",
    angles = "0 180 0",
    classname = "env_entity_maker",
    hammerid = "4165"
})

::env_entity_maker4164 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "462.859 -2903.31 31.9128",
    targetname = "boxspawner",
    spawnflags = "0",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_island/mannco_case_large.mdl",
    EntityTemplate = "gunboxes",
    angles = "0 0 0",
    classname = "env_entity_maker",
    hammerid = "4164"
})

::env_entity_maker4162 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "-824.911 -4944 -22",
    targetname = "boxspawner",
    spawnflags = "0",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_island/mannco_case_large.mdl",
    EntityTemplate = "gunboxes",
    angles = "0 270 0",
    classname = "env_entity_maker",
    hammerid = "4162"
})

::env_entity_maker4166 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "-594.463 -2742.21 23.2513",
    targetname = "boxspawner",
    spawnflags = "0",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_island/mannco_case_large.mdl",
    EntityTemplate = "gunboxes",
    angles = "0 90 0",
    classname = "env_entity_maker",
    hammerid = "4166"
})

::env_entity_maker4163 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "1595.37 -2714.78 79.5143",
    targetname = "boxspawner",
    spawnflags = "0",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_island/mannco_case_large.mdl",
    EntityTemplate = "gunboxes",
    angles = "0 90 0",
    classname = "env_entity_maker",
    hammerid = "4163"
})

::trigger_multiple1518286 <- SpawnEntityFromTable("trigger_multiple", {
    model = "*74",
    volume = "8",
    targetname = "crystal_spin",
    spawnflags = "64",
    solidbsp = "0",
    rendermode = "10",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "-256.04 -255.75 35.65",
    message = "hl1/ambience/labdrone2.wav",
    maxspeed = "48",
    fanfriction = "20",
    angles = "0 0 0",
    classname = "func_rotating",
    hammerid = "1518289",
    model = "*75",
    wait = "1",
    targetname = "crystaltrigger",
    StartDisabled = "1",
    spawnflags = "1",
    parentname = "crystal_spin",
    origin = "-255.58 -255.61 36.2",
    filtername = "filter_blu_team",
    angles = "0 0 0",
    classname = "trigger_multiple",
    hammerid = "1518286",
    OnStartTouchAll = "!activatorRunScriptCodeCrystalBuff(self)0.15-1",
    OnStartTouchAll = "gamerulesPlayVOnpc/roller/mine/rmine_explode_shock1.wav0-1",
    OnStartTouchAll = "PT_SHAKEStartShake0-1",
    OnStartTouchAll = "crystal_counterSubtract10-1",
    OnStartTouchAll = "spawntele1AddOutputtarget !self0-1",
    OnStartTouchAll = "afkslayDisable0-1",
    OnStartTouchAll = "spawntele1Enable0.1-1",
    OnStartTouchAll = "func_rotatingStop0-1",
    OnStartTouchAll = "lighttrigger*DisableAndEndTouch0-1",
    OnStartTouchAll = "crystal*Disable0-1",
    OnStartTouchAll = "afkslayEnable3-1",
    OnStartTouchAll = "crystallightKill1-1",
    OnStartTouchAll = "crystalKill1-1",
    OnStartTouchAll = "crystal_spinKill1-1",
    OnStartTouchAll = "spawncrystalsTrigger40-1",
    OnStartTouchAll = "!selfKillHierarchy40.2-1",
    OnStartTouchAll = "spawntele1AddOutputtarget afkslay5-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
trigger_multiple1518286.KeyValueFromInt("solid", 2)
trigger_multiple1518286.KeyValueFromString(""mins"", "-1 -1 -1")
trigger_multiple1518286.KeyValueFromString(""maxs"", "1 1 1")

::env_entity_maker4171 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "2905.2 -1092.15 -102.165",
    targetname = "crystalspawner",
    spawnflags = "0",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_moonbase/moon_gravel_crystal_blue.mdl",
    EntityTemplate = "respawncrystal",
    angles = "45 0 0",
    classname = "env_entity_maker",
    hammerid = "4171",
    OnEntitySpawned = "crystallight*TurnOff1-1"
})

::light1412770 <- SpawnEntityFromTable("light", {
    origin = "2577.53 557.018 171.75",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light1412412 <- SpawnEntityFromTable("light", {
    origin = "2092.28 557.53 278.482",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "0",
    _linear_attn = "1",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_entity_maker4170 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "2855 -452.45 40.0313",
    targetname = "crystalspawner",
    spawnflags = "0",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_moonbase/moon_gravel_crystal_blue.mdl",
    EntityTemplate = "respawncrystal",
    angles = "45 0 0",
    classname = "env_entity_maker",
    hammerid = "4170",
    OnEntitySpawned = "crystallight*TurnOff1-1"
})

::prop_dynamic1413104 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "3843.76 -1215.61 89.9484",
    targetname = "PT_ROCK",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "1",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    parentname = "PT_ROCKBREAKABLE",
    modelscale = "1",
    model = "models/props_mvm/mine_rocks06_large.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    max_health = "65",
    health = "65",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "1",
    DisableBoneFollowers = "0",
    angles = "-14.4775 195.504 -93.9671",
    classname = "prop_dynamic",
    hammerid = "1413104",
    OnHealthChanged = "gamerulesPlayVOphysics/concrete/rock_impact_soft2.wav0-1",
    OnHealthChanged = "PT_ROCKBREAKABLERemoveHealth500-1"
})

::func_rot_button1518149 <- SpawnEntityFromTable("func_rot_button", {
    model = "*76",
    wait = "2.5",
    targetname = "PT_SWITCHGUNBUTTON2",
    speed = "2000",
    spawnflags = "1057",
    sounds = "21",
    rendermode = "10",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "-257.62 -261.2 61.3",
    distance = "0",
    angles = "0 0 0",
    classname = "func_rot_button",
    hammerid = "1518149",
    OnPressed = "PT_WEAPONCASE2SetAnimationopen0-1",
    OnPressed = "gunbox_counter2Subtract10-1",
    OnPressed = "PT_WEAPONCASE2SetAnimationclose3-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_rot_button1518149.KeyValueFromInt("solid", 2)
func_rot_button1518149.KeyValueFromString(""mins"", "-1 -1 -1")
func_rot_button1518149.KeyValueFromString(""maxs"", "1 1 1")

::info_player_teamspawn1413095 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "3551.79 -1186.84 -111.222",
    TeamNum = "3",
    targetname = "playerspawn3",
    StartDisabled = "1",
    spawnflags = "511",
    angles = "0 0 0",
    classname = "info_player_teamspawn",
    hammerid = "1413095"
})

::env_sprite1412777 <- SpawnEntityFromTable("env_sprite", {
    origin = "2577.53 557.018 195.75",
    spawnflags = "0",
    scale = "0.75",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "239 241 154",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "90",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "12",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "1412777"
})

::prop_dynamic1518153 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-256.11 -255.912 64.0013",
    targetname = "PT_WEAPONCASE2",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    parentname = "PT_SWITCHGUNBUTTON2",
    modelscale = "1.0",
    model = "models/props_island/mannco_case_large_animated.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    disableshadows = "1",
    DisableBoneFollowers = "0",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "1518153"
})

::logic_relay1398518 <- SpawnEntityFromTable("logic_relay", {
    origin = "-1914 -656 480",
    targetname = "breakablekiller",
    StartDisabled = "0",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "1398518",
    OnTrigger = "PT_WOODBREAKABLEKill15-1",
    OnTrigger = "PT_ROCKBREAKABLEKill15-1",
    OnTrigger = "PT_WOODBREAKABLE2Kill15-1",
    OnTrigger = "PT_BLOCKERKill15-1"
})

::env_entity_maker4176 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "1637.32 -3558.55 44.2079",
    targetname = "crystalspawner",
    spawnflags = "0",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_moonbase/moon_gravel_crystal_blue.mdl",
    EntityTemplate = "respawncrystal",
    angles = "45 0 0",
    classname = "env_entity_maker",
    hammerid = "4176",
    OnEntitySpawned = "crystallight*TurnOff1-1"
})

::trigger_add_or_remove_tf_player_attributes1299016 <- SpawnEntityFromTable("trigger_add_or_remove_tf_player_attributes", {
    model = "*77",
    value = "1.0",
    targetname = "nofall",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "564 -4820 500",
    duration = "3",
    attribute_name = "cancel falling damage",
    angles = "0 0 0",
    add_or_remove = "0",
    classname = "trigger_add_or_remove_tf_player_attributes",
    hammerid = "1299016",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
trigger_add_or_remove_tf_player_attributes1299016.KeyValueFromInt("solid", 2)
trigger_add_or_remove_tf_player_attributes1299016.KeyValueFromString(""mins"", "-1 -1 -1")
trigger_add_or_remove_tf_player_attributes1299016.KeyValueFromString(""maxs"", "1 1 1")

::prop_dynamic1518026 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4526 -651 -127",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/bots/demo_boss/bot_demo_boss_gibby.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "1518026"
})

::env_entity_maker4175 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "-352.63 -307.365 238.445",
    targetname = "crystalspawner",
    spawnflags = "0",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_moonbase/moon_gravel_crystal_blue.mdl",
    EntityTemplate = "respawncrystal",
    angles = "45 0 0",
    classname = "env_entity_maker",
    hammerid = "4175",
    OnEntitySpawned = "crystallight*TurnOff1-1"
})

::info_particle_system1492136 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-632 -2528 1072",
    targetname = "rain_angledstorm",
    start_active = "0",
    effect_name = "env_rain_001",
    angles = "-45 0 0",
    classname = "info_particle_system",
    hammerid = "1492136"
})

::prop_dynamic1518017 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4526 -699 -127",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/bots/demo/bot_demo_gibby.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "1518017"
})

::math_counter1508 <- SpawnEntityFromTable("math_counter", {
    origin = "-192 -256 12",
    targetname = "gunbox_counter2",
    startvalue = "6",
    parentname = "PT_WEAPONCASE2",
    min = "0",
    max = "50",
    classname = "math_counter",
    hammerid = "1508",
    OnHitMin = "PT_SWITCHGUNBUTTON2KillHierarchy0-1"
})

::env_entity_maker4174 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "-2017.75 -1260.01 62.5653",
    targetname = "crystalspawner",
    spawnflags = "0",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_moonbase/moon_gravel_crystal_blue.mdl",
    EntityTemplate = "respawncrystal",
    angles = "45 0 0",
    classname = "env_entity_maker",
    hammerid = "4174",
    OnEntitySpawned = "crystallight*TurnOff1-1"
})

::tf_glow1510 <- SpawnEntityFromTable("tf_glow", {
    origin = "560.003 -3080.81 55.2512",
    targetname = "glow1b",
    target = "PT_WEAPONCASE2",
    Mode = "2",
    GlowColor = "3 128 0 255",
    classname = "tf_glow",
    hammerid = "1510"
})

::info_player_teamspawn1234546 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "2286.37 48.242 -102",
    TeamNum = "0",
    targetname = "tunnelboss",
    StartDisabled = "1",
    spawnflags = "511",
    angles = "0 0 0",
    classname = "info_player_teamspawn",
    hammerid = "1234546"
})

::info_player_teamspawn1234599 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "875.97 -385.879 -5.608",
    TeamNum = "0",
    targetname = "thirdspawn",
    StartDisabled = "1",
    spawnflags = "511",
    angles = "0 0 0",
    classname = "info_player_teamspawn",
    hammerid = "1234599"
})

::env_wind1285549 <- SpawnEntityFromTable("env_wind", {
    origin = "465.024 -1056 169.989",
    targetname = "wind",
    minwind = "40",
    mingustdelay = "10",
    mingust = "150",
    maxwind = "80",
    maxgustdelay = "30",
    maxgust = "170",
    gustsound = "hl1/ambience/des_wind2.wav",
    gustduration = "5",
    gustdirchange = "60",
    angles = "0 90 0",
    classname = "env_wind",
    hammerid = "1285549"
})

::info_player_teamspawn1234548 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "2064.37 48.242 -100",
    TeamNum = "0",
    targetname = "tunnelboss_support",
    StartDisabled = "1",
    spawnflags = "511",
    angles = "0 0 0",
    classname = "info_player_teamspawn",
    hammerid = "1234548"
})

::info_player_teamspawn1234572 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "2014.63 -1052.27 -104",
    TeamNum = "0",
    targetname = "midspawnforcefield",
    StartDisabled = "1",
    spawnflags = "511",
    angles = "0 0 0",
    classname = "info_player_teamspawn",
    hammerid = "1234572"
})

::func_brush1100054 <- SpawnEntityFromTable("func_brush", {
    model = "*78",
    vrad_brush_cast_shadows = "0",
    texframeindex = "0",
    targetname = "windowbrush",
    StartDisabled = "0",
    spawnflags = "2",
    Solidity = "1",
    solidbsp = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "544 -1532 96",
    invert_exclusion = "0",
    effects = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_brush",
    hammerid = "1100054",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_brush1100054.KeyValueFromInt("solid", 2)
func_brush1100054.KeyValueFromString(""mins"", "-1 -1 -1")
func_brush1100054.KeyValueFromString(""maxs"", "1 1 1")

::func_areaportalwindow1088430 <- SpawnEntityFromTable("func_areaportalwindow", {
    portalnumber = "23",
    TranslucencyLimit = "0.0",
    target = "windowbrush2",
    PortalVersion = "1",
    FadeStartDist = "512",
    FadeDist = "1024",
    classname = "func_areaportalwindow",
    hammerid = "1088430",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_areaportalwindow1088430.KeyValueFromInt("solid", 2)
func_areaportalwindow1088430.KeyValueFromString(""mins"", "-1 -1 -1")
func_areaportalwindow1088430.KeyValueFromString(""maxs"", "1 1 1")

::logic_relay1500 <- SpawnEntityFromTable("logic_relay", {
    origin = "-256 -256 80",
    targetname = "cfive_relay",
    spawnflags = "1",
    classname = "logic_relay",
    hammerid = "1500",
    OnTrigger = "boxspawner*ForceSpawn0-1",
    OnTrigger = "tf_objective_resourceCallScriptFunctionCFive-1-1",
    OnTrigger = "sound_steam_whistle_red*Kill0-1",
    OnTrigger = "env_shakeStopShake0-1",
    OnTrigger = "func_nav_preferKill0-1",
    OnTrigger = "func_nav_avoidKill0-1",
    OnTrigger = "func_capturezoneDisable0-1",
    OnTrigger = "func_capturezoneAddOutputOnCapture pitexplodenowin:Trigger::0:-11-1",
    OnTrigger = "bombpath_choose_caseKill0-1",
    OnTrigger = "bot_hint_*Kill0-1",
    OnTrigger = "trigger_pushKill0-1",
    OnTrigger = "tf_glowDisable0.1-1",
    OnTrigger = "wave_start_relayAddOutputOnTrigger spawntele:Disable::0:-10-1",
    OnTrigger = "wave_start_relayAddOutputOnTrigger tutoriallight:Kill::0:-10-1",
    OnTrigger = "wave_start_relayAddOutputOnTrigger tutorialglow:Kill::0:-10-1",
    OnTrigger = "wave_start_relayAddOutputOnTrigger func_respawnroom:Kill::0:-10-1",
    OnTrigger = "wave_start_relayAddOutputOnTrigger func_respawnroomvisualizer:Kill::0:-10-1",
    OnTrigger = "PT_TREEEnable0-1",
    OnTrigger = "crystalspawner*ForceSpawn0-1",
    OnTrigger = "PT_WEAPONCASE2*Enable0-1",
    OnTrigger = "spawnteleEnable0-1",
    OnTrigger = "tunnelforcefieldmidEnable0-1",
    OnTrigger = "mid_close_relayTrigger0-1"
})

::logic_relay1501 <- SpawnEntityFromTable("logic_relay", {
    origin = "-272 -256 32",
    targetname = "pitexplodenowin",
    spawnflags = "1",
    classname = "logic_relay",
    hammerid = "1501",
    OnTrigger = "w1bosskillKill0-1",
    OnTrigger = "end_pit_destroy_particleStart0.01-1",
    OnTrigger = "filter_red_teamKill0.01-1",
    OnTrigger = "pit_explosion_wavPlaySound0.01-1",
    OnTrigger = "hatch_magnet_pitEnable0.01-1",
    OnTrigger = "bomb_kill_playersEnable0.01-1",
    OnTrigger = "bomb_kill_playersDisable0.5-1",
    OnTrigger = "red_spawnp_1*Disable2-1",
    OnTrigger = "upgradehintShow2-1",
    OnTrigger = "upgradestation_frontlineKill0.01-1",
    OnTrigger = "func_upgradestationEnable2-1",
    OnTrigger = "soundscape_spawnAddOutputOnPlay end_wave:Enable::0.1:-10-1",
    OnTrigger = "playerRunScriptCodeself.AddCurrency(1000)0-1"
})

::logic_relay1502 <- SpawnEntityFromTable("logic_relay", {
    origin = "-272 -256 48",
    targetname = "w1bosskill",
    spawnflags = "1",
    classname = "logic_relay",
    hammerid = "1502",
    OnTrigger = "func_capturezoneKill0-1",
    OnTrigger = "filter_red_teamKill0-1",
    OnTrigger = "red_spawnp_1*Disable2-1",
    OnTrigger = "upgradehintShow2-1",
    OnTrigger = "upgradestation_frontlineKill0-1",
    OnTrigger = "func_upgradestationEnable2-1",
    OnTrigger = "soundscape_spawnAddOutputOnPlay end_wave:Enable::0.1:-10-1",
    OnTrigger = "playerRunScriptCodeself.AddCurrency(1000)0-1"
})

::info_player_teamspawn1234162 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "535.638 -5521.45 245.637",
    TeamNum = "0",
    targetname = "playerspawnred",
    StartDisabled = "0",
    spawnflags = "511",
    angles = "0 0 0",
    classname = "info_player_teamspawn",
    hammerid = "1234162"
})

::point_push1507 <- SpawnEntityFromTable("point_push", {
    origin = "384 -6344 670",
    targetname = "botspawnpush",
    spawnflags = "14",
    radius = "1024",
    magnitude = "100",
    inner_radius = "0",
    enabled = "1",
    angles = "0 90 0",
    classname = "point_push",
    hammerid = "1507"
})

::info_player_teamspawn1234706 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "-615.661 -993.178 -31",
    TeamNum = "0",
    targetname = "fourthspawn",
    StartDisabled = "1",
    spawnflags = "511",
    angles = "0 0 0",
    classname = "info_player_teamspawn",
    hammerid = "1234706"
})

::func_rot_button1209625 <- SpawnEntityFromTable("func_rot_button", {
    model = "*79",
    wait = "-1",
    targetname = "PT_SWITCHBUTTON",
    speed = "2000",
    spawnflags = "7713",
    sounds = "21",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "357.53 -1952.8 38.5",
    distance = "10",
    angles = "0 0 0",
    classname = "func_rot_button",
    hammerid = "1209625",
    OnPressed = "trucksparkStart0-1",
    OnPressed = "glow2Kill0-1",
    OnPressed = "pathhintKill0-1",
    OnPressed = "gamerulesPlayVOambient/energy/zap6.wav0-1",
    OnPressed = "truckexplodeKill0-1",
    OnPressed = "gamerulesPlayVOmvm/mvm_warning.wav02",
    OnPressed = "gamerulesPlayVOmvm/mvm_warning.wav02",
    OnPressed = "bigexplosionTrigger5-1",
    OnPressed = "!selfKill11-1",
    OnPressed = "bomb1_timedDisable0-1",
    OnPressed = "!selfRunScriptCodeNavMesh.GetNavAreaByID(4364).UnblockArea()10-1",
    OnPressed = "!selfRunScriptCodeNavMesh.GetNavAreaByID(847).UnblockArea()10-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_rot_button1209625.KeyValueFromInt("solid", 2)
func_rot_button1209625.KeyValueFromString(""mins"", "-1 -1 -1")
func_rot_button1209625.KeyValueFromString(""maxs"", "1 1 1")

::info_particle_system1602729 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-3.858 -3603.9 10.7503",
    targetname = "drip_storm",
    start_active = "0",
    effect_name = "env_rain_guttersplash",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "1602729"
})

::filter_activator_tfteam1512 <- SpawnEntityFromTable("filter_activator_tfteam", {
    origin = "-320 -256 32",
    TeamNum = "3",
    targetname = "filter_blu_team",
    Negated = "Allow entities that match criteria",
    effects = "0",
    classname = "filter_activator_tfteam",
    hammerid = "1512"
})

::prop_dynamic1513 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "43.737 -1505.09 0.300003",
    targetname = "PT_BARRELS",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1",
    model = "models/props_hydro/water_barrel_cluster3.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "1",
    DisableBoneFollowers = "0",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "1513"
})

::logic_relay1514 <- SpawnEntityFromTable("logic_relay", {
    origin = "-704 -256 16",
    targetname = "w1init",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "1514",
    OnTrigger = "breakablekillerKill0-1",
    OnTrigger = "shakeit2StopShake0-1",
    OnTrigger = "spawntele1RunScriptCodeself.SetOrigin(Vector(2192.000000 -4520.000000 332.031311))0-1",
    OnTrigger = "tutorialhintEnable3-1",
    OnTrigger = "spawnbot*Kill0-1",
    OnTrigger = "PT_ROCKEnableCollision1-1",
    OnTrigger = "color_correction_volumeEnable1-1",
    OnTrigger = "func_upgradestationDisable0-1",
    OnTrigger = "red_spawnp_1*Disable0-1",
    OnTrigger = "bomb1Disable0-1",
    OnTrigger = "bomb1_timedEnable5-1",
    OnTrigger = "wave_start_relayAddOutputOnTrigger PT_ROCK*:SetDamageFilter:filter_blu_team:0:-10-1",
    OnTrigger = "cfive_relayTrigger0-1",
    OnTrigger = "tutorial*Enable0-1",
    OnTrigger = "truck*Enable0-1",
    OnTrigger = "PT_WEAPONCASE2Enable0-1",
    OnTrigger = "breakablekillerCancelPending0-1",
    OnTrigger = "breakablekillerKill0.1-1",
    OnTrigger = "tunnelforcefieldEnable0-1",
    OnTrigger = "tunnelforcefield2Enable0-1",
    OnTrigger = "PT_ROCKEnable1-1",
    OnTrigger = "mistTurnOn0-1",
    OnTrigger = "tunnelforcefieldbluDisable0-1",
    OnTrigger = "mistTurnOn0-1",
    OnTrigger = "PT_GENERATORWIRE*Kill0-1",
    OnTrigger = "PT_WOOD*Enable0-1",
    OnTrigger = "chimney_smokeStop0-1",
    OnTrigger = "truck*EnableCollision0-1",
    OnTrigger = "wave_start_relayAddOutputOnTrigger PT_ROCKBREAKABLE:SetDamageFilter::0:-10-1",
    OnTrigger = "wave_start_relayAddOutputOnTrigger !self:RunScriptCode:Annotations(1):0:-10-1",
    OnTrigger = "obj_sentrygunSetModelmodels/buildables/spawn_room/spawn_turret.mdl0-1",
    OnTrigger = "wave_start_relayAddOutputOnTrigger spawntele2:Kill::0:-10-1",
    OnTrigger = "gamerulesRunScriptCodeSetSkyboxTexture(`sky_downpour_heavy_storm`)10-1"
})

::obj_dispenser1521 <- SpawnEntityFromTable("obj_dispenser", {
    origin = "576 -204 -22.1251",
    teamnum = "2",
    targetname = "PT_DISPENSER",
    spawnflags = "4",
    skin = "1",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    model = "models/buildables/dispenser_lvl3_light.mdl",
    helper_trigger_mins = "-64 -64 -64",
    helper_trigger_maxs = "64 64 64",
    fadescale = "1.0",
    fademindist = "-1",
    defaultupgrade = "2",
    angles = "0 0 0",
    classname = "obj_dispenser",
    hammerid = "1521"
})
obj_dispenser1521.KeyValueFromInt("solid", 2)
1521.KeyValueFromString(""helper_trigger_mins"", "-64 -64 -64")
1521.KeyValueFromString(""helper_trigger_maxs"", "64 64 64")

::obj_sentrygun2194971 <- SpawnEntityFromTable("obj_sentrygun", {
    portalnumber = "24",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    origin = "1728 168 85",
    TeamNum = "2",
    targetname = "PT_TURRETS",
    spawnflags = "10",
    model = "buildables/spawn_room/spawn_turret.mdl",
    defaultupgrade = "1",
    angles = "0 0 0",
    classname = "obj_sentrygun",
    hammerid = "2194971"
})

::light_dynamic1518358 <- SpawnEntityFromTable("light_dynamic", {
    origin = "-255.804 -255.545 42.1266",
    targetname = "crystallight",
    target = "crystal",
    style = "2",
    spotlight_radius = "128",
    spawnflags = "0",
    pitch = "-90",
    parentname = "crystal_spin",
    distance = "128",
    brightness = "6",
    angles = "0 0 0",
    _light = "0 78 255",
    _inner_cone = "0",
    _cone = "0",
    classname = "light_dynamic",
    hammerid = "1518358"
})

::func_physbox_multiplayer1635909 <- SpawnEntityFromTable("func_physbox_multiplayer", {
    model = "*80",
    vrad_brush_cast_shadows = "0",
    texframeindex = "0",
    targetname = "bucketrope",
    spawnflags = "1024",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    propdata = "0",
    preferredcarryangles = "0 0 0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    parentname = "bucket",
    origin = "914.49 -4223.71 449.5",
    notsolid = "0",
    nodamageforces = "0",
    minhealthdmg = "0",
    material = "10",
    massScale = "1.0",
    health = "0",
    gibdir = "0 0 0",
    explosion = "0",
    effects = "0",
    disablereceiveshadows = "0",
    Damagetype = "0",
    damagetoenablemotion = "0",
    angles = "0 0 0",
    classname = "func_physbox_multiplayer",
    hammerid = "1635909",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_physbox_multiplayer1635909.KeyValueFromInt("solid", 2)
func_physbox_multiplayer1635909.KeyValueFromString(""mins"", "-1 -1 -1")
func_physbox_multiplayer1635909.KeyValueFromString(""maxs"", "1 1 1")

::logic_relay1515 <- SpawnEntityFromTable("logic_relay", {
    origin = "-288 -256 64",
    targetname = "w2init",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "1515",
    OnTrigger = "spawntele1RunScriptCodeself.SetOrigin(Vector(-2802.876221, -442.674469, 68.031319))1-1",
    OnTrigger = "spawnbot*Kill0-1",
    OnTrigger = "PT_ROCK*KillHierarchy0-1",
    OnTrigger = "playerspawn2Enable0-1",
    OnTrigger = "playerspawnKill0.01-1",
    OnTrigger = "tunnelforcefieldbluKill0.01-1",
    OnTrigger = "tunnelboss_supportEnable0-1",
    OnTrigger = "func_upgradestationEnable0-1",
    OnTrigger = "bomb1Disable0-1",
    OnTrigger = "gunbox_counter*SetValueNoFire9990-1",
    OnTrigger = "wave_start_relayAddOutputOnTrigger gunbox_counter*:SetValueNoFire:4:0:-10-1",
    OnTrigger = "cfive_relayTrigger0-1",
    OnTrigger = "tutorial*Kill0-1",
    OnTrigger = "PT_GENERATOR3Enable0-1",
    OnTrigger = "PT_GENERATOREnableCollision0-1",
    OnTrigger = "spawnteleEnable0.1-1",
    OnTrigger = "playerspawn3Kill0.01-1",
    OnTrigger = "PT_GENERATOREnable0-1",
    OnTrigger = "PT_GENERATOR2Enable0-1",
    OnTrigger = "PT_GENERATOR3EnableCollision0-1",
    OnTrigger = "PT_GENERATOR2EnableCollision0-1",
    OnTrigger = "truck*Kill0-1",
    OnTrigger = "PT_SWITCHBUTTONKill0.01-1",
    OnTrigger = "PT_SWITCHBUTTON3Kill0.01-1",
    OnTrigger = "PT_WOOD*Kill0-1",
    OnTrigger = "PT_GENERATORBUTTON*Unlock0.1-1",
    OnTrigger = "wave_start_relayAddOutputOnTrigger w2computerbutton:Unlock::0:-10-1",
    OnTrigger = "game_round_winAddOutputtargetname win_bots0-1",
    OnTrigger = "wave_start_relayAddOutputOnTrigger w2computerbutton:Press::0.01:-10-1",
    OnTrigger = "hinttriggerKill0-1",
    OnTrigger = "spawnteleAddOutputtarget playerspawn20-1",
    OnTrigger = "spawnteleDisable0.2-1",
    OnTrigger = "wave_start_relayAddOutputOnTrigger !self:RunScriptCode:HideAnnotation(65432):0.01:-10-1",
    OnTrigger = "red_door_triggerDisable0-1",
    OnTrigger = "gamerulesRunScriptCodeSetSkyboxTexture(`sky_alpinestorm_01`)0-1",
    OnTrigger = "spawntele2Kill0-1",
    OnTrigger = "spawntele1Enable0-1",
    OnTrigger = "spawntele1Disable1-1",
    OnTrigger = "PT_WINTRIGGERKill0-1",
    OnTrigger = "door_red*Close0-1",
    OnTrigger = "door_red*Lock0.01-1",
    OnTrigger = "?UnlitGeneric0-1",
    OnTrigger = "spawncrystalsCancelPending0-1"
})

::logic_relay1516 <- SpawnEntityFromTable("logic_relay", {
    origin = "-272 -256 0",
    targetname = "w3init",
    spawnflags = "1",
    classname = "logic_relay",
    hammerid = "1516",
    OnTrigger = "spawntele1AddOutputtarget tunnelboss0-1",
    OnTrigger = "spawntele1Enable0.01-1",
    OnTrigger = "color_correction_volumeEnable1-1",
    OnTrigger = "trigger_fog*Kill0-1",
    OnTrigger = "spawnbot*Kill0-1",
    OnTrigger = "fogbox*Disable0-1",
    OnTrigger = "cfive_relayTrigger0-1",
    OnTrigger = "wave_start_relayAddOutputOnTrigger !self:RunScriptCode:HideAnnotation(65432):0.01:-10-1",
    OnTrigger = "spawntele2Kill0-1"
})

::func_breakable1273239 <- SpawnEntityFromTable("func_breakable", {
    model = "*81",
    vrad_brush_cast_shadows = "0",
    texframeindex = "0",
    targetname = "PT_WOODBREAKABLE",
    spawnflags = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    propdata = "5",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    origin = "-312 -552 67.58",
    minhealthdmg = "200",
    material = "1",
    health = "3000",
    gibdir = "0 0 0",
    explosion = "1",
    effects = "0",
    disablereceiveshadows = "0",
    damagefilter = "filter_blu_team",
    angles = "0 0 0",
    classname = "func_breakable",
    hammerid = "1273239",
    OnBreak = "func_capturezoneEnable0-1",
    OnBreak = "fourthspawn*Enable0-1",
    OnBreak = "red_spawnp_1Enable0-1",
    OnBreak = "hatchoccluderDeactivate0-1",
    OnBreak = "hatchoccluderKill1-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_breakable1273239.KeyValueFromInt("solid", 2)
func_breakable1273239.KeyValueFromString(""mins"", "-1 -1 -1")
func_breakable1273239.KeyValueFromString(""maxs"", "1 1 1")

::filter_tf_bot_has_tag1518 <- SpawnEntityFromTable("filter_tf_bot_has_tag", {
    origin = "2111 162.5 -75",
    targetname = "filter_tunnel",
    tags = "bot_tunnel",
    require_all_tags = "1",
    Negated = "0",
    classname = "filter_tf_bot_has_tag",
    hammerid = "1518"
})

::logic_relay1763990 <- SpawnEntityFromTable("logic_relay", {
    origin = "-240 -256 0",
    targetname = "startcrystals",
    spawnflags = "1",
    classname = "logic_relay",
    hammerid = "1763990",
    OnTrigger = "spawncrystalsTrigger0-1",
    OnTrigger = "!selfKill0.01-1"
})

::func_nav_prerequisite1247545 <- SpawnEntityFromTable("func_nav_prerequisite", {
    model = "*82",
    Task = "2",
    targetname = "tunnelprereq2",
    spawnflags = "1",
    origin = "2276 40 -22",
    filtername = "filter_tunnel",
    Entity = "tunnelboss",
    angles = "0 0 0",
    classname = "func_nav_prerequisite",
    hammerid = "1247545",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nav_prerequisite1247545.KeyValueFromInt("solid", 2)
func_nav_prerequisite1247545.KeyValueFromString(""mins"", "-1 -1 -1")
func_nav_prerequisite1247545.KeyValueFromString(""maxs"", "1 1 1")

::filter_tf_bot_has_tag1521 <- SpawnEntityFromTable("filter_tf_bot_has_tag", {
    origin = "-320 -256 0",
    targetname = "filter_tunnel2",
    tags = "bot_tunnel2",
    require_all_tags = "1",
    Negated = "0",
    classname = "filter_tf_bot_has_tag",
    hammerid = "1521"
})

::prop_dynamic1522 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-120.07 -92.024 35.6058",
    targetname = "PT_SWITCH3",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_barnblitz/track_switchbox_bb.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "1",
    DisableBoneFollowers = "0",
    angles = "0 270 -90",
    classname = "prop_dynamic",
    hammerid = "1522"
})

::env_soundscape_proxy2181653 <- SpawnEntityFromTable("env_soundscape_proxy", {
    origin = "-128 -3519.92 178.556",
    radius = "223",
    MainSoundscapeName = "soundscape_outside3",
    classname = "env_soundscape_proxy",
    hammerid = "2181653"
})

::tf_glow1524 <- SpawnEntityFromTable("tf_glow", {
    origin = "-320 -256 16",
    targetname = "glow3",
    target = "PT_SWITCH2",
    StartDisabled = "1",
    Mode = "2",
    GlowColor = "0 191 185 255",
    classname = "tf_glow",
    hammerid = "1524"
})

::prop_dynamic1525 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "2919 -2048 -50.4479",
    targetname = "PT_SWITCH2",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_barnblitz/track_switchbox_bb.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "1",
    DisableBoneFollowers = "0",
    angles = "0 90 -90",
    classname = "prop_dynamic",
    hammerid = "1525"
})

::tf_glow1526 <- SpawnEntityFromTable("tf_glow", {
    origin = "-320 -256 48",
    targetname = "glow4",
    target = "PT_SWITCH4",
    StartDisabled = "1",
    Mode = "2",
    GlowColor = "0 191 185 255",
    classname = "tf_glow",
    hammerid = "1526"
})

::prop_dynamic1527 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "1585.58 -120 -42.5823",
    targetname = "PT_SWITCH4",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_barnblitz/track_switchbox_bb.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 0 -90",
    classname = "prop_dynamic",
    hammerid = "1527"
})

::logic_relay1530 <- SpawnEntityFromTable("logic_relay", {
    occludernumber = "5",
    model = "",
    targetname = "midblockeroccluder",
    StartActive = "0",
     = "",
     = "",
     = "",
     = "",
    origin = "-288 -256 48",
    targetname = "fftoggle",
    classname = "logic_relay",
    hammerid = "1530",
    OnTrigger = "tunnelforcefieldbluDisable0-1",
    OnTrigger = "PT_WIRESPARK2Stop0-1",
    OnTrigger = "gamerulesRunScriptCodeClientPrintSafe(null, `^FFDF29Forcefield disabled for 20 seconds!^`)0-1",
    OnTrigger = "tunnelforcefieldbluEnable20-1",
    OnTrigger = "gamerulesPlayVOweapons/physcannon/superphys_small_zap1.wav20-1",
    OnTrigger = "PT_WIRESPARK2Start20-1",
    OnTrigger = "gamerulesRunScriptCodeSetTurretState(1)0-1",
    OnTrigger = "gamerulesRunScriptCodeSetTurretState(0)20-1",
    OnTrigger = "glow4Disable0-1",
    OnTrigger = "glow4Enable45-1"
})

::logic_relay1531 <- SpawnEntityFromTable("logic_relay", {
    origin = "-288 -256 32",
    targetname = "fftogglered",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "1531",
    OnTrigger = "gamerulesPlayVObuttons/button9.wav0-1",
    OnTrigger = "tunnelforce*Kill0-1",
    OnTrigger = "glow4Kill0-1",
    OnTrigger = "glow3Kill0-1",
    OnTrigger = "PT_WIRESPARK2Kill0-1",
    OnTrigger = "PT_GENERATORGLOW2Enable1-1"
})

::training_annotation1612 <- SpawnEntityFromTable("training_annotation", {
    origin = "-1999.53 -331.519 83.4383",
    targetname = "stormhint",
    lifetime = "20",
    display_text = "A storm is coming! Enable the generators to prepare",
    angles = "0 0 0",
    classname = "training_annotation",
    hammerid = "1612"
})

::logic_relay1613 <- SpawnEntityFromTable("logic_relay", {
    origin = "-256 -256 16",
    targetname = "tornado_relay",
    spawnflags = "1",
    classname = "logic_relay",
    hammerid = "1613",
    OnTrigger = "fadeFade0-1",
    OnTrigger = "playerspawnredDisable0-1",
    OnTrigger = "skybox_terrainDisable10-1",
    OnTrigger = "gamerulesRunScriptCodeClientPrintSafe(null, `^ff0000MAJOR STORM APPROACHING! GET TO THE CAVE!^`)0-1",
    OnTrigger = "gamerulesRunScriptCodeClientPrintSafe(null, `^ff0000MAJOR STORM APPROACHING! GET TO THE CAVE!^`)0-1",
    OnTrigger = "gamerulesRunScriptCodeClientPrintSafe(null, `^ff0000MAJOR STORM APPROACHING! GET TO THE CAVE!^`)0-1",
    OnTrigger = "gamerulesRunScriptCodeClientPrintSafe(null, `^ff0000MAJOR STORM APPROACHING! GET TO THE CAVE!^`)0-1",
    OnTrigger = "gamerulesRunScriptCodeClientPrintSafe(null, `^ff0000MAJOR STORM APPROACHING! GET TO THE CAVE!^`)0-1",
    OnTrigger = "gamerulesRunScriptCodeClientPrintSafe(null, `^ff0000MAJOR STORM APPROACHING! GET TO THE CAVE!^`)0-1",
    OnTrigger = "gamerulesCallScriptFunctionStormSlow0-1",
    OnTrigger = "env_soundscape*AddOutputOnPlay gamerules:CallScriptFunction:StormSlow:0:-10-1",
    OnTrigger = "gamerulesPlayVOstorm_siren.mp30-1",
    OnTrigger = "gamerulesPlayVOstorm_siren.mp30-1",
    OnTrigger = "gamerulesPlayVOstorm_siren.mp30-1",
    OnTrigger = "gamerulesRunScriptCodeClientPrint(null, 4 , `MAJOR STORM APPROACHING! GET TO THE CAVE!`)10-1",
    OnTrigger = "playerSetFogControllermist210-1",
    OnTrigger = "obj_*RemoveHealth999910-1",
    OnTrigger = "snd_downpour_strongwindPlaySound10-1",
    OnTrigger = "snd_downpour_strongwindVolume210.2-1",
    OnTrigger = "snd_downpour_strongwindVolume410.4-1",
    OnTrigger = "gamerulesPlayVOstorm_siren.mp320-1",
    OnTrigger = "restartgensTrigger30-1",
    OnTrigger = "playerspawnredEnable30-1",
    OnTrigger = "downpour_start_heavy_relayTrigger0-1",
    OnTrigger = "mist2TurnOn10-1",
    OnTrigger = "snd_downpour_strongwindVolume721-1",
    OnTrigger = "gamerulesRunScriptCodeSetSkyboxTexture(`sky_downpour_heavy_storm`)10-1"
})

::logic_relay1614 <- SpawnEntityFromTable("logic_relay", {
    origin = "-240 -256 16",
    targetname = "restartgens",
    spawnflags = "1",
    classname = "logic_relay",
    hammerid = "1614",
    OnTrigger = "PT_GENERATORBUTTON*Unlock0.11-1",
    OnTrigger = "PT_GENERATORSOUND*StopSound0-1",
    OnTrigger = "stormhintAddOutputdisplay_text Generators are down! Restart them...0-1",
    OnTrigger = "PT_GENERATORMESSAGE*AddOutputmessage Generator Disabled!0-1",
    OnTrigger = "PT_GENERATORMESSAGE*Display0.1-1",
    OnTrigger = "PT_GENERATORBUTTON*RunScriptCodeRemoveOutputAll(!self, `OnPressed`)0-1",
    OnTrigger = "PT_GENERATORGLOW*Enable1-1",
    OnTrigger = "stormhintShow1-1",
    OnTrigger = "PT_GENERATORBUTTON*AddOutputOnPressed gamerules:PlayVO:weapons/flaregun_tube_closestart.wav:0:-10.1-1",
    OnTrigger = "PT_GENERATORBUTTON*AddOutputOnPressed PT_GENERATORSOUND:PlaySound::0:-10.1-1",
    OnTrigger = "PT_GENERATORBUTTON*AddOutputOnPressed PT_GENERATORGLOW:Disable::0:-10.1-1",
    OnTrigger = "PT_GENERATORBUTTON*AddOutputOnPressed PT_GENERATORSPARK:SparkOnce::0:-10.1-1",
    OnTrigger = "PT_GENERATORBUTTON*AddOutputOnPressed PT_GENERATORMESSAGE*:Display::1:-10.1-1",
    OnTrigger = "PT_GENERATORBUTTON*AddOutputOnPressed genspawn:Enable:0:-10.1-1",
    OnTrigger = "PT_GENERATORBUTTON*AddOutputOnPressed genspawn:Disable:0.1:-10.1-1",
    OnTrigger = "PT_GENERATORBUTTON*AddOutputOnPressed !self:Kill:1:-10.1-1",
    OnTrigger = "PT_GENERATORBUTTONAddOutputOnPressed PT_GENERATORGLOW:Kill::0:-10.1-1",
    OnTrigger = "PT_GENERATORBUTTON2AddOutputOnPressed PT_GENERATORGLOW2:Kill::0:-10.1-1",
    OnTrigger = "PT_GENERATORBUTTON3AddOutputOnPressed PT_GENERATORGLOW3:Kill::0:-10.1-1",
    OnTrigger = "PT_GENERATORBUTTONAddOutputOnPressed PT_GENERATORMESSAGE1:AddOutput:message Generator 1 Active:0:-10.1-1",
    OnTrigger = "PT_GENERATORBUTTON2AddOutputOnPressed PT_GENERATORMESSAGE2:AddOutput:message Generator 2 Active:0:-10.1-1",
    OnTrigger = "PT_GENERATORBUTTON3AddOutputOnPressed PT_GENERATORMESSAGE3:AddOutput:message Generator 3 Active:0:-10.1-1"
})

::logic_relay1617 <- SpawnEntityFromTable("logic_relay", {
    origin = "-256 -256 32",
    targetname = "w2end_relay",
    spawnflags = "1",
    classname = "logic_relay",
    hammerid = "1617",
    OnTrigger = "stormhintRunScriptCodeself.SetLocalOrigin(Vector(2396.07 -588.743 -118.727))0-1",
    OnTrigger = "stormhintAddOutputdisplay_text Take???shelter???in???the???cave!0-1",
    OnTrigger = "PT_GENERATORMESSAGE*AddOutputmessage Take???shelter???in???the???cave!0-1",
    OnTrigger = "PT_GENERATORMESSAGE*Display1-1",
    OnTrigger = "stormhintShow1-1",
    OnTrigger = "soundscape_tunnel*AddOutputOnPlay win_bots:RoundWin::10:-10-1"
})

::point_clientcommand1479664 <- SpawnEntityFromTable("point_clientcommand", {
    origin = "126 -2799.22 216.22",
    targetname = "soundplay",
    classname = "point_clientcommand",
    hammerid = "1479664"
})

::env_fade1620 <- SpawnEntityFromTable("env_fade", {
    origin = "-336 -256 0",
    targetname = "fade3",
    spawnflags = "1",
    rendercolor = "2 18 2",
    renderamt = "120",
    duration = "3",
    angles = "0 0 0",
    classname = "env_fade",
    hammerid = "1620"
})

::prop_dynamic1221272 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-1972.01 -329.094 0.18277",
    texframeindex = "0",
    targetname = "PT_GENERATOR",
    StartDisabled = "1",
    spawnflags = "256",
    solid = "6",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_vehicles/generatortrailer01.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "0",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "1221272"
})

::prop_dynamic1233142 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "2140.07 -844.743 -118.727",
    texframeindex = "0",
    targetname = "PT_GENERATOR2",
    StartDisabled = "1",
    spawnflags = "256",
    solid = "6",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_vehicles/generatortrailer01.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "0",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "0 270 0",
    classname = "prop_dynamic",
    hammerid = "1233142"
})

::prop_dynamic1233433 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-473.941 -3238.18 0.182762",
    texframeindex = "0",
    targetname = "PT_GENERATOR3",
    StartDisabled = "1",
    spawnflags = "256",
    solid = "6",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_vehicles/generatortrailer01.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "0",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "0 180 0",
    classname = "prop_dynamic",
    hammerid = "1233433"
})

::keyframe_rope1221314 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-1986.96 -306.79 56.1218",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "PT_GENERATORWIRE",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "90",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "power_3_7",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "1221314"
})

::keyframe_rope1625 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "2164.41 -828.753 -52.9095",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "PT_GENERATORWIRE2",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "90",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "PT_WIRE2",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "1625"
})

::keyframe_rope1221314 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-483.951 -3260.52 56",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "PT_GENERATORWIRE3",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "90",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "conduit2_2",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "1221314"
})

::tf_glow1233053 <- SpawnEntityFromTable("tf_glow", {
    origin = "-1975.77 -346.041 85.7429",
    targetname = "PT_GENERATORGLOW",
    target = "PT_GENERATOR",
    StartDisabled = "1",
    GlowColor = "0 255 0 255",
    classname = "tf_glow",
    hammerid = "1233053"
})

::tf_glow1233140 <- SpawnEntityFromTable("tf_glow", {
    origin = "2123.13 -840.983 23.1665",
    targetname = "PT_GENERATORGLOW2",
    target = "PT_GENERATOR2",
    StartDisabled = "1",
    GlowColor = "0 0 255 255",
    classname = "tf_glow",
    hammerid = "1233140"
})

::tf_glow1233437 <- SpawnEntityFromTable("tf_glow", {
    origin = "-470.18 -3221.24 85.7429",
    targetname = "PT_GENERATORGLOW3",
    target = "PT_GENERATOR3",
    StartDisabled = "1",
    GlowColor = "255 0 0 255",
    classname = "tf_glow",
    hammerid = "1233437"
})

::game_text1233035 <- SpawnEntityFromTable("game_text", {
    origin = "-1991.77 -346.041 85.7429",
    y = "0.1",
    x = "1",
    targetname = "PT_GENERATORMESSAGE1",
    spawnflags = "1",
    message = "Generator 1 Active",
    holdtime = "999",
    fxtime = "0.02",
    fadeout = "0.5",
    fadein = "0.02",
    effect = "2",
    color2 = "255 255 255",
    color = "0 255 0",
    channel = "2",
    classname = "game_text",
    hammerid = "1233035"
})

::game_text1233270 <- SpawnEntityFromTable("game_text", {
    origin = "2112 -803.483 -16.8417",
    y = "0.2",
    x = "1",
    targetname = "PT_GENERATORMESSAGE2",
    spawnflags = "1",
    message = "Generator 2 Active",
    holdtime = "999",
    fxtime = "0.02",
    fadeout = "0.5",
    fadein = "0.02",
    effect = "2",
    color2 = "255 255 255",
    color = "0 0 255",
    channel = "4",
    classname = "game_text",
    hammerid = "1233270"
})

::game_text1632 <- SpawnEntityFromTable("game_text", {
    origin = "-432.68 -3210.11 92.0678",
    y = "0.3",
    x = "1",
    targetname = "PT_GENERATORMESSAGE3",
    spawnflags = "1",
    message = "Generator 3 Active",
    holdtime = "999",
    fxtime = "0.02",
    fadeout = "0.5",
    fadein = "0.02",
    effect = "2",
    color2 = "255 255 255",
    color = "255 0 0",
    channel = "5",
    classname = "game_text",
    hammerid = "1632"
})

::env_spark1221469 <- SpawnEntityFromTable("env_spark", {
    origin = "-1988 -304.761 56",
    TrailLength = "2",
    targetname = "PT_GENERATORSPARK",
    spawnflags = "640",
    MaxDelay = "0",
    Magnitude = "5",
    angles = "0 90 0",
    classname = "env_spark",
    hammerid = "1221469"
})

::env_spark1233149 <- SpawnEntityFromTable("env_spark", {
    origin = "2164.41 -828.753 -52.9095",
    TrailLength = "2",
    targetname = "PT_GENERATORSPARK2",
    spawnflags = "640",
    MaxDelay = "0",
    Magnitude = "5",
    angles = "0 0 0",
    classname = "env_spark",
    hammerid = "1233149"
})

::env_spark1233367 <- SpawnEntityFromTable("env_spark", {
    origin = "-457.951 -3262.52 56",
    TrailLength = "2",
    targetname = "PT_GENERATORSPARK3",
    spawnflags = "640",
    MaxDelay = "0",
    Magnitude = "5",
    angles = "0 270 0",
    classname = "env_spark",
    hammerid = "1233367"
})

::info_particle_system1492239 <- SpawnEntityFromTable("info_particle_system", {
    origin = "408 -3976 1072",
    targetname = "rain_angledstorm",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "-45 0 0",
    classname = "info_particle_system",
    hammerid = "1492239"
})

::func_rot_button1505222 <- SpawnEntityFromTable("func_rot_button", {
    model = "*83",
    wait = "30",
    vrad_brush_cast_shadows = "0",
    texframeindex = "0",
    targetname = "PT_GENERATORBUTTON",
    speed = "2000",
    spawnflags = "3617",
    sounds = "21",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "-2009.92 -352.4 51.31",
    effects = "0",
    distance = "10",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_rot_button",
    hammerid = "1505222",
    OnPressed = "gamerulesPlayVOweapons/flaregun_tube_closestart.wav0-1",
    OnPressed = "PT_GENERATORSOUNDPlaySound0-1",
    OnPressed = "PT_GENERATORGLOWDisable0-1",
    OnPressed = "PT_GENERATORSPARKSparkOnce0-1",
    OnPressed = "!selfLock0-1",
    OnPressed = "genspawnEnable0-1",
    OnPressed = "genspawnDisable1-1",
    OnPressed = "PT_GENERATORMESSAGE1Display0-1",
    OnPressed = "midspawnforcefieldEnable0-1",
    OnPressed = "frontspawnbarricadeEnable0-1",
    OnPressed = "PT_SWITCHBUTTON4RunScriptCodeRemoveOutputAll(self, `OnPressed`)0-1",
    OnPressed = "PT_SWITCHBUTTON4AddOutputOnPressed fftogglered:Trigger::0:-10.1-1",
    OnPressed = "PT_SWITCHBUTTON4Unlock0.1-1",
    OnPressed = "glow4Enable0.1-1",
    OnPressed = "glow3Enable0.1-1",
    OnPressed = "PT_SWITCHBUTTON2RunScriptCodeRemoveOutputAll(self, `OnPressed`)0-1",
    OnPressed = "PT_SWITCHBUTTON2AddOutputOnPressed fftogglered:Trigger::0:-10.1-1",
    OnPressed = "PT_SWITCHBUTTON2Unlock0.1-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_rot_button1505222.KeyValueFromInt("solid", 2)
func_rot_button1505222.KeyValueFromString(""mins"", "-1 -1 -1")
func_rot_button1505222.KeyValueFromString(""maxs"", "1 1 1")

::func_rot_button1504938 <- SpawnEntityFromTable("func_rot_button", {
    model = "*84",
    wait = "30",
    vrad_brush_cast_shadows = "0",
    texframeindex = "0",
    targetname = "PT_GENERATORBUTTON2",
    speed = "2000",
    spawnflags = "3617",
    sounds = "21",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "2163.88 -836.27 -68.08",
    effects = "0",
    distance = "10",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_rot_button",
    hammerid = "1504938",
    OnPressed = "gamerulesPlayVOweapons/flaregun_tube_closestart.wav0-1",
    OnPressed = "!selfLock30.01-1",
    OnPressed = "genspawnEnable0-1",
    OnPressed = "genspawnDisable1-1",
    OnPressed = "storm_casePickRandomShuffle0-1",
    OnPressed = "PT_GENERATORSOUND2PlaySound0-1",
    OnPressed = "PT_GENERATORGLOW2Disable0-1",
    OnPressed = "PT_GENERATORSPARK2SparkOnce0-1",
    OnPressed = "PT_GENERATORMESSAGE2Display0-1",
    OnPressed = "extrafrontspawn*Enable0-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_rot_button1504938.KeyValueFromInt("solid", 2)
func_rot_button1504938.KeyValueFromString(""mins"", "-1 -1 -1")
func_rot_button1504938.KeyValueFromString(""maxs"", "1 1 1")

::ambient_generic1233575 <- SpawnEntityFromTable("ambient_generic", {
    origin = "-1998.39 -331.38 46.87",
    volstart = "0",
    targetname = "PT_GENERATORSOUND",
    spinup = "0",
    spindown = "0",
    spawnflags = "16",
    SourceEntityName = "PT_GENERATOR",
    radius = "2048",
    preset = "2",
    pitchstart = "100",
    pitch = "100",
    message = "vehicles/crane/crane_startengine1.wav",
    lfotype = "0",
    lforate = "0",
    lfomodvol = "0",
    lfomodpitch = "0",
    health = "10",
    fadeoutsecs = "0",
    fadeinsecs = "0",
    cspinup = "0",
    classname = "ambient_generic",
    hammerid = "1233575"
})

::ambient_generic1233575 <- SpawnEntityFromTable("ambient_generic", {
    origin = "-1998.39 -331.38 46.87",
    volstart = "0",
    targetname = "PT_GENERATORSOUND",
    spinup = "0",
    spindown = "0",
    spawnflags = "16",
    SourceEntityName = "PT_GENERATOR",
    radius = "2048",
    preset = "2",
    pitchstart = "100",
    pitch = "100",
    message = "vehicles/crane/crane_startengine1.wav",
    lfotype = "0",
    lforate = "0",
    lfomodvol = "0",
    lfomodpitch = "0",
    health = "10",
    fadeoutsecs = "0",
    fadeinsecs = "0",
    cspinup = "0",
    classname = "ambient_generic",
    hammerid = "1233575"
})

::ambient_generic1233575 <- SpawnEntityFromTable("ambient_generic", {
    origin = "2140.33 -819.43 -76.93",
    volstart = "0",
    targetname = "PT_GENERATORSOUND2",
    spinup = "0",
    spindown = "0",
    spawnflags = "16",
    SourceEntityName = "PT_GENERATOR2",
    radius = "2048",
    preset = "2",
    pitchstart = "100",
    pitch = "100",
    message = "vehicles/crane/crane_startengine1.wav",
    lfotype = "0",
    lforate = "0",
    lfomodvol = "0",
    lfomodpitch = "0",
    health = "10",
    fadeoutsecs = "0",
    fadeinsecs = "0",
    cspinup = "0",
    classname = "ambient_generic",
    hammerid = "1233575"
})

::ambient_generic1233575 <- SpawnEntityFromTable("ambient_generic", {
    origin = "2140.33 -819.43 -76.93",
    volstart = "0",
    targetname = "PT_GENERATORSOUND2",
    spinup = "0",
    spindown = "0",
    spawnflags = "16",
    SourceEntityName = "PT_GENERATOR2",
    radius = "2048",
    preset = "2",
    pitchstart = "100",
    pitch = "100",
    message = "vehicles/crane/crane_startengine1.wav",
    lfotype = "0",
    lforate = "0",
    lfomodvol = "0",
    lfomodpitch = "0",
    health = "10",
    fadeoutsecs = "0",
    fadeinsecs = "0",
    cspinup = "0",
    classname = "ambient_generic",
    hammerid = "1233575"
})

::func_rot_button1505001 <- SpawnEntityFromTable("func_rot_button", {
    model = "*85",
    wait = "30",
    vrad_brush_cast_shadows = "0",
    texframeindex = "0",
    targetname = "PT_GENERATORBUTTON3",
    speed = "2000",
    spawnflags = "3617",
    sounds = "21",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "-468.02 -3263.18 53.78",
    effects = "0",
    distance = "10",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_rot_button",
    hammerid = "1505001",
    OnPressed = "gamerulesPlayVOweapons/flaregun_tube_closestart.wav0-1",
    OnPressed = "!selfLock30.01-1",
    OnPressed = "genspawnEnable0-1",
    OnPressed = "genspawnDisable1-1",
    OnPressed = "storm_casePickRandomShuffle0-1",
    OnPressed = "PT_GENERATORBUTTON2Lock0-1",
    OnPressed = "PT_GENERATORGLOW3Disable0-1",
    OnPressed = "PT_GENERATORSPARK3SparkOnce0-1",
    OnPressed = "PT_GENERATORMESSAGE3Display0-1",
    OnPressed = "PT_GENERATORSOUND3PlaySound0-1",
    OnPressed = "PT_GENERATORTIMER2RunScriptCodeRemoveOutputAll(!self, `OnPressed`)0-1",
    OnPressed = "PT_GENERATORTIMER2AddOutputOnTrigger PT_GENERATORTIMER:Trigger::1:-11-1",
    OnPressed = "PT_GENERATORTIMER2Trigger2-1",
    OnPressed = "playerspawnredEnable0-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_rot_button1505001.KeyValueFromInt("solid", 2)
func_rot_button1505001.KeyValueFromString(""mins"", "-1 -1 -1")
func_rot_button1505001.KeyValueFromString(""maxs"", "1 1 1")

::ambient_generic1233575 <- SpawnEntityFromTable("ambient_generic", {
    origin = "-448 -3244 58.6891",
    volstart = "0",
    targetname = "PT_GENERATORSOUND3",
    spinup = "0",
    spindown = "0",
    spawnflags = "16",
    SourceEntityName = "PT_GENERATOR3",
    radius = "2048",
    preset = "2",
    pitchstart = "100",
    pitch = "100",
    message = "vehicles/crane/crane_startengine1.wav",
    lfotype = "0",
    lforate = "0",
    lfomodvol = "0",
    lfomodpitch = "0",
    health = "10",
    fadeoutsecs = "0",
    fadeinsecs = "0",
    cspinup = "0",
    classname = "ambient_generic",
    hammerid = "1233575"
})

::logic_relay1533 <- SpawnEntityFromTable("logic_relay", {
    origin = "-288 -256 16",
    targetname = "ffhint_relay",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "1533",
    OnTrigger = "glow3Enable5-1",
    OnTrigger = "afkslayEnable0-1",
    OnTrigger = "!selfRunScriptCodeAnnotations(4)3-1"
})

::func_rot_button1196938 <- SpawnEntityFromTable("func_rot_button", {
    model = "*86",
    wait = "45",
    targetname = "PT_SWITCHBUTTON4",
    speed = "2000",
    spawnflags = "5665",
    sounds = "21",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "1585.55 -110 -41.64",
    distance = "10",
    angles = "0 0 0",
    classname = "func_rot_button",
    hammerid = "1196938",
    OnPressed = "fftoggleTrigger0-1",
    OnPressed = "!selfLock0-1",
    OnPressed = "!selfUnlock45-1",
    OnPressed = "glow4Disable0-1",
    OnPressed = "glow4Enable45-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_rot_button1196938.KeyValueFromInt("solid", 2)
func_rot_button1196938.KeyValueFromString(""mins"", "-1 -1 -1")
func_rot_button1196938.KeyValueFromString(""maxs"", "1 1 1")

::info_particle_system1087763 <- SpawnEntityFromTable("info_particle_system", {
    origin = "368 -2304 0",
    targetname = "drip_storm",
    start_active = "0",
    effect_name = "env_rain_guttersplash",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "1087763"
})

::info_player_teamspawn1234514 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "612.099 -1641.37 16",
    TeamNum = "0",
    targetname = "frontspawnbarricade",
    StartDisabled = "1",
    spawnflags = "511",
    angles = "0 0 0",
    classname = "info_player_teamspawn",
    hammerid = "1234514"
})

::func_forcefield1273164 <- SpawnEntityFromTable("func_forcefield", {
    model = "*87",
    vrad_brush_cast_shadows = "0",
    texframeindex = "0",
    TeamNum = "2",
    targetname = "tunnelforcefield",
    StartDisabled = "1",
    spawnflags = "2",
    solidbsp = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "2323 -183.94 32.94",
    effects = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_forcefield",
    hammerid = "1273164",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_forcefield1273164.KeyValueFromInt("solid", 2)
func_forcefield1273164.KeyValueFromString(""mins"", "-1 -1 -1")
func_forcefield1273164.KeyValueFromString(""maxs"", "1 1 1")

::item_ammopack_medium1547 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "1967.53 -1316.75 -107.073",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "1547"
})

::item_healthkit_medium1548 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "1999.53 -1316.75 -107.073",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "1548"
})

::item_ammopack_medium1549 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "1584.76 -1999.89 -127.744",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "1549"
})

::item_healthkit_medium1550 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "1616.76 -1999.89 -127.744",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "1550"
})

::item_ammopack_medium1551 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "2075.18 -2244.13 -130.76",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "1551"
})

::item_healthkit_medium1552 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "2075.18 -2212.13 -130.76",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "1552"
})

::item_ammopack_medium1553 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "2474.72 -1868.87 -129.657",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "1553"
})

::item_healthkit_medium1554 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "2506.72 -1868.87 -129.657",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "1554"
})

::item_ammopack_medium1555 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "2821.02 -1703.26 -128.249",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "1555"
})

::item_healthkit_medium1556 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "2853.02 -1703.26 -128.249",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "1556"
})

::item_ammopack_medium1557 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "142.146 -2286 0.147598",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "1557"
})

::item_healthkit_medium1558 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "174.146 -2286 0.147598",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "1558"
})

::item_ammopack_medium1559 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "1072.24 -3431.31 0.198975",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "1559"
})

::item_healthkit_medium1560 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "1063.96 -3400.4 0.198975",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "1560"
})

::item_ammopack_medium1561 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "1181.81 -2768.23 264.256",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "1561"
})

::item_healthkit_medium1562 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "1181.81 -2736.23 264.256",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "1562"
})

::item_ammopack_medium1563 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "902.8 -1427.19 0.256165",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "1563"
})

::item_healthkit_medium1564 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "934.8 -1427.19 0.256165",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "1564"
})

::item_ammopack_medium1565 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "1419.11 -1700.9 0.256165",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "1565"
})

::item_healthkit_medium1566 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "1451.11 -1700.9 0.256165",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "1566"
})

::item_ammopack_medium1567 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "2434.11 -652.275 -129.184",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 105 0",
    classname = "item_ammopack_medium",
    hammerid = "1567"
})

::item_healthkit_medium1568 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "2425.83 -621.365 -129.184",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 105 0",
    classname = "item_healthkit_medium",
    hammerid = "1568"
})

::item_ammopack_medium1569 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "1487.04 -90.269 -112.761",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "1569"
})

::item_healthkit_medium1570 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "1519.04 -90.269 -120.761",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "1570"
})

::item_ammopack_medium1571 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "1034.62 -535.114 -14.2716",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "1571"
})

::item_healthkit_medium1572 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "1026.34 -504.204 -14.2716",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "1572"
})

::item_ammopack_medium1573 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "-523.736 -2900.3 5.4218",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "1573"
})

::item_healthkit_medium1574 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "-523.736 -2868.3 5.4218",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "1574"
})

::item_ammopack_medium1575 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "2126.04 -1081.83 -127.744",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 270 0",
    classname = "item_ammopack_medium",
    hammerid = "1575"
})

::item_healthkit_medium1576 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "2126.04 -1113.83 -127.744",
    targetname = "PT_AMMO",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 270 0",
    classname = "item_healthkit_medium",
    hammerid = "1576"
})

::info_observer_point2625084 <- SpawnEntityFromTable("info_observer_point", {
    origin = "2345.84 -1558 153.99",
    fov = "0",
    defaultwelcome = "0",
    angles = "13.1705 89.862 1.66164",
    classname = "info_observer_point",
    hammerid = "2625084"
})

::trigger_once1247793 <- SpawnEntityFromTable("trigger_once", {
    model = "*88",
    targetname = "yardtrigger",
    StartDisabled = "1",
    spawnflags = "1",
    origin = "1372 64 144",
    filtername = "filter_blu_team",
    angles = "0 0 0",
    classname = "trigger_once",
    hammerid = "1247793",
    OnStartTouch = "gamerulesPlayVOmusic/hl2_song30.mp32-1",
    OnStartTouch = "gamerulesRunScriptCodeAnnotations(6)2-1",
    OnStartTouch = "gamerulesRunScriptCodeSetTurretState(0)10-1",
    OnStartTouch = "PT_WIRESPARK2Start10-1",
    OnStartTouch = "gamerulesPlayVOweapons/physcannon/superphys_small_zap1.wav10-1",
    OnStartTouch = "frontspawnbarricadeEnable22-1",
    OnStartTouch = "PT_SWITCHBUTTON2Unlock24-1",
    OnStartTouch = "tf_glowDisable25-1",
    OnStartTouch = "PT_SWITCHBUTTON4Unlock25-1",
    OnStartTouch = "glow3Enable25.01-1",
    OnStartTouch = "glow4Enable25.01-1",
    OnStartTouch = "PT_SWITCHBUTTON2AddOutputOnPressed fftoggle:Trigger::0:-125-1",
    OnStartTouch = "gamerulesRunScriptCodeAnnotations(5)25-1",
    OnStartTouch = "playerspawnredEnable5-1",
    OnStartTouch = "extrafrontspawn*Enable5.2-1",
    OnStartTouch = "explodecaptureEnable25-1",
    OnStartTouch = "bomb1_timedEnable25-1",
    OnStartTouch = "bomb1_timedSetTeam325-1",
    OnStartTouch = "bomb1_timedAddOutputOnPickup bombhint:Kill::0:-10-1",
    OnStartTouch = "bomb1_timedAddOutputOnPickup midspawnforcefield:Enable::0:-10-1",
    OnStartTouch = "spawnteleAddOutputtarget yardhint5-1",
    OnStartTouch = "spawnteleEnable5.1-1",
    OnStartTouch = "obj_*SetTeam30-1",
    OnStartTouch = "obj_*SetSkin10-1",
    OnStartTouch = "spawnteleDisable5.2-1",
    OnStartTouch = "obj_dispenserSetHealth3000-1",
    OnStartTouch = "tunnelforcefieldbluEnable10-1",
    OnStartTouch = "PT_SWITCHBUTTON2RunScriptCodeRemoveOutputAll(self, `OnPressed`)23-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
trigger_once1247793.KeyValueFromInt("solid", 2)
trigger_once1247793.KeyValueFromString(""mins"", "-1 -1 -1")
trigger_once1247793.KeyValueFromString(""maxs"", "1 1 1")

::keyframe_rope1107591 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "2443.01 -1153.38 21",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "PT_WIRE8",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "40",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "PT_WIRE4",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "1107591"
})

::keyframe_rope1107582 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "2183.74 -1160.31 219.031",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "PT_WIRE4",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "40",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "PT_WIRE3",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "1107582"
})

::keyframe_rope1107422 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "2378.15 -335.65 217",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "PT_WIRE3",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "40",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "1107422"
})

::keyframe_rope1107607 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "2663.46 -1273.17 23",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "PT_WIRE9",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "40",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "PT_WIRE8",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "1107607"
})

::prop_dynamic1107641 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "2164.55 -210.796 178.432",
    texframeindex = "0",
    targetname = "PT_BOX",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_c17/utilityconnecter006c.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "0",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "-75 90 0",
    classname = "prop_dynamic",
    hammerid = "1107641"
})

::keyframe_rope1107427 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "2164.05 -235 185.559",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "PT_WIRE2",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "40",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "PT_WIRE3",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "1107427"
})

::keyframe_rope1107616 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "2711.95 -1721.22 89",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "PT_WIRE10",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "40",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "PT_WIRE9",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "1107616"
})

::keyframe_rope1107625 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "2915.82 -2042.47 -27.5327",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "PT_WIRE11",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "40",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "PT_WIRE10",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "1107625"
})

::info_particle_system1107680 <- SpawnEntityFromTable("info_particle_system", {
    origin = "2165 -233.5 183.94",
    targetname = "PT_WIRESPARK2",
    start_active = "1",
    flag_as_weather = "0",
    effect_name = "unusual_sparkler_orange",
    cpoint7_parent = "0",
    cpoint6_parent = "0",
    cpoint5_parent = "0",
    cpoint4_parent = "0",
    cpoint3_parent = "0",
    cpoint2_parent = "0",
    cpoint1_parent = "0",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "1107680"
})

::env_fade4094 <- SpawnEntityFromTable("env_fade", {
    origin = "-336 -256 16",
    targetname = "fade2",
    spawnflags = "5",
    rendercolor = "2 18 2",
    renderamt = "120",
    duration = "3",
    angles = "0 0 0",
    classname = "env_fade",
    hammerid = "4094"
})

::func_button1019558 <- SpawnEntityFromTable("func_button", {
    model = "*89",
    wait = "10",
    unlocked_sound = "0",
    unlocked_sentence = "0",
    speed = "5",
    spawnflags = "513",
    sounds = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "-3400 -1310.5 64.5",
    movedir = "0 0 0",
    locked_sound = "0",
    locked_sentence = "0",
    lip = "0",
    health = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_button",
    hammerid = "1019558",
    OnPressed = "snd_rosenPlaySound0-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_button1019558.KeyValueFromInt("solid", 2)
func_button1019558.KeyValueFromString(""mins"", "-1 -1 -1")
func_button1019558.KeyValueFromString(""maxs"", "1 1 1")

::prop_dynamic2386383 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "576.368 -1105.87 7.56396",
    texframeindex = "0",
    targetname = "midblockerdebris",
    StartDisabled = "1",
    spawnflags = "256",
    solid = "6",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_medical/beer_barrels.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "1",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "0 90 0",
    classname = "prop_dynamic",
    hammerid = "2386383"
})

::func_rot_button1196918 <- SpawnEntityFromTable("func_rot_button", {
    model = "*90",
    wait = "8",
    targetname = "PT_SWITCHBUTTON3",
    speed = "2000",
    spawnflags = "7713",
    sounds = "21",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "-112.1 -91.06 38.26",
    distance = "10",
    angles = "0 0 0",
    classname = "func_rot_button",
    hammerid = "1196918",
    OnPressed = "PT_SHAKEStartShake0.15-1",
    OnPressed = "PT_WOODEXPLODEExplode0.15-1",
    OnPressed = "PT_WOODFXStart-1-1",
    OnPressed = "PT_WOODCARTKill0.5-1-1",
    OnPressed = "PT_WOODSetAnimationmannworksL0.15-1",
    OnPressed = "PT_WOODKill4-1",
    OnPressed = "gamerulesPlayVOambient/explosions/explode_3.wav0-1",
    OnPressed = "gamerulesPlayVOambient/explosions/explode_4.wav0.1-1",
    OnPressed = "PT_SHAKEStartShake0.1-1",
    OnPressed = "PT_WOODBREAKABLE*Break0-1",
    OnPressed = "!selfKill5-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_rot_button1196918.KeyValueFromInt("solid", 2)
func_rot_button1196918.KeyValueFromString(""mins"", "-1 -1 -1")
func_rot_button1196918.KeyValueFromString(""maxs"", "1 1 1")

::func_rot_button1135370 <- SpawnEntityFromTable("func_rot_button", {
    model = "*91",
    wait = "67",
    targetname = "PT_SWITCHBUTTON2",
    speed = "2000",
    spawnflags = "7713",
    sounds = "21",
    rendercolor = "255 255 255",
    renderamt = "255",
    parentname = "PT_SWITCH2",
    origin = "2910.52 -2048.26 -53.27",
    distance = "10",
    angles = "0 0 0",
    classname = "func_rot_button",
    hammerid = "1135370",
    OnUseLocked = "glow4Disable0-1",
    OnPressed = "gamerulesCallScriptFunctionBeginCount0-1",
    OnPressed = "gamerulesRunScriptCodeClientPrintSafe(null, `^038000The forcefield will disable in 60 seconds...^`)0-1",
    OnPressed = "gamerulesRunScriptCodeClientPrint(null, 4 , `The forcefield will disable in 60 seconds...`)0-1",
    OnPressed = "thirdspawn*Enable0-1",
    OnPressed = "!selfLock0-1",
    OnPressed = "gamerulesPlayVObuttons/blip1.wav30-1",
    OnPressed = "gamerulesPlayVObuttons/blip1.wav30.15-1",
    OnPressed = "gamerulesRunScriptCodeClientPrint(null, 4 , `30 SECONDS UNTIL FORCE FIELD OPENS!`)30-1",
    OnPressed = "gamerulesRunScriptCodeClientPrintSafe(null, `^d4c60230 Seconds until the force field opens!^`)30-1",
    OnPressed = "func_nav_prerequisiteKill30-1",
    OnPressed = "gamerulesPlayVOnpc/turret_floor/die.wav60-1",
    OnPressed = "tunnelforcefield*Disable60-1",
    OnPressed = "tunnelforcefield2*Kill60-1",
    OnPressed = "thirdspawn*Disable60-1",
    OnPressed = "PT_WIRESPARK2Stop60-1",
    OnPressed = "gamerulesRunScriptCodeClientPrintSafe(null, `^FF0000Forcefield Disabled!^`)60-1",
    OnPressed = "gamerulesRunScriptCodeClientPrint(null, 4 , `FORCEFIELD DISABLED!`)60-1",
    OnPressed = "yardtriggerEnable65-1",
    OnPressed = "!selfLock66-1",
    OnPressed = "obj*RunScriptCodeself.SetTeam(3)60-1",
    OnPressed = "gamerulesRunScriptCodeSetTurretState(1)60-1",
    OnPressed = "!selfCallScriptFunctionStunBots60-1",
    OnPressed = "PT_DISPENSERRunScriptCodeself.SetSkin(1)1-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_rot_button1135370.KeyValueFromInt("solid", 2)
func_rot_button1135370.KeyValueFromString(""mins"", "-1 -1 -1")
func_rot_button1135370.KeyValueFromString(""maxs"", "1 1 1")

::math_counter1123525 <- SpawnEntityFromTable("math_counter", {
    origin = "2114.42 -4354.24 272",
    targetname = "tutorial_cycle",
    startvalue = "0",
    min = "0",
    max = "7",
    classname = "math_counter",
    hammerid = "1123525",
    OutValue = "tutorial_caseInValue0-1",
    OutValue = "tutorial_timerCancelPending0-1",
    OutValue = "tutorial_timerTrigger0.1-1",
    OnHitMax = "tutorialbuttonLock1.1-1",
    OnHitMax = "!selfSetValue03-1",
    OnHitMax = "tutoriallightTurnOff3-1",
    OnHitMax = "tutorialhintSetTextPress your canteen button to begin the tutorial.3-1",
    OnHitMax = "tutorialbuttonUnlock3-1",
    OnHitMax = "tutorialdisplaySetModelmodels/class_menu/random_class_icon.mdl3-1",
    OnHitMax = "tutorialdisplayRunScriptCodeself.SetLocalAngles(QAngle(0 0 0))3-1",
    OnHitMax = "tutorialglowEnable3-1"
})

::logic_relay1123527 <- SpawnEntityFromTable("logic_relay", {
    origin = "2114.42 -4354.24 288",
    targetname = "tutorial_timer",
    classname = "logic_relay",
    hammerid = "1123527",
    OnTrigger = "tutorial_cycleSetValue740-1"
})

::logic_case1123529 <- SpawnEntityFromTable("logic_case", {
    origin = "2114.42 -4354.24 304",
    targetname = "tutorial_case",
    Case07 = "7",
    Case06 = "6",
    Case05 = "5",
    Case04 = "4",
    Case03 = "3",
    Case02 = "2",
    Case01 = "1",
    classname = "logic_case",
    hammerid = "1123529",
    OnCase01 = "tutorialhintSetTextThis mission uses a lot of glow outlines! glow_outline_effect_enabled 1 in console0-1",
    OnCase01 = "tutorialhintSetRainbow00-1",
    OnCase01 = "tutorialhintSetTextSize30-1",
    OnCase01 = "tutorialhintSetColor247 158 150-1",
    OnCase01 = "tutoriallightColor247 158 150-1",
    OnCase01 = "tutorialdisplaySetModelmodels/player/items/mvm_loot/all_class/mvm_flask_generic.mdl0-1",
    OnCase02 = "tutorialhintSetTextWeapon cases will supply you with guns and ammo0-1",
    OnCase02 = "tutorialhintSetColor3 128 00-1",
    OnCase02 = "tutorialhintSetTextSize50-1",
    OnCase02 = "tutorialdisplaySetModelmodels/props_island/mannco_case_large.mdl0-1",
    OnCase02 = "tutoriallightColor3 128 00-1",
    OnCase02 = "tutorialdisplayRunScriptCodeself.SetLocalAngles(QAngle(0 0 0))0-1",
    OnCase03 = "tutorialhintSetTextPrimary weapons have very limited ammo! Use secondaries0-1",
    OnCase03 = "tutorialhintSetColor133 46 2550-1",
    OnCase02 = "tutorialhintSetTextSize30-1",
    OnCase03 = "tutoriallightColor133 46 2550-1",
    OnCase03 = "tutorialdisplaySetModelmodels/weapons/w_models/w_rocketlauncher.mdl0-1",
    OnCase04 = "tutorialhintSetTextYou cannot respawn normally!  Don't get hit...0-1",
    OnCase04 = "tutorialhintSetColor255 47 280-1",
    OnCase02 = "tutorialhintSetTextSize50-1",
    OnCase04 = "tutoriallightColor255 47 280-1",
    OnCase04 = "tutorialdisplaySetModelmodels/player/soldier.mdl0-1",
    OnCase04 = "tutorialdisplaySetAnimationprimary_death_burning0.5-1",
    OnCase05 = "tutorialhintSetTextCollect respawn crystals to revive dead teammates!0-1",
    OnCase05 = "tutorialhintSetColor0 78 2550-1",
    OnCase05 = "tutorialdisplaySetModelmodels/props_moonbase/moon_gravel_crystal_blue.mdl0-1",
    OnCase05 = "tutorialdisplayAddOutputmodelscale 1.30-1",
    OnCase05 = "tutorialdisplayRunScriptCodeself.SetLocalAngles(QAngle(45 0 0))0-1",
    OnCase05 = "tutoriallightColor0 78 2550-1",
    OnCase06 = "tutorialhintSetTextDrop the bomb near blockades to destroy them.0-1",
    OnCase06 = "tutorialhintSetColor0 191 1850-1",
    OnCase06 = "tutoriallightColor0 191 1850-1",
    OnCase06 = "tutorialdisplaySetModelmodels/props_td/atom_bomb.mdl0-1",
    OnCase06 = "tutorialdisplayskin10-1",
    OnCase06 = "tutorialdisplayAddOutputmodelscale 10-1",
    OnCase06 = "tutorialdisplayRunScriptCodeself.SetLocalAngles(QAngle(0 0 0))0-1",
    OnCase07 = "tutorialhintSetTextTutorial Complete!0-1",
    OnCase07 = "tutorialhintSetRainbow10-1",
    OnCase07 = "tutoriallightTurnOff0-1",
    OnCase01 = "tutorialglowDisable0-1",
    OnCase01 = "tutorialglow2Enable0-1",
    OnCase01 = "tutorialglow2SetGlowColor247 158 150.01-1",
    OnCase02 = "tutorialglow2SetGlowColor3 128 00-1",
    OnCase03 = "tutorialglow2SetGlowColor133 46 2550-1",
    OnCase04 = "tutorialglow2SetGlowColor255 47 280-1",
    OnCase05 = "tutorialglow2SetGlowColor0 78 2550-1",
    OnCase06 = "tutorialglow2SetGlowColor0 191 1850-1",
    OnCase07 = "tutorialglow2Disable0-1"
})

::tf_glow1123531 <- SpawnEntityFromTable("tf_glow", {
    origin = "2112 -4354.24 320",
    targetname = "tutorialglow",
    target = "tutorialconsole",
    StartDisabled = "1",
    Mode = "2",
    GlowColor = "3 128 0 255",
    classname = "tf_glow",
    hammerid = "1123531"
})

::prop_dynamic1499 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "2012.67 -4286.6 353.826",
    texframeindex = "0",
    targetname = "tutorialdisplay",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "0",
    skin = "1",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "15",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    parentname = "tutorialspin",
    modelscale = "1.0",
    model = "models/class_menu/random_class_icon.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "0",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "0 270 0",
    classname = "prop_dynamic",
    hammerid = "1499"
})

::prop_dynamic1500 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "2012.67 -4374.02 297.031",
    texframeindex = "0",
    targetname = "tutorialconsole",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "6",
    skin = "1",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_powerhouse/powerhouse_console01.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "0",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "0 180 0",
    classname = "prop_dynamic",
    hammerid = "1500"
})

::func_rot_button1123347 <- SpawnEntityFromTable("func_rot_button", {
    model = "*92",
    volume = "8",
    targetname = "tutorialspin",
    spawnflags = "65",
    solidbsp = "0",
    rendermode = "10",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "2012.5 -4286.52 262",
    message = "hl1/ambience/labdrone2",
    maxspeed = "48",
    fanfriction = "20",
    angles = "0 0 0",
    classname = "func_rotating",
    hammerid = "1111765",
    model = "*93",
    wait = "3",
    targetname = "tutorialbutton",
    speed = "2000",
    spawnflags = "1057",
    sounds = "21",
    rendercolor = "255 255 255",
    renderamt = "255",
    parentname = "tutorialconsole",
    origin = "2014.93 -4374.6 308.11",
    distance = "10",
    angles = "0 0 0",
    classname = "func_rot_button",
    hammerid = "1123347",
    OnPressed = "tutorial_cycleAdd10-1",
    OnPressed = "tutorialglowDisable0-1",
    OnPressed = "tutoriallightTurnOn0-1",
    OnPressed = "tutorialdisplayEnable0-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_rot_button1123347.KeyValueFromInt("solid", 2)
func_rot_button1123347.KeyValueFromString(""mins"", "-1 -1 -1")
func_rot_button1123347.KeyValueFromString(""maxs"", "1 1 1")

::func_flagdetectionzone1273215 <- SpawnEntityFromTable("func_flagdetectionzone", {
    model = "*94",
    targetname = "truckexplode",
    StartDisabled = "1",
    origin = "1007.99 -1944 64",
    angles = "0 0 0",
    alarm = "0",
    classname = "func_flagdetectionzone",
    hammerid = "1273215",
    OnStartTouchFlag = "bomb1_timedForceDrop0-1",
    OnDroppedFlag = "PT_SWITCHBUTTONKill0-1",
    OnDroppedFlag = "glow2Disable0-1",
    OnDroppedFlag = "bomb1_timedSetTeam20-1",
    OnDroppedFlag = "fourthspawnDisable0-1",
    OnDroppedFlag = "gamerulesRunScriptCodeClientPrintSafe(null, `^FF0000GET AWAY FROM THE BARRICADE!^`)0-1",
    OnDroppedFlag = "gamerulesRunScriptCodeClientPrintSafe(null, `^FF0000GET AWAY FROM THE BARRICADE!^`)0-1",
    OnDroppedFlag = "gamerulesRunScriptCodeClientPrintSafe(null, `^FF0000GET AWAY FROM THE BARRICADE!^`)0-1",
    OnDroppedFlag = "gamerulesRunScriptCodeClientPrintSafe(null, `^FF0000GET AWAY FROM THE BARRICADE!^`)0-1",
    OnDroppedFlag = "gamerulesRunScriptCodeClientPrintSafe(null, `^FF0000GET AWAY FROM THE BARRICADE!^`)0-1",
    OnDroppedFlag = "gamerulesRunScriptCodeClientPrintSafe(null, `^FF0000GET AWAY FROM THE BARRICADE!^`)0-1",
    OnDroppedFlag = "bomb1_timedAddOutputOnReturn bombbeep*:CancelPending::0:-11-1",
    OnDroppedFlag = "bomb1_timedAddOutputOnReturn bigexplosion:Trigger::0:-10-1",
    OnDroppedFlag = "!selfKill2-1",
    OnDroppedFlag = "bomb1_timedSetReturnTime150-1",
    OnDroppedFlag = "tunnelbossDisable0-1",
    OnDroppedFlag = "gamerulesRunScriptCodeClientPrint(null, 4 , `GET AWAY FROM THE BARRICADE!`)0-1",
    OnDroppedFlag = "gamerulesCallScriptFunctionStartBomb0-1",
    OnDroppedFlag = "bomb1_timedAddOutputOnReturn !self:RunScriptCode:NavMesh.GetNavAreaByID(4364).UnblockArea():10:-10-1",
    OnDroppedFlag = "bomb1_timedAddOutputOnReturn !self:RunScriptCode:NavMesh.GetNavAreaByID(847).UnblockArea():10:-10-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_flagdetectionzone1273215.KeyValueFromInt("solid", 2)
func_flagdetectionzone1273215.KeyValueFromString(""mins"", "-1 -1 -1")
func_flagdetectionzone1273215.KeyValueFromString(""maxs"", "1 1 1")

::tf_glow1607 <- SpawnEntityFromTable("tf_glow", {
    origin = "-336 -256 48",
    targetname = "glow2",
    target = "PT_SWITCH",
    StartDisabled = "1",
    Mode = "2",
    GlowColor = "0 191 185 255",
    classname = "tf_glow",
    hammerid = "1607"
})

::prop_dynamic1608 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "367 -1952 40.0494",
    targetname = "PT_SWITCH",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_barnblitz/track_switchbox_bb.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "1",
    DisableBoneFollowers = "0",
    angles = "0 90 -90",
    classname = "prop_dynamic",
    hammerid = "1608"
})

::item_ammopack_medium1412727 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "2510.78 611.191 36.2613",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 90 0",
    classname = "item_ammopack_medium",
    hammerid = "1412727"
})

::logic_relay1610 <- SpawnEntityFromTable("logic_relay", {
    origin = "-288 -256 96",
    targetname = "bigexplosion",
    spawnflags = "1",
    classname = "logic_relay",
    hammerid = "1610",
    OnTrigger = "tunnelboss*Enable0.5-1",
    OnTrigger = "trucksparkStop0.15-1",
    OnTrigger = "truckfxStart0.15-1",
    OnTrigger = "truckpropBreak0.15-1",
    OnTrigger = "truckexplodeKill0.15-1",
    OnTrigger = "truckwire2Kill0.15-1",
    OnTrigger = "trucksparkkill0.15-1",
    OnTrigger = "truckfirekill0.15-1",
    OnTrigger = "truckcart*Kill0.15-1",
    OnTrigger = "truckbarrel*Kill0.15-1",
    OnTrigger = "PT_BLOCKERKill0.15-1",
    OnTrigger = "truckcinematicSetAnimationboom0-1",
    OnTrigger = "truckcinematicKill12-1",
    OnTrigger = "PT_SHAKEStartShake0.15-1",
    OnTrigger = "gamerulesPlayVOambient/explosions/explode_3.wav0-1",
    OnTrigger = "gamerulesPlayVOambient/explosions/explode_4.wav0.1-1",
    OnTrigger = "frontspawnbarricadeEnable0.15-1",
    OnTrigger = "frontspawnbarricadeDisable1.5-1",
    OnTrigger = "truckwireKill0.15-1",
    OnTrigger = "nav_interfaceRecomputeBlockers0-1",
    OnTrigger = "PT_SWITCHBUTTON2Unlock0-1"
})

::trigger_once1613 <- SpawnEntityFromTable("trigger_once", {
    model = "*95",
    targetname = "hinttrigger",
    spawnflags = "1",
    origin = "384 -2784 144",
    angles = "0 0 0",
    classname = "trigger_once",
    hammerid = "1613",
    OnStartTouch = "truckexplodeEnable20-1",
    OnStartTouch = "gamerulesRunScriptCodeAnnotations(3)25-1",
    OnStartTouch = "glow2Enable25-1",
    OnStartTouch = "PT_SWITCHBUTTONUnlock25-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
trigger_once1613.KeyValueFromInt("solid", 2)
trigger_once1613.KeyValueFromString(""mins"", "-1 -1 -1")
trigger_once1613.KeyValueFromString(""maxs"", "1 1 1")

::trigger_teleport1273148 <- SpawnEntityFromTable("trigger_teleport", {
    model = "*96",
    targetname = "spawntele1",
    target = "playerspawn2",
    StartDisabled = "1",
    spawnflags = "1",
    origin = "1980 -4644.06 376",
    angles = "0 0 0",
    classname = "trigger_teleport",
    hammerid = "1273148",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
trigger_teleport1273148.KeyValueFromInt("solid", 2)
trigger_teleport1273148.KeyValueFromString(""mins"", "-1 -1 -1")
trigger_teleport1273148.KeyValueFromString(""maxs"", "1 1 1")

::prop_dynamic1159897 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "1181.16 -4384.64 441.134",
    targetname = "PT_ROCK",
    StartDisabled = "1",
    spawnflags = "256",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "1",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    parentname = "PT_ROCKBREAKABLE",
    modelscale = "1",
    model = "models/props_mvm/mine_rocks06_large.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    max_health = "65",
    LightingOrigin = "lantern",
    health = "65",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "1",
    DisableBoneFollowers = "0",
    angles = "0 345 90",
    classname = "prop_dynamic",
    hammerid = "1159897",
    OnHealthChanged = "gamerulesPlayVOphysics/concrete/rock_impact_soft2.wav0-1",
    OnHealthChanged = "PT_ROCKBREAKABLERemoveHealth500-1"
})

::prop_dynamic1039077 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "656 -2080 1",
    targetname = "truckcart",
    StartDisabled = "1",
    spawnflags = "256",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/custom/dirty_bomb_cart.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "1",
    DisableBoneFollowers = "0",
    angles = "75 270 0",
    classname = "prop_dynamic",
    hammerid = "1039077"
})

::item_ammopack_full1298736 <- SpawnEntityFromTable("item_ammopack_full", {
    origin = "1620.85 75.135 264.236",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_full",
    hammerid = "1298736"
})

::prop_dynamic1039101 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "608 -1952 -6",
    targetname = "truckprop",
    StartDisabled = "1",
    spawnflags = "256",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.3",
    model = "models/props_vehicles/pickup03.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "250",
    ExplodeDamage = "800",
    disableshadows = "1",
    disablereceiveshadows = "1",
    DisableBoneFollowers = "0",
    angles = "0 180 -15",
    classname = "prop_dynamic",
    hammerid = "1039101"
})

::prop_dynamic1039280 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "890.18 -2157.28 12.5635",
    targetname = "truckcart",
    StartDisabled = "1",
    spawnflags = "256",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/custom/dirty_bomb_cart.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "1",
    DisableBoneFollowers = "0",
    angles = "75 270 0",
    classname = "prop_dynamic",
    hammerid = "1039280"
})

::info_player_teamspawn1234201 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "1496.62 -2776 88",
    TeamNum = "0",
    targetname = "extrafrontspawn",
    StartDisabled = "1",
    spawnflags = "511",
    angles = "0 0 0",
    classname = "info_player_teamspawn",
    hammerid = "1234201"
})

::prop_dynamic1039259 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "1180 -2176 1",
    targetname = "truckbarrel",
    StartDisabled = "1",
    spawnflags = "256",
    solid = "6",
    skin = "1",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1",
    model = "models/props_hydro/water_barrel_cluster3.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "1",
    DisableBoneFollowers = "0",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "1039259"
})

::info_particle_system1040598 <- SpawnEntityFromTable("info_particle_system", {
    origin = "667.688 -1967.94 -6.9717",
    targetname = "truckfx",
    start_active = "0",
    flag_as_weather = "0",
    effect_name = "hightower_explosion",
    cpoint7_parent = "0",
    cpoint6_parent = "0",
    cpoint5_parent = "0",
    cpoint4_parent = "0",
    cpoint3_parent = "0",
    cpoint2_parent = "0",
    cpoint1_parent = "0",
    angles = "-90 0 0",
    classname = "info_particle_system",
    hammerid = "1040598"
})

::info_particle_system1039381 <- SpawnEntityFromTable("info_particle_system", {
    origin = "408 -2120 545",
    targetname = "truckfx",
    start_active = "0",
    flag_as_weather = "0",
    effect_name = "fireSmoke_Collumn_mvmAcres_sm",
    cpoint7_parent = "0",
    cpoint6_parent = "0",
    cpoint5_parent = "0",
    cpoint4_parent = "0",
    cpoint3_parent = "0",
    cpoint2_parent = "0",
    cpoint1_parent = "0",
    angles = "90 0 0",
    classname = "info_particle_system",
    hammerid = "1039381"
})

::func_forcefield1273179 <- SpawnEntityFromTable("func_forcefield", {
    model = "*97",
    vrad_brush_cast_shadows = "0",
    texframeindex = "0",
    TeamNum = "2",
    targetname = "tunnelforcefield2",
    StartDisabled = "1",
    spawnflags = "2",
    solidbsp = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "1796.66 47.5 23.67",
    effects = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_forcefield",
    hammerid = "1273179",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_forcefield1273179.KeyValueFromInt("solid", 2)
func_forcefield1273179.KeyValueFromString(""mins"", "-1 -1 -1")
func_forcefield1273179.KeyValueFromString(""maxs"", "1 1 1")

::func_brush1297987 <- SpawnEntityFromTable("func_brush", {
    model = "*98",
    vrad_brush_cast_shadows = "0",
    targetname = "PT_BLOCKER",
    StartDisabled = "0",
    spawnflags = "2",
    Solidity = "0",
    solidbsp = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "752 -2104 460",
    invert_exclusion = "0",
    InputFilter = "0",
    disablereceiveshadows = "0",
    classname = "func_brush",
    hammerid = "1297987",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_brush1297987.KeyValueFromInt("solid", 2)
func_brush1297987.KeyValueFromString(""mins"", "-1 -1 -1")
func_brush1297987.KeyValueFromString(""maxs"", "1 1 1")

::func_breakable1453947 <- SpawnEntityFromTable("func_breakable", {
    model = "*99",
    vrad_brush_cast_shadows = "0",
    texframeindex = "0",
    spawnflags = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    propdata = "24",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    origin = "-514.94 -325.95 282.01",
    minhealthdmg = "0",
    material = "0",
    health = "1000",
    gibdir = "0 0 0",
    explosion = "1",
    effects = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_breakable",
    hammerid = "1453947",
    OnBreak = "0-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_breakable1453947.KeyValueFromInt("solid", 2)
func_breakable1453947.KeyValueFromString(""mins"", "-1 -1 -1")
func_breakable1453947.KeyValueFromString(""maxs"", "1 1 1")

::keyframe_rope1039953 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "584 -2080 0.999992",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "truckwire",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "80",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "truckwire2",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "1039953"
})

::keyframe_rope1039963 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "376 -2040 177",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "truckwire2",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "40",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "1039963"
})

::info_particle_system1040040 <- SpawnEntityFromTable("info_particle_system", {
    origin = "584 -2080 1",
    targetname = "truckspark",
    start_active = "0",
    flag_as_weather = "0",
    effect_name = "unusual_sparkler_orange",
    cpoint7_parent = "0",
    cpoint6_parent = "0",
    cpoint5_parent = "0",
    cpoint4_parent = "0",
    cpoint3_parent = "0",
    cpoint2_parent = "0",
    cpoint1_parent = "0",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "1040040"
})

::prop_dynamic1040217 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "361.233 -1684.3 0.300003",
    targetname = "truckbarrel",
    StartDisabled = "1",
    spawnflags = "256",
    solid = "6",
    skin = "1",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1",
    model = "models/props_hydro/water_barrel_cluster3.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "1",
    DisableBoneFollowers = "0",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "1040217"
})

::info_particle_system1039130 <- SpawnEntityFromTable("info_particle_system", {
    origin = "528 -1959 97",
    targetname = "truckfire",
    start_active = "0",
    flag_as_weather = "0",
    effect_name = "lava_fireball_01",
    cpoint7_parent = "0",
    cpoint6_parent = "0",
    cpoint5_parent = "0",
    cpoint4_parent = "0",
    cpoint3_parent = "0",
    cpoint2_parent = "0",
    cpoint1_parent = "0",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "1039130"
})

::info_target1632 <- SpawnEntityFromTable("info_target", {
    origin = "715.931 -251.401 -9.66454",
    targetname = "yardhint",
    spawnflags = "0",
    angles = "0 0 0",
    classname = "info_target",
    hammerid = "1632"
})

::env_soundscape_proxy2208290 <- SpawnEntityFromTable("env_soundscape_proxy", {
    origin = "69.81 -43.797 351.549",
    radius = "223",
    MainSoundscapeName = "soundscape_outside1",
    classname = "env_soundscape_proxy",
    hammerid = "2208290"
})

::info_player_teamspawn1234728 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "-855.661 142.822 208.783",
    TeamNum = "0",
    targetname = "fourthspawn",
    StartDisabled = "1",
    spawnflags = "511",
    angles = "0 0 0",
    classname = "info_player_teamspawn",
    hammerid = "1234728"
})

::env_fade4093 <- SpawnEntityFromTable("env_fade", {
    origin = "-336 -256 32",
    targetname = "fade",
    spawnflags = "12",
    rendercolor = "2 18 2",
    renderamt = "150",
    duration = "3",
    angles = "0 0 0",
    classname = "env_fade",
    hammerid = "4093"
})

::prop_dynamic1039077 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-168.075 -510.465 -24.5652",
    targetname = "PT_WOODCART",
    StartDisabled = "1",
    spawnflags = "256",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/custom/dirty_bomb_cart.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "1",
    DisableBoneFollowers = "0",
    angles = "75 270 0",
    classname = "prop_dynamic",
    hammerid = "1039077"
})

::prop_dynamic1096348 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-241 -534 -53.9467",
    texframeindex = "0",
    targetname = "PT_WOOD",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.1",
    model = "models/props_mvm/wood_boards_mannworks.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "1",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    body = "0",
    angles = "0 270 0",
    classname = "prop_dynamic",
    hammerid = "1096348"
})

::func_breakable1273263 <- SpawnEntityFromTable("func_breakable", {
    model = "*100",
    vrad_brush_cast_shadows = "0",
    texframeindex = "0",
    targetname = "PT_WOODBREAKABLE2",
    spawnflags = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    propdata = "5",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    origin = "-32.14 -28.82 272",
    minhealthdmg = "200",
    material = "1",
    health = "100",
    gibdir = "0 0 0",
    explosion = "1",
    effects = "0",
    disablereceiveshadows = "0",
    damagefilter = "filter_blu_team",
    angles = "0 0 0",
    classname = "func_breakable",
    hammerid = "1273263",
    OnBreak = "func_capturezoneEnable0-1",
    OnBreak = "fourthspawn*Enable0-1",
    OnBreak = "red_spawnp_1Enable0-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_breakable1273263.KeyValueFromInt("solid", 2)
func_breakable1273263.KeyValueFromString(""mins"", "-1 -1 -1")
func_breakable1273263.KeyValueFromString(""maxs"", "1 1 1")

::prop_dynamic1096356 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-21.018 51.978 192.572",
    texframeindex = "0",
    targetname = "PT_WOOD2",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/woodplanks_tank_entrance001.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "1",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "0 180 0",
    classname = "prop_dynamic",
    hammerid = "1096356"
})

::func_rot_button2461594 <- SpawnEntityFromTable("func_rot_button", {
    model = "*101",
    wait = "12",
    targetname = "PT_SWITCHBUTTON5",
    speed = "2000",
    spawnflags = "5665",
    sounds = "21",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "1757.02 -205.65 223.5",
    distance = "10",
    angles = "0 0 0",
    classname = "func_rot_button",
    hammerid = "2461594",
    OnPressed = "PT_WATERSPARK*StopSpark0-1",
    OnPressed = "PT_WATERHURTDisable0-1",
    OnPressed = "PT_WATERLIGHTTurnOff0-1",
    OnPressed = "gamerulesRunScriptCodeClientPrintSafe(null, `^f505d5Respawn crystal regeneration time reduced!`)0-1",
    OnPressed = "gamerulesRunScriptCodeClientPrint(null,4 ,`RESPAWN CRYSTAL REGENERATION TIME REDUCED!`)0-1",
    OnPressed = "gamerulesCallScriptFunctionReduceCrystalTime0-1",
    OnPressed = "!selfKill0.1-1",
    OnPressed = "gamerulesRunScriptCodeClientPrintSafe(null, `^ff0000Turrets permanently disabled!`)0-1",
    OnPressed = "gamerulesRunScriptCodeSetTurretState(2)0-1",
    OnPressed = "gamerulesRunScriptCodeStunBots(7)0-1",
    OnPressed = "PT_WATERSPARK*StopSound0-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_rot_button2461594.KeyValueFromInt("solid", 2)
func_rot_button2461594.KeyValueFromString(""mins"", "-1 -1 -1")
func_rot_button2461594.KeyValueFromString(""maxs"", "1 1 1")

::func_flagdetectionzone1273228 <- SpawnEntityFromTable("func_flagdetectionzone", {
    model = "*102",
    targetname = "explodecapture",
    StartDisabled = "0",
    origin = "110.7 -268 43",
    angles = "0 0 0",
    alarm = "0",
    classname = "func_flagdetectionzone",
    hammerid = "1273228",
    OnStartTouchFlag = "bomb1_timedForceDrop0-1",
    OnDroppedFlag = "playerspawnredDisable0-1",
    OnDroppedFlag = "gamerulesRunScriptCodeClientPrintSafe(null, `^FF0000GET AWAY FROM THE BARRICADE!`)0-1",
    OnDroppedFlag = "gamerulesRunScriptCodeClientPrintSafe(null, `^FF0000GET AWAY FROM THE BARRICADE!`)0-1",
    OnDroppedFlag = "gamerulesRunScriptCodeClientPrintSafe(null, `^FF0000GET AWAY FROM THE BARRICADE!`)0-1",
    OnDroppedFlag = "gamerulesRunScriptCodeClientPrintSafe(null, `^FF0000GET AWAY FROM THE BARRICADE!`)0-1",
    OnDroppedFlag = "gamerulesRunScriptCodeClientPrintSafe(null, `^FF0000GET AWAY FROM THE BARRICADE!`)0-1",
    OnDroppedFlag = "gamerulesRunScriptCodeClientPrint(null, 4 , `GET AWAY FROM THE BARRICADE!`)0-1",
    OnDroppedFlag = "bomb1_timedAddOutputOnReturn PT_SWITCHBUTTON3:Unlock::0:-10-1",
    OnDroppedFlag = "bomb1_timedAddOutputOnReturn PT_SWITCHBUTTON3:Press::0.01:-11-1",
    OnDroppedFlag = "!selfKill2-1",
    OnDroppedFlag = "bomb1_timedCallScriptFunctionStartBomb0-1",
    OnDroppedFlag = "bomb1_timedSetReturnTime150-1",
    OnDroppedFlag = "bomb1_timedSetTeam20-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_flagdetectionzone1273228.KeyValueFromInt("solid", 2)
func_flagdetectionzone1273228.KeyValueFromString(""mins"", "-1 -1 -1")
func_flagdetectionzone1273228.KeyValueFromString(""maxs"", "1 1 1")

::env_explosion1119305 <- SpawnEntityFromTable("env_explosion", {
    origin = "-242.139 -520.417 87.1763",
    targetname = "PT_WOODEXPLODE",
    spawnflags = "0",
    rendermode = "5",
    iRadiusOverride = "500",
    iMagnitude = "12000",
    fireballsprite = "sprites/sprite_fire01.vmt",
    angles = "0 0 0",
    classname = "env_explosion",
    hammerid = "1119305"
})

::logic_relay1645 <- SpawnEntityFromTable("logic_relay", {
    origin = "-256 -256 48",
    targetname = "bombbeep",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "1645",
    OnTrigger = "bombbeep1Trigger0-1",
    OnTrigger = "gamerulesPlayVOvo/taunts/engy/taunt_engineer_lounge_button_press.mp30-1"
})

::logic_relay1646 <- SpawnEntityFromTable("logic_relay", {
    origin = "-256 -256 64",
    targetname = "bombbeep1",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "1646",
    OnTrigger = "bombbeepTrigger1.66-1"
})

::info_particle_system1119380 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-219.443 -537.428 -23.0357",
    targetname = "PT_WOODFX",
    start_active = "0",
    flag_as_weather = "0",
    effect_name = "hightower_explosion",
    cpoint7_parent = "0",
    cpoint6_parent = "0",
    cpoint5_parent = "0",
    cpoint4_parent = "0",
    cpoint3_parent = "0",
    cpoint2_parent = "0",
    cpoint1_parent = "0",
    angles = "-90 0 0",
    classname = "info_particle_system",
    hammerid = "1119380"
})

::env_shake1159965 <- SpawnEntityFromTable("env_shake", {
    origin = "686.332 -1902.37 188.134",
    targetname = "PT_SHAKE",
    spawnflags = "21",
    radius = "50000",
    frequency = "30",
    duration = "5",
    angles = "0 0 0",
    amplitude = "25",
    classname = "env_shake",
    hammerid = "1159965"
})

::info_player_teamspawn1234884 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "-661.676 -519.109 -27.6281",
    TeamNum = "0",
    targetname = "fourthspawnboss",
    StartDisabled = "1",
    spawnflags = "511",
    angles = "0 0 0",
    classname = "info_player_teamspawn",
    hammerid = "1234884"
})

::func_brush1100115 <- SpawnEntityFromTable("func_brush", {
    model = "*103",
    vrad_brush_cast_shadows = "0",
    texframeindex = "0",
    targetname = "windowbrush2",
    StartDisabled = "0",
    spawnflags = "2",
    Solidity = "1",
    solidbsp = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "580 -1068 88",
    invert_exclusion = "0",
    effects = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_brush",
    hammerid = "1100115",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_brush1100115.KeyValueFromInt("solid", 2)
func_brush1100115.KeyValueFromString(""mins"", "-1 -1 -1")
func_brush1100115.KeyValueFromString(""maxs"", "1 1 1")

::light_dynamic1505 <- SpawnEntityFromTable("light_dynamic", {
    occludernumber = "6",
    model = "",
    targetname = "midblockeroccluder",
    StartActive = "0",
     = "",
     = "",
     = "",
     = "",
    origin = "2012.67 -4286.6 313.826",
    targetname = "tutoriallight",
    style = "11",
    spotlight_radius = "128",
    spawnflags = "0",
    pitch = "-90",
    parentname = "tutorialdisplay",
    distance = "128",
    brightness = "5",
    angles = "0 0 0",
    _light = "0 0 0",
    _inner_cone = "0",
    _cone = "0",
    classname = "light_dynamic",
    hammerid = "1505"
})

::point_worldtext1506 <- SpawnEntityFromTable("point_worldtext", {
    origin = "2018.08 -4363.45 341.516",
    textsize = "5",
    targetname = "tutorialhint",
    rainbow = "1",
    orientation = "1",
    message = "Press your canteen button to begin the Tutorial",
    angles = "0 90 0",
    classname = "point_worldtext",
    hammerid = "1506"
})

::prop_dynamic913 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-3256 -1048 17",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_2fort/flag_room_glass_door_frame.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "913"
})

::prop_dynamic1122 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-2734.65 -888.05 0.25",
    texframeindex = "0",
    targetname = "w2computer",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    shadowcastdist = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_spytech/computer_wall02.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "0",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "0 180 0",
    classname = "prop_dynamic",
    hammerid = "1122"
})

::env_sprite1126 <- SpawnEntityFromTable("env_sprite", {
    origin = "-2728.86 -870.64 55.023",
    spawnflags = "1",
    scale = ".12",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "243 89 37",
    renderamt = "200",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "0",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "4",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "1126"
})

::keyframe_rope1245 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-2826 -420.47 208",
    Width = "1",
    Type = "0",
    TextureScale = "1",
    targetname = "rope_flagroom_red_1_3",
    Subdiv = "3",
    Slack = "100",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NextKey = "rope_flagroom_red_1_5",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 90 0",
    classname = "keyframe_rope",
    hammerid = "1245"
})

::keyframe_rope1252 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-2848 -567.47 208",
    Width = "1",
    Type = "0",
    TextureScale = "1",
    targetname = "rope_flagroom_red_1_4",
    Subdiv = "3",
    Slack = "100",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NextKey = "rope_flagroom_red_1_3",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 90 0",
    classname = "keyframe_rope",
    hammerid = "1252"
})

::keyframe_rope1259 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-2848 -771.47 208",
    Width = "1",
    Type = "0",
    TextureScale = "1",
    targetname = "rope_flagroom_red_1_2",
    Subdiv = "3",
    Slack = "100",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NextKey = "rope_flagroom_red_1_4",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 90 0",
    classname = "keyframe_rope",
    hammerid = "1259"
})

::move_rope1266 <- SpawnEntityFromTable("move_rope", {
    origin = "-2848 -987.47 208",
    Width = "1",
    Type = "0",
    TextureScale = "1",
    targetname = "rope_flagroom_red_1_1",
    Subdiv = "3",
    Slack = "100",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "0",
    NextKey = "rope_flagroom_red_1_2",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 90 0",
    classname = "move_rope",
    hammerid = "1266"
})

::light_spot1528 <- SpawnEntityFromTable("light_spot", {
    origin = "-2848.28 -987 151.679",
    spawnflags = "0",
    pitch = "-90",
    angles = "-90 90 0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 600",
    _inner_cone = "65",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "80",
     = "",
     = ""
})

::point_spotlight1533 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-2848.12 -987.53 156",
    spotlightwidth = "80",
    spotlightlength = "150",
    spawnflags = "3",
    rendercolor = "255 255 255",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 270 0",
     = "",
     = ""
})

::light_spot1535 <- SpawnEntityFromTable("light_spot", {
    origin = "-2848.28 -771 153.679",
    spawnflags = "0",
    pitch = "-90",
    angles = "-90 270 0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 600",
    _inner_cone = "55",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "65",
     = "",
     = ""
})

::point_spotlight1540 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-2848.12 -771.53 156",
    spotlightwidth = "80",
    spotlightlength = "150",
    spawnflags = "3",
    rendercolor = "255 255 255",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 270 0",
     = "",
     = ""
})

::light_spot1542 <- SpawnEntityFromTable("light_spot", {
    origin = "-2848.28 -567 153.679",
    spawnflags = "0",
    pitch = "-90",
    angles = "-90 270 0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 600",
    _inner_cone = "55",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "65",
     = "",
     = ""
})

::point_spotlight1547 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-2848.12 -567.529 156",
    spotlightwidth = "80",
    spotlightlength = "150",
    spawnflags = "3",
    rendercolor = "255 255 255",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 270 0",
     = "",
     = ""
})

::light_spot1917 <- SpawnEntityFromTable("light_spot", {
    origin = "-3137 -987 151.679",
    spawnflags = "0",
    pitch = "-90",
    angles = "-90 90 0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 600",
    _inner_cone = "65",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "80",
     = "",
     = ""
})

::point_spotlight1922 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-3136.84 -987.53 156",
    spotlightwidth = "80",
    spotlightlength = "150",
    spawnflags = "3",
    rendercolor = "255 255 255",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 270 0",
     = "",
     = ""
})

::move_rope1924 <- SpawnEntityFromTable("move_rope", {
    origin = "-3136.72 -987.47 208",
    Width = "1",
    Type = "0",
    TextureScale = "1",
    targetname = "rope_flagroom_red_1_7",
    Subdiv = "3",
    Slack = "100",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "0",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 90 0",
    classname = "move_rope",
    hammerid = "1924"
})

::point_spotlight1927 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-3136.84 -771.53 156",
    spotlightwidth = "80",
    spotlightlength = "150",
    spawnflags = "3",
    rendercolor = "255 255 255",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 270 0",
     = "",
     = ""
})

::light_spot1929 <- SpawnEntityFromTable("light_spot", {
    origin = "-3137 -771 153.679",
    spawnflags = "0",
    pitch = "-90",
    angles = "-90 270 0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 600",
    _inner_cone = "55",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "65",
     = "",
     = ""
})

::keyframe_rope1938 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-3136.72 -771.47 208",
    Width = "1",
    Type = "0",
    TextureScale = "1",
    targetname = "rope_flagroom_red_1_6",
    Subdiv = "3",
    Slack = "100",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NextKey = "rope_flagroom_red_1_7",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 90 0",
    classname = "keyframe_rope",
    hammerid = "1938"
})

::keyframe_rope1945 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-3136.72 -567.47 208",
    Width = "1",
    Type = "0",
    TextureScale = "1",
    targetname = "rope_flagroom_red_1_5",
    Subdiv = "3",
    Slack = "100",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NextKey = "rope_flagroom_red_1_6",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 90 0",
    classname = "keyframe_rope",
    hammerid = "1945"
})

::light_spot1948 <- SpawnEntityFromTable("light_spot", {
    origin = "-3137 -567 153.679",
    spawnflags = "0",
    pitch = "-90",
    angles = "-90 270 0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 600",
    _inner_cone = "55",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "65",
     = "",
     = ""
})

::point_spotlight1953 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-3136.84 -567.529 156",
    spotlightwidth = "80",
    spotlightlength = "150",
    spawnflags = "3",
    rendercolor = "255 255 255",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 270 0",
     = "",
     = ""
})

::env_sprite2603 <- SpawnEntityFromTable("env_sprite", {
    origin = "-3088 -1336.35 218.582",
    spawnflags = "1",
    scale = ".02",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "243 89 37",
    renderamt = "120",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "0",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "4",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "2603"
})

::env_sprite2606 <- SpawnEntityFromTable("env_sprite", {
    origin = "-3024 -1336.35 218.582",
    spawnflags = "1",
    scale = ".02",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "243 89 37",
    renderamt = "120",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "0",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "4",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "2606"
})

::env_sprite2609 <- SpawnEntityFromTable("env_sprite", {
    origin = "-2960 -1336.35 218.582",
    spawnflags = "1",
    scale = ".02",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "243 89 37",
    renderamt = "120",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "0",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "4",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "2609"
})

::env_sprite2612 <- SpawnEntityFromTable("env_sprite", {
    origin = "-2896 -1336.35 218.582",
    spawnflags = "1",
    scale = ".02",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "243 89 37",
    renderamt = "120",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "0",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "4",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "2612"
})

::env_sprite2615 <- SpawnEntityFromTable("env_sprite", {
    origin = "-2833.79 -1336.35 218.68",
    spawnflags = "1",
    scale = ".02",
    rendermode = "9",
    renderfx = "0",
    rendercolor = "243 89 37",
    renderamt = "120",
    model = "materials/Sprites/light_glow03.vmt",
    mindxlevel = "0",
    maxdxlevel = "0",
    HDRColorScale = "1.0",
    GlowProxySize = "4",
    framerate = "10.0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "env_sprite",
    hammerid = "2615"
})

::light_spot2653 <- SpawnEntityFromTable("light_spot", {
    origin = "-2744 -1232 214.64",
    spawnflags = "0",
    pitch = "-6",
    angles = "-6 193.5 0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 1500",
    _inner_cone = "20",
    _exponent = "4",
    _distance = "0",
    _constant_attn = "0",
    _cone = "30",
     = "",
     = ""
})

::light_spot2908 <- SpawnEntityFromTable("light_spot", {
    origin = "-3264.63 -1304 128",
    pitch = "-20",
    angles = "-20 116 0",
    _quadratic_attn = "1",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "198 225 234 300",
    _inner_cone = "10",
    _exponent = "1",
    _cone = "45",
     = "",
     = ""
})

::prop_dynamic3012 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-2700 -616 0",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_well/vault_door.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "3012"
})

::prop_dynamic1075485 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-2040.31 -544.885 -113",
    targetname = "hatch_closed",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.03",
    model = "models/props_moonbase/moon_water_hatch01.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "90 180 0",
    classname = "prop_dynamic",
    hammerid = "1075485"
})

::trigger_multiple5666 <- SpawnEntityFromTable("trigger_multiple", {
    model = "*104",
    wait = "0",
    targetname = "red_door_trigger",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "-2700 -616 88",
    filtername = "filter_red_team",
    angles = "0 0 0",
    classname = "trigger_multiple",
    hammerid = "5666",
    OnEndTouchAll = "door_red_1_1Close0-1",
    OnStartTouchAll = "door_red_1_1Open0-1",
    OnStartTouchAll = "door_red_1_2Open0-1",
    OnEndTouchAll = "door_red_1_2Close0-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
trigger_multiple5666.KeyValueFromInt("solid", 2)
trigger_multiple5666.KeyValueFromString(""mins"", "-1 -1 -1")
trigger_multiple5666.KeyValueFromString(""maxs"", "1 1 1")

::func_door5669 <- SpawnEntityFromTable("func_door", {
    model = "*105",
    wait = "-1",
    unlocked_sentence = "0",
    targetname = "door_red_1_1",
    speed = "500",
    spawnflags = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "-2700 -664 96",
    movedir = "0 -90 0",
    loopmovesound = "0",
    locked_sentence = "0",
    lip = "28",
    health = "0",
    forceclosed = "0",
    dmg = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_door",
    hammerid = "5669",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_door5669.KeyValueFromInt("solid", 2)
func_door5669.KeyValueFromString(""mins"", "-1 -1 -1")
func_door5669.KeyValueFromString(""maxs"", "1 1 1")

::filter_activator_tfteam5916 <- SpawnEntityFromTable("filter_activator_tfteam", {
    origin = "-2760 -616 128",
    TeamNum = "2",
    targetname = "filter_red_team",
    Negated = "Allow entities that match criteria",
    classname = "filter_activator_tfteam",
    hammerid = "5916"
})

::prop_dynamic12989 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-2480 -1424 240",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mining/fence001_reference.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 270 0",
    classname = "prop_dynamic",
    hammerid = "12989"
})

::prop_dynamic13010 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-2356 -1424 236",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mining/fence001_reference.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 270 -2",
    classname = "prop_dynamic",
    hammerid = "13010"
})

::prop_dynamic13042 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-2232 -1432 228",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mining/fence001_reference.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 266.5 -5",
    classname = "prop_dynamic",
    hammerid = "13042"
})

::info_player_teamspawn13653 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "-2864 -1056 24",
    TeamNum = "0",
    targetname = "red_spawnp_1",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "13653"
})

::info_player_teamspawn13669 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "-2992 -1056 24",
    TeamNum = "2",
    targetname = "red_spawnp_1",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "13669"
})

::info_player_teamspawn13675 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "-3120 -1056 24",
    TeamNum = "2",
    targetname = "red_spawnp_1",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "13675"
})

::info_player_teamspawn13689 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "-3120 -928 24",
    TeamNum = "2",
    targetname = "red_spawnp_1",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "13689"
})

::info_player_teamspawn13691 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "-2864 -928 24",
    TeamNum = "2",
    targetname = "red_spawnp_1",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "13691"
})

::info_player_teamspawn13693 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "-2992 -928 24",
    TeamNum = "2",
    targetname = "red_spawnp_1",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "13693"
})

::light_spot13831 <- SpawnEntityFromTable("light_spot", {
    origin = "-2904.16 -432 93.679",
    spawnflags = "0",
    pitch = "-90",
    angles = "-90 270 0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 235 180 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::point_spotlight13836 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-2904 -432.529 96",
    spotlightwidth = "80",
    spotlightlength = "150",
    spawnflags = "3",
    rendercolor = "255 235 180",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 270 0",
     = "",
     = ""
})

::light_spot13852 <- SpawnEntityFromTable("light_spot", {
    origin = "-2992.16 -431.471 93.679",
    spawnflags = "0",
    pitch = "-90",
    angles = "-90 270 0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 235 180 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::point_spotlight13857 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-2992 -432 96",
    spotlightwidth = "80",
    spotlightlength = "150",
    spawnflags = "3",
    rendercolor = "255 235 180",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 270 0",
     = "",
     = ""
})

::light_spot13873 <- SpawnEntityFromTable("light_spot", {
    origin = "-3080.16 -432 93.679",
    spawnflags = "0",
    pitch = "-90",
    angles = "-90 270 0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 235 180 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "50",
     = "",
     = ""
})

::point_spotlight13878 <- SpawnEntityFromTable("point_spotlight", {
    origin = "-3080 -432.529 96",
    spotlightwidth = "80",
    spotlightlength = "150",
    spawnflags = "3",
    rendercolor = "255 235 180",
    renderamt = "255",
    mindxlevel = "90",
    HDRColorScale = "1.0",
    angles = "90 270 0",
     = "",
     = ""
})

::light16704 <- SpawnEntityFromTable("light", {
    origin = "-2848 -568 128",
    style = "0",
    spawnflags = "0",
    defaultstyle = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light16732 <- SpawnEntityFromTable("light", {
    origin = "-2848 -768 128",
    style = "0",
    spawnflags = "0",
    defaultstyle = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light16747 <- SpawnEntityFromTable("light", {
    origin = "-2848 -984 128",
    style = "0",
    spawnflags = "0",
    defaultstyle = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light16762 <- SpawnEntityFromTable("light", {
    origin = "-3136 -568 128",
    style = "0",
    spawnflags = "0",
    defaultstyle = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light16777 <- SpawnEntityFromTable("light", {
    origin = "-3136 -768 128",
    style = "0",
    spawnflags = "0",
    defaultstyle = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light16792 <- SpawnEntityFromTable("light", {
    origin = "-3136 -984 128",
    style = "0",
    spawnflags = "0",
    defaultstyle = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_fog_controller32085 <- SpawnEntityFromTable("env_fog_controller", {
    origin = "-1872 -600 480",
    use_angles = "0",
    targetname = "fog_default",
    spawnflags = "1",
    mindxlevel = "0",
    maxdxlevel = "0",
    fogstart = "750.0",
    fogmaxdensity = "0.2",
    foglerptime = "2",
    fogend = "2500.0",
    fogenable = "1",
    fogdir = "1 0 0",
    fogcolor2 = "187 188 198",
    fogcolor = "176 177 208",
    fogblend = "1",
    farz = "-1",
    angles = "0 0 0",
    classname = "env_fog_controller",
    hammerid = "32085"
})

::prop_dynamic32209 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-2112 -1448 220",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mining/fence001_reference.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 261.5 0",
    classname = "prop_dynamic",
    hammerid = "32209"
})

::prop_dynamic32229 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-1992 -1456 220",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mining/fence001_reference.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 269.5 0",
    classname = "prop_dynamic",
    hammerid = "32229"
})

::light36013 <- SpawnEntityFromTable("light", {
    origin = "-760 168 144",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::func_respawnroom47901 <- SpawnEntityFromTable("func_respawnroom", {
    model = "*106",
    TeamNum = "2",
    targetname = "respawn_red",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "-2736 -544 128",
    angles = "0 0 0",
    classname = "func_respawnroom",
    hammerid = "47901",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_respawnroom47901.KeyValueFromInt("solid", 2)
func_respawnroom47901.KeyValueFromString(""mins"", "-1 -1 -1")
func_respawnroom47901.KeyValueFromString(""maxs"", "1 1 1")

::func_respawnroomvisualizer47928 <- SpawnEntityFromTable("func_respawnroomvisualizer", {
    model = "*107",
    vrad_brush_cast_shadows = "0",
    StartDisabled = "0",
    spawnflags = "2",
    Solidity = "1",
    solid_to_enemies = "1",
    respawnroomname = "respawn_red",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "-2684 -616 104",
    InputFilter = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_respawnroomvisualizer",
    hammerid = "47928",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_respawnroomvisualizer47928.KeyValueFromInt("solid", 2)
func_respawnroomvisualizer47928.KeyValueFromString(""mins"", "-1 -1 -1")
func_respawnroomvisualizer47928.KeyValueFromString(""maxs"", "1 1 1")

::shadow_control48005 <- SpawnEntityFromTable("shadow_control", {
    origin = "-1824 -600 480",
    distance = "75",
    disableallshadows = "0",
    color = "128 128 128",
    angles = "0 0 0",
    classname = "shadow_control",
    hammerid = "48005"
})

::info_observer_point49025 <- SpawnEntityFromTable("info_observer_point", {
    origin = "-592 -1160 288",
    fov = "0",
    defaultwelcome = "1",
    angles = "12 147.5 0",
    classname = "info_observer_point",
    hammerid = "49025"
})

::move_rope69488 <- SpawnEntityFromTable("move_rope", {
    origin = "1224 -576 744",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "power_1_2",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "power_1_3",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "move_rope",
    hammerid = "69488"
})

::keyframe_rope69503 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "408 -369 429",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "power_1_3",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "power_1_4",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 180 0",
    classname = "keyframe_rope",
    hammerid = "69503"
})

::keyframe_rope69518 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-240 -464 348",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "power_1_4",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 180 0",
    classname = "keyframe_rope",
    hammerid = "69518"
})

::keyframe_rope69536 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-528 -464 348",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "power_1_5",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "power_1_6",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 180 0",
    classname = "keyframe_rope",
    hammerid = "69536"
})

::keyframe_rope69557 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-1041.76 -192 421",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "power_1_6",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "power_1_7",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "69557"
})

::keyframe_rope69578 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-1992 99.455 437",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "power_1_7",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "power_1_8",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "69578"
})

::keyframe_rope69617 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-2648 148 612",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "power_1_8",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 180 0",
    classname = "keyframe_rope",
    hammerid = "69617"
})

::prop_dynamic73281 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-96 289.621 512",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mining/fence003_reference.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 270 2.5",
    classname = "prop_dynamic",
    hammerid = "73281"
})

::prop_dynamic73285 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "32 296 520",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mining/fence001_reference.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "-0.452451 273.974 6.4843",
    classname = "prop_dynamic",
    hammerid = "73285"
})

::prop_dynamic82056 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "1392 312 544",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mining/fence003_reference.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0.638069 253.518 -0.616854",
    classname = "prop_dynamic",
    hammerid = "82056"
})

::prop_dynamic82060 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "1272 328 544",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mining/fence001_reference.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 270 -0.999998",
    classname = "prop_dynamic",
    hammerid = "82060"
})

::prop_dynamic82064 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "1144 320 552",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mining/fence003_reference.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0.625242 278.978 -4.45091",
    classname = "prop_dynamic",
    hammerid = "82064"
})

::prop_dynamic82068 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "768 280 544",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mining/fence001_reference.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "-0.0479529 270.497 5.4998",
    classname = "prop_dynamic",
    hammerid = "82068"
})

::prop_dynamic82072 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "640 280 528",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mining/fence001_reference.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 270 8.5",
    classname = "prop_dynamic",
    hammerid = "82072"
})

::prop_dynamic82076 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "512 280 520",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mining/fence003_reference.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 270 -0.499998",
    classname = "prop_dynamic",
    hammerid = "82076"
})

::prop_dynamic82264 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "1504 248 560",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mining/fence001_reference.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 228.5 14",
    classname = "prop_dynamic",
    hammerid = "82264"
})

::prop_dynamic82328 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "1544 136 560",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mining/fence001_reference.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "-0.065263 179.504 -8.49971",
    classname = "prop_dynamic",
    hammerid = "82328"
})

::prop_dynamic82360 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "1544 8 551.927",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mining/fence001_reference.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 178.5 -0.999998",
    classname = "prop_dynamic",
    hammerid = "82360"
})

::prop_dynamic82376 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "1528 -112 544",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mining/fence003_reference.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "-0.878145 166.531 -6.93774",
    classname = "prop_dynamic",
    hammerid = "82376"
})

::light86956 <- SpawnEntityFromTable("light", {
    origin = "2584 -496 168",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light86974 <- SpawnEntityFromTable("light", {
    origin = "2816 -960 168",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light86992 <- SpawnEntityFromTable("light", {
    origin = "2408 48 88",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light87019 <- SpawnEntityFromTable("light", {
    style = "32",
    origin = "1848 48 176",
    targetname = "tunnel_light1",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::move_rope89056 <- SpawnEntityFromTable("move_rope", {
    origin = "1224 -760 744",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "power_2_2",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "power_2_3",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "move_rope",
    hammerid = "89056"
})

::keyframe_rope89059 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "422 -474 433",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "power_2_3",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "power_2_4",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 180 0",
    classname = "keyframe_rope",
    hammerid = "89059"
})

::keyframe_rope89062 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-240 -512 348",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "power_2_4",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 180 0",
    classname = "keyframe_rope",
    hammerid = "89062"
})

::keyframe_rope89065 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-528 -512 348",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "power_2_5",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "power_2_6",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 180 0",
    classname = "keyframe_rope",
    hammerid = "89065"
})

::keyframe_rope89068 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-1062.67 -295.984 426",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "power_2_6",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "power_2_7",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "89068"
})

::keyframe_rope89071 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-2038.35 3.34 442",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "power_2_7",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "power_2_8",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "89071"
})

::keyframe_rope89074 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-2648 108 612",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "power_2_8",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 180 0",
    classname = "keyframe_rope",
    hammerid = "89074"
})

::move_rope89263 <- SpawnEntityFromTable("move_rope", {
    origin = "1224 -824 744",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "power_3_2",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "power_3_3",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "move_rope",
    hammerid = "89263"
})

::keyframe_rope89266 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "424 -496 434",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "power_3_3",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "power_3_4",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 180 0",
    classname = "keyframe_rope",
    hammerid = "89266"
})

::keyframe_rope89269 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-240 -528 348",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "power_3_4",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 180 0",
    classname = "keyframe_rope",
    hammerid = "89269"
})

::keyframe_rope89272 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-528 -528 348",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "power_3_5",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "power_3_6",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 180 0",
    classname = "keyframe_rope",
    hammerid = "89272"
})

::keyframe_rope89275 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-1067.19 -317.724 427",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "power_3_6",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "power_3_7",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "89275"
})

::keyframe_rope89278 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-2047.45 -16 442",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "power_3_7",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "power_3_8",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "89278"
})

::keyframe_rope89281 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "-2648 84 612",
    Width = "2",
    Type = "0",
    TextureScale = "1",
    targetname = "power_3_8",
    Subdiv = "2",
    spawnflags = "0",
    Slack = "25",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 180 0",
    classname = "keyframe_rope",
    hammerid = "89281"
})

::prop_dynamic113958 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "2040 -872 -122.412",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_2fort/miningcrate002.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "113958"
})

::prop_dynamic113962 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "2048 -808 -122.412",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_hydro/barrel_crate.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 0.5 0",
    classname = "prop_dynamic",
    hammerid = "113962"
})

::light117322 <- SpawnEntityFromTable("light", {
    origin = "1568 -1369.95 156.06",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::prop_dynamic130111 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "93.25 -6425.37 252.277",
    targetname = "botship_dynamic",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/bots/boss_bot/carrier_parts.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    DefaultAnim = "radar_idles",
    angles = "0 59 0",
    classname = "prop_dynamic",
    hammerid = "130111"
})

::func_respawnroomvisualizer133917 <- SpawnEntityFromTable("func_respawnroomvisualizer", {
    model = "*108",
    vrad_brush_cast_shadows = "0",
    StartDisabled = "0",
    spawnflags = "2",
    Solidity = "1",
    solid_to_enemies = "1",
    respawnroomname = "respawn_bot",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "-3196 -4576 96",
    InputFilter = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_respawnroomvisualizer",
    hammerid = "133917",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_respawnroomvisualizer133917.KeyValueFromInt("solid", 2)
func_respawnroomvisualizer133917.KeyValueFromString(""mins"", "-1 -1 -1")
func_respawnroomvisualizer133917.KeyValueFromString(""maxs"", "1 1 1")

::water_lod_control145805 <- SpawnEntityFromTable("water_lod_control", {
    origin = "-1848 -600 480",
    targetname = "water_controller",
    cheapwaterstartdistance = "2000",
    cheapwaterenddistance = "2250",
    classname = "water_lod_control",
    hammerid = "145805"
})

::trigger_hurt2234957 <- SpawnEntityFromTable("trigger_hurt", {
    model = "*109",
    targetname = "pit_kill",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "1792 -1168.01 -592",
    nodmgforce = "0",
    damagetype = "0",
    damagemodel = "0",
    damagecap = "9999",
    damage = "9999",
    classname = "trigger_hurt",
    hammerid = "2234957",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
trigger_hurt2234957.KeyValueFromInt("solid", 2)
trigger_hurt2234957.KeyValueFromString(""mins"", "-1 -1 -1")
trigger_hurt2234957.KeyValueFromString(""maxs"", "1 1 1")

::item_ammopack_medium152814 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "1160 -1864 0",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "152814"
})

::item_healthkit_medium152822 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "1160 -1832 0",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "152822"
})

::item_ammopack_medium152841 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "2736 -384 -7.74387",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "152841"
})

::item_healthkit_medium152849 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "2768 -384 -7.74387",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "152849"
})

::item_ammopack_medium152875 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "1416 -1000 0",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "152875"
})

::item_healthkit_medium152883 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "1784 -1000 0",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "152883"
})

::item_ammopack_medium152921 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "2120 232 -111.744",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "152921"
})

::item_healthkit_medium152929 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "2152 232 -111.744",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "152929"
})

::item_healthkit_medium152997 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "-1016 -944 0.256134",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "152997"
})

::item_ammopack_medium153001 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "-1048 -944 0.256134",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "153001"
})

::item_healthkit_medium153043 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "-1624 -400 0",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "153043"
})

::item_ammopack_full153047 <- SpawnEntityFromTable("item_ammopack_full", {
    origin = "-1624 -352 0",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_full",
    hammerid = "153047"
})

::item_healthkit_medium153070 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "-2504 -1040 232",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "153070"
})

::item_ammopack_medium153089 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "-2144 -1000 232",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "153089"
})

::item_ammopack_full153139 <- SpawnEntityFromTable("item_ammopack_full", {
    origin = "-1208 -1184 8.87976",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_full",
    hammerid = "153139"
})

::item_healthkit_medium153143 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "-1120 -1184 8.87975",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "153143"
})

::info_particle_system172280 <- SpawnEntityFromTable("info_particle_system", {
    origin = "1568 -1368 168",
    start_active = "1",
    flag_as_weather = "0",
    effect_name = "superrare_flies",
    cpoint7_parent = "0",
    cpoint6_parent = "0",
    cpoint5_parent = "0",
    cpoint4_parent = "0",
    cpoint3_parent = "0",
    cpoint2_parent = "0",
    cpoint1_parent = "0",
    angles = "0 0 0",
    classname = "info_particle_system",
    hammerid = "172280"
})

::prop_dynamic176277 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "2688 -600 -7.75",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_2fort/miningcrate002.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "2200",
    fademaxdist = "2400",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "176277"
})

::prop_dynamic176404 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "2896 -384 -7.75",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_2fort/miningcrate002.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "2200",
    fademaxdist = "2400",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 37.5 0",
    classname = "prop_dynamic",
    hammerid = "176404"
})

::move_rope193543 <- SpawnEntityFromTable("move_rope", {
    origin = "496 -2774 192",
    Width = "1",
    Type = "0",
    TextureScale = "1",
    targetname = "conduit1_1",
    Subdiv = "3",
    Slack = "100",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "0",
    NextKey = "conduit1_2",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 90 0",
    classname = "move_rope",
    hammerid = "193543"
})

::keyframe_rope193599 <- SpawnEntityFromTable("keyframe_rope", {
    origin = "1104 -2320 322",
    Width = "1",
    Type = "0",
    TextureScale = "1",
    targetname = "conduit1_2",
    Subdiv = "3",
    spawnflags = "0",
    Slack = "100",
    RopeMaterial = "cable/cable.vmt",
    PositionInterpolator = "2",
    NoWind = "0",
    NextKey = "conduit1_3",
    MoveSpeed = "64",
    mindxlevel = "0",
    maxdxlevel = "0",
    Dangling = "0",
    Collide = "0",
    Breakable = "0",
    Barbed = "0",
    angles = "0 0 0",
    classname = "keyframe_rope",
    hammerid = "193599"
})

::path_track200914 <- SpawnEntityFromTable("path_track", {
    origin = "952 -5656 -88",
    targetname = "tank_path_1",
    target = "tank_path_2",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "200914",
    OnPass = "tank_spawn_alertPlaySound0.1-1"
})

::path_track200929 <- SpawnEntityFromTable("path_track", {
    origin = "952 -5088 -88",
    targetname = "tank_path_2",
    target = "tank_path_3",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "200929"
})

::path_track200944 <- SpawnEntityFromTable("path_track", {
    origin = "960 -4416 -88",
    targetname = "tank_path_3",
    target = "tank_path_4",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "200944"
})

::path_track200965 <- SpawnEntityFromTable("path_track", {
    origin = "960 -3840 56",
    targetname = "tank_path_4",
    target = "tank_path_5",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "200965"
})

::path_track200980 <- SpawnEntityFromTable("path_track", {
    origin = "696 -2296 56",
    targetname = "tank_path_6",
    target = "tank_path_7",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "200980"
})

::path_track200992 <- SpawnEntityFromTable("path_track", {
    origin = "960 -2616 56",
    targetname = "tank_path_5",
    target = "tank_path_6",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "200992"
})

::path_track201013 <- SpawnEntityFromTable("path_track", {
    origin = "696 -1848 56",
    targetname = "tank_path_7",
    target = "tank_path_8",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "201013"
})

::path_track201025 <- SpawnEntityFromTable("path_track", {
    origin = "872 -1608 56",
    targetname = "tank_path_8",
    target = "tank_path_9",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "201025"
})

::path_track201043 <- SpawnEntityFromTable("path_track", {
    origin = "1128 -1536 72",
    targetname = "tank_path_9",
    target = "tank_path_10",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "201043"
})

::path_track201100 <- SpawnEntityFromTable("path_track", {
    origin = "2144 -1536 8",
    targetname = "tank_path_10",
    target = "tank_path_11",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "201100"
})

::path_track201127 <- SpawnEntityFromTable("path_track", {
    origin = "2272 -1408 -16",
    targetname = "tank_path_11",
    target = "tank_path_12",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "201127"
})

::path_track201139 <- SpawnEntityFromTable("path_track", {
    origin = "2272 -112 -40",
    targetname = "tank_path_12",
    target = "tank_path_13",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "201139"
})

::path_track201151 <- SpawnEntityFromTable("path_track", {
    origin = "2120 16 -32",
    targetname = "tank_path_13",
    target = "tank_path_14",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "201151"
})

::path_track201163 <- SpawnEntityFromTable("path_track", {
    origin = "1824 48 -24",
    targetname = "tank_path_14",
    target = "tank_path_15",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "201163"
})

::path_track201175 <- SpawnEntityFromTable("path_track", {
    origin = "864 -128 24",
    targetname = "tank_path_16",
    target = "tank_path_17",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "201175"
})

::path_track201187 <- SpawnEntityFromTable("path_track", {
    origin = "776 -496 16",
    targetname = "tank_path_17",
    target = "tank_path_18",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "201187"
})

::path_track201199 <- SpawnEntityFromTable("path_track", {
    origin = "552 -584 24",
    targetname = "tank_path_18",
    target = "tank_path_19",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "201199"
})

::path_track201211 <- SpawnEntityFromTable("path_track", {
    origin = "152 -584 24",
    targetname = "tank_path_19",
    target = "tank_path_20",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "201211"
})

::path_track201262 <- SpawnEntityFromTable("path_track", {
    origin = "-464 -568 16",
    targetname = "tank_path_20",
    target = "tank_path_21",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "201262"
})

::path_track201298 <- SpawnEntityFromTable("path_track", {
    origin = "-608 -480 16",
    targetname = "tank_path_21",
    target = "tank_path_22",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "201298"
})

::path_track201310 <- SpawnEntityFromTable("path_track", {
    origin = "-640 -272 24",
    targetname = "tank_path_22",
    target = "tank_path_23",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "201310"
})

::path_track201325 <- SpawnEntityFromTable("path_track", {
    origin = "-1672 -104 56",
    targetname = "tank_path_24",
    target = "tank_path_25",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "201325"
})

::path_track201343 <- SpawnEntityFromTable("path_track", {
    origin = "-1816 -280 64",
    targetname = "tank_path_25",
    target = "tank_path_26",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "201343"
})

::path_track201364 <- SpawnEntityFromTable("path_track", {
    origin = "-1968 -464 72",
    targetname = "tank_path_26",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "201364"
})

::path_track204514 <- SpawnEntityFromTable("path_track", {
    origin = "1040 32 0",
    targetname = "tank_path_15",
    target = "tank_path_16",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "204514"
})

::ambient_generic204547 <- SpawnEntityFromTable("ambient_generic", {
    origin = "952 -5368 -128",
    volstart = "0",
    targetname = "tank_spawn_alert",
    spinup = "0",
    spindown = "0",
    spawnflags = "49",
    radius = "1250",
    preset = "0",
    pitchstart = "100",
    pitch = "100",
    message = "mvm/mvm_tank_start.wav",
    lfotype = "0",
    lforate = "0",
    lfomodvol = "0",
    lfomodpitch = "0",
    health = "10",
    fadeoutsecs = "0",
    fadeinsecs = "0",
    cspinup = "0",
    classname = "ambient_generic",
    hammerid = "204547"
})

::trigger_hurt1750337 <- SpawnEntityFromTable("trigger_hurt", {
    model = "*110",
    targetname = "respawn_money",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "952 -5280 -72.01",
    nodmgforce = "0",
    damagetype = "0",
    damagemodel = "0",
    damagecap = "0",
    damage = "0",
    angles = "0 0 0",
    classname = "trigger_hurt",
    hammerid = "1750337",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
trigger_hurt1750337.KeyValueFromInt("solid", 2)
trigger_hurt1750337.KeyValueFromString(""mins"", "-1 -1 -1")
trigger_hurt1750337.KeyValueFromString(""maxs"", "1 1 1")

::light860883 <- SpawnEntityFromTable("light", {
    origin = "-2616 -1640 384",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::info_observer_point219979 <- SpawnEntityFromTable("info_observer_point", {
    origin = "912 200 400",
    fov = "0",
    defaultwelcome = "0",
    angles = "13.1705 234.362 1.66164",
    classname = "info_observer_point",
    hammerid = "219979"
})

::item_healthkit_full224705 <- SpawnEntityFromTable("item_healthkit_full", {
    origin = "0 -2952 8",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_full",
    hammerid = "224705"
})

::prop_dynamic224821 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-2992 -416 216",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/mvm_upgrade_sign.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 270 0",
    classname = "prop_dynamic",
    hammerid = "224821"
})

::prop_dynamic224875 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-2664 -480 152",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/mvm_upgrade_sign.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "224875"
})

::game_round_win241926 <- SpawnEntityFromTable("game_round_win", {
    origin = "-2240 -608 16",
    win_reason = "4",
    TeamNum = "3",
    targetname = "win_bots",
    force_map_reset = "1",
    classname = "game_round_win",
    hammerid = "241926"
})

::func_capturezone241928 <- SpawnEntityFromTable("func_capturezone", {
    model = "*111",
    TeamNum = "3",
    StartDisabled = "0",
    spawnflags = "1",
    shouldBlock = "1",
    origin = "-1836 -348 61",
    capturepoint = "1",
    capture_delay_offset = "0.025",
    capture_delay = "1.1",
    angles = "0 0 0",
    classname = "func_capturezone",
    hammerid = "241928",
    OnCapture = "bomb_deploy_relayTrigger0.5-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_capturezone241928.KeyValueFromInt("solid", 2)
func_capturezone241928.KeyValueFromString(""mins"", "-1 -1 -1")
func_capturezone241928.KeyValueFromString(""maxs"", "1 1 1")

::info_particle_system241957 <- SpawnEntityFromTable("info_particle_system", {
    origin = "-2088 -608 -7",
    targetname = "end_pit_destroy_particle",
    start_active = "0",
    effect_name = "mvm_hatch_destroy",
    cpoint7_parent = "0",
    cpoint6_parent = "0",
    cpoint5_parent = "0",
    cpoint4_parent = "0",
    cpoint3_parent = "0",
    cpoint2_parent = "0",
    cpoint1_parent = "0",
    angles = "0 270 0",
    classname = "info_particle_system",
    hammerid = "241957"
})

::ambient_generic242519 <- SpawnEntityFromTable("ambient_generic", {
    origin = "-2088 -608 57",
    volstart = "0",
    targetname = "pit_explosion_wav",
    spinup = "0",
    spindown = "0",
    spawnflags = "48",
    radius = "1250",
    preset = "0",
    pitchstart = "100",
    pitch = "100",
    message = "MVM.BombExplodes",
    lfotype = "0",
    lforate = "0",
    lfomodvol = "0",
    lfomodpitch = "0",
    health = "10",
    fadeoutsecs = "0",
    fadeinsecs = "0",
    cspinup = "0",
    classname = "ambient_generic",
    hammerid = "242519"
})

::logic_relay242531 <- SpawnEntityFromTable("logic_relay", {
    origin = "-2216 -600 15",
    targetname = "bomb_deploy_relay",
    StartDisabled = "0",
    spawnflags = "1",
    classname = "logic_relay",
    hammerid = "242531",
    OnTrigger = "win_botsRoundWin0-1",
    OnTrigger = "end_pit_destroy_particleStart0-1",
    OnTrigger = "pit_explosion_wavPlaySound0-1",
    OnTrigger = "hatch_magnet_pitEnable0-1",
    OnTrigger = "bomb_kill_playersEnable0-1",
    OnTrigger = "bomb_kill_playersDisable0.5-1",
    OnTrigger = "bomb_kill_lingerEnable0-1"
})

::phys_ragdollmagnet242551 <- SpawnEntityFromTable("phys_ragdollmagnet", {
    origin = "-2088 -608 1",
    targetname = "hatch_magnet_pit",
    StartDisabled = "1",
    spawnflags = "0",
    radius = "800",
    force = "-10000",
    axis = "-2088 -608 1",
    angles = "0 0 0",
    classname = "phys_ragdollmagnet",
    hammerid = "242551"
})

::trigger_multiple242586 <- SpawnEntityFromTable("trigger_multiple", {
    model = "*112",
    wait = "1",
    targetname = "bomb_kill_players",
    StartDisabled = "1",
    spawnflags = "1",
    origin = "-2084 -608 448",
    angles = "0 0 0",
    classname = "trigger_multiple",
    hammerid = "242586",
    OnStartTouch = "!activatorSetHealth-10000-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
trigger_multiple242586.KeyValueFromInt("solid", 2)
trigger_multiple242586.KeyValueFromString(""mins"", "-1 -1 -1")
trigger_multiple242586.KeyValueFromString(""maxs"", "1 1 1")

::logic_relay242661 <- SpawnEntityFromTable("logic_relay", {
    origin = "-2216 -616 15",
    targetname = "boss_deploy_relay",
    StartDisabled = "0",
    spawnflags = "1",
    classname = "logic_relay",
    hammerid = "242661",
    OnTrigger = "bomb_deploy_relayTrigger0-1",
    OnTrigger = "tankbossDestroyIfAtCapturePoint10-1"
})

::func_respawnroomvisualizer246987 <- SpawnEntityFromTable("func_respawnroomvisualizer", {
    model = "*113",
    vrad_brush_cast_shadows = "0",
    StartDisabled = "0",
    spawnflags = "2",
    Solidity = "1",
    solid_to_enemies = "1",
    respawnroomname = "respawn_bot",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "344 -5008 504",
    InputFilter = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_respawnroomvisualizer",
    hammerid = "246987",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_respawnroomvisualizer246987.KeyValueFromInt("solid", 2)
func_respawnroomvisualizer246987.KeyValueFromString(""mins"", "-1 -1 -1")
func_respawnroomvisualizer246987.KeyValueFromString(""maxs"", "1 1 1")

::logic_relay259225 <- SpawnEntityFromTable("logic_relay", {
    origin = "1784 -1168 -209",
    targetname = "deathpit_bomb_relay",
    StartDisabled = "0",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "259225",
    OnTrigger = "deathpit_soundPlaySound0-1",
    OnTrigger = "deathpit_explosion_particleStart0-1",
    OnTrigger = "deathpit_explosion_particleStop4-1",
    OnTrigger = "deathpit_bomb_shakeStartShake0-1"
})

::env_shake259227 <- SpawnEntityFromTable("env_shake", {
    origin = "1784 -1168 -225",
    targetname = "deathpit_bomb_shake",
    spawnflags = "1",
    radius = "500",
    frequency = "200",
    duration = "1",
    angles = "0 0 0",
    amplitude = "7",
    classname = "env_shake",
    hammerid = "259227"
})

::ambient_generic259230 <- SpawnEntityFromTable("ambient_generic", {
    origin = "1784 -1168 -249",
    volstart = "0",
    targetname = "deathpit_sound",
    spinup = "0",
    spindown = "0",
    spawnflags = "49",
    radius = "1250",
    preset = "0",
    pitchstart = "100",
    pitch = "100",
    message = "mvm/mvm_bomb_explode.wav",
    lfotype = "0",
    lforate = "0",
    lfomodvol = "0",
    lfomodpitch = "0",
    health = "10",
    fadeoutsecs = "0",
    fadeinsecs = "0",
    cspinup = "0",
    classname = "ambient_generic",
    hammerid = "259230"
})

::info_particle_system259233 <- SpawnEntityFromTable("info_particle_system", {
    origin = "1784 -1168 -624",
    targetname = "deathpit_explosion_particle",
    start_active = "0",
    flag_as_weather = "0",
    effect_name = "hightower_explosion",
    cpoint7_parent = "0",
    cpoint6_parent = "0",
    cpoint5_parent = "0",
    cpoint4_parent = "0",
    cpoint3_parent = "0",
    cpoint2_parent = "0",
    cpoint1_parent = "0",
    angles = "-90 0 0",
    classname = "info_particle_system",
    hammerid = "259233"
})

::trigger_push259454 <- SpawnEntityFromTable("trigger_push", {
    model = "*114",
    StartDisabled = "0",
    speed = "500",
    spawnflags = "1",
    pushdir = "0 180 0",
    origin = "1900 -1172 -120",
    angles = "0 0 0",
    alternateticksfix = "0",
    classname = "trigger_push",
    hammerid = "259454",
    OnStartTouch = "sound_slipPlaySound0-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
trigger_push259454.KeyValueFromInt("solid", 2)
trigger_push259454.KeyValueFromString(""mins"", "-1 -1 -1")
trigger_push259454.KeyValueFromString(""maxs"", "1 1 1")

::ambient_generic259602 <- SpawnEntityFromTable("ambient_generic", {
    origin = "1920 -1168 -110.417",
    volstart = "0",
    targetname = "sound_slip",
    spinup = "0",
    spindown = "0",
    spawnflags = "49",
    radius = "640",
    preset = "0",
    pitchstart = "100",
    pitch = "100",
    message = "General.banana_slip",
    lfotype = "0",
    lforate = "0",
    lfomodvol = "0",
    lfomodpitch = "0",
    health = "10",
    fadeoutsecs = "0",
    fadeinsecs = "0",
    cspinup = "0",
    classname = "ambient_generic",
    hammerid = "259602"
})

::tf_logic_mann_vs_machine273959 <- SpawnEntityFromTable("tf_logic_mann_vs_machine", {
    origin = "-1872 -656 480",
    classname = "tf_logic_mann_vs_machine",
    hammerid = "273959"
})

::tf_gamerules273961 <- SpawnEntityFromTable("tf_gamerules", {
    origin = "-1848 -656 480",
    targetname = "gamerules",
    ropes_holiday_lights_allowed = "1",
    ctf_overtime = "1",
    classname = "tf_gamerules",
    hammerid = "273961"
})

::logic_auto273981 <- SpawnEntityFromTable("logic_auto", {
    origin = "-1896 -656 480",
    spawnflags = "1",
    classname = "logic_auto",
    hammerid = "273981",
    OnMapSpawn = "tonemap_globalSetBloomScale.50-1",
    OnMapSpawn = "tonemap_globalSetAutoExposureMax.80-1",
    OnMapSpawn = "tonemap_globalSetAutoExposureMin.50-1",
    OnMapSpawn = "gamerulesSetRedTeamRespawnWaveTime70-1",
    OnMapSpawn = "bombpath_choose_relayTrigger0-1",
    OnMapSpawn = "upgradestation_frontlineEnable1-1",
    OnMapSpawn = "door_upgradeOpen0-1",
    OnMapSpawn = "sound_boomboxToggleSound5-1",
    OnMapSpawn = "breakablekillerTrigger0-1",
    OnMapSpawn = "crystallightTurnOff0-1",
    OnMapSpawn = "globalccRunScriptCodeNetProps.SetPropFloat(self, `m_flCurWeight`, 0.000001)1-1",
    OnMapSpawn = "obj_dispenserSetHealth999990-1",
    OnMapSpawn = "obj_sentrygunSetModelbuildables/spawn_room/spawn_turret.mdl0-1"
})

::env_tonemap_controller273983 <- SpawnEntityFromTable("env_tonemap_controller", {
    origin = "-1800 -600 480",
    targetname = "tonemap_global",
    classname = "env_tonemap_controller",
    hammerid = "273983"
})

::env_soundscape274010 <- SpawnEntityFromTable("env_soundscape", {
    origin = "-1752 -568 936",
    targetname = "soundscape_outside1",
    StartDisabled = "0",
    soundscape = "sawmill.outside",
    radius = "2048",
    classname = "env_soundscape",
    hammerid = "274010"
})

::env_soundscape274072 <- SpawnEntityFromTable("env_soundscape", {
    origin = "-3008 -888 24",
    targetname = "soundscape_spawn",
    StartDisabled = "0",
    soundscape = "sawmill.deepinside",
    radius = "512",
    classname = "env_soundscape",
    hammerid = "274072",
    OnPlay = "gamerulesCallScriptFunctionEndWaveChangeTeam0.02-1",
    OnPlay = "win_botsAddOutputtargetname DONTTRIGGER0-1",
    OnPlay = "!selfKill2-1"
})

::logic_relay274378 <- SpawnEntityFromTable("logic_relay", {
    origin = "360 -2720 88",
    targetname = "wave_start_1bomb_endurance_relay",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "274378",
    OnTrigger = "wave_start_relayTrigger0-1",
    OnTrigger = "bomb1Disable0-1",
    OnTrigger = "bomb3_timedDisable0-1",
    OnTrigger = "bomb2_timedDisable0-1",
    OnTrigger = "bomb1_timedEnable0-1",
    OnTrigger = "bomb3Disable0-1",
    OnTrigger = "bomb2Disable0-1"
})

::logic_relay274389 <- SpawnEntityFromTable("logic_relay", {
    origin = "424 -2744 88",
    targetname = "wave_finished_relay",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "274389",
    OnTrigger = "bombpath_choose_relayTrigger1-1",
    OnTrigger = "upgradestation_frontlineEnable1-1",
    OnTrigger = "door_upgradeOpen0-1",
    OnTrigger = "downpour_end_relayTrigger0-1"
})

::prop_dynamic274406 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "640 -1744 0",
    targetname = "arrows_all",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 15 0",
    classname = "prop_dynamic",
    hammerid = "274406"
})

::prop_dynamic274446 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "704 -3584 0",
    targetname = "arrows_path2",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 70 0",
    classname = "prop_dynamic",
    hammerid = "274446"
})

::prop_dynamic274494 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "2272 -1272 -128",
    targetname = "arrows_all",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 90 0",
    classname = "prop_dynamic",
    hammerid = "274494"
})

::prop_dynamic274518 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "2280 -464 -152",
    targetname = "arrows_all",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 95 0",
    classname = "prop_dynamic",
    hammerid = "274518"
})

::prop_dynamic274670 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "1880 48 -111.955",
    targetname = "arrows_all",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 180 0",
    classname = "prop_dynamic",
    hammerid = "274670"
})

::prop_dynamic274766 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-1384 -784 0.0446854",
    targetname = "arrows_path1",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 180 0",
    classname = "prop_dynamic",
    hammerid = "274766"
})

::prop_dynamic274834 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "876 -12 -68",
    targetname = "arrows_all",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 240 0",
    classname = "prop_dynamic",
    hammerid = "274834"
})

::prop_dynamic274862 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "72 -536 -24",
    targetname = "arrows_all",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 180 0",
    classname = "prop_dynamic",
    hammerid = "274862"
})

::prop_dynamic274886 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-560 -472 -28",
    targetname = "arrows_path1",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 200 0",
    classname = "prop_dynamic",
    hammerid = "274886"
})

::func_tfbot_hint275108 <- SpawnEntityFromTable("func_tfbot_hint", {
    model = "*115",
    team = "3",
    StartDisabled = "0",
    origin = "928 -3488 24",
    hint = "0",
    angles = "0 0 0",
    classname = "func_tfbot_hint",
    hammerid = "275108",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_tfbot_hint275108.KeyValueFromInt("solid", 2)
func_tfbot_hint275108.KeyValueFromString(""mins"", "-1 -1 -1")
func_tfbot_hint275108.KeyValueFromString(""maxs"", "1 1 1")

::func_tfbot_hint275117 <- SpawnEntityFromTable("func_tfbot_hint", {
    model = "*116",
    team = "3",
    StartDisabled = "0",
    origin = "1344 -1672 24",
    hint = "0",
    angles = "0 0 0",
    classname = "func_tfbot_hint",
    hammerid = "275117",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_tfbot_hint275117.KeyValueFromInt("solid", 2)
func_tfbot_hint275117.KeyValueFromString(""mins"", "-1 -1 -1")
func_tfbot_hint275117.KeyValueFromString(""maxs"", "1 1 1")

::func_tfbot_hint275123 <- SpawnEntityFromTable("func_tfbot_hint", {
    model = "*117",
    team = "3",
    StartDisabled = "0",
    origin = "2280 -1240 -104",
    hint = "0",
    angles = "0 0 0",
    classname = "func_tfbot_hint",
    hammerid = "275123",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_tfbot_hint275123.KeyValueFromInt("solid", 2)
func_tfbot_hint275123.KeyValueFromString(""mins"", "-1 -1 -1")
func_tfbot_hint275123.KeyValueFromString(""maxs"", "1 1 1")

::func_tfbot_hint275129 <- SpawnEntityFromTable("func_tfbot_hint", {
    model = "*118",
    team = "3",
    StartDisabled = "0",
    origin = "1888 144 -88",
    hint = "0",
    angles = "0 0 0",
    classname = "func_tfbot_hint",
    hammerid = "275129",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_tfbot_hint275129.KeyValueFromInt("solid", 2)
func_tfbot_hint275129.KeyValueFromString(""mins"", "-1 -1 -1")
func_tfbot_hint275129.KeyValueFromString(""maxs"", "1 1 1")

::func_tfbot_hint275141 <- SpawnEntityFromTable("func_tfbot_hint", {
    model = "*119",
    team = "3",
    StartDisabled = "0",
    origin = "512 -1024 32",
    hint = "0",
    angles = "0 0 0",
    classname = "func_tfbot_hint",
    hammerid = "275141",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_tfbot_hint275141.KeyValueFromInt("solid", 2)
func_tfbot_hint275141.KeyValueFromString(""mins"", "-1 -1 -1")
func_tfbot_hint275141.KeyValueFromString(""maxs"", "1 1 1")

::func_tfbot_hint275147 <- SpawnEntityFromTable("func_tfbot_hint", {
    model = "*120",
    team = "3",
    StartDisabled = "0",
    origin = "-704 88 216",
    hint = "0",
    angles = "0 0 0",
    classname = "func_tfbot_hint",
    hammerid = "275147",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_tfbot_hint275147.KeyValueFromInt("solid", 2)
func_tfbot_hint275147.KeyValueFromString(""mins"", "-1 -1 -1")
func_tfbot_hint275147.KeyValueFromString(""maxs"", "1 1 1")

::team_round_timer286294 <- SpawnEntityFromTable("team_round_timer", {
    origin = "-1824 -656 480",
    timer_length = "60000",
    targetname = "game_timer",
    StartDisabled = "0",
    start_paused = "0",
    show_time_remaining = "1",
    show_in_hud = "1",
    setup_length = "85",
    reset_time = "0",
    max_length = "0",
    auto_countdown = "1",
    classname = "team_round_timer",
    hammerid = "286294",
    OnSetupFinished = "game_timerDisable1-1"
})

::logic_relay290285 <- SpawnEntityFromTable("logic_relay", {
    origin = "496 -2768 88",
    targetname = "bombpath_choose_relay",
    StartDisabled = "0",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "290285",
    OnTrigger = "bombpath_choose_relayEnable0.6-1",
    OnTrigger = "bombpath_choose_casePickRandom0.5-1",
    OnTrigger = "bombpath_arrows_clear_relayTrigger0.1-1",
    OnTrigger = "bombpath_clear_relayTrigger0.1-1",
    OnTrigger = "bombpath_choose_relayDisable0-1"
})

::logic_relay290287 <- SpawnEntityFromTable("logic_relay", {
    origin = "496 -2696 88",
    targetname = "bombpath_clear_relay",
    StartDisabled = "0",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "290287",
    OnTrigger = "avoid_path1Disable0-1",
    OnTrigger = "avoid_path2Disable0-1"
})

::logic_relay290289 <- SpawnEntityFromTable("logic_relay", {
    origin = "496 -2720 88",
    targetname = "bombpath_arrows_clear_relay",
    StartDisabled = "0",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "290289",
    OnTrigger = "arrows_path1Disable0.1-1",
    OnTrigger = "arrows_path2Disable0.1-1",
    OnTrigger = "arrows_allDisable0.1-1"
})

::logic_case290291 <- SpawnEntityFromTable("logic_case", {
    origin = "496 -2744 88",
    targetname = "bombpath_choose_case",
    classname = "logic_case",
    hammerid = "290291",
    OnCase01 = "bombpath_choose_left_relayTrigger0-1",
    OnCase01 = "bombpath_arrows_left_relayTrigger0-1",
    OnCase02 = "bombpath_choose_right_relayTrigger0-1",
    OnCase02 = "bombpath_arrows_right_relayTrigger0-1"
})

::logic_relay290295 <- SpawnEntityFromTable("logic_relay", {
    origin = "472 -2696 88",
    targetname = "bombpath_choose_left_relay",
    StartDisabled = "0",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "290295",
    OnTrigger = "avoid_path1Enable0-1",
    OnTrigger = "nav_prefer_flank_frontEnable0-1"
})

::logic_relay290299 <- SpawnEntityFromTable("logic_relay", {
    origin = "520 -2696 88",
    targetname = "bombpath_choose_right_relay",
    StartDisabled = "0",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "290299",
    OnTrigger = "avoid_path2Enable0-1",
    OnTrigger = "nav_prefer_flank_frontDisable0-1"
})

::func_nav_avoid290337 <- SpawnEntityFromTable("func_nav_avoid", {
    model = "*121",
    team = "3",
    targetname = "avoid_path2",
    tags = "bomb_carrier common flank_front flank_mid1 flank_mid2 flank_back",
    start_disabled = "0",
    origin = "-712 -2748 -32",
    angles = "0 0 0",
    classname = "func_nav_avoid",
    hammerid = "290337",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nav_avoid290337.KeyValueFromInt("solid", 2)
func_nav_avoid290337.KeyValueFromString(""mins"", "-1 -1 -1")
func_nav_avoid290337.KeyValueFromString(""maxs"", "1 1 1")

::func_nav_avoid290445 <- SpawnEntityFromTable("func_nav_avoid", {
    model = "*122",
    team = "3",
    targetname = "avoid_path1",
    tags = "bomb_carrier",
    start_disabled = "0",
    origin = "-1164 -548 28",
    angles = "0 0 0",
    classname = "func_nav_avoid",
    hammerid = "290445",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nav_avoid290445.KeyValueFromInt("solid", 2)
func_nav_avoid290445.KeyValueFromString(""mins"", "-1 -1 -1")
func_nav_avoid290445.KeyValueFromString(""maxs"", "1 1 1")

::prop_dynamic298735 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "96 -3584 208",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/mvm_upgrade_sign.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 270 0",
    classname = "prop_dynamic",
    hammerid = "298735"
})

::func_upgradestation298704 <- SpawnEntityFromTable("func_upgradestation", {
    model = "*123",
    targetname = "upgradestation_frontline",
    StartDisabled = "0",
    origin = "580 -2912 88",
    angles = "0 0 0",
    classname = "func_upgradestation",
    hammerid = "298704",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_upgradestation298704.KeyValueFromInt("solid", 2)
func_upgradestation298704.KeyValueFromString(""mins"", "-1 -1 -1")
func_upgradestation298704.KeyValueFromString(""maxs"", "1 1 1")

::func_door299449 <- SpawnEntityFromTable("func_door", {
    model = "*124",
    wait = "4",
    unlocked_sentence = "0",
    targetname = "door_upgrade",
    speed = "100",
    spawnpos = "0",
    spawnflags = "4128",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "324 -3164 100",
    movedir = "-90 0 0",
    loopmovesound = "0",
    locked_sentence = "0",
    lip = "0",
    ignoredebris = "0",
    health = "0",
    forceclosed = "0",
    dmg = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_door",
    hammerid = "299449",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_door299449.KeyValueFromInt("solid", 2)
func_door299449.KeyValueFromString(""mins"", "-1 -1 -1")
func_door299449.KeyValueFromString(""maxs"", "1 1 1")

::info_particle_system53857 <- SpawnEntityFromTable("info_particle_system", {
    origin = "1308.48 -544 966.49",
    targetname = "particle_steam_whistle_red",
    start_active = "0",
    effect_name = "steam_plume",
    angles = "-8.31154 210.805 -1.55231",
    classname = "info_particle_system",
    hammerid = "53857"
})

::info_particle_system53922 <- SpawnEntityFromTable("info_particle_system", {
    origin = "1312.56 -461.129 1008",
    targetname = "particle_steam_whistle_red",
    start_active = "0",
    effect_name = "steam_plume",
    angles = "-8.31154 153.305 -1.55231",
    classname = "info_particle_system",
    hammerid = "53922"
})

::ambient_generic53851 <- SpawnEntityFromTable("ambient_generic", {
    origin = "1288.15 -497.045 976.7",
    volstart = "0",
    targetname = "sound_steam_whistle_red",
    spinup = "0",
    spindown = "0",
    spawnflags = "49",
    radius = "1250",
    preset = "0",
    pitchstart = "100",
    pitch = "100",
    message = "harbor.red_whistle",
    lfotype = "0",
    lforate = "0",
    lfomodvol = "0",
    lfomodpitch = "0",
    health = "10",
    fadeoutsecs = "0",
    fadeinsecs = "0",
    cspinup = "0",
    classname = "ambient_generic",
    hammerid = "53851"
})

::ambient_generic53854 <- SpawnEntityFromTable("ambient_generic", {
    origin = "1320 -500.112 976.7",
    volstart = "0",
    targetname = "sound_steam_whistle_red",
    spinup = "0",
    spindown = "0",
    spawnflags = "49",
    radius = "1250",
    preset = "0",
    pitchstart = "100",
    pitch = "100",
    message = "harbor.red_whistle",
    lfotype = "0",
    lforate = "0",
    lfomodvol = "0",
    lfomodpitch = "0",
    health = "10",
    fadeoutsecs = "0",
    fadeinsecs = "0",
    cspinup = "0",
    classname = "ambient_generic",
    hammerid = "53854"
})

::func_nobuild299811 <- SpawnEntityFromTable("func_nobuild", {
    model = "*125",
    TeamNum = "0",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "-912 -764 224",
    angles = "0 0 0",
    AllowTeleporters = "0",
    AllowSentry = "0",
    AllowDispenser = "0",
    classname = "func_nobuild",
    hammerid = "299811",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nobuild299811.KeyValueFromInt("solid", 2)
func_nobuild299811.KeyValueFromString(""mins"", "-1 -1 -1")
func_nobuild299811.KeyValueFromString(""maxs"", "1 1 1")

::func_nobuild299830 <- SpawnEntityFromTable("func_nobuild", {
    model = "*126",
    TeamNum = "0",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "1564 -1064 136",
    angles = "0 0 0",
    AllowTeleporters = "0",
    AllowSentry = "0",
    AllowDispenser = "0",
    classname = "func_nobuild",
    hammerid = "299830",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nobuild299830.KeyValueFromInt("solid", 2)
func_nobuild299830.KeyValueFromString(""mins"", "-1 -1 -1")
func_nobuild299830.KeyValueFromString(""maxs"", "1 1 1")

::func_respawnroom303983 <- SpawnEntityFromTable("func_respawnroom", {
    model = "*127",
    TeamNum = "3",
    targetname = "respawn_bot",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "-1480 -4504 348",
    angles = "0 0 0",
    classname = "func_respawnroom",
    hammerid = "303983",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_respawnroom303983.KeyValueFromInt("solid", 2)
func_respawnroom303983.KeyValueFromString(""mins"", "-1 -1 -1")
func_respawnroom303983.KeyValueFromString(""maxs"", "1 1 1")

::func_respawnroomvisualizer306451 <- SpawnEntityFromTable("func_respawnroomvisualizer", {
    model = "*128",
    vrad_brush_cast_shadows = "0",
    StartDisabled = "0",
    spawnflags = "2",
    Solidity = "1",
    solid_to_enemies = "1",
    respawnroomname = "respawn_bot",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "-1084 -4740 500",
    InputFilter = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_respawnroomvisualizer",
    hammerid = "306451",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_respawnroomvisualizer306451.KeyValueFromInt("solid", 2)
func_respawnroomvisualizer306451.KeyValueFromString(""mins"", "-1 -1 -1")
func_respawnroomvisualizer306451.KeyValueFromString(""maxs"", "1 1 1")

::info_observer_point310902 <- SpawnEntityFromTable("info_observer_point", {
    origin = "1072 -2208 288",
    fov = "0",
    defaultwelcome = "0",
    angles = "13.1705 226.362 1.66164",
    classname = "info_observer_point",
    hammerid = "310902"
})

::func_tfbot_hint312097 <- SpawnEntityFromTable("func_tfbot_hint", {
    model = "*129",
    team = "3",
    StartDisabled = "0",
    origin = "-800 -3936 24",
    hint = "0",
    angles = "0 0 0",
    classname = "func_tfbot_hint",
    hammerid = "312097",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_tfbot_hint312097.KeyValueFromInt("solid", 2)
func_tfbot_hint312097.KeyValueFromString(""mins"", "-1 -1 -1")
func_tfbot_hint312097.KeyValueFromString(""maxs"", "1 1 1")

::func_tfbot_hint312106 <- SpawnEntityFromTable("func_tfbot_hint", {
    model = "*130",
    team = "3",
    StartDisabled = "0",
    origin = "-808 -2176 24",
    hint = "0",
    angles = "0 0 0",
    classname = "func_tfbot_hint",
    hammerid = "312106",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_tfbot_hint312106.KeyValueFromInt("solid", 2)
func_tfbot_hint312106.KeyValueFromString(""mins"", "-1 -1 -1")
func_tfbot_hint312106.KeyValueFromString(""maxs"", "1 1 1")

::prop_dynamic316018 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "512 -496 -28",
    targetname = "arrows_all",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 180 0",
    classname = "prop_dynamic",
    hammerid = "316018"
})

::light320927 <- SpawnEntityFromTable("light", {
    origin = "976 -1224 208",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light320945 <- SpawnEntityFromTable("light", {
    origin = "544 -1224 208",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::path_track321023 <- SpawnEntityFromTable("path_track", {
    origin = "-800 -120 24",
    targetname = "tank_path_23",
    target = "tank_path_24",
    speed = "0",
    spawnflags = "0",
    radius = "0",
    orientationtype = "1",
    angles = "0 0 0",
    classname = "path_track",
    hammerid = "321023"
})

::light330290 <- SpawnEntityFromTable("light", {
    origin = "1192 -880 216",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light330308 <- SpawnEntityFromTable("light", {
    origin = "1472 -1184 216",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light330326 <- SpawnEntityFromTable("light", {
    origin = "1672 -768 216",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light330344 <- SpawnEntityFromTable("light", {
    origin = "1904 -1064 216",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::prop_dynamic331630 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "288 -2808 224",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/mvm_upgrade_sign.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    DefaultAnim = "idle",
    angles = "0 90 0",
    classname = "prop_dynamic",
    hammerid = "331630"
})

::prop_dynamic335873 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-2700 -664 96",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    parentname = "door_red_1_1",
    modelscale = "1.0",
    model = "models/props_gameplay/sewer_door01.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "90 0 0",
    classname = "prop_dynamic",
    hammerid = "335873"
})

::prop_dynamic335912 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-2700 -568 96.25",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    parentname = "door_red_1_2",
    modelscale = "1.0",
    model = "models/props_gameplay/sewer_door01.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "90 180 0",
    classname = "prop_dynamic",
    hammerid = "335912"
})

::func_door335999 <- SpawnEntityFromTable("func_door", {
    model = "*131",
    wait = "-1",
    unlocked_sentence = "0",
    targetname = "door_red_1_2",
    speed = "500",
    spawnflags = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    origin = "-2700 -568 96",
    movedir = "0 90 0",
    loopmovesound = "0",
    locked_sentence = "0",
    lip = "28",
    health = "0",
    forceclosed = "0",
    dmg = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    angles = "0 0 0",
    classname = "func_door",
    hammerid = "335999",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_door335999.KeyValueFromInt("solid", 2)
func_door335999.KeyValueFromString(""mins"", "-1 -1 -1")
func_door335999.KeyValueFromString(""maxs"", "1 1 1")

::light_environment342704 <- SpawnEntityFromTable("light_environment", {
    origin = "-1896 -600 480",
    SunSpreadAngle = "15",
    pitch = "-25",
    angles = "0 285 0",
    _lightscaleHDR = "1",
    _lightHDR = "116 146 154 600",
    _light = "116 146 154 600",
    _AmbientScaleHDR = "1",
    _ambientHDR = "92 107 114 500",
    _ambient = "92 107 114 500",
    classname = "light_environment",
    hammerid = "342704"
})

::light342818 <- SpawnEntityFromTable("light", {
    origin = "88 -3168 200",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light342836 <- SpawnEntityFromTable("light", {
    origin = "88 -2928 200",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::item_ammopack_full353650 <- SpawnEntityFromTable("item_ammopack_full", {
    origin = "840 -1100 8.21063",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_full",
    hammerid = "353650"
})

::item_healthkit_medium353654 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "872 -1100 8.21064",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "353654"
})

::item_healthkit_full353893 <- SpawnEntityFromTable("item_healthkit_full", {
    origin = "-312 -760 -16",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_full",
    hammerid = "353893"
})

::light353914 <- SpawnEntityFromTable("light", {
    origin = "-432 -760 128",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::func_tfbot_hint354089 <- SpawnEntityFromTable("func_tfbot_hint", {
    model = "*132",
    team = "3",
    StartDisabled = "0",
    origin = "-468 -308 216",
    hint = "0",
    angles = "0 0 0",
    classname = "func_tfbot_hint",
    hammerid = "354089",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_tfbot_hint354089.KeyValueFromInt("solid", 2)
func_tfbot_hint354089.KeyValueFromString(""mins"", "-1 -1 -1")
func_tfbot_hint354089.KeyValueFromString(""maxs"", "1 1 1")

::func_nav_avoid354123 <- SpawnEntityFromTable("func_nav_avoid", {
    model = "*133",
    team = "3",
    tags = "bomb_carrier",
    start_disabled = "0",
    origin = "252 228 208",
    angles = "0 0 0",
    classname = "func_nav_avoid",
    hammerid = "354123",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nav_avoid354123.KeyValueFromInt("solid", 2)
func_nav_avoid354123.KeyValueFromString(""mins"", "-1 -1 -1")
func_nav_avoid354123.KeyValueFromString(""maxs"", "1 1 1")

::light354642 <- SpawnEntityFromTable("light", {
    origin = "-384 -240 404",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light354660 <- SpawnEntityFromTable("light", {
    origin = "-264 224 416",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light358722 <- SpawnEntityFromTable("light", {
    origin = "-384 -240 144",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::func_nav_avoid359550 <- SpawnEntityFromTable("func_nav_avoid", {
    model = "*134",
    team = "3",
    tags = "bomb_carrier",
    start_disabled = "0",
    origin = "-128 16 -4",
    angles = "0 0 0",
    classname = "func_nav_avoid",
    hammerid = "359550",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nav_avoid359550.KeyValueFromInt("solid", 2)
func_nav_avoid359550.KeyValueFromString(""mins"", "-1 -1 -1")
func_nav_avoid359550.KeyValueFromString(""maxs"", "1 1 1")

::item_healthkit_medium359789 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "-280 224 192.256",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "359789"
})

::item_ammopack_medium359793 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "-248 224 192.256",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "359793"
})

::light367298 <- SpawnEntityFromTable("light", {
    style = "33",
    origin = "2193.95 -1160 148.06",
    targetname = "tunnel_light",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light367386 <- SpawnEntityFromTable("light", {
    style = "33",
    origin = "2366.05 -336 148.06",
    targetname = "tunnel_light",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 238 168 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light367571 <- SpawnEntityFromTable("light", {
    origin = "88 40 144",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light367739 <- SpawnEntityFromTable("light", {
    origin = "2704 -1168 64",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light371752 <- SpawnEntityFromTable("light", {
    origin = "2272 376 32",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light371770 <- SpawnEntityFromTable("light", {
    origin = "2000 376 32",
    style = "0",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::item_healthkit_medium375277 <- SpawnEntityFromTable("item_healthkit_medium", {
    origin = "2840 -1248 -128",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_healthkit_medium",
    hammerid = "375277"
})

::item_ammopack_medium375281 <- SpawnEntityFromTable("item_ammopack_medium", {
    origin = "2808 -1248 -128",
    rendercolor = "255 255 255",
    renderamt = "255",
    modelscale = "1.0",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    AutoMaterialize = "1",
    angles = "0 0 0",
    classname = "item_ammopack_medium",
    hammerid = "375281"
})

::prop_dynamic1518000 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4526 -747 -127",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/bots/pyro/bot_pyro_gibby.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "1518000"
})

::prop_dynamic1518282 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-256.134 -256.061 35.827",
    targetname = "crystal",
    StartDisabled = "1",
    solid = "6",
    skin = "0",
    renderfx = "15",
    rendercolor = "255 255 255",
    renderamt = "255",
    physdamagescale = "1.0",
    parentname = "crystal_spin",
    modelscale = "1.3",
    model = "models/props_moonbase/moon_gravel_crystal_blue.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1.0",
    fademindist = "-1",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "1518282"
})

::info_player_teamspawn475935 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "136 -6352 440",
    TeamNum = "3",
    targetname = "spawnbot_mission_sentry_buster",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "475935"
})

::func_tfbot_hint384975 <- SpawnEntityFromTable("func_tfbot_hint", {
    model = "*135",
    team = "3",
    StartDisabled = "0",
    origin = "112 -56 216",
    hint = "0",
    angles = "0 0 0",
    classname = "func_tfbot_hint",
    hammerid = "384975",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_tfbot_hint384975.KeyValueFromInt("solid", 2)
func_tfbot_hint384975.KeyValueFromString(""mins"", "-1 -1 -1")
func_tfbot_hint384975.KeyValueFromString(""maxs"", "1 1 1")

::func_tfbot_hint385002 <- SpawnEntityFromTable("func_tfbot_hint", {
    model = "*136",
    team = "3",
    StartDisabled = "0",
    origin = "592 -2976 80",
    hint = "0",
    angles = "0 0 0",
    classname = "func_tfbot_hint",
    hammerid = "385002",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_tfbot_hint385002.KeyValueFromInt("solid", 2)
func_tfbot_hint385002.KeyValueFromString(""mins"", "-1 -1 -1")
func_tfbot_hint385002.KeyValueFromString(""maxs"", "1 1 1")

::func_tfbot_hint385008 <- SpawnEntityFromTable("func_tfbot_hint", {
    model = "*137",
    team = "3",
    StartDisabled = "0",
    origin = "992 -1440 24",
    hint = "0",
    angles = "0 0 0",
    classname = "func_tfbot_hint",
    hammerid = "385008",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_tfbot_hint385008.KeyValueFromInt("solid", 2)
func_tfbot_hint385008.KeyValueFromString(""mins"", "-1 -1 -1")
func_tfbot_hint385008.KeyValueFromString(""maxs"", "1 1 1")

::prop_dynamic1040250 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "1448.39 -1232.89 0.234604",
    texframeindex = "0",
    targetname = "midblockerbarrel1",
    StartDisabled = "1",
    spawnflags = "256",
    solid = "6",
    skin = "0",
    shadowcastdist = "0",
    screenspacefade = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_hydro/water_barrel_cluster3.mdl",
    minhealthdmg = "0",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1.0",
    fademindist = "-1",
    fademaxdist = "0",
    effects = "0",
    disableshadows = "0",
    DisableBoneFollowers = "0",
    body = "0",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "1040250"
})

::func_tfbot_hint385029 <- SpawnEntityFromTable("func_tfbot_hint", {
    model = "*138",
    team = "3",
    StartDisabled = "0",
    origin = "96 -400 -8",
    hint = "0",
    angles = "0 0 0",
    classname = "func_tfbot_hint",
    hammerid = "385029",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_tfbot_hint385029.KeyValueFromInt("solid", 2)
func_tfbot_hint385029.KeyValueFromString(""mins"", "-1 -1 -1")
func_tfbot_hint385029.KeyValueFromString(""maxs"", "1 1 1")

::func_tfbot_hint385046 <- SpawnEntityFromTable("func_tfbot_hint", {
    model = "*139",
    team = "3",
    StartDisabled = "0",
    origin = "512 160 96",
    hint = "0",
    angles = "0 0 0",
    classname = "func_tfbot_hint",
    hammerid = "385046",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_tfbot_hint385046.KeyValueFromInt("solid", 2)
func_tfbot_hint385046.KeyValueFromString(""mins"", "-1 -1 -1")
func_tfbot_hint385046.KeyValueFromString(""maxs"", "1 1 1")

::func_flagdetectionzone242505 <- SpawnEntityFromTable("func_flagdetectionzone", {
    model = "*140",
    TeamNum = "3",
    StartDisabled = "0",
    origin = "-1156 -548 448",
    angles = "0 0 0",
    alarm = "1",
    classname = "func_flagdetectionzone",
    hammerid = "242505",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_flagdetectionzone242505.KeyValueFromInt("solid", 2)
func_flagdetectionzone242505.KeyValueFromString(""mins"", "-1 -1 -1")
func_flagdetectionzone242505.KeyValueFromString(""maxs"", "1 1 1")

::func_flagdetectionzone242483 <- SpawnEntityFromTable("func_flagdetectionzone", {
    model = "*141",
    TeamNum = "3",
    StartDisabled = "0",
    origin = "-1828 -352 448",
    angles = "0 0 0",
    alarm = "1",
    classname = "func_flagdetectionzone",
    hammerid = "242483",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_flagdetectionzone242483.KeyValueFromInt("solid", 2)
func_flagdetectionzone242483.KeyValueFromString(""mins"", "-1 -1 -1")
func_flagdetectionzone242483.KeyValueFromString(""maxs"", "1 1 1")

::info_player_teamspawn2034395 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "-1858.25 37.841 64",
    TeamNum = "0",
    targetname = "fourthspawnhatch",
    StartDisabled = "1",
    spawnflags = "511",
    angles = "0 0 0",
    classname = "info_player_teamspawn",
    hammerid = "2034395"
})

::info_player_teamspawn475971 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "160 -6184 440",
    TeamNum = "3",
    targetname = "spawnbot",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "475971"
})

::light_spot413834 <- SpawnEntityFromTable("light_spot", {
    origin = "-4216 -792 152",
    spawnflags = "0",
    pitch = "-90",
    angles = "-90 270 0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "45",
     = "",
     = ""
})

::light_spot413864 <- SpawnEntityFromTable("light_spot", {
    origin = "-3424 -304 176",
    spawnflags = "0",
    pitch = "-90",
    angles = "-90 270 0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 255 255 600",
    _inner_cone = "35",
    _exponent = "1",
    _distance = "0",
    _constant_attn = "0",
    _cone = "45",
     = "",
     = ""
})

::env_soundscape418805 <- SpawnEntityFromTable("env_soundscape", {
    origin = "659.911 -568 408",
    targetname = "soundscape_outside2",
    StartDisabled = "0",
    soundscape = "sawmill.outside",
    radius = "-1",
    classname = "env_soundscape",
    hammerid = "418805"
})

::env_soundscape418860 <- SpawnEntityFromTable("env_soundscape", {
    origin = "576 -3080 424",
    targetname = "soundscape_outside3",
    StartDisabled = "0",
    soundscape = "sawmill.outside",
    radius = "2048",
    classname = "env_soundscape",
    hammerid = "418860"
})

::env_soundscape419102 <- SpawnEntityFromTable("env_soundscape", {
    origin = "2280 -968 104",
    targetname = "soundscape_tunnel2",
    StartDisabled = "0",
    soundscape = "Upward.Inside",
    radius = "832",
    classname = "env_soundscape",
    hammerid = "419102"
})

::prop_dynamic422509 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-2504 -1185 348",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.5",
    model = "models/workshop/player/items/all_class/jul13_macho_mann_glasses/jul13_macho_mann_glasses_soldier.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "2200",
    fademaxdist = "2400",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "9.5 314 0",
    classname = "prop_dynamic",
    hammerid = "422509"
})

::prop_dynamic422587 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-3502 -896 -16",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/player/items/scout/boombox.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "0",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "2.11793 164.381 -50.2401",
    classname = "prop_dynamic",
    hammerid = "422587"
})

::ambient_generic422714 <- SpawnEntityFromTable("ambient_generic", {
    origin = "-3480 -941.873 32",
    volstart = "0",
    targetname = "sound_boombox",
    spinup = "0",
    spindown = "0",
    spawnflags = "48",
    radius = "310",
    preset = "0",
    pitchstart = "100",
    pitch = "100",
    message = "music/cossack_sandvich.wav",
    lfotype = "0",
    lforate = "0",
    lfomodvol = "0",
    lfomodpitch = "0",
    health = "2",
    fadeoutsecs = "0",
    fadeinsecs = "0",
    cspinup = "0",
    classname = "ambient_generic",
    hammerid = "422714"
})

::trigger_multiple1860912 <- SpawnEntityFromTable("trigger_multiple", {
    model = "*142",
    wait = "1",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "-768 -320 336",
    angles = "0 0 0",
    classname = "trigger_multiple",
    hammerid = "1860912",
    OnStartTouchAll = "hatchoccluderDeactivate0-1",
    OnEndTouchAll = "hatchoccluderActivate0-1",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
trigger_multiple1860912.KeyValueFromInt("solid", 2)
trigger_multiple1860912.KeyValueFromString(""mins"", "-1 -1 -1")
trigger_multiple1860912.KeyValueFromString(""maxs"", "1 1 1")

::logic_relay437001 <- SpawnEntityFromTable("logic_relay", {
    origin = "360 -2744 88",
    targetname = "wave_start_2bomb_endurance_relay",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "437001",
    OnTrigger = "bomb2Disable0-1",
    OnTrigger = "bomb3Disable0-1",
    OnTrigger = "bomb1_timedEnable0-1",
    OnTrigger = "bomb2_timedEnable0-1",
    OnTrigger = "bomb3_timedDisable0-1",
    OnTrigger = "bomb1Disable0-1",
    OnTrigger = "wave_start_relayTrigger0-1"
})

::logic_relay437013 <- SpawnEntityFromTable("logic_relay", {
    origin = "360 -2768 88",
    targetname = "wave_start_3bomb_endurance_relay",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "437013",
    OnTrigger = "bomb2Disable0-1",
    OnTrigger = "bomb3Disable0-1",
    OnTrigger = "bomb1_timedEnable0-1",
    OnTrigger = "bomb2_timedEnable0-1",
    OnTrigger = "bomb3_timedEnable0-1",
    OnTrigger = "bomb1Disable0-1",
    OnTrigger = "wave_start_relayTrigger0-1"
})

::logic_relay437027 <- SpawnEntityFromTable("logic_relay", {
    origin = "312 -2744 88",
    targetname = "bomb_relay2",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "437027",
    OnTrigger = "bomb2Enable0-1",
    OnTrigger = "gamerulesPlayVOvo/mvm_another_bomb08.mp31.5-1",
    OnTrigger = "gamerulesPlayVOmisc/doomsday_lift_warning.wav0-1",
    OnTrigger = "gamerulesPlayVOmisc/doomsday_lift_start.wav0-1"
})

::logic_relay437055 <- SpawnEntityFromTable("logic_relay", {
    origin = "312 -2768 88",
    targetname = "bomb_relay3",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "437055",
    OnTrigger = "bomb3Enable0-1",
    OnTrigger = "gamerulesPlayVOvo/mvm_another_bomb07.mp31.5-1",
    OnTrigger = "gamerulesPlayVOmisc/doomsday_lift_warning.wav0-1",
    OnTrigger = "gamerulesPlayVOmisc/doomsday_lift_start.wav0-1"
})

::logic_relay1076203 <- SpawnEntityFromTable("logic_relay", {
    origin = "40 -2800 181.422",
    targetname = "mid_open_relay",
    spawnflags = "0",
    classname = "logic_relay",
    hammerid = "1076203",
    OnTrigger = "midblocker*Disable0-1",
    OnTrigger = "midblockerwallDisable0-1",
    OnTrigger = "midblockerdoorOpen0-1",
    OnTrigger = "midblocker*DisableCollision0-1",
    OnTrigger = "midblockeroccluder*Deactivate0-1",
    OnTrigger = "nav_interfaceRecomputeBlockers3.1-1",
    OnTrigger = "nav_interfaceRecomputeBlockers3.01-1",
    OnTrigger = "nav_interfaceRecomputeBlockers3-1"
})

::info_particle_system1074112 <- SpawnEntityFromTable("info_particle_system", {
    origin = "408 -4856 1072",
    targetname = "rain_angledstorm",
    start_active = "0",
    flag_as_weather = "1",
    effect_name = "env_rain_001",
    angles = "-45 0 0",
    classname = "info_particle_system",
    hammerid = "1074112"
})

::func_respawnroom447784 <- SpawnEntityFromTable("func_respawnroom", {
    model = "*143",
    TeamNum = "3",
    targetname = "respawn_bot",
    StartDisabled = "0",
    spawnflags = "1",
    origin = "564 -5512 500",
    angles = "0 0 0",
    classname = "func_respawnroom",
    hammerid = "447784",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_respawnroom447784.KeyValueFromInt("solid", 2)
func_respawnroom447784.KeyValueFromString(""mins"", "-1 -1 -1")
func_respawnroom447784.KeyValueFromString(""maxs"", "1 1 1")

::prop_dynamic450879 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "80 -3712 0",
    targetname = "arrows_path2",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 10 0",
    classname = "prop_dynamic",
    hammerid = "450879"
})

::prop_dynamic450911 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-576 -3968 -4",
    targetname = "arrows_path2",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 75 0",
    classname = "prop_dynamic",
    hammerid = "450911"
})

::prop_dynamic450943 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-352 -2432 -4.77885",
    targetname = "arrows_path1",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 0 0",
    classname = "prop_dynamic",
    hammerid = "450943"
})

::prop_dynamic465757 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-576 -3968 -4",
    targetname = "arrows_path1",
    StartDisabled = "0",
    spawnflags = "0",
    solid = "0",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "138 187 247",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_mvm/robot_hologram.mdl",
    MinAnimTime = "5",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "1",
    angles = "0 120 0",
    classname = "prop_dynamic",
    hammerid = "465757"
})

::func_nav_avoid465832 <- SpawnEntityFromTable("func_nav_avoid", {
    model = "*144",
    team = "3",
    targetname = "avoid_path1",
    tags = "bomb_carrier common flank_front flank_mid1 flank_mid2 flank_back",
    start_disabled = "0",
    origin = "36 -3336 8",
    angles = "0 0 0",
    classname = "func_nav_avoid",
    hammerid = "465832",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_nav_avoid465832.KeyValueFromInt("solid", 2)
func_nav_avoid465832.KeyValueFromString(""mins"", "-1 -1 -1")
func_nav_avoid465832.KeyValueFromString(""maxs"", "1 1 1")

::func_tfbot_hint474901 <- SpawnEntityFromTable("func_tfbot_hint", {
    portalnumber = "25",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    portalnumber = "26",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    portalnumber = "27",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    portalnumber = "28",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    portalnumber = "29",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    portalnumber = "30",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    portalnumber = "31",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    portalnumber = "32",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    portalnumber = "33",
    StartOpen = "1",
    PortalVersion = "1",
     = "",
     = "",
     = "",
     = "",
    model = "*145",
    team = "3",
    StartDisabled = "0",
    origin = "-928 -4768 -48",
    hint = "0",
    angles = "0 0 0",
    classname = "func_tfbot_hint",
    hammerid = "474901",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_tfbot_hint474901.KeyValueFromInt("solid", 2)
func_tfbot_hint474901.KeyValueFromString(""mins"", "-1 -1 -1")
func_tfbot_hint474901.KeyValueFromString(""maxs"", "1 1 1")

::func_tfbot_hint474911 <- SpawnEntityFromTable("func_tfbot_hint", {
    model = "*146",
    team = "3",
    StartDisabled = "0",
    origin = "672 -4896 -136",
    hint = "0",
    angles = "0 0 0",
    classname = "func_tfbot_hint",
    hammerid = "474911",
    mins = "-1 -1 -1",
    maxs = "1 1 1"
})
func_tfbot_hint474911.KeyValueFromInt("solid", 2)
func_tfbot_hint474911.KeyValueFromString(""mins"", "-1 -1 -1")
func_tfbot_hint474911.KeyValueFromString(""maxs"", "1 1 1")

::info_player_teamspawn475610 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "-2208 -4912 -56",
    TeamNum = "3",
    targetname = "spawnbot_right",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "475610"
})

::info_player_teamspawn475614 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "-2304 -4912 -56",
    TeamNum = "3",
    targetname = "spawnbot_right",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "475614"
})

::info_player_teamspawn475618 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "-2256 -4976 -56",
    TeamNum = "3",
    targetname = "spawnbot_mission_sniper",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "475618"
})

::info_player_teamspawn475927 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "272 -6424 440",
    TeamNum = "3",
    targetname = "spawnbot",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "475927"
})

::info_player_teamspawn475931 <- SpawnEntityFromTable("info_player_teamspawn", {
    origin = "16 -6264 440",
    TeamNum = "3",
    targetname = "spawnbot",
    spawnflags = "511",
    angles = "0 90 0",
    classname = "info_player_teamspawn",
    hammerid = "475931"
})

::env_spark1438396 <- SpawnEntityFromTable("env_spark", {
    origin = "1568.15 145.191 487.75",
    TrailLength = "2",
    spawnflags = "192",
    MaxDelay = "20",
    Magnitude = "3",
    angles = "0 0 0",
    classname = "env_spark",
    hammerid = "1438396"
})

::light2461340 <- SpawnEntityFromTable("light", {
    origin = "1634.47 -233.57 271.638",
    targetname = "PT_WATERLIGHT",
    style = "35",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "255 0 0 100",
    _hardfalloff = "0",
    _fifty_percent_distance = "100",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::light2412869 <- SpawnEntityFromTable("light", {
    origin = "1569.36 146.233 453.076",
    style = "10",
    spawnflags = "0",
    _zero_percent_distance = "0",
    _quadratic_attn = "1",
    _linear_attn = "0",
    _lightscaleHDR = "1",
    _lightHDR = "-1 -1 -1 1",
    _light = "239 241 154 200",
    _hardfalloff = "0",
    _fifty_percent_distance = "0",
    _distance = "0",
    _constant_attn = "0",
     = "",
     = ""
})

::env_spark2461883 <- SpawnEntityFromTable("env_spark", {
    origin = "1760 -204.729 233.589",
    TrailLength = "1",
    targetname = "PT_WATERSPARK",
    spawnflags = "192",
    MaxDelay = "2",
    Magnitude = "1",
    angles = "0 0 0",
    classname = "env_spark",
    hammerid = "2461883"
})

::prop_dynamic20118 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-5045 -3556 291",
    targetname = "skybox_terrain",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "0",
    skin = "5",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_skybox/skycards_forest512bump.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 65.5 0",
    classname = "prop_dynamic",
    hammerid = "20118"
})

::prop_dynamic20119 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-5275.16 -3239 285.912",
    targetname = "skybox_terrain",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "0",
    skin = "5",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_skybox/skycards_forest512bump.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 3.5 0",
    classname = "prop_dynamic",
    hammerid = "20119"
})

::prop_dynamic20120 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-5372.42 -2826 341",
    targetname = "skybox_terrain",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "0",
    skin = "6",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_skybox/skycards_forest512bump.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 354.5 0",
    classname = "prop_dynamic",
    hammerid = "20120"
})

::prop_dynamic20121 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-5276.42 -2870.83 287",
    targetname = "skybox_terrain",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "0",
    skin = "5",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_skybox/skycards_forest512bump.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 354.5 0",
    classname = "prop_dynamic",
    hammerid = "20121"
})

::prop_dynamic20122 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-5122 -3592 344",
    targetname = "skybox_terrain",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "0",
    skin = "6",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_skybox/skycards_forest512bump.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 65.5 0",
    classname = "prop_dynamic",
    hammerid = "20122"
})

::prop_dynamic20123 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-5394 -3282 339.139",
    targetname = "skybox_terrain",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "0",
    skin = "6",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_skybox/skycards_forest512bump.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 8 0",
    classname = "prop_dynamic",
    hammerid = "20123"
})

::prop_dynamic20124 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4255 -3462 284",
    targetname = "skybox_terrain",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "0",
    skin = "5",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_skybox/skycards_forest512bump.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 154.5 0",
    classname = "prop_dynamic",
    hammerid = "20124"
})

::prop_dynamic20125 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4039 -3248 309.527",
    targetname = "skybox_terrain",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "0",
    skin = "6",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_skybox/skycards_forest512bump.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 181 0",
    classname = "prop_dynamic",
    hammerid = "20125"
})

::prop_dynamic20126 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4591 -3662 292",
    targetname = "skybox_terrain",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "0",
    skin = "5",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_skybox/skycards_forest512bump.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 87 0",
    classname = "prop_dynamic",
    hammerid = "20126"
})

::prop_dynamic20127 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4233 -3606 313",
    targetname = "skybox_terrain",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "0",
    skin = "6",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_skybox/skycards_forest512bump.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 123.5 0",
    classname = "prop_dynamic",
    hammerid = "20127"
})

::prop_dynamic20128 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4114 -2790 313.843",
    targetname = "skybox_terrain",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "0",
    skin = "6",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_skybox/skycards_forest512bump.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 199.5 0",
    classname = "prop_dynamic",
    hammerid = "20128"
})

::prop_dynamic20129 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4139 -3008 275.364",
    targetname = "skybox_terrain",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "0",
    skin = "5",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_skybox/skycards_forest512bump.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 177 0",
    classname = "prop_dynamic",
    hammerid = "20129"
})

::prop_dynamic20130 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4665 -3691 324",
    targetname = "skybox_terrain",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "0",
    skin = "6",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_skybox/skycards_forest512bump.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 86.5 0",
    classname = "prop_dynamic",
    hammerid = "20130"
})

::prop_dynamic20131 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "-4318 -2622 277.364",
    targetname = "skybox_terrain",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "0",
    skin = "5",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_skybox/skycards_forest512bump.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "0",
    DisableBoneFollowers = "0",
    angles = "0 230.5 0",
    classname = "prop_dynamic",
    hammerid = "20131"
})

::prop_dynamic1577 <- SpawnEntityFromTable("prop_dynamic", {
    origin = "336 -5360 127.317",
    targetname = "PT_TREE",
    StartDisabled = "1",
    spawnflags = "0",
    solid = "6",
    skin = "0",
    SetBodyGroup = "0",
    rendermode = "0",
    renderfx = "0",
    rendercolor = "255 255 255",
    renderamt = "255",
    RandomAnimation = "0",
    pressuredelay = "0",
    physdamagescale = "1.0",
    PerformanceMode = "0",
    modelscale = "1.0",
    model = "models/props_foliage/tree_pine01_8cluster.mdl",
    mindxlevel = "0",
    MinAnimTime = "5",
    maxdxlevel = "0",
    MaxAnimTime = "10",
    fadescale = "1",
    fademindist = "-1",
    fademaxdist = "0",
    ExplodeRadius = "0",
    ExplodeDamage = "0",
    disableshadows = "1",
    disablereceiveshadows = "1",
    DisableBoneFollowers = "0",
    angles = "0 105 0",
    classname = "prop_dynamic",
    hammerid = "1577"
})

::env_entity_maker2625183 <- SpawnEntityFromTable("env_entity_maker", {
    origin = "-3211.83 -534.514 32",
    targetname = "boxspawner",
    spawnflags = "0",
    PostSpawnSpeed = "0",
    PostSpawnInheritAngles = "0",
    PostSpawnDirectionVariance = "0.15",
    PostSpawnDirection = "0 0 0",
    model = "models/props_island/mannco_case_large.mdl",
    EntityTemplate = "gunboxes",
    angles = "0 100 0",
    classname = "env_entity_maker",
    hammerid = "2625183"
})

