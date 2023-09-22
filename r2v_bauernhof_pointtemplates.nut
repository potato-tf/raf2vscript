}
::corelogic <- function(origin, angles)
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
	    "OnMapSpawn#25": "tf_objective_resource,RunScriptCode,NetProps.SetPropString(self, `m_iszMvMPopfileName`, `Bauernhof Der Toten`),0,-1",
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

	if(origin != null)
		logic_auto1.SetOrigin(origin)
	if(angles != null)
		logic_auto1.SetAngles(angles)

	local tf_point_nav_interface2 = SpawnEntityFromTable("tf_point_nav_interface", {
	    
	})

	if(origin != null)
		tf_point_nav_interface2.SetOrigin(origin)
	if(angles != null)
		tf_point_nav_interface2.SetAngles(angles)

	local func_button3 = SpawnEntityFromTable("func_button", {
	    
	})

	if(origin != null)
		func_button3.SetOrigin(origin)
	if(angles != null)
		func_button3.SetAngles(angles)

	local game_forcerespawn4 = SpawnEntityFromTable("game_forcerespawn", {
	    
	})

	if(origin != null)
		game_forcerespawn4.SetOrigin(origin)
	if(angles != null)
		game_forcerespawn4.SetAngles(angles)

	local logic_relay5 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "respawner,ForceTeamRespawn,2,0,-1"
	})

	if(origin != null)
		logic_relay5.SetOrigin(origin)
	if(angles != null)
		logic_relay5.SetAngles(angles)

	local trigger_hurt6 = SpawnEntityFromTable("trigger_hurt", {
	    
	})

	if(origin != null)
		trigger_hurt6.SetOrigin(origin)
	if(angles != null)
		trigger_hurt6.SetAngles(angles)

	local filter_activator_tfteam7 = SpawnEntityFromTable("filter_activator_tfteam", {
	    
	})

	if(origin != null)
		filter_activator_tfteam7.SetOrigin(origin)
	if(angles != null)
		filter_activator_tfteam7.SetAngles(angles)

	local logic_relay8 = SpawnEntityFromTable("logic_relay", {
	    
	})

	if(origin != null)
		logic_relay8.SetOrigin(origin)
	if(angles != null)
		logic_relay8.SetAngles(angles)

	local math_counter9 = SpawnEntityFromTable("math_counter", {
	    targetname = "roundscleared",
	    "startvalue" = 0,
	    "outValue#1": "survivalcheck,SetValueCompare,,0,-1"
	})

	if(origin != null)
		math_counter9.SetOrigin(origin)
	if(angles != null)
		math_counter9.SetAngles(angles)

	local logic_compare10 = SpawnEntityFromTable("logic_compare", {
	    targetname = "survivalcheck",
	    "initialValue" = 0,
	    "CompareValue" = 4,
	    "OnEqualTo#1": "player,RunScriptCode,self.AddCurrency(1500),,-1",
	    "OnEqualTo#2": "player,RunScriptCode,ClientPrint(self, 4, `You've received a 1500 Survival Bonus!`),,-1",
	    "OnEqualTo#3": "roundscleared,SetValue,0,,-1",
	    "OnEqualTo#4": "survivalcheck,SetValue,0,,-1"
	})

	if(origin != null)
		logic_compare10.SetOrigin(origin)
	if(angles != null)
		logic_compare10.SetAngles(angles)

	local prop_dynamic11 = SpawnEntityFromTable("prop_dynamic", {
	    
	})

	if(origin != null)
		prop_dynamic11.SetOrigin(origin)
	if(angles != null)
		prop_dynamic11.SetAngles(angles)

	local prop_dynamic_ornament12 = SpawnEntityFromTable("prop_dynamic_ornament", {
	    
	})

	if(origin != null)
		prop_dynamic_ornament12.SetOrigin(origin)
	if(angles != null)
		prop_dynamic_ornament12.SetAngles(angles)

	local prop_dynamic_ornament13 = SpawnEntityFromTable("prop_dynamic_ornament", {
	    
	})

	if(origin != null)
		prop_dynamic_ornament13.SetOrigin(origin)
	if(angles != null)
		prop_dynamic_ornament13.SetAngles(angles)

	local func_flagdetectionzone14 = SpawnEntityFromTable("func_flagdetectionzone", {
	    
	})

	if(origin != null)
		func_flagdetectionzone14.SetOrigin(origin)
	if(angles != null)
		func_flagdetectionzone14.SetAngles(angles)

	local item_teamflag15 = SpawnEntityFromTable("item_teamflag", {
	    
	})

	if(origin != null)
		item_teamflag15.SetOrigin(origin)
	if(angles != null)
		item_teamflag15.SetAngles(angles)

}
::Spawn_things <- function(origin, angles)
{
	local prop_dynamic16 = SpawnEntityFromTable("prop_dynamic", {
	    
	})

	if(origin != null)
		prop_dynamic16.SetOrigin(origin)
	if(angles != null)
		prop_dynamic16.SetAngles(angles)

	local prop_dynamic17 = SpawnEntityFromTable("prop_dynamic", {
	    
	})

	if(origin != null)
		prop_dynamic17.SetOrigin(origin)
	if(angles != null)
		prop_dynamic17.SetAngles(angles)

	local prop_dynamic18 = SpawnEntityFromTable("prop_dynamic", {
	    
	})

	if(origin != null)
		prop_dynamic18.SetOrigin(origin)
	if(angles != null)
		prop_dynamic18.SetAngles(angles)

	local prop_dynamic19 = SpawnEntityFromTable("prop_dynamic", {
	    
	})

	if(origin != null)
		prop_dynamic19.SetOrigin(origin)
	if(angles != null)
		prop_dynamic19.SetAngles(angles)

	local prop_dynamic20 = SpawnEntityFromTable("prop_dynamic", {
	    
	})

	if(origin != null)
		prop_dynamic20.SetOrigin(origin)
	if(angles != null)
		prop_dynamic20.SetAngles(angles)

	local func_forcefield21 = SpawnEntityFromTable("func_forcefield", {
	    
	})

	if(origin != null)
		func_forcefield21.SetOrigin(origin)
	if(angles != null)
		func_forcefield21.SetAngles(angles)

	local trigger_teleport22 = SpawnEntityFromTable("trigger_teleport", {
	    
	})

	if(origin != null)
		trigger_teleport22.SetOrigin(origin)
	if(angles != null)
		trigger_teleport22.SetAngles(angles)

	local func_forcefield23 = SpawnEntityFromTable("func_forcefield", {
	    
	})

	if(origin != null)
		func_forcefield23.SetOrigin(origin)
	if(angles != null)
		func_forcefield23.SetAngles(angles)

	local func_forcefield24 = SpawnEntityFromTable("func_forcefield", {
	    
	})

	if(origin != null)
		func_forcefield24.SetOrigin(origin)
	if(angles != null)
		func_forcefield24.SetAngles(angles)

	local info_teleport_destination25 = SpawnEntityFromTable("info_teleport_destination", {
	    
	})

	if(origin != null)
		info_teleport_destination25.SetOrigin(origin)
	if(angles != null)
		info_teleport_destination25.SetAngles(angles)

	local info_teleport_destination26 = SpawnEntityFromTable("info_teleport_destination", {
	    
	})

	if(origin != null)
		info_teleport_destination26.SetOrigin(origin)
	if(angles != null)
		info_teleport_destination26.SetAngles(angles)

	local ambient_generic27 = SpawnEntityFromTable("ambient_generic", {
	    
	})

	if(origin != null)
		ambient_generic27.SetOrigin(origin)
	if(angles != null)
		ambient_generic27.SetAngles(angles)

	local ambient_generic28 = SpawnEntityFromTable("ambient_generic", {
	    
	})

	if(origin != null)
		ambient_generic28.SetOrigin(origin)
	if(angles != null)
		ambient_generic28.SetAngles(angles)

	local ambient_generic29 = SpawnEntityFromTable("ambient_generic", {
	    
	})

	if(origin != null)
		ambient_generic29.SetOrigin(origin)
	if(angles != null)
		ambient_generic29.SetAngles(angles)

	local ambient_generic30 = SpawnEntityFromTable("ambient_generic", {
	    
	})

	if(origin != null)
		ambient_generic30.SetOrigin(origin)
	if(angles != null)
		ambient_generic30.SetAngles(angles)

	local logic_case31 = SpawnEntityFromTable("logic_case", {
	    "OnCase01#1": "atmos_1,PlaySound,,0,-1",
	    "OnCase02#2": "atmos_2,PlaySound,,0,-1",
	    "OnCase03#3": "atmos_3,PlaySound,,0,-1",
	    "OnCase04#4": "atmos_4,PlaySound,,0,-1"
	})

	if(origin != null)
		logic_case31.SetOrigin(origin)
	if(angles != null)
		logic_case31.SetAngles(angles)

	local logic_timer32 = SpawnEntityFromTable("logic_timer", {
	    "OnTimer#1": "thunderpick,PickRandom,,0,-1"
	})

	if(origin != null)
		logic_timer32.SetOrigin(origin)
	if(angles != null)
		logic_timer32.SetAngles(angles)

	local logic_relay33 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "powerup_timer,Enable,,0,-1",
	    "OnTrigger#2": "roundcounter,add,1,0,-1",
	    "OnTrigger#3": "realtimer,trigger,,0,-1",
	    "OnTrigger#4": "realtimer,trigger,,0.23,-1",
	    "OnTrigger#5": "navman,RecomputeBlockers,,2,-1",
	    "OnTrigger#6": "navman,RecomputeBlockers,,3,-1",
	    "OnTrigger#7": "navman,RecomputeBlockers,,4,-1"
	})

	if(origin != null)
		logic_relay33.SetOrigin(origin)
	if(angles != null)
		logic_relay33.SetAngles(angles)

	local logic_relay34 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "finale_snd,PlaySound,,0,-1"
	})

	if(origin != null)
		logic_relay34.SetOrigin(origin)
	if(angles != null)
		logic_relay34.SetAngles(angles)

	local logic_relay35 = SpawnEntityFromTable("logic_relay", {
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

	if(origin != null)
		logic_relay35.SetOrigin(origin)
	if(angles != null)
		logic_relay35.SetAngles(angles)

	local logic_relay36 = SpawnEntityFromTable("logic_relay", {
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

	if(origin != null)
		logic_relay36.SetOrigin(origin)
	if(angles != null)
		logic_relay36.SetAngles(angles)

	local logic_relay37 = SpawnEntityFromTable("logic_relay", {
	    
	})

	if(origin != null)
		logic_relay37.SetOrigin(origin)
	if(angles != null)
		logic_relay37.SetAngles(angles)

	local prop_dynamic38 = SpawnEntityFromTable("prop_dynamic", {
	    
	})

	if(origin != null)
		prop_dynamic38.SetOrigin(origin)
	if(angles != null)
		prop_dynamic38.SetAngles(angles)

	local env_fog_controller39 = SpawnEntityFromTable("env_fog_controller", {
	    
	})

	if(origin != null)
		env_fog_controller39.SetOrigin(origin)
	if(angles != null)
		env_fog_controller39.SetAngles(angles)

	local env_fade40 = SpawnEntityFromTable("env_fade", {
	    
	})

	if(origin != null)
		env_fade40.SetOrigin(origin)
	if(angles != null)
		env_fade40.SetAngles(angles)

	local env_fade41 = SpawnEntityFromTable("env_fade", {
	    
	})

	if(origin != null)
		env_fade41.SetOrigin(origin)
	if(angles != null)
		env_fade41.SetAngles(angles)

	local logic_relay42 = SpawnEntityFromTable("logic_relay", {
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
	    "OnTrigger#16": "tf_gamerules,PlayVORed,shadows/announcer_bossround.mp3,7,-1",
	    "OnTrigger#17": "tankround_snd,PlaySound,,14,-1",
	    "OnTrigger#18": "player,SpeakResponseConcept,TLK_MVM_TANK_CALLOUT,17.5,-1",
	    "OnTrigger#19": "player,SpeakResponseConcept,TLK_MVM_ATTACK_THE_TANK ,35,-1"
	})

	if(origin != null)
		logic_relay42.SetOrigin(origin)
	if(angles != null)
		logic_relay42.SetAngles(angles)

	local logic_relay43 = SpawnEntityFromTable("logic_relay", {
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
	    "OnTrigger#16": "tf_gamerules,PlayVORed,shadows/announcer_chuckle.mp3,7,-1"
	})

	if(origin != null)
		logic_relay43.SetOrigin(origin)
	if(angles != null)
		logic_relay43.SetAngles(angles)

	local logic_relay44 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "tf_gamerules,PlayVORed,#*shadows/bossround_end.mp3,0,-1",
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

	if(origin != null)
		logic_relay44.SetOrigin(origin)
	if(angles != null)
		logic_relay44.SetAngles(angles)

	local logic_branch45 = SpawnEntityFromTable("logic_branch", {
	    
	})

	if(origin != null)
		logic_branch45.SetOrigin(origin)
	if(angles != null)
		logic_branch45.SetAngles(angles)

	local prop_dynamic46 = SpawnEntityFromTable("prop_dynamic", {
	    
	})

	if(origin != null)
		prop_dynamic46.SetOrigin(origin)
	if(angles != null)
		prop_dynamic46.SetAngles(angles)

	local prop_dynamic47 = SpawnEntityFromTable("prop_dynamic", {
	    
	})

	if(origin != null)
		prop_dynamic47.SetOrigin(origin)
	if(angles != null)
		prop_dynamic47.SetAngles(angles)

	local prop_dynamic48 = SpawnEntityFromTable("prop_dynamic", {
	    
	})

	if(origin != null)
		prop_dynamic48.SetOrigin(origin)
	if(angles != null)
		prop_dynamic48.SetAngles(angles)

	local prop_dynamic49 = SpawnEntityFromTable("prop_dynamic", {
	    
	})

	if(origin != null)
		prop_dynamic49.SetOrigin(origin)
	if(angles != null)
		prop_dynamic49.SetAngles(angles)

	local prop_dynamic50 = SpawnEntityFromTable("prop_dynamic", {
	    
	})

	if(origin != null)
		prop_dynamic50.SetOrigin(origin)
	if(angles != null)
		prop_dynamic50.SetAngles(angles)

}
::Plate_Big <- function(origin, angles)
{
	local prop_dynamic51 = SpawnEntityFromTable("prop_dynamic", {
	    
	})

	if(origin != null)
		prop_dynamic51.SetOrigin(origin)
	if(angles != null)
		prop_dynamic51.SetAngles(angles)

	local func_rotating52 = SpawnEntityFromTable("func_rotating", {
	    
	})

	if(origin != null)
		func_rotating52.SetOrigin(origin)
	if(angles != null)
		func_rotating52.SetAngles(angles)

	local prop_dynamic53 = SpawnEntityFromTable("prop_dynamic", {
	    
	})

	if(origin != null)
		prop_dynamic53.SetOrigin(origin)
	if(angles != null)
		prop_dynamic53.SetAngles(angles)

	local env_shake54 = SpawnEntityFromTable("env_shake", {
	    
	})

	if(origin != null)
		env_shake54.SetOrigin(origin)
	if(angles != null)
		env_shake54.SetAngles(angles)

	local env_fade55 = SpawnEntityFromTable("env_fade", {
	    
	})

	if(origin != null)
		env_fade55.SetOrigin(origin)
	if(angles != null)
		env_fade55.SetAngles(angles)

	local trigger_add_tf_player_condition56 = SpawnEntityFromTable("trigger_add_tf_player_condition", {
	    "OnStartTouchAll#1": "hologram_nuke,Disable,,-1",
	    "OnStartTouchAll#2": "hologram_nuke_snd,PlaySound,,-1",
	    "OnStartTouchAll#3": "nuke_shake,StartShake,,-1",
	    "OnStartTouchAll#4": "nuke_fade,Fade,,-1",
	    "OnStartTouchAll#5": "hologram_nuke_hurt,Enable,,0,-1",
	    "OnStartTouchAll#6": "hologram_nuke_hurt,Disable,,0.7,-1",
	    "OnStartTouchAll#7": "!activator,$PlaySoundToSelf,shadows/powerup_nuke_01.mp3,1,-1",
	    "OnStartTouchAll#8": "powerup_timer,Enable,,-1",
	    "OnStartTouchAll#9": "plate,skin,0,-1",
	    "OnStartTouchAll#10": "!activator,RunScriptCode,self.AddCurrency(400),3,-1"
	})

	if(origin != null)
		trigger_add_tf_player_condition56.SetOrigin(origin)
	if(angles != null)
		trigger_add_tf_player_condition56.SetAngles(angles)

	local ambient_generic57 = SpawnEntityFromTable("ambient_generic", {
	    
	})

	if(origin != null)
		ambient_generic57.SetOrigin(origin)
	if(angles != null)
		ambient_generic57.SetAngles(angles)

	local prop_dynamic58 = SpawnEntityFromTable("prop_dynamic", {
	    
	})

	if(origin != null)
		prop_dynamic58.SetOrigin(origin)
	if(angles != null)
		prop_dynamic58.SetAngles(angles)

	local trigger_add_tf_player_condition59 = SpawnEntityFromTable("trigger_add_tf_player_condition", {
	    "OnStartTouchAll#1": "hologram_instakill,Disable,,-1",
	    "OnStartTouchAll#2": "powerup_timer,Enable,,-1",
	    "OnStartTouchAll#3": "plate,skin,0,-1",
	    "OnStartTouchAll#4": "!activator,RunScriptCode,ClientPrint(self, 4, `Instakill!`),0,-1",
	    "OnStartTouchAll#5": "!activator,$PlaySoundToSelf,items/powerup_pickup_crits.wav,0,-1",
	    "OnStartTouchAll#6": "!activator,$PlaySoundToSelf,shadows/powerup_instagib.mp3,1,-1",
	    "OnStartTouchAll#7": "!activator,RunScriptCode,self.AddCustomAttribute(`dmg current health`, 1, -1),,-1",
	    "OnStartTouchAll#8": "!activator,RunScriptCode,self.AddCond(56),,-1",
	    "OnStartTouchAll#9": "!activator,RunScriptCode,self.RemoveCustomAttribute(`dmg current health`),30,-1",
	    "OnStartTouchAll#10": "!activator,RunScriptCode,self.RemoveCond(56),30,-1"
	})

	if(origin != null)
		trigger_add_tf_player_condition59.SetOrigin(origin)
	if(angles != null)
		trigger_add_tf_player_condition59.SetAngles(angles)

	local prop_dynamic60 = SpawnEntityFromTable("prop_dynamic", {
	    
	})

	if(origin != null)
		prop_dynamic60.SetOrigin(origin)
	if(angles != null)
		prop_dynamic60.SetAngles(angles)

	local trigger_add_tf_player_condition61 = SpawnEntityFromTable("trigger_add_tf_player_condition", {
	    "OnStartTouchAll#1": "hologram_maxammo,Disable,,-1",
	    "OnStartTouchAll#2": "powerup_timer,Enable,,-1",
	    "OnStartTouchAll#3": "plate,skin,0,-1",
	    "OnStartTouchAll#4": "!activator,RunScriptCode,ClientPrint(self, 4, `Max Ammo!`),0,-1",
	    "OnStartTouchAll#5": "!activator,$PlaySoundToSelf,items/powerup_pickup_agility.wav,0,-1",
	    "OnStartTouchAll#6": "!activator,$PlaySoundToSelf,shadows/powerup_resupply_01.mp3,1,-1",
	    "OnStartTouchAll#7": "!activator,$RefillAmmo,,-1"
	})

	if(origin != null)
		trigger_add_tf_player_condition61.SetOrigin(origin)
	if(angles != null)
		trigger_add_tf_player_condition61.SetAngles(angles)

	local prop_dynamic62 = SpawnEntityFromTable("prop_dynamic", {
	    
	})

	if(origin != null)
		prop_dynamic62.SetOrigin(origin)
	if(angles != null)
		prop_dynamic62.SetAngles(angles)

	local trigger_add_tf_player_condition63 = SpawnEntityFromTable("trigger_add_tf_player_condition", {
	    "OnStartTouchAll#1": "hologram_money,Disable,,-1",
	    "OnStartTouchAll#2": "powerup_timer,Enable,,-1",
	    "OnStartTouchAll#3": "plate,skin,0,-1",
	    "OnStartTouchAll#4": "!activator,RunScriptCode,ClientPrint(self, 4, `Bonus Points!`),0,-1",
	    "OnStartTouchAll#5": "!activator,$PlaySoundToSelf,items/powerup_pickup_agility.wav,0,-1",
	    "OnStartTouchAll#6": "!activator,$PlaySoundToSelf,shadows/powerup_money_01.mp3,1,-1",
	    "OnStartTouchAll#7": "!activator,RunScriptCode,self.AddCurrency(2000),-1"
	})

	if(origin != null)
		trigger_add_tf_player_condition63.SetOrigin(origin)
	if(angles != null)
		trigger_add_tf_player_condition63.SetAngles(angles)

	local ambient_generic64 = SpawnEntityFromTable("ambient_generic", {
	    
	})

	if(origin != null)
		ambient_generic64.SetOrigin(origin)
	if(angles != null)
		ambient_generic64.SetAngles(angles)

	local logic_timer65 = SpawnEntityFromTable("logic_timer", {
	    "OnTimer#1": "powerup_case,PickRandomShuffle,,-1",
	    "OnTimer#2": "powerup_timer,Disable,,-1",
	    "OnTimer#3": "powerup_snd,PlaySound,,-1",
	    "OnTimer#4": "plate,Skin,1,-1"
	})

	if(origin != null)
		logic_timer65.SetOrigin(origin)
	if(angles != null)
		logic_timer65.SetAngles(angles)

	local logic_case66 = SpawnEntityFromTable("logic_case", {
	    "OnCase01#1": "hologram_instakill,Enable,,0,-1",
	    "OnCase02#2": "hologram_money,Enable,,0,-1",
	    "OnCase03#3": "hologram_maxammo,Enable,,0,-1",
	    "OnCase05#4": "hologram_nuke,Enable,,0,-1"
	})

	if(origin != null)
		logic_case66.SetOrigin(origin)
	if(angles != null)
		logic_case66.SetAngles(angles)

}
::BuildingBlocks <- function(origin, angles)
{
	local func_nobuild67 = SpawnEntityFromTable("func_nobuild", {
	    
	})

	if(origin != null)
		func_nobuild67.SetOrigin(origin)
	if(angles != null)
		func_nobuild67.SetAngles(angles)

	local func_nobuild68 = SpawnEntityFromTable("func_nobuild", {
	    
	})

	if(origin != null)
		func_nobuild68.SetOrigin(origin)
	if(angles != null)
		func_nobuild68.SetAngles(angles)

	local func_nobuild69 = SpawnEntityFromTable("func_nobuild", {
	    
	})

	if(origin != null)
		func_nobuild69.SetOrigin(origin)
	if(angles != null)
		func_nobuild69.SetAngles(angles)

	local func_nobuild70 = SpawnEntityFromTable("func_nobuild", {
	    
	})

	if(origin != null)
		func_nobuild70.SetOrigin(origin)
	if(angles != null)
		func_nobuild70.SetAngles(angles)

	local func_nobuild71 = SpawnEntityFromTable("func_nobuild", {
	    
	})

	if(origin != null)
		func_nobuild71.SetOrigin(origin)
	if(angles != null)
		func_nobuild71.SetAngles(angles)

	local func_nobuild72 = SpawnEntityFromTable("func_nobuild", {
	    
	})

	if(origin != null)
		func_nobuild72.SetOrigin(origin)
	if(angles != null)
		func_nobuild72.SetAngles(angles)

	local func_nobuild73 = SpawnEntityFromTable("func_nobuild", {
	    
	})

	if(origin != null)
		func_nobuild73.SetOrigin(origin)
	if(angles != null)
		func_nobuild73.SetAngles(angles)

	local func_nav_avoid74 = SpawnEntityFromTable("func_nav_avoid", {
	    
	})

	if(origin != null)
		func_nav_avoid74.SetOrigin(origin)
	if(angles != null)
		func_nav_avoid74.SetAngles(angles)

	local func_nav_avoid75 = SpawnEntityFromTable("func_nav_avoid", {
	    
	})

	if(origin != null)
		func_nav_avoid75.SetOrigin(origin)
	if(angles != null)
		func_nav_avoid75.SetAngles(angles)

	local func_nav_avoid76 = SpawnEntityFromTable("func_nav_avoid", {
	    
	})

	if(origin != null)
		func_nav_avoid76.SetOrigin(origin)
	if(angles != null)
		func_nav_avoid76.SetAngles(angles)

	local func_nav_avoid77 = SpawnEntityFromTable("func_nav_avoid", {
	    
	})

	if(origin != null)
		func_nav_avoid77.SetOrigin(origin)
	if(angles != null)
		func_nav_avoid77.SetAngles(angles)

	local func_nav_avoid78 = SpawnEntityFromTable("func_nav_avoid", {
	    
	})

	if(origin != null)
		func_nav_avoid78.SetOrigin(origin)
	if(angles != null)
		func_nav_avoid78.SetAngles(angles)

	local func_forcefield79 = SpawnEntityFromTable("func_forcefield", {
	    
	})

	if(origin != null)
		func_forcefield79.SetOrigin(origin)
	if(angles != null)
		func_forcefield79.SetAngles(angles)

	local func_forcefield80 = SpawnEntityFromTable("func_forcefield", {
	    
	})

	if(origin != null)
		func_forcefield80.SetOrigin(origin)
	if(angles != null)
		func_forcefield80.SetAngles(angles)

	local func_forcefield81 = SpawnEntityFromTable("func_forcefield", {
	    
	})

	if(origin != null)
		func_forcefield81.SetOrigin(origin)
	if(angles != null)
		func_forcefield81.SetAngles(angles)

	local func_forcefield82 = SpawnEntityFromTable("func_forcefield", {
	    
	})

	if(origin != null)
		func_forcefield82.SetOrigin(origin)
	if(angles != null)
		func_forcefield82.SetAngles(angles)

	local func_forcefield83 = SpawnEntityFromTable("func_forcefield", {
	    
	})

	if(origin != null)
		func_forcefield83.SetOrigin(origin)
	if(angles != null)
		func_forcefield83.SetAngles(angles)

	local func_forcefield84 = SpawnEntityFromTable("func_forcefield", {
	    
	})

	if(origin != null)
		func_forcefield84.SetOrigin(origin)
	if(angles != null)
		func_forcefield84.SetAngles(angles)

	local func_forcefield85 = SpawnEntityFromTable("func_forcefield", {
	    
	})

	if(origin != null)
		func_forcefield85.SetOrigin(origin)
	if(angles != null)
		func_forcefield85.SetAngles(angles)

	local func_forcefield86 = SpawnEntityFromTable("func_forcefield", {
	    
	})

	if(origin != null)
		func_forcefield86.SetOrigin(origin)
	if(angles != null)
		func_forcefield86.SetAngles(angles)

	local func_forcefield87 = SpawnEntityFromTable("func_forcefield", {
	    
	})

	if(origin != null)
		func_forcefield87.SetOrigin(origin)
	if(angles != null)
		func_forcefield87.SetAngles(angles)

	local func_forcefield88 = SpawnEntityFromTable("func_forcefield", {
	    
	})

	if(origin != null)
		func_forcefield88.SetOrigin(origin)
	if(angles != null)
		func_forcefield88.SetAngles(angles)

	local func_forcefield89 = SpawnEntityFromTable("func_forcefield", {
	    
	})

	if(origin != null)
		func_forcefield89.SetOrigin(origin)
	if(angles != null)
		func_forcefield89.SetAngles(angles)

	local func_forcefield90 = SpawnEntityFromTable("func_forcefield", {
	    
	})

	if(origin != null)
		func_forcefield90.SetOrigin(origin)
	if(angles != null)
		func_forcefield90.SetAngles(angles)

	local func_forcefield91 = SpawnEntityFromTable("func_forcefield", {
	    
	})

	if(origin != null)
		func_forcefield91.SetOrigin(origin)
	if(angles != null)
		func_forcefield91.SetAngles(angles)

	local func_forcefield92 = SpawnEntityFromTable("func_forcefield", {
	    
	})

	if(origin != null)
		func_forcefield92.SetOrigin(origin)
	if(angles != null)
		func_forcefield92.SetAngles(angles)

}
::Pushblocks <- function(origin, angles)
{
	local trigger_push93 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push93.SetOrigin(origin)
	if(angles != null)
		trigger_push93.SetAngles(angles)

	local trigger_push94 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push94.SetOrigin(origin)
	if(angles != null)
		trigger_push94.SetAngles(angles)

	local trigger_push95 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push95.SetOrigin(origin)
	if(angles != null)
		trigger_push95.SetAngles(angles)

	local trigger_push96 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push96.SetOrigin(origin)
	if(angles != null)
		trigger_push96.SetAngles(angles)

	local trigger_push97 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push97.SetOrigin(origin)
	if(angles != null)
		trigger_push97.SetAngles(angles)

	local trigger_push98 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push98.SetOrigin(origin)
	if(angles != null)
		trigger_push98.SetAngles(angles)

	local trigger_push99 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push99.SetOrigin(origin)
	if(angles != null)
		trigger_push99.SetAngles(angles)

	local trigger_push100 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push100.SetOrigin(origin)
	if(angles != null)
		trigger_push100.SetAngles(angles)

	local trigger_push101 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push101.SetOrigin(origin)
	if(angles != null)
		trigger_push101.SetAngles(angles)

	local trigger_push102 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push102.SetOrigin(origin)
	if(angles != null)
		trigger_push102.SetAngles(angles)

	local trigger_push103 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push103.SetOrigin(origin)
	if(angles != null)
		trigger_push103.SetAngles(angles)

	local trigger_push104 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push104.SetOrigin(origin)
	if(angles != null)
		trigger_push104.SetAngles(angles)

	local trigger_push105 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push105.SetOrigin(origin)
	if(angles != null)
		trigger_push105.SetAngles(angles)

	local trigger_push106 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push106.SetOrigin(origin)
	if(angles != null)
		trigger_push106.SetAngles(angles)

	local trigger_push107 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push107.SetOrigin(origin)
	if(angles != null)
		trigger_push107.SetAngles(angles)

	local trigger_push108 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push108.SetOrigin(origin)
	if(angles != null)
		trigger_push108.SetAngles(angles)

	local trigger_push109 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push109.SetOrigin(origin)
	if(angles != null)
		trigger_push109.SetAngles(angles)

	local trigger_push110 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push110.SetOrigin(origin)
	if(angles != null)
		trigger_push110.SetAngles(angles)

	local trigger_push111 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push111.SetOrigin(origin)
	if(angles != null)
		trigger_push111.SetAngles(angles)

	local trigger_push112 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push112.SetOrigin(origin)
	if(angles != null)
		trigger_push112.SetAngles(angles)

	local trigger_push113 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push113.SetOrigin(origin)
	if(angles != null)
		trigger_push113.SetAngles(angles)

	local trigger_push114 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push114.SetOrigin(origin)
	if(angles != null)
		trigger_push114.SetAngles(angles)

	local trigger_push115 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push115.SetOrigin(origin)
	if(angles != null)
		trigger_push115.SetAngles(angles)

	local trigger_push116 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push116.SetOrigin(origin)
	if(angles != null)
		trigger_push116.SetAngles(angles)

	local trigger_push117 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push117.SetOrigin(origin)
	if(angles != null)
		trigger_push117.SetAngles(angles)

	local trigger_push118 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push118.SetOrigin(origin)
	if(angles != null)
		trigger_push118.SetAngles(angles)

	local trigger_push119 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push119.SetOrigin(origin)
	if(angles != null)
		trigger_push119.SetAngles(angles)

	local trigger_push120 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push120.SetOrigin(origin)
	if(angles != null)
		trigger_push120.SetAngles(angles)

	local trigger_push121 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push121.SetOrigin(origin)
	if(angles != null)
		trigger_push121.SetAngles(angles)

	local trigger_push122 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push122.SetOrigin(origin)
	if(angles != null)
		trigger_push122.SetAngles(angles)

	local trigger_push123 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push123.SetOrigin(origin)
	if(angles != null)
		trigger_push123.SetAngles(angles)

	local trigger_push124 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push124.SetOrigin(origin)
	if(angles != null)
		trigger_push124.SetAngles(angles)

	local trigger_push125 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push125.SetOrigin(origin)
	if(angles != null)
		trigger_push125.SetAngles(angles)

	local trigger_push126 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push126.SetOrigin(origin)
	if(angles != null)
		trigger_push126.SetAngles(angles)

	local trigger_push127 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push127.SetOrigin(origin)
	if(angles != null)
		trigger_push127.SetAngles(angles)

	local trigger_push128 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push128.SetOrigin(origin)
	if(angles != null)
		trigger_push128.SetAngles(angles)

	local trigger_push129 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push129.SetOrigin(origin)
	if(angles != null)
		trigger_push129.SetAngles(angles)

	local trigger_push130 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push130.SetOrigin(origin)
	if(angles != null)
		trigger_push130.SetAngles(angles)

	local trigger_push131 = SpawnEntityFromTable("trigger_push", {
	    
	})

	if(origin != null)
		trigger_push131.SetOrigin(origin)
	if(angles != null)
		trigger_push131.SetAngles(angles)

}
::PlayersLeftLogic <- function(origin, angles)
{
	local math_counter132 = SpawnEntityFromTable("math_counter", {
	    targetname = "playersLeftAlive",
	    "startvalue" = 0,
	    "outValue#1": "wipeCheck,SetValueCompare,,0,-1"
	})

	if(origin != null)
		math_counter132.SetOrigin(origin)
	if(angles != null)
		math_counter132.SetAngles(angles)

	local logic_compare133 = SpawnEntityFromTable("logic_compare", {
	    targetname = "wipeCheck",
	    "initialValue" = 0,
	    "CompareValue" = 0,
	    "OnEqualTo#1": "gameover,Trigger,,0,-1",
	    "OnGreaterThan#2": "gameover,CancelPending,,0,-1"
	})

	if(origin != null)
		logic_compare133.SetOrigin(origin)
	if(angles != null)
		logic_compare133.SetAngles(angles)

	local ambient_generic134 = SpawnEntityFromTable("ambient_generic", {
	    
	})

	if(origin != null)
		ambient_generic134.SetOrigin(origin)
	if(angles != null)
		ambient_generic134.SetAngles(angles)

	local ambient_generic135 = SpawnEntityFromTable("ambient_generic", {
	    
	})

	if(origin != null)
		ambient_generic135.SetOrigin(origin)
	if(angles != null)
		ambient_generic135.SetAngles(angles)

	local ambient_generic136 = SpawnEntityFromTable("ambient_generic", {
	    
	})

	if(origin != null)
		ambient_generic136.SetOrigin(origin)
	if(angles != null)
		ambient_generic136.SetAngles(angles)

	local ambient_generic137 = SpawnEntityFromTable("ambient_generic", {
	    
	})

	if(origin != null)
		ambient_generic137.SetOrigin(origin)
	if(angles != null)
		ambient_generic137.SetAngles(angles)

	local ambient_generic138 = SpawnEntityFromTable("ambient_generic", {
	    
	})

	if(origin != null)
		ambient_generic138.SetOrigin(origin)
	if(angles != null)
		ambient_generic138.SetAngles(angles)

}
::PlayerTracker <- function(origin, angles)
{
	local logic_relay139 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "playersLeftAlive,add,1,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION1"
	})

	if(origin != null)
		logic_relay139.SetOrigin(origin)
	if(angles != null)
		logic_relay139.SetAngles(angles)

	local logic_relay140 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "popscript,$playertracker,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION2"
	})

	if(origin != null)
		logic_relay140.SetOrigin(origin)
	if(angles != null)
		logic_relay140.SetAngles(angles)

	local logic_relay141 = SpawnEntityFromTable("logic_relay", {
	    $OnKilled = "playersLeftAlive,Subtract,1,0,0"
	})

	if(origin != null)
		logic_relay141.SetOrigin(origin)
	if(angles != null)
		logic_relay141.SetAngles(angles)

	local logic_relay142 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "popscript,$spawn_revive_marker,,0.0,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION1"
	})

	if(origin != null)
		logic_relay142.SetOrigin(origin)
	if(angles != null)
		logic_relay142.SetAngles(angles)

}
::Revivemarker <- function(origin, angles)
{
	local trigger_multiple143 = SpawnEntityFromTable("trigger_multiple", {
	    
	})

	if(origin != null)
		trigger_multiple143.SetOrigin(origin)
	if(angles != null)
		trigger_multiple143.SetAngles(angles)

	local logic_relay144 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "revive_trigger,DisableAndEndTouch,,0.0,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION2"
	})

	if(origin != null)
		logic_relay144.SetOrigin(origin)
	if(angles != null)
		logic_relay144.SetAngles(angles)

}
::EnemyTracker <- function(origin, angles)
{
	local logic_relay145 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "!activator,$RemoveOutput,$OnDeath,0.0,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION3"
	})

	if(origin != null)
		logic_relay145.SetOrigin(origin)
	if(angles != null)
		logic_relay145.SetAngles(angles)

	local logic_relay146 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "relay_enemycount_subtract,trigger,,0.0,-1",
	    spawnflags = 1,
	    targetname = "PARENTKILLEDOUTPUT_CONVERSION4"
	})

	if(origin != null)
		logic_relay146.SetOrigin(origin)
	if(angles != null)
		logic_relay146.SetAngles(angles)

	local logic_relay147 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "relay_enemycount_add,trigger,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION3"
	})

	if(origin != null)
		logic_relay147.SetOrigin(origin)
	if(angles != null)
		logic_relay147.SetAngles(angles)

	local logic_relay148 = SpawnEntityFromTable("logic_relay", {
	    "OnTrigger#1": "popscript,$OnWaveSpawnBot,,0.0,-1",
	    spawnflags = 1,
	    targetname = "SPAWNOUTPUT_CONVERSION4"
	})

	if(origin != null)
		logic_relay148.SetOrigin(origin)
	if(angles != null)
		logic_relay148.SetAngles(angles)


}
