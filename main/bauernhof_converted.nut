
		corelogic 		{
  
            NoFixup = true,
			logic_auto 
			{

				targetname = "mainrelay",
				
				OnMapSpawn = "wave_finished_relay,Kill,,0,-1", 				OnMapSpawn = "door_red_large_win_*,Open,,0,-1",
				OnMapSpawn = "trigger_multiple,Kill,,0,-1",
				OnMapSpawn = "trigger_push,Kill,,0,-1",
				OnMapSpawn = "ufo_*,Kill,,0,-1",
				OnMapSpawn = "trigger_catapult,Kill,,0,-1",
				OnMapSpawn = "red_respawnroom1,Kill,,0,-1", 
				OnMapSpawn = "bombpath_arrows_*,Kill,,0,-1",
				OnMapSpawn = "m0*,Kill,,0,-1",
				OnMapSpawn = "m10,Kill,,0,-1",
				OnMapSpawn = "@bb144 -584 0 472 384 160@func_respawnroomvisualizer,Kill,,0,-1",
				OnMapSpawn = "relay_attributes,Kill,,0,-1",
				OnMapSpawn = "relay_invisible,Kill,,0,-1",
				OnMapSpawn = "player,$RemoveOutput,effects,1,-1",
				OnMapSpawn = "player,$RemoveOutput,effects,2,-1",
				OnMapSpawn = "player,$RemoveOutput,renderfx,0,-1", 				OnMapSpawn = "merasmus_*,Kill,,0,-1",
				OnMapSpawn = "wave_start_relay,AddOutput,OnTrigger gameover:Enable:0:-1",
				OnMapSpawn = "realtimer,trigger,,0,-1",
				OnMapSpawn = "ee_bool,disable,,0,-1",
				OnMapSpawn = "wave_start_relay,AddOutput,OnTrigger respawn_relay:Trigger:0:-1", 				OnMapSpawn = "fog_controller,AddOutput,spawnflags 1:0:-1",
				OnMapSpawn = "fog_controller,AddOutput,farz -1:0:-1",
				OnMapSpawn = "player,$ResetExtraItems,,0,-1",
				OnMapSpawn = "tf_objective_resource,$SetClientProp$m_iszMvMPopfileName,Bauernhof Der Toten,0,-1",
							OnMapSpawn = "wave_start_relay,AddOutput,OnTrigger LMA:Enable:0:-1",
				OnMapSpawn = "func_flagdetectionzone,AddOutput,alarm 0",
				OnMapSpawn = "wave_start_relay,AddOutput,OnTrigger DUMMY_*:Kill:0:-1",
				OnMapSpawn = "wave_start_relay,AddOutput,OnTrigger tutorial_relay2:Disable:0:-1",
				OnMapSpawn = "wave_start_relay,AddOutput,OnTrigger hints_*:Kill:0:-1",
				OnMapSpawn = "wave_start_relay,AddOutput,OnTrigger tutorial_*:Kill:0:-1",
							OnMapSpawn = "wave_start_relay,AddOutput,OnTrigger dumpster_hint:Show:2:-1",
				OnMapSpawn = "wave_start_relay,AddOutput,OnTrigger navman:RecomputeBlockers:0:-1",
				OnMapSpawn = "wave_start_relay,AddOutput,OnTrigger navman:RecomputeBlockers:1:-1",
				OnMapSpawn = "wave_start_relay,AddOutput,OnTrigger navman:RecomputeBlockers:2:-1",
			
}
			tf_point_nav_interface
			{

				targetname navman
			
}
			func_button
			{

				origin "2168 40 13604"
				mins "-12 -10 -6"
				maxs "24 10 6"
				rendermode 10
				movedir "0 180 0"
				spawnflags 513
				damagefilter filter_redteam
				speed 5
				wait 20
				sounds 3
				targetname revive_button
				
				OnPressed "popscript,$revivelogic,!activator,0,-1"
			
}
			game_forcerespawn
			{

				targetname respawner
			
}
			logic_relay 			{

				targetname respawn_relay
				OnTrigger = "respawner,ForceTeamRespawn,2,0,-1",
			
}
			trigger_hurt
			{

				damage 4500
				spawnflags 1
				mins "-9999 -9999 -9999"
				maxs "9999 9999 9999"
				startdisabled 1
				targetname hologram_nuke_hurt
				filtername filter_notred
				origin "0 0 0"
			
}
			filter_activator_tfteam
			{

				targetname filter_notred
				teamnum 2
				negated 1 			
}
			logic_relay 			{

				targetname wave_output_clear
				OnTrigger "player,$RemoveOutput,$OnDamageReceived,0,-1"
				OnTrigger "player,$RemoveOutput,$OnDeath,0,-1"
				OnTrigger "fog_controller,SetStartDist,600,,-1"
				OnTrigger "fog_controller,SetEndDist,4000,,-1"
				OnTrigger "fog_controller,SetColor,0 0 0,,-1"
				OnTrigger "tf_objective_resource,$SetClientProp$m_nMannVsMachineWaveCount,0,,-1" 			
}
			math_counter
            {

                targetname = "roundscleared",
                "startvalue" 0
                outValue = "survivalcheck,SetValueCompare,,0,-1",
			            
}
			logic_compare 
            {

                targetname = "survivalcheck",
                "initialValue" 0
                CompareValue" 4                 "OnEqualTo = "player,$AddCurrency,1500,,-1",
				OnEqualTo = "player,$DisplayTextCenter,You've received a 1500 Survival Bonus!,,-1",
				OnEqualTo = "roundscleared,SetValue,0,,-1",
				OnEqualTo = "survivalcheck,SetValue,0,,-1",
            
}
			prop_dynamic 			{

				model "models/player/demo.mdl"
				disableshadows 1
				solid 0
				targetname ee_demo
				defaultanim crouch_LOSER
				origin "-428 2300 -2"
				angles "0 315 0"
			
}
			prop_dynamic_ornament
			{

				targetname ee_bool
				spawnflags 256
				model models\weapons\c_models\c_bottle\c_bottle.mdl
				disableshadows 1
				startdisabled 1
				origin "-428 2300 -2"
				lightingorigin ee_demo
				InitialOwner ee_demo
			
}
			prop_dynamic_ornament
			{

				targetname ee_shiv
				spawnflags 256
				model models/workshop_partner/weapons/c_models/c_prinny_knife/c_prinny_knife.mdl
				disableshadows 1
				startdisabled 0
				origin "-428 2300 -2"
				lightingorigin ee_demo
				InitialOwner ee_demo
			
}
			func_flagdetectionzone
			{

				startdisabled 0
				targetname ee_detector
				mins "-5 -5 -24"
				maxs "5 5 24"
				origin "-413 2282 22"
				
				OnStartTouchFlag "ee_beerflag,ForceResetAndDisableSilent,,-1"
				OnStartTouchFlag "ee_beerflag,Kill,,1,-1"
				OnStartTouchFlag "ee_demo,SetAnimation,taunt03,0,-1"
				OnStartTouchFlag "ee_bool,Enable,,0,-1"
				OnStartTouchFlag "ee_shiv,Disable,,0,-1"
				OnStartTouchFlag "ee_bool,Kill,,4,-1"
				OnStartTouchFlag "ee_shiv,Enable,,4,-1"
				OnStartTouchFlag "ee_demo,SetAnimation,taunt04,4,-1"
				OnStartTouchFlag "!activator,$PlaySoundToSelf,items/gunpickup2.wav,6.5,-1"
						OnStartTouchFlag "popscript,$GiveSuperShank,!activator,6.5,-1"
				OnStartTouchFlag "!activator,$DisplayTextChat,Tavish has given you his Super Shank!,6.5,-1"
				OnStartTouchFlag "ee_shiv,Kill,,7,-1"
				OnStartTouchFlag "ee_demo,SetAnimation,taunt_woohoo,7,-1"
				OnStartTouchFlag "ee_demo,Kill,,8,-1"
			
}
			item_teamflag
			{

				targetname ee_beerflag
				startdisabled 1
						flag_model models/player/items/taunts/beer_crate/beer_crate.mdl
				origin "2029 333 101"
				returntime 60000
						OnPickup "!self,setteam,3,,-1"
				OnDrop "!self,ForceResetAndDisableSilent,,-1"
				OnDrop "!self,Kill,,1,-1"
			
}
		
}
		Spawn_things
		{

			NoFixup = true,
			prop_dynamic 			{

				model "models/props/mvm_shadows/spawnroom.mdl"
				disableshadows 1
				solid 6 				origin "320 -32 32"
				angles "0 270 0"
			
}
			prop_dynamic
			{

				model "models/props_gameplay/door_grate003_bottom.mdl"
				disableshadows 1
				solid 6
				origin "133 0 -6"
				angles "90 0 0"
			
}
			prop_dynamic
			{

				model "models/props_gameplay/door_grate003_bottom.mdl"
				disableshadows 1
				solid 6
				origin "59 0 -6"
				angles "90 180 0"
			
}
			prop_dynamic
			{

				model "models/props_viaduct_event/fog_plane03.mdl"
				disableshadows 1
				solid 0
				modelscale 2
				rendercolor "103 103 103"
				origin "-838 -2608 1634"
				angles "0 0 -180"
			
}
			prop_dynamic
			{

				model "models/props_viaduct_event/fog_plane03.mdl"
				disableshadows 1
				solid 0
				modelscale 2
				rendercolor "103 103 103"
				origin "-854 2690 1634"
				angles "0 0 -180"
			
}
			func_forcefield 			{

				StartDisabled 0
				TeamNum 3
				mins "-240 -608 -8"
				maxs "240 608 8"
				origin "256 16 768"
			
}
																																													trigger_teleport
			{

				StartDisabled 1
				filtername filter_redteam
				spawnflags 1
				target warp_target
				targetname red_spawn_warp
				mins "-232 -448 -16"
				maxs "232 448 3000"
				origin "264 -96 0"
			
}
			func_forcefield
			{

				StartDisabled 0
				TeamNum 3
				mins "-240 -192 -284"
				maxs "240 192 284"
				origin "256 -400 492"
			
}
			func_forcefield
			{

				StartDisabled 0
				TeamNum 3
				mins "-240 -136 -16"
				maxs "240 136 3000"
				origin "256 488 224"
			
}
														info_teleport_destination
			{

				targetname warp_target
				angles "0 270 0"
				origin "322 -629 40"
			
}
			info_teleport_destination
			{

				targetname warp_target
				angles "0 90 0"
				origin "258 428 40"
			
}
			ambient_generic 
			{

				health 8
				message "ambient\atmosphere\thunder1.wav"
				radius 20
				spawnflags 49
				targetname atmos_1
			
}
			ambient_generic 
			{

				health 8
				message "ambient\atmosphere\thunder2.wav"
				radius 20
				spawnflags 49
				targetname atmos_2
			
}
			ambient_generic 
			{

				health 8
				message "ambient\atmosphere\thunder3.wav"
				radius 20
				spawnflags 49
				targetname atmos_3
			
}
			ambient_generic 
			{

				health 8
				message "ambient\wind_gust2.wav"
				radius 20
				spawnflags 49
				targetname atmos_4
			
}
			logic_case
			{

				targetname thunderpick
				OnCase01 = "atmos_1,PlaySound,,0,-1",
				OnCase02 = "atmos_2,PlaySound,,0,-1",
				OnCase03 = "atmos_3,PlaySound,,0,-1",
				OnCase04 = "atmos_4,PlaySound,,0,-1",
			
}
			logic_timer
			{

				userandomtime 1
				lowerrandombound 10
				upperrandombound 25
				
				OnTimer = "thunderpick,PickRandom,,0,-1", 
			
}
			logic_relay 			{

				targetname stage_start
				OnTrigger = "powerup_timer,Enable,,0,-1",
						OnTrigger = "roundcounter,add,1,0,-1",
				OnTrigger = "realtimer,trigger,,0,-1",
				OnTrigger = "realtimer,trigger,,0.23,-1",
				OnTrigger = "navman,RecomputeBlockers,,2,-1",
				OnTrigger = "navman,RecomputeBlockers,,3,-1",
				OnTrigger = "navman,RecomputeBlockers,,4,-1",
			
}
			logic_relay 			{

				targetname stage_start_finale
				OnTrigger = "finale_snd,PlaySound,,0,-1",
			
}
			logic_relay 			{

				targetname stage_clear
				OnTrigger = "roundclear_snd,PlaySound,,-1",
				OnTrigger = "relay_enemycount_reset,Trigger,,-1",
				OnTrigger = "medicbonus_relay,Trigger,,-1",
				OnTrigger = "respawner,ForceTeamRespawn,2,0.7,-1",
						OnTrigger = "realtimer,trigger,,0.23,-1",
				OnTrigger = "powerup_timer,Disable,,0,-1",
				OnTrigger = "hologram_*,Disable,,0,-1",
				OnTrigger = "plate,skin,0,0,-1",
				OnTrigger = "roundscleared,Add,1,0,0",
			
}
			logic_relay 			{

				targetname stage_clear_finale
				OnTrigger = "roundclear_snd,PlaySound,,-1",
				OnTrigger = "relay_enemycount_reset,Trigger,,-1",
				OnTrigger = "medicbonus_relay,Trigger,,-1",
				OnTrigger = "respawner,ForceTeamRespawn,2,0.7,-1",
						OnTrigger = "realtimer,trigger,,0.23,-1",
				OnTrigger = "powerup_timer,Disable,,0,-1",
				OnTrigger = "hologram_*,Disable,,0,-1",
				OnTrigger = "plate,skin,0,0,-1",
				OnTrigger = "roundscleared,Add,1,0,0",
			
}
			logic_relay 			{

				targetname medicbonus_relay
			
}
			prop_dynamic 			{

				model "models/props_viaduct_event/underworld_sky01.mdl"
				targetname bossfog_dome
				disableshadows 1
				startdisabled 1
				solid 0
				scale 1 				angles "0 90 0"
				origin "0 0 0"
			
}
			env_fog_controller 			{

				targetname fog_bossround
													fogcolor "129 130 180"
				fogcolor2 "131 132 177"
				fogenable 1
				fogstart -1000
				fogend 9000
			
}
			env_fade
			{

				targetname bossfog_fadein
				duration 5
							rendercolor "34 38 33"
				renderamt 255 			
}
			env_fade
			{

				targetname bossfog_fadeout
				duration 5
							rendercolor "34 38 33"
				spawnflags 1
				renderamt 255 			
}
			logic_relay
			{

				targetname bossstage_start
				OnTrigger = "door_red_large_win_*,Close,,0,-1",
				OnTrigger = "red_spawn_warp,Enable,,0,-1",
						OnTrigger = "roundcounter,add,1,0,-1",
				OnTrigger = "realtimer,trigger,,0,-1",
				OnTrigger = "realtimer,trigger,,0.23,-1",
				OnTrigger = "bossfog_fadein,Fade,0,-1",
				OnTrigger = "bossfog_fadeout,Fade,,5,-1",
				OnTrigger = "bossfog_dome,Enable,,5,-1",
				OnTrigger = "fog_controller,SetStartDist,-15000,5,-1",
				OnTrigger = "fog_controller,SetEndDist,6000,5,-1",
				OnTrigger = "fog_controller,SetColor,34 38 33,5,-1",
				OnTrigger = "fog_controller,SetColorSecondary,34 38 33,5,-1",
				OnTrigger = "navman,RecomputeBlockers,,2,-1",
				OnTrigger = "navman,RecomputeBlockers,,3,-1",
				OnTrigger = "navman,RecomputeBlockers,,4,-1",
				OnTrigger = "player,$PlaySoundToSelf,shadows/announcer_bossround.mp3,7,-1",
				OnTrigger = "tankround_snd,PlaySound,,14,-1",
				OnTrigger = "player,SpeakResponseConcept,TLK_MVM_TANK_CALLOUT,17.5,-1",
				OnTrigger = "player,SpeakResponseConcept,TLK_MVM_ATTACK_THE_TANK ,35,-1",
			
}
			logic_relay
			{

				targetname bossstage_start_tread
				OnTrigger = "door_red_large_win_*,Close,,0,-1",
				OnTrigger = "red_spawn_warp,Enable,,0,-1",
						OnTrigger = "roundcounter,add,1,0,-1",
				OnTrigger = "realtimer,trigger,,0,-1",
				OnTrigger = "realtimer,trigger,,0.23,-1",
				OnTrigger = "bossfog_fadein,Fade,0,-1",
				OnTrigger = "bossfog_fadeout,Fade,,5,-1",
				OnTrigger = "bossfog_dome,Enable,,5,-1",
				OnTrigger = "fog_controller,SetStartDist,-15000,5,-1",
				OnTrigger = "fog_controller,SetEndDist,6000,5,-1",
				OnTrigger = "fog_controller,SetColor,34 38 33,5,-1",
				OnTrigger = "fog_controller,SetColorSecondary,34 38 33,5,-1",
				OnTrigger = "navman,RecomputeBlockers,,2,-1",
				OnTrigger = "navman,RecomputeBlockers,,3,-1",
				OnTrigger = "navman,RecomputeBlockers,,4,-1",
				OnTrigger = "player,$PlaySoundToSelf,shadows/announcer_chuckle.mp3,7,-1",
			
}
			logic_relay 			{

				targetname bossstage_clear
				OnTrigger = "player,$PlaySoundToSelf,#*shadows/bossround_end.mp3,0,-1",
				OnTrigger = "relay_enemycount_reset,Trigger,,-1",
				OnTrigger = "medicbonus_relay,Trigger,,-1",
				OnTrigger = "respawner,ForceTeamRespawn,2,0.7,-1",
				OnTrigger = "tankround_snd,volume,0,0,-1",
				OnTrigger = "bossfight_snd,volume,0,0,-1",
				OnTrigger = "bossround_music,volume,0,0,-1",
						OnTrigger = "realtimer,trigger,,0.23,-1",
				OnTrigger = "powerup_timer,Disable,,0,-1",
				OnTrigger = "hologram_*,Disable,,0,-1",
				OnTrigger = "plate,skin,0,0,-1",
				OnTrigger = "red_spawn_warp,Disable,,0,-1",
				OnTrigger = "door_red_large_win_*,Open,,0,-1",
				OnTrigger = "bossfog_fadein,Fade,0,-1",
				OnTrigger = "bossfog_fadeout,Fade,,5,-1",
				OnTrigger = "bossfog_dome,Disable,,5,-1",
				OnTrigger = "roundscleared,Add,1,0,0",
				OnTrigger = "fog_controller,SetStartDist,600,5,-1",
				OnTrigger = "fog_controller,SetEndDist,4000,5,-1",
				OnTrigger = "ee_beerflag,Enable,,5,1",
				OnTrigger = "fog_controller,SetColor,0 0 0,5,-1",
				OnTrigger = "fog_controller,SetColorSecondary,255 255 255,5,-1",
			
}
			logic_branch
			{

				targetname tgun_check 				InitialValue 0
				OnFalse "!activator,$AwardAndGiveExtraItem,Thunder Gun,-1"
				OnFalse "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnFalse "!activator,SpeakResponseConcept,TLK_MVM_LOOT_ULTRARARE,0.6,-1"
				OnFalse "!activator,$DisplayTextChat,You've received an Ãœberweapon: The Thunder Gun!,0,-1"
				OnFalse "tgun_check,Toggle,,-1" 				OnTrue "!activator,$AwardAndGiveExtraItem,Double Barrel,-1"
				OnTrue "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnTrue "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnTrue "!activator,$DisplayTextChat,You've received: The Double Barrel!,0,-1"
			
}
			prop_dynamic 			{

				model "models/props_forest/wood_stairs96.mdl"
				disableshadows 1
				solid 6
				angles "0 180 0"
				origin "928 1544 96"
			
}
			prop_dynamic 			{

				model "models/props_forest/wood_stairs96.mdl"
				disableshadows 1
				solid 6
				angles "0 180 0"
				origin "-571 1924 87"
			
}
			prop_dynamic 			{

				model "models/props_forest/wood_stairs96.mdl"
				disableshadows 1
				solid 6
				angles "0 0 0"
				origin "-568 1914 87"
			
}
											prop_dynamic 			{

				model "models/props_forest/wood_stairs96.mdl"
				disableshadows 1
				solid 6
				angles "0 12 0"
				origin "-1483 -1834 60"
			
}
			prop_dynamic 			{

				model "models/props_forest/wood_stairs96.mdl"
				disableshadows 1
				solid 6
				angles "0 192 0"
				origin "-1492 -1827 60"
			
}
		
}
		Plate_Big 		{

			NoFixup = true,
			func_rotating
			{

				spawnflags 65 				maxspeed 48
				solidbsp 0
				rendermode 10
				targetname powerup_spinner
				origin "-540 -0 -164"
			
}
			prop_dynamic
			{

				model "models/props_gameplay/cap_point_base.mdl"
				targetname plate
				origin "-540 -0 -182"
				disableshadows 1
				solid 6
			
}
			prop_dynamic 			{

				model "models/props_trainyard/cart_bomb_separate.mdl"
				disableshadows 1
				solid 0
				targetname hologram_nuke
				rendermode 1 				renderfx 15
				startdisabled 1
				rendercolor "255 0 0"
				parentname powerup_spinner
				angles "0 90 0"
				origin "-540 -0 -128"
			
}
			env_shake
			{

				amplitude 16
				duration 3
				frequency 40
				radius 48
				spawnflags 1
				targetname nuke_shake
			
}
			env_fade
			{

				targetname nuke_fade
				duration 1.3
				spawnflags 1
				rendercolor "255 255 255"
			
}
			trigger_add_tf_player_condition
			{

				targetname hologram_nuke
				duration 1
				filtername filter_redteam
				spawnflags 1
				StartDisabled 1
				condition 23
				origin "-540 2 -128"
				mins "-26 -26 -26"
				maxs 26 26 26 = "OnStartTouchAll", hologram_nuke,Disable,,-1 = "OnStartTouchAll", hologram_nuke_snd,PlaySound,,-1 = "OnStartTouchAll", nuke_shake,StartShake,,-1 = "OnStartTouchAll", nuke_fade,Fade,,-1 = "OnStartTouchAll", hologram_nuke_hurt,Enable,,0,-1 = "OnStartTouchAll", hologram_nuke_hurt,Disable,,0.7,-1 = "OnStartTouchAll", !activator,$PlaySoundToSelf,shadows/powerup_nuke_01.mp3,1,-1 = "OnStartTouchAll", powerup_timer,Enable,,-1 = "OnStartTouchAll", plate,skin,0,-1 = "OnStartTouchAll", "!activator,$AddCurrency,400,3,-1"
			
}
			ambient_generic 
			{

				health 10
				message )misc/doomsday_missile_explosion.wav
				radius 20
				pitch 100
				spawnflags 49
				targetname hologram_nuke_snd
			
}
			prop_dynamic 			{

				model "models\props_mvm\mvm_human_skull.mdl"
				disableshadows 1
				skin 1
				solid 0
				modelscale 3
				targetname hologram_instakill
				rendermode 1 				renderfx 15
				startdisabled 1
				parentname powerup_spinner
				rendercolor "255 0 0"
				angles "0 0 0"
				origin "-540 -0 -134"
			
}
			trigger_add_tf_player_condition
			{

				targetname hologram_instakill
				duration 1
				filtername filter_redteam
				spawnflags 1
				StartDisabled 1
				condition 23
				origin "-540 2 -128"
				mins "-26 -26 -26"
				maxs 26 26 26 = "OnStartTouchAll", hologram_instakill,Disable,,-1 = "OnStartTouchAll", powerup_timer,Enable,,-1 = "OnStartTouchAll", plate,skin,0,-1 = "OnStartTouchAll", !activator,$DisplayTextCenter,Instakill!,0,-1 = "OnStartTouchAll", !activator,$PlaySoundToSelf,items/powerup_pickup_crits.wav,0,-1 = "OnStartTouchAll", !activator,$PlaySoundToSelf,shadows/powerup_instagib.mp3,1,-1 = "OnStartTouchAll", !activator,$AddPlayerAttribute,dmg current health|1,,-1 = "OnStartTouchAll", !activator,$AddCond,56,,-1 = "OnStartTouchAll", !activator,$RemovePlayerAttribute,dmg current health,30,-1 = "OnStartTouchAll", "!activator,$RemoveCond,56,30,-1"
			
}
			prop_dynamic 			{

				model "models\props_gameplay\resupply_locker.mdl"
				disableshadows 1
				skin 1
				solid 0
				modelscale 1
				targetname hologram_maxammo
				rendermode 1 				renderfx 15
				startdisabled 1
				parentname powerup_spinner
				rendercolor "255 0 0"
				angles "0 0 0"
				origin "-540 -0 -134"
			
}
			trigger_add_tf_player_condition
			{

				targetname hologram_maxammo
				duration 1
				filtername filter_redteam
				spawnflags 1
				StartDisabled 1
				condition 23
				origin "-540 2 -128"
				mins "-26 -26 -26"
				maxs 26 26 26 = "OnStartTouchAll", hologram_maxammo,Disable,,-1 = "OnStartTouchAll", powerup_timer,Enable,,-1 = "OnStartTouchAll", plate,skin,0,-1 = "OnStartTouchAll", !activator,$DisplayTextCenter,Max Ammo!,0,-1 = "OnStartTouchAll", !activator,$PlaySoundToSelf,items/powerup_pickup_agility.wav,0,-1 = "OnStartTouchAll", !activator,$PlaySoundToSelf,shadows/powerup_resupply_01.mp3,1,-1 = "OnStartTouchAll", "!activator,$RefillAmmo,,-1"
			
}
			prop_dynamic 			{

				model "models\items\currencypack_large.mdl"
				disableshadows 1
				skin 1
				solid 0
				modelscale 1
				targetname hologram_money
				rendermode 1 				renderfx 15
				startdisabled 1
				parentname powerup_spinner
				rendercolor "255 0 0"
				angles "0 0 0"
				origin "-540 -0 -134"
			
}
			trigger_add_tf_player_condition
			{

				targetname hologram_money
				duration 1
				filtername filter_redteam
				spawnflags 1
				StartDisabled 1
				condition 23
				origin "-540 2 -128"
				mins "-26 -26 -26"
				maxs 26 26 26 = "OnStartTouchAll", hologram_money,Disable,,-1 = "OnStartTouchAll", powerup_timer,Enable,,-1 = "OnStartTouchAll", plate,skin,0,-1 = "OnStartTouchAll", !activator,$DisplayTextCenter,Bonus Points!,0,-1 = "OnStartTouchAll", !activator,$PlaySoundToSelf,items/powerup_pickup_agility.wav,0,-1 = "OnStartTouchAll", !activator,$PlaySoundToSelf,shadows/powerup_money_01.mp3,1,-1 = "OnStartTouchAll", "!activator,$AddCurrency,2000,-1"
			
}
			ambient_generic
			{

				targetname powerup_snd
				spawnflags 48
				health 10 
				radius 8000
				pitch 80
				message )weapons\buffed_on.wav
			
}
			logic_timer
			{

				targetname powerup_timer 				StartDisabled 1
				UseRandomTime 1
				LowerRandomBound 60
				UpperRandomBound 85
				OnTimer = "powerup_case,PickRandomShuffle,,-1",
				OnTimer = "powerup_timer,Disable,,-1",
				OnTimer = "powerup_snd,PlaySound,,-1",
				OnTimer = "plate,Skin,1,-1",
			
}
			logic_case
			{

				targetname powerup_case
				OnCase01 = "hologram_instakill,Enable,,0,-1",
				OnCase02 = "hologram_money,Enable,,0,-1",
				OnCase03 = "hologram_maxammo,Enable,,0,-1",
							OnCase05 = "hologram_nuke,Enable,,0,-1",
			
}
		
}
		BuildingBlocks 		{

			NoFixup = true,
			func_nobuild 			{

				AllowDispenser 0
				AllowSentry 0
				AllowTeleporters 0
				StartDisabled 0
				Teamnum 2
				mins "-42 -160 -99"
				maxs "42 160 99"
				origin "698 488 63"
			
}
			func_nobuild 			{

				AllowDispenser 0
				AllowSentry 0
				AllowTeleporters 0
				StartDisabled 0
				Teamnum 2
				mins "-70 -58 -99"
				maxs "70 58 99"
				origin "914 98 63"
			
}
			func_nobuild 			{

				AllowDispenser 0
				AllowSentry 0
				AllowTeleporters 0
				StartDisabled 0
				Teamnum 2
				mins "-62 -214 -99"
				maxs "62 214 99"
				origin "1046 -58 63"
			
}
			func_nobuild 			{

				AllowDispenser 0
				AllowSentry 0
				AllowTeleporters 0
				StartDisabled 0
				Teamnum 2
				mins "-20 -48 -99"
				maxs "20 48 99"
				origin "964 -224 63"
			
}
			func_nobuild 			{

				AllowDispenser 0
				AllowSentry 0
				AllowTeleporters 0
				StartDisabled 0
				Teamnum 2
				mins "-110 -157 -99"
				maxs "110 157 99"
				origin "969 -928 63"
			
}
			func_nobuild 			{

				AllowDispenser 0
				AllowSentry 0
				AllowTeleporters 0
				StartDisabled 0
				Teamnum 2
				mins "-157 -38 -99"
				maxs "157 38 99"
				origin "-465 -560 92"
			
}
			func_nobuild 			{

				AllowDispenser 0
				AllowSentry 0
				AllowTeleporters 0
				StartDisabled 0
				Teamnum 2
				mins "-59 -59 -61"
				maxs "59 59 61"
				origin "-1525 -1141 59"
			
}
			func_nav_avoid 			{

				tags bigguyalert
				mins "-106 -288 -26"
				maxs "106 288 26"
				origin "-738 -1622 18"
			
}
			func_nav_avoid 			{

				tags bigguyalert
				mins "-84 -68 -48"
				maxs "84 68 48"
				origin "-556 -1916 50"
			
}
			func_nav_avoid 			{

				tags bigguyalert
				mins "-384 -68 -48"
				maxs "384 68 48"
				origin "-912 -1788 45"
			
}
			func_nav_avoid 			{

				tags bigguyalert
				mins "-116 -24 -72"
				maxs "166 24 72"
				origin "-220 1842 144"
			
}
			func_nav_avoid 			{

				tags bigguyalert
				mins "-116 -32 -72"
				maxs "166 32 72"
				origin "-220 1192 144"
			
}
			func_forcefield 			{

				StartDisabled 0
				TeamNum 3
				mins "-64 -1472 -3168"
				maxs "64 1472 3168"
				origin "-5184 0 2912"
			
}
			func_forcefield 			{

				StartDisabled 0
				TeamNum 3
				mins "-4575 -4384 -32"
				maxs "4575 4384 32"
				origin "-671 96 1344"
			
}
			func_forcefield 			{

				StartDisabled 0
				TeamNum 3
				mins "-194 -209 -514"
				maxs "194 209 514"
				origin "-800 -702 798"
			
}
			func_forcefield 			{

				StartDisabled 0
				TeamNum 3
				mins "-96 -201.5 -480"
				maxs "96 201.5 480"
				origin "-1088 -694 832"
			
}
			func_forcefield 			{

				StartDisabled 0
				TeamNum 3
				mins "-192 -112 -560"
				maxs "192 112 560"
				origin "192 -720 752"
			
}
			func_forcefield 			{

				StartDisabled 0
				TeamNum 3
				mins "-736 -384 -8"
				maxs "736 384 8"
				origin "256 1536 392"
			
}
			func_forcefield 			{

				StartDisabled 0
				TeamNum 3
				mins "-12 -132 -72"
				maxs "12 132 72"
				origin "-1036 692 72"
			
}
			func_forcefield 			{

				StartDisabled 0
				TeamNum 3
				mins "-80 -4 -72"
				maxs "80 4 72"
				origin "-960 556 72"
			
}
			func_forcefield 			{

				StartDisabled 0
				TeamNum 3
				mins "-48 -4 -48"
				maxs "48 4 48"
				origin "-824 556 48"
			
}
			func_forcefield 			{

				StartDisabled 0
				TeamNum 3
				mins "-4 -88 -48"
				maxs "4 88 48"
				origin "-780 648 48"
			
}
			func_forcefield 			{

				StartDisabled 0
				TeamNum 3
				mins "-20 -12 -48"
				maxs "20 12 48"
				origin "-796 748 48"
			
}
			func_forcefield 			{

				StartDisabled 0
				TeamNum 3
				mins "-40 -12 -58"
				maxs "40 12 58"
				origin "-856 748 58"
			
}
			func_forcefield 			{

				StartDisabled 0
				TeamNum 3
				mins "-9 -192 -96"
				maxs "9 192 96"
				origin "7 0 96"
			
}
			func_forcefield 			{

				StartDisabled 0
				TeamNum 3
				mins "-194 -608 -414"
				maxs "194 608 414"
				origin "128 -1856 900"
			
}
		
}
		Pushblocks 		{

			trigger_push 			{

				pushdir "0 180 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "-1 0 194"
				mins "-1 -192 -2"
				maxs "1 192 2"
			
}
			trigger_push 			{

				pushdir "0 180 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "994 992 160"
				mins "-32 -110 -11"
				maxs "32 110 11"
			
}
			trigger_push 			{

				pushdir "0 0 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "696 472 158"
				mins "-32 -72 -11"
				maxs "32 72 11"
			
}
			trigger_push 			{

				pushdir "0 0 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "696 364 85"
				mins "-32 -28 -11"
				maxs "32 28 11"
			
}
			trigger_push 			{

				pushdir "0 0 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "696 596 85"
				mins "-32 -28 -11"
				maxs "32 28 11"
			
}
			trigger_push 			{

				pushdir "0 0 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "966 88 83"
				mins "-32 -28 -11"
				maxs "32 28 11"
			
}
			trigger_push 			{

				pushdir "0 0 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "892 107 83"
				mins "-32 -28 -11"
				maxs "32 28 11"
			
}
			trigger_push 			{

				pushdir "0 0 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "1024 -32 83"
				mins "-32 -72 -11"
				maxs "32 72 11"
			
}
			trigger_push 			{

				pushdir "0 0 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "1056 -172 97"
				mins "32 -28 -11"
				maxs "32 28 11"
			
}
			trigger_push 			{

				pushdir "0 0 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "1000 -220 97"
				mins "32 -28 -11"
				maxs "32 28 11"
			
}
			trigger_push 			{

				pushdir "0 0 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "973 -915 163"
				mins "32 -28 -11"
				maxs "32 28 11"
			
}
			trigger_push 			{

				pushdir "0 0 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "917 -963 163"
				mins "32 -28 -11"
				maxs "32 28 11"
			
}
			trigger_push 			{

				pushdir "0 0 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "652 -468 276"
				mins "-10 -181 -12"
				maxs "10 181 12"
			
}
			trigger_push 			{

				pushdir "0 0 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "1248 1516 204"
				mins "-224 -12 -12"
				maxs "224 12 12"
			
}
			trigger_push 			{

				pushdir "0 0 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "1680 1500 196"
				mins "-208 -28 -20"
				maxs "208 28 20"
			
}
			trigger_push 			{

				pushdir "0 0 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "1880 1724 196"
				mins "-16 -196 -20"
				maxs "16 196 20"
			
}
			trigger_push 			{

				pushdir "0 0 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "1908 2120 188"
				mins "-12 -200 -28"
				maxs "12 200 28"
			
}
			trigger_push 			{

				pushdir "0 0 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "522 -45 396"
				mins "-10 -483 -12"
				maxs "10 483 12"
			
}
			trigger_push 			{

				pushdir "0 270 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "-1256 488 524"
				mins "-48 -48 -12"
				maxs "48 48 12"
			
}
			trigger_push 			{

				pushdir "0 270 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "-1278 1475 524"
				mins "-48 -48 -12"
				maxs "48 48 12"
			
}
			trigger_push 			{

				pushdir "0 270 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "-1747 1473 524"
				mins "-48 -48 -12"
				maxs "48 48 12"
			
}
			trigger_push 			{

				pushdir "0 270 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "-1713 798 524"
				mins "-48 -48 -12"
				maxs "48 48 12"
			
}
			trigger_push 			{

				pushdir "0 90 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "-2112 -574 524"
				mins "-48 -48 -12"
				maxs "48 48 12"
			
}
			trigger_push 			{

				pushdir "0 90 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "-1577 -1785 524"
				mins "-48 -48 -12"
				maxs "48 48 12"
			
}
			trigger_push 			{

				pushdir "0 90 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "-729 -1737 524"
				mins "-48 -48 -12"
				maxs "48 48 12"
			
}
			trigger_push 			{

				pushdir "0 90 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "-320 -2530 524"
				mins "-48 -48 -12"
				maxs "48 48 12"
			
}
			trigger_push 			{

				pushdir "0 90 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "738 -2496 524"
				mins "-48 -48 -12"
				maxs "48 48 12"
			
}
			trigger_push 			{

				pushdir "0 45 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "-2226 -726 232"
				mins "-175 -175 -48"
				maxs "175 175 48"
			
}
			trigger_push 			{

				pushdir "0 90 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
                origin "-466 -555 84"
                mins "-158 -43 -84"
                maxs "158 43 84"
			
}
			trigger_push 			{

				pushdir "0 90 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "-1660 1920 274"
				mins "-900 -3 -26"
				maxs "900 3 26"
			
}
			trigger_push 			{

				pushdir "0 90 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "-400 -978 146"
				mins "-136 -9.5 -12"
				maxs "136 9.5 12"
			
}
			trigger_push 			{

				pushdir "0 90 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "-272 -908 146"
				mins "-8 -60 12"
				maxs "8 60 12"
			
}
			trigger_push 			{

				pushdir "0 90 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "-68 -864 146"
				mins "-68 -48 12"
				maxs "68 48 12"
			
}
			trigger_push 			{

				pushdir "0 90 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "416 -1264 372"
				mins "-96 -16 -124"
				maxs "96 16 124"
			
}
			trigger_push 			{

				pushdir "0 270 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "123 2342 205"
				mins "-56 -78 -24"
				maxs "56 78 24"
			
}
			trigger_push 			{

				pushdir "0 90 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "128 -1276 220"
				mins "-256 -4 -12"
				maxs "256 4 12"
			
}
			trigger_push 			{

				pushdir "0 270 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "108 -1688 390"
				mins "-68 -8 -4"
				maxs "68 8 4"
			
}
			trigger_push 			{

				pushdir "0 270 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "168 -1648 390"
				mins "-8 -32 -4"
				maxs "8 32 4"
			
}
			trigger_push 			{

				pushdir "0 270 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				filtername filter_redteam
				origin "-72.5 -1856 890.5"
				mins "-10.5 -608 -421.5"
				maxs "10.5 608 421.5"
			
}
		
}
		PlayersLeftLogic
        {

            NoFixup = true,
            math_counter
            {

                targetname = "playersLeftAlive",
                "startvalue" 0
			                outValue = "wipeCheck,SetValueCompare,,0,-1",
            
}
            logic_compare
            {

                targetname = "wipeCheck",
                "initialValue" 0
                "CompareValue" 0
                OnEqualTo = "gameover,Trigger,,0,-1", 				OnGreaterThan = "gameover,CancelPending,,0,-1",
            
}
			ambient_generic 
			{

				health 10
				message #*shadows/goodeffort.mp3
				radius 20
				spawnflags 49
				targetname fail_snd
			
}
			ambient_generic 
			{

				health 10
				message #*shadows/stage_clear.mp3
				radius 20
				spawnflags 49
				targetname roundclear_snd
			
}
			ambient_generic 
			{

				health 10
				message #*shadows/youdidit.mp3
				radius 20
				spawnflags 49
				targetname win_snd
			
}
											ambient_generic 
			{

				health 10
				message #*shadows/makeitcount.mp3
				radius 20
				spawnflags 49
				targetname finale_snd
			
}
			ambient_generic 
			{

				health 10
				message #*shadows/bossround_music.mp3
				radius 20
				spawnflags 49
				targetname tankround_snd
			
}
        
}
        PlayerTracker
        {

            NoFixup = true,
            OnSpawnOutput
            {

                Target "playersLeftAlive"
                Action "add"
                Param "1"
            
}
			OnSpawnOutput
            {

                Target "popscript"
                Action "$playertracker"
            
}
            logic_relay
            {

                $OnKilled = "playersLeftAlive,Subtract,1,0,0",
            
}
			OnParentKilledOutput
            {

                Target "popscript"
                Action "$spawn_revive_marker"
            
}
        
}
		Revivemarker 		{

			NoFixup = true,
			trigger_multiple
			{

				targetname revive_trigger
				mins "-36 -36 -36"
				maxs "36 36 36"
				spawnflags 1
				OnStartTouch "!activator,$DisplayTextCenter,Hold Action key to revive your teammate,0,-1"
			
}
			OnParentKilledOutput
			{

				Target "revive_trigger"
				Action "DisableAndEndTouch"
			
}
		
}
		EnemyTracker 		{

			OnParentKilledOutput             {

                Target "!activator"
                Action "$RemoveOutput"
                Param "$OnDeath"
            
}
			OnParentKilledOutput             {

                Target "relay_enemycount_subtract"
                Action "trigger"
            
}
			OnSpawnOutput
			{

				Target "relay_enemycount_add"
				Action "trigger"
			
}
			OnSpawnOutput
            {

                Target "popscript"
                Action "$OnWaveSpawnBot"
            
}
		                        		        		
}
		Hulk_PT
		{

			KeepAlive 1 = {

OnSpawnOutput = {

				Target "hankerman"
				Action "SetPlaybackRate"
				Param 0
				Delay 0.01
			
},

},
			OnParentKilledOutput
			{

				Target "hankerman"
				Action "Enable"
			
}
			OnParentKilledOutput
			{

				Target "hankerman"
				Action "SetPlaybackRate"
				Param "1"
				Delay 0.02
			
}
			prop_dynamic
			{

				targetname = "hankerman",
				angles = "0 0 0",
				origin = "0 0 0",
				DisableBoneFollowers = "1",
				disableshadows = "0",
				StartDisabled = "1",
				"skin" 1
				model = "models\kirillian\infected\hank_v4.mdl",
				DefaultAnim = "Death",
				ModelScale = "1.75",
				solid = "0",
				OnAnimationDone = "!self,SetAnimation,deathpose_incap,0,-1",
				OnAnimationDone = "!self,SetPlaybackRate,0,,-1",
				OnAnimationDone = "hanked,start,,,-1",
				OnAnimationDone = "hanked,kill,,3,-1",
				OnAnimationDone = "!self,Kill,,,-1",
			
}
			info_particle_system
			{

				targetname hanked
				origin = "0 0 48",
				effect_name skull_island_explosion
			
}
		
}
		Crawler_PT 		{

					trigger_push
			{

				pushdir "0 0 0"
				spawnflags 1
				speed 1000
				filtername filter_crawler
				StartDisabled 1
				targetname crawlerpush
				mins "-24 -24 -24"
				maxs "24 24 24"
			
}
			ambient_generic
			{

				targetname crawler_hop_sfx
				spawnflags 48
				health 10 				radius 14000
				pitch 100
				message ")player/pl_scout_jump1.wav"
			
}
			logic_timer 			{

				refiretime 14
				
				OnTimer = "crawlerpush,Enable,,0,-1", 
				OnTimer = "crawler_hop_sfx,PlaySound,,0,-1", 
				OnTimer = "crawlerpush,Disable,,0.7,-1", 
			
}
			filter_tf_bot_has_tag 			{

				targetname filter_crawler
				require_all_tags 1
				tags crawler
				Negated "Allow entities that match criteria"
			
}
		
}
		Charger_PT         {

            OnSpawnOutput
            {

                Target "popscript"
                Action "$chargerLogic"    
            
}
            
        
}

		Soldier_Tank
		{

			NoFixup = true, 			KeepAlive 1 = {

OnSpawnOutput = {

				Target autotank_turret_weapon
				Action $SetOwner
			
},

},
			prop_dynamic 			{

				angles "0 0 0"
				origin "0 0 -8"
				DisableBoneFollowers 1
				disableshadows 0
				model "models/props_frontline/tank_animated.mdl"
				DefaultAnim "move_slow"
				ModelScale 0.55
				solid 0
				skin 1
				targetname autotank_body
			
}
			prop_dynamic 			{

				angles "0 0 0"
				origin "0 0 -8"
				DisableBoneFollowers 1
				disableshadows 0
				StartDisabled 1
				model "models\bots\soldier\bot_soldier.mdl"
				DefaultAnim "PRIMARY_stun_middle"
				ModelScale 1.75
				solid 0
				skin 1
				targetname autotank_gibby
				parentname autotank_body
			
}
			info_particle_system
			{

				angles "0 0 0"
				origin "0 0 0"
				effect_name cinefx_goldrush
				start_active 0
				targetname autotank_blast
				parentname autotank_body
			
}
			ambient_generic
			{

				targetname autotank_deathsound
				spawnflags 17
				health 10 				radius 18000
				pitch 100
				message ")shadows/treadkill_death.mp3"
				parentname autotank_body
			
}
			ambient_generic
			{

				targetname autotank_explosionsound
				spawnflags 17
				health 10 				radius 18000
				pitch 100
				message ")mvm\mvm_tank_explode.wav"
				parentname autotank_body
			
}
			info_particle_system
			{

				angles "0 180 0"
				origin "-70 38 52"
				effect_name kartdamage_smoke4
				start_active 1
				targetname autotank_smoke
				parentname autotank_body
			
}
			info_particle_system
			{

				angles "0 180 0"
				origin "-70 -39 52"
				effect_name kartdamage_smoke4
				start_active 1
				targetname autotank_smoke
				parentname autotank_body
			
}
			env_shake
			{

				amplitude 16
				duration 1.5
				frequency 2.5
				radius 1500
				spawnflags 1
				targetname autotank_shake
			
}
			ambient_generic 			{

				targetname autotank_turret_ready
				spawnflags 48
				health 10 				radius 18000
				pitch 100
				message ")vehicles/tank_readyfire1.wav"
				parentname autotank_body
			
}
			ambient_generic 			{

				targetname autotank_ragemode
				spawnflags 48
				health 10
				radius 18000
				pitch 100
				message ")shadows/treadkill_rage.mp3"
				parentname autotank_body
			
}
			ambient_generic 			{

				targetname autotank_turret_shoot
				spawnflags 48
				health 10
				radius 18000
				pitch 100
				message ")player\taunt_tank_shoot.wav"
				parentname autotank_body
			
}
			tf_point_weapon_mimic
			{

				origin "125 0 59"
				damage 75
				speedmin 2200
				speedmax 2200
				splashradius 216
				targetname autotank_turret_weapon
						parentname autotank_body
			
}
			logic_relay
			{

				targetname autotank_turretshoot
				OnTrigger = "autotank_turret_ready,PlaySound,,0,-1",
				OnTrigger = "autotank_body,SetAnimation,shoot_forward,1,-1",
				OnTrigger = "autotank_turret_weapon,Fireonce,,1.3,-1",
				OnTrigger = "autotank_turret_shoot,PlaySound,,1.3,-1",
			
}
			logic_relay
			{

				targetname autotank_death
				OnTrigger = "autotank_idle,StopSound,,0,-1",
				OnTrigger = "autotank_gibby,Enable,,0,-1",
				OnTrigger = "autotank_smoke,Stop,,0,-1",
				OnTrigger = "autotank_gibby,SetAnimation,PRIMARY_Stun_begin,0,-1",
				OnTrigger = "autotank_gibby,SetPlaybackRate,0.36,0.3,-1", 				OnTrigger = "autotank_deathsound,PlaySound,,0,-1",
				OnTrigger = "autotank_gibby,Disable,,3,-1",
				OnTrigger = "autotank_body,Disable,,3,-1",
				OnTrigger = "autotank_explosionsound,PlaySound,,3,-1",
				OnTrigger = "autotank_blast,Start,,3,-1",
				OnTrigger = "autotank_shake,StartShake,,3,-1",
				OnTrigger = "autotank_*,Kill,,8,-1",
			
}
		
}
		Heavy_Boss 		{

			NoFixup = true,
			KeepAlive 1 = {

prop_dynamic_ornament = {

				InitialOwner blord
				spawnflags 256
				DisableBoneFollowers 1
				disableshadows 1
				solid 0
				targetname battlelord_cosmetics
				model "models/workshop/player/items/soldier/hwn2015_hellmet/hwn2015_hellmet.mdl"
			
},

},
			prop_dynamic_ornament
			{

				InitialOwner blord
				spawnflags 256
				DisableBoneFollowers 1
				disableshadows 1
				solid 0
				targetname battlelord_cosmetics
				model "models/workshop/player/items/demo/sf14_deadking_pauldrons/sf14_deadking_pauldrons.mdl"
			
}
			prop_dynamic_ornament
			{

				InitialOwner blord
				spawnflags 256
				DisableBoneFollowers 1
				disableshadows 1
				solid 0
				targetname battlelord_cosmetics
				model "models/workshop/weapons/c_models/c_iron_curtain/c_iron_curtain.mdl"
			
}
			logic_relay
			{

				targetname battlelord_cosmetics_relay
				OnTrigger = "battlelord_cosmetics,TurnOff,,2,-1",
			
}
			prop_dynamic
			{

				angles "0 0 0"
				origin "0 0 0"
				DisableBoneFollowers 1
				disableshadows 0
				StartDisabled 1
				model "models\bots\heavy_boss\bot_heavy_boss.mdl"
				DefaultAnim "primary_death_01"
				ModelScale 1.75
				solid 0
				skin 1
				targetname blord
			
}
			ambient_generic
			{

				targetname blord_deathsound
				spawnflags 17
				health 10 				radius 18000
				pitch 100
				message ")shadows/battlelord_death.mp3"
				parentname blord
			
}
			info_particle_system
			{

				angles "0 0 0"
				origin "0 0 0"
				effect_name cinefx_goldrush
				start_active 0
				targetname blord_blast
				parentname blord
			
}
			env_shake
			{

				amplitude 16
				duration 1.5
				frequency 2.5
				radius 1500
				spawnflags 1
				targetname blord_shake
			
}
			ambient_generic
			{

				targetname blord_explosionsound
				spawnflags 17
				health 10 				radius 18000
				pitch 100
				message ")mvm\mvm_tank_explode.wav"
				parentname blord
			
}
			logic_relay
			{

				targetname blord_death
				OnTrigger = "blord,Enable,,0,-1",
				OnTrigger = "battlelord_cosmetics,TurnOn,,0,-1",
				OnTrigger = "blord,SetAnimation,primary_death_01,0,-1",
				OnTrigger = "blord_deathsound,PlaySound,,0,-1",
				OnTrigger = "blord,Disable,,3.4,-1",
				OnTrigger = "battlelord_cosmetics,kill,,3.4,-1",
				OnTrigger = "blord_explosionsound,PlaySound,,3.4,-1",
				OnTrigger = "blord_blast,Start,,3.4,-1",
				OnTrigger = "blord_shake,StartShake,,3.4,-1",
				OnTrigger = "blord_*,Kill,,8,-1",
			
}
		
}
		tutorial
        {

            NoFixup = true,
            logic_relay
            {

                spawnflags = "2",
                targetname = "tutorial_relay",
				OnTrigger = "hints_1,Show,,0,-1",
                OnTrigger = "hints_2,Show,,4,-1",
                OnTrigger = "hints_3,Show,,8,-1",
				OnTrigger = "hints_4,Show,,12,-1",
				OnTrigger = "hints_5,Show,,16,-1",
				OnTrigger = "hints_6,Show,,20,-1",
				OnTrigger = "hints_7,Show,,24,-1",
				OnTrigger = "hints_8,Show,,28,-1",
				OnTrigger = "hints_9,Show,,32,-1",
				OnTrigger = "hints_10,Show,,36,-1",
				OnTrigger = "hints_11,Show,,40,-1",
				OnTrigger = "hints_12,Show,,44,-1",
				OnTrigger = "hints_15,Show,,48,-1",
                OnTrigger = "tutorial_relay2,Trigger,,52,-1",
            
}
            logic_relay
            {

                spawnflags = "2",
                targetname = "tutorial_relay2",
                OnTrigger = "tutorial_relay,Trigger,,0,-1",
            
}
			training_annotation
            {

              targetname = "hints_1",
              display_text = "Money is earned only by dealing damage and killing enemies.",
              lifetime = "4",
              origin = "328 -150 52",   
            
}
			training_annotation
            {

              targetname = "hints_2",
              display_text = "Enemies become faster and stronger each round.",
              lifetime = "4",
              origin = "328 -150 52",   
            
}
			training_annotation
            {

              targetname = "hints_3",
              display_text = "You can purchase Perk Bonuses from vending machines around the map.",
              lifetime = "4",
              origin = "328 -150 52",   
            
}
			training_annotation
            {

              targetname = "hints_4",
              display_text = "Perk Bonuses are not permanent and are lost on death.",
              lifetime = "4",
              origin = "328 -150 52",   
            
}
			training_annotation
            {

              targetname = "hints_5",
              display_text = "Perk Bonuses stack with your weapon upgrades.",
              lifetime = "4",
              origin = "328 -150 52",   
            
}
			training_annotation
            {

              targetname = "hints_6",
              display_text = "Perk Bonuses do not stack per additional purchase.",
              lifetime = "4",
              origin = "328 -150 52",   
            
}
			training_annotation
            {

             targetname = "hints_7",
              display_text = "You can also receive random weapons from your local Weapons Dumpster.",
              lifetime = "4",
              origin = "328 -150 52",   
            
}
			training_annotation
            {

             targetname = "hints_8",
              display_text = "Weapons received are returned to you after death.",
              lifetime = "4",
              origin = "328 -150 52",   
            
}
			training_annotation
            {

              targetname = "hints_9",
              display_text = "Medics supply ammo and health to nearby teammates.",
              lifetime = "4",
              origin = "328 -150 52",   
            
}
			training_annotation
            {

              targetname = "hints_10",
              display_text = "Moving and crouching both affect your accuracy.",
              lifetime = "4",
              origin = "328 -150 52",   
            
}
			training_annotation
            {

				targetname = "hints_11",
				display_text = "Powerups have a chance to drop from zombies during waves.",
				lifetime = "4",
				origin = "328 -150 52", 
            
}
			training_annotation
			{

				targetname = "hints_12",
				display_text = "Powerups despawn after 30 seconds of being dropped.",
				lifetime = "4",
				origin = "328 -150 52", 
			
}
			training_annotation
            {

              targetname = "hints_15",
              display_text = "Players cannot join the game once it begins.",
              lifetime = "4",
              origin = "328 -150 52",   
            
}
            OnSpawnOutput
            {

                Target "tutorial_relay"
                Action "Trigger"
                Delay 4
            
}
        
}
		DummyMachines
		{

			NoFixup = true,
			prop_dynamic
			{

				origin "477 -2103 4" 				angles "0 270 0"
				disableshadows 0
				model "models/props_misc/vending_machine_01.mdl"
				solid 6
				skin 0 				targetname DUMMY_1
			
}
			prop_dynamic
			{

				origin "-1157 -597 -198" 				angles "0 90 0"
				disableshadows 0
				model "models/props_misc/vending_machine_01.mdl"
				solid 6
				skin 0 				targetname DUMMY_2
			
}
			prop_dynamic
			{

				origin "197 -2659 12" 				disableshadows 0
				model "models/props_misc/vending_machine_01.mdl"
				solid 6
				skin 1 				targetname DUMMY_3
			
}
			prop_dynamic
			{

				origin "-19 1893 206" 				disableshadows 0
				model "models/props_misc/vending_machine_01.mdl"
				solid 6
				skin 0 				targetname DUMMY_4
			
}
			prop_dynamic
			{

				origin "-1794 1236 -2" 				angles "0 270 0"
				disableshadows 0
				model "models/props_misc/vending_machine_01.mdl"
				solid 6
				skin 0 				targetname DUMMY_5
			
}
																					
}
		Vending_Jugg 		{

			NoFixup = true,
			prop_dynamic
			{

				origin "0 0 50" 				disableshadows 0
				model "models/props_misc/vending_machine_01.mdl"
				solid 6
				skin 0 				targetname vm_jug
			
}
			prop_dynamic
			{

				origin "0 0 164" 				angles "0 270 0"
				disableshadows 0
				model "models/effects/medicyell.mdl"
				modelscale 2
				solid 0
				parentname vm_jug
			
}
			func_button
			{

				targetname vm_jugbutton
				parentname vm_jug
				damagefilter filter_juggmulti
				rendermode 10
				movedir "0 180 0"
				spawnflags 513
				speed 5
				wait 1
				sounds 3
				origin "0 -12 128"
				mins "-24 -8 -44"
				maxs "24 8 44"
				
				OnPressed "perkbuff_jugg,trigger,0,-1"
			
}
			$filter_sendprop             {

                targetname filter_juggmoney
                $name m_nCurrency
				negated 0
                $value 2500
                $compare "greater than or equal"	
            
}
			filter_multi
			{

				targetname filter_juggmulti
				filtertype 0
				negated 0
				filter01 filter_juggmoney
				filter02 filter_melee
				OnFail "!activator,$PlaySoundToSelf,buttons/button8.wav,0,-1"
			
}
			filter_damage_type 			{

				targetname filter_melee
				negated 0
				damagetype 134221952
			
}
			trigger_multiple
			{

				origin "0 0 50"
				targetname vm_jugmsg
				parentname vm_jug
				filtername filter_redteam
				spawnflags 1
				mins "-128 -128 0"
				maxs "128 128 128"
				
				OnStartTouchAll "!activator,$DisplayTextCenter,Hold Action key to buy Saxton Ale for $2500,0,-1"
			
}
			ambient_generic
			{

				targetname vm_jugsfx
				spawnflags 48
				health 10 				radius 15000
				pitch 100
				message "shadows/perk_saxton.mp3"
				parentname vm_jug
			
}
			logic_relay
			{

				targetname perkbuff_jugg
				OnTrigger "!activator,$RemoveCurrency,2500,-1" 				OnTrigger "!activator,$PlaySoundToSelf,shadows/perk_usesfx.mp3,0,-1"
				OnTrigger "vm_jugsfx,PlaySound,0,2.2,-1"
				OnTrigger "!activator,$AddPlayerAttribute,max health additive bonus|150,2.2,-1"
				OnTrigger "!activator,$PlaySoundToSelf,weapons/buffed_on.wav,2.2,-1"
				OnTrigger "!activator,$DisplayTextCenter,Perk Bonus activated: Extra max health!,2.2,-1"
				OnTrigger "!activator,SpeakResponseConcept,TLK_PLAYER_SPELL_PICKUP_RARE,2.45,-1"
			
}
		
}
		Vending_Speed 		{

			NoFixup = true,
			prop_dynamic
			{

				origin "0 0 50" 				disableshadows 0
				model "models/props_misc/vending_machine_01.mdl"
				solid 6
				skin 0 				targetname vm_speed
			
}
			prop_dynamic
			{

				origin "0 0 164" 				angles "0 270 0"
				disableshadows 0
				model "models/props_halloween/merasmus_skull_island.mdl"
				solid 0
				parentname vm_speed
			
}
			func_button
			{

				targetname vm_speedbutton
				parentname vm_speed
				damagefilter filter_speedmulti
				rendermode 10
				movedir "0 180 0"
				spawnflags 513
				speed 5
				wait 3
				sounds 3
				origin "0 -12 128"
				mins "-24 -8 -44"
				maxs "24 8 44"
				
				OnPressed "perkbuff_speed,trigger,0,-1" 			
}
			$filter_sendprop
            {

                targetname filter_speedmoney
                $name m_nCurrency
				negated 0
                $value 3000
                $compare "greater than or equal"
            
}
			filter_multi
			{

				targetname filter_speedmulti
				filtertype 0
				negated 0
				filter01 filter_speedmoney
				filter02 filter_melee
				OnFail "!activator,$PlaySoundToSelf,buttons/button8.wav,0,-1"
			
}
			trigger_multiple
			{

				origin "0 0 50"
				targetname vm_speedmsg
				parentname vm_speed
				filtername filter_redteam
				spawnflags 1
				mins "-128 -128 0"
				maxs "64 64 128"
				
				OnStartTouchAll "!activator,$DisplayTextCenter,Hold Action key to buy Meraslixir for $3000,0,-1"
			
}
			ambient_generic
			{

				targetname vm_speedsfx
				spawnflags 48
				health 10 				radius 15000
				pitch 100
				message "shadows/perk_meraslixir.mp3"
				parentname vm_speed
			
}
			logic_relay
			{

				targetname perkbuff_speed
				OnTrigger "!activator,$RemoveCurrency,3000,-1" 				OnTrigger "!activator,$PlaySoundToSelf,shadows/perk_usesfx.mp3,0,-1"
				OnTrigger "vm_speedsfx,PlaySound,0,2.2,-1"
				OnTrigger "!activator,$AddPlayerAttribute,faster reload rate|0.5,2.2,-1"
				OnTrigger "!activator,$AddPlayerAttribute,move speed bonus|1.15,2.2,-1"
				OnTrigger "!activator,$PlaySoundToSelf,weapons/buffed_on.wav,2.2,-1"
				OnTrigger "!activator,$DisplayTextCenter,Perk Bonus activated: Increased movement and reload speed!,2.2,-1"
				OnTrigger "!activator,SpeakResponseConcept,TLK_PLAYER_SPELL_PICKUP_RARE,2.45,-1"
			
}
		
}
		Vending_Blaster 		{

			NoFixup = true,
			prop_dynamic
			{

				origin "0 0 50" 				disableshadows 0
				model "models/props_misc/vending_machine_01.mdl"
				solid 6
				skin 1 				targetname vm_blaster
			
}
			func_button
			{

				origin "0 -12 128"
				targetname vm_blasterbutton
				parentname vm_blaster
				damagefilter filter_blastermulti
				rendermode 10
				movedir "0 180 0"
				spawnflags 513
				speed 5
				wait 3
				sounds 3
				mins "-24 -8 -44"
				maxs "24 8 44"
				
				OnPressed "perkbuff_blaster,trigger,0,-1" 				OnPressed "filter_blastermoney,TestActivator,0,-1"
			
}
			$filter_sendprop
            {

                targetname filter_blastermoney
                $name m_nCurrency
				negated 0
                $value 1500
                $compare "greater than or equal"
            
}
			filter_multi
			{

				targetname filter_blastermulti
				filtertype 0
				negated 0
				filter01 filter_blastermoney
				filter02 filter_melee
				OnFail "!activator,$PlaySoundToSelf,buttons/button8.wav,0,-1"
			
}
			trigger_multiple
			{

				origin "0 0 50"
				targetname vm_blastermsg
				parentname vm_blaster
				filtername filter_redteam
				spawnflags 1
				mins "-128 -128 0"
				maxs "128 128 128"
				
				OnStartTouchAll "!activator,$DisplayTextCenter,Hold Action key to buy Head Rattle for $1500,0,-1"
			
}
			ambient_generic
			{

				targetname vm_blastersfx
				spawnflags 48
				health 10 				radius 15000
				pitch 100
				message "shadows/perk_headrattle.mp3"
				parentname vm_blaster
			
}
			logic_relay
			{

				targetname perkbuff_blaster
				OnTrigger "!activator,$RemoveCurrency,1500,-1" 				OnTrigger "!activator,$PlaySoundToSelf,shadows/perk_usesfx.mp3,0,-1"
				OnTrigger "vm_blastersfx,PlaySound,0,2.2,-1"
				OnTrigger "!activator,$AddPlayerAttribute,explosive sniper shot|2,2.2,-1"
				OnTrigger "!activator,$PlaySoundToSelf,weapons/buffed_on.wav,2.2,-1"
				OnTrigger "!activator,$DisplayTextCenter,Perk Bonus activated: Explosive Headshot!,2.2,-1"
				OnTrigger "!activator,SpeakResponseConcept,TLK_PLAYER_SPELL_PICKUP_RARE,2.45,-1"
			
}
		
}
		Vending_Doubletap 		{

			NoFixup = true,
			prop_dynamic
			{

				origin "0 0 50" 				disableshadows 0
				model "models/props_misc/vending_machine_01.mdl"
				solid 6
				skin 0 				targetname vm_dt
			
}
			prop_dynamic
			{

				origin "-24 -16 132" 				angles "-15 0 0"
				disableshadows 0
				model "models/weapons/c_models/c_shotgun/c_shotgun.mdl"
				modelscale 2
				solid 0
				parentname vm_dt
			
}
			func_button
			{

				origin "0 -12 128"
				targetname vm_dtbutton
				parentname vm_dt
				damagefilter filter_dtmulti
				rendermode 10
				movedir "0 180 0"
				spawnflags 513
				speed 5
				wait 3
				sounds 3
				mins "-24 -8 -44"
				maxs "24 8 44"
				
				OnPressed "perkbuff_dt,trigger,0,-1" 				OnPressed "filter_dtmoney,TestActivator,0,-1"
			
}
			$filter_sendprop
            {

                targetname filter_dtmoney
                $name m_nCurrency
				negated 0
                $value 2000
                $compare "greater than or equal"
            
}
			filter_multi
			{

				targetname filter_dtmulti
				filtertype 0
				negated 0
				filter01 filter_dtmoney
				filter02 filter_melee
				OnFail "!activator,$PlaySoundToSelf,buttons/button8.wav,0,-1"
			
}
			trigger_multiple
			{

				origin "0 0 50"
				targetname vm_dtmsg
				parentname vm_dt
				filtername filter_redteam
				spawnflags 1
				mins "-128 -128 0"
				maxs "128 128 128"
				
				OnStartTouchAll "!activator,$DisplayTextCenter,Hold Action key to buy Double Tap for $2000,0,-1"
			
}
			ambient_generic
			{

				targetname vm_dtsfx
				spawnflags 48
				health 10 				radius 15000
				pitch 100
				message "shadows/perk_doubletap.mp3"
				parentname vm_dt
			
}
			logic_relay
			{

				targetname perkbuff_dt
				OnTrigger "!activator,$RemoveCurrency,2000,-1" 				OnTrigger "!activator,$PlaySoundToSelf,shadows/perk_usesfx.mp3,0,-1"
				OnTrigger "vm_dtsfx,PlaySound,0,2.2,-1"
				OnTrigger "!activator,$AddPlayerAttribute,fire rate bonus|0.67,-1"
				OnTrigger "!activator,$PlaySoundToSelf,weapons/buffed_on.wav,2.2,-1"
				OnTrigger "!activator,$DisplayTextCenter,Perk Bonus activated: Increased fire rate!,2.2,-1"
				OnTrigger "!activator,SpeakResponseConcept,TLK_PLAYER_SPELL_PICKUP_RARE,2.45,-1"
			
}
		
}
		Vending_Quickrevive 		{

			NoFixup = true,
			prop_dynamic
			{

				origin "0 0 50" 				disableshadows 0
				model "models/props_misc/vending_machine_01.mdl"
				solid 6
				skin 0 				targetname vm_quickrev
			
}
			prop_dynamic
			{

				origin "0 0 155" 				angles "0 270 0"
				disableshadows 0
				model "models/props_mvm/mvm_human_skull.mdl"
				modelscale 2.5
				solid 0
				parentname vm_quickrev
			
}
			func_button
			{

				origin "0 -12 128"
				targetname vm_quickrevbutton
				parentname vm_quickrev
				damagefilter filter_quickrevmulti
				rendermode 10
				movedir "0 180 0"
				spawnflags 513
				speed 5
				wait 3
				sounds 3
				mins "-24 -8 -44"
				maxs "24 8 44"
				
				OnPressed "perkbuff_quickrev,trigger,0,-1" 				OnPressed "filter_quickrevmoney,TestActivator,0,-1"
			
}
			$filter_sendprop
            {

                targetname filter_quickrevmoney
                $name m_nCurrency
				negated 0
                $value 1500                 $compare "greater than or equal"
            
}
			filter_multi
			{

				targetname filter_quickrevmulti
				filtertype 0
				negated 0
				filter01 filter_quickrevmoney
				filter02 filter_melee
				OnFail "!activator,$PlaySoundToSelf,buttons/button8.wav,0,-1"
			
}
			math_counter
            {

                targetname = "vm_quickrevcount",
                "startvalue" 4
				"startdisabled" 0
				"min" 0
				"max" 3
				onhitmin = "vm_quickrev*,Kill,,2,-1",
            
}
			trigger_multiple
			{

				origin "0 0 50"
				targetname vm_quickrevmsg
				parentname vm_quickrev
				filtername filter_redteam
				spawnflags 1
				mins "-128 -128 0"
				maxs "128 128 128"
				
				OnStartTouchAll "!activator,$DisplayTextCenter,Hold Action key to buy Ostarion's Reserve for $1500,0,-1"
			
}
			ambient_generic
			{

				targetname vm_quickrevsfx
				spawnflags 48
				health 10 				radius 15000
				pitch 100
				message "shadows/perk_regalreserve.mp3"
				parentname vm_quickrev
			
}
			logic_relay
			{

				targetname perkbuff_quickrev
				OnTrigger "!activator,$RemoveCurrency,1500,-1" 				OnTrigger "vm_quickrevcount,Subtract,1,,-1"
				OnTrigger "!activator,$PlaySoundToSelf,shadows/perk_usesfx.mp3,0,-1"
				OnTrigger "vm_quickrevsfx,PlaySound,0,2.2,-1"
				OnTrigger "!activator,$AddCond,70,-1" 				OnTrigger "!activator,$AddCond,129,-1"
				OnTrigger "!activator,$PlaySoundToSelf,weapons/buffed_on.wav,2.2,-1"
				OnTrigger "!activator,$DisplayTextCenter,Perk Bonus activated: Survive one fatal attack!,2.2,-1"
				OnTrigger "!activator,SpeakResponseConcept,TLK_PLAYER_SPELL_PICKUP_RARE,2.45,-1"
			
}
		
}
		Vending_Flop 		{

			NoFixup = true,
			prop_dynamic
			{

				origin "0 0 50" 				disableshadows 0
				model "models/props_misc/vending_machine_01.mdl"
				solid 6
				skin 0 				targetname vm_flop
			
}
			prop_dynamic
			{

				origin "-0 -0 148" 				angles "0 270 0"
				disableshadows 0
				model "models/player/items/all_class/cowboyboots_soldier.mdl"
				modelscale 2
				solid 0
				parentname vm_flop
			
}
			func_button
			{

				origin "0 -12 128"
				targetname vm_flopbutton
				parentname vm_flop
				damagefilter filter_flopmulti
				rendermode 10
				movedir "0 180 0"
				spawnflags 513
				speed 5
				wait 3
				sounds 3
				mins "-24 -8 -44"
				maxs "24 8 44"
				
				OnPressed "perkbuff_flop,trigger,0,-1" 				OnPressed "filter_flopmoney,TestActivator,0,-1"
			
}
			$filter_sendprop
            {

                targetname filter_flopmoney
                $name m_nCurrency
				negated 0
                $value 1000
                $compare "greater than or equal"
            
}
			filter_multi
			{

				targetname filter_flopmulti
				filtertype 0
				negated 0
				filter01 filter_flopmoney
				filter02 filter_melee
				OnFail "!activator,$PlaySoundToSelf,buttons/button8.wav,0,-1"
			
}
			trigger_multiple
			{

				origin "0 0 50"
				targetname vm_flopmsg
				parentname vm_flop
				filtername filter_redteam
				spawnflags 1
				mins "-128 -128 0"
				maxs "128 128 128"
				
				OnStartTouchAll "!activator,$DisplayTextCenter,Hold Action key to buy Steelshin Lager for $1000,0,-1"
			
}
																							logic_relay
			{

				targetname perkbuff_flop
				OnTrigger "!activator,$RemoveCurrency,1000,-1"
				OnTrigger "!activator,$PlaySoundToSelf,shadows/perk_usesfx.mp3,0,-1"
								OnTrigger "!activator,$AddPlayerAttribute,blast dmg to self increased|0,-1"
				OnTrigger "!activator,$PlaySoundToSelf,weapons/buffed_on.wav,2.2,-1"
				OnTrigger "!activator,$DisplayTextCenter,Perk Bonus activated: Self damage immunity!,2.2,-1"
				OnTrigger "!activator,SpeakResponseConcept,TLK_PLAYER_SPELL_PICKUP_RARE,2.45,-1"
			
}
		
}
		Roundtimer 		{

			NoFixup = true,
			OnSpawnOutput
			{

				Target roundcounter
				Action SetValue
				Param 0
			
}
			game_text 			{

				targetname = "roundtext",
				color = "255 65 65", 					color2 = "0 0 0",					fxtime = "2.3", 				holdtime = "36000",
				spawnflags = "1",
				"effect" 2
				"channel" 1
				x = "0.1",
				y = "0.05", 			
}
			game_text
			{

				targetname = "enemytext",
				color = "255 255 65",
				color2 = "0 0 0",
				holdtime = "36000",
				fxtime = "2.3", 				spawnflags = "1",
				"channel" 2
				"effect" 2
				x = "0.1",
				y = "0.1", 			
}
			game_text
			{

				targetname = "poweruptext",
				color = "255 255 255",
				color2 = "255 255 255",
				holdtime = "36000",
				spawnflags = "1",
				"channel" 3
				x = "0.27",
				y = "0.9",
			
}
			math_counter
			{

				targetname = "roundcounter",
				max = "255", 				outvalue = "roundformat,$setkey$case01,,0,-1",
				OutValue = "tf_objective_resource,$SetClientProp$m_nMannVsMachineWaveCount,,0,-1", 				outvalue = "gameoverformat,$setkey$case01,,0,-1",
			
}
			math_counter
			{

				targetname = "enemycounter",
				"startvalue" 0
				"min" 0
				max = "26",
				outvalue = "enemyformat,$setkey$case01,,0,-1",
			
}
			logic_case
			{

				targetname = "enemyformat",
				case16 = "% active enemies",
				ondefault = "enemytext,$setkey$message,,0,-1",
				ondefault = "enemytext,display,0,0,-1",
			
}
			logic_case
			{

				targetname = "roundformat",
				case16 = "Round %", 							
}
			logic_relay
			{

				targetname = "realtimer",
				spawnflags = "2",
				ontrigger = "roundformat,$format,,0.01,-1",
				OnUser2 = "gameoverformat,$format,,0.01,-1",
			
}
			logic_relay
			{

				targetname = "relay_enemycount_add",
				spawnflags = "2",
				ontrigger = "enemyformat,$format,,0.05,-1",
				ontrigger = "enemyformat,$format,,0.25,-1",
				ontrigger = "enemycounter,add,1,,-1",
			
}
			logic_relay
			{

				targetname = "relay_enemycount_subtract",
				spawnflags = "2",
				ontrigger = "enemyformat,$format,,0.05,-1",
				ontrigger = "enemyformat,$format,,0.25,-1",
				ontrigger = "enemycounter,subtract,1,,-1",
			
}
			logic_relay
			{

				targetname = "relay_enemycount_reset",
				spawnflags = "2",
				ontrigger = "enemyformat,$format,,0.01,-1",
				ontrigger = "enemycounter,setvalue,0,,-1",
			
}
		
}
		DoublePointsSpawner
		{

			NoFixup = true,
			env_entity_maker
			{

				targetname "DoublePoints_spawner"
				EntityTemplate "DoublePointsDrop"
			
}
		
}
		DoublePointsDrop
		{

			info_particle_system
			{

				effect_name spellbook_rainbow
				targetname powerup_particle
				parentname powerup_prop
				start_active 1
				origin "0 0 24"
			
}
			prop_dynamic
			{

				targetname powerup_prop
				parentname powerup_rot
				model "models\items\target_duck.mdl"
				solid 0
				modelscale 0.8
				origin "0 0 10"
			
}
			func_rotating
			{

				spawnflags 65 				maxspeed 48
				solidbsp 0
				rendermode 10
				targetname powerup_rot
			
}
			trigger_multiple
			{

				targetname powerup_trigger
				parentname powerup_prop
				filtername filter_redteam
				spawnflags 1
				mins "-12 -12 -12"
				maxs "12 12 12"
				origin "0 0 24"
				OnStartTouchAll "powerup_rot,KillHierarchy,,-1"
				OnStartTouchAll "popscript,$ActivateDoublePoints,,-1"
			
}
			logic_timer
			{

				targetname powerup_blinker
				RefireTime 0.5
				spawnflags 1
				parentname powerup_prop
				StartDisabled 1
				
				OnTimerHigh = "powerup_prop,Disable,,0,-1", 
				OnTimerLow = "powerup_prop,Enable,,0,-1", 
			
}
			logic_timer
			{

				RefireTime 15
				parentname powerup_prop
				
				OnTimer = "powerup_blinker,Enable,,-1",
			
}
			logic_timer
			{

				RefireTime 20
				parentname powerup_prop
				
				OnTimer = "powerup_blinker,RefireTime,0.25,-1",
			
}
			logic_timer
			{

				RefireTime 25
				parentname powerup_prop
				
				OnTimer = "powerup_blinker,RefireTime,0.1,-1",
			
}
			logic_timer
			{

				RefireTime 30
				parentname powerup_prop
				
				OnTimer = "powerup_rot,KillHierarchy,,-1",
			
}
		
}
		FireSaleSpawner
		{

			NoFixup = true,
			env_entity_maker
			{

				targetname "FireSale_spawner"
				EntityTemplate "FireSaleDrop"
			
}
			ambient_generic 
			{

				health 7
				message #*shadows/gallery_music.mp3
				radius 20
				spawnflags 49
				targetname firesale_music
			
}
		
}
		FireSaleDrop
		{

			info_particle_system
			{

				effect_name spellbook_rainbow
				targetname powerup_particle
				parentname powerup_prop
				start_active 1
				origin "0 0 24"
			
}
			prop_dynamic
			{

				targetname powerup_prop
				parentname powerup_rot
				model "models\props_doomsday\australium_container.mdl"
				solid 0
				modelscale 1
				origin "0 0 24"
				angles "0 0 45"
			
}
			func_rotating
			{

				spawnflags 65 				maxspeed 48
				solidbsp 0
				rendermode 10
				targetname powerup_rot
			
}
			trigger_multiple
			{

				targetname powerup_trigger
				parentname powerup_prop
				filtername filter_redteam
				spawnflags 1
				mins "-12 -12 -12"
				maxs "12 12 12"
				origin "0 0 24"
				OnStartTouchAll "powerup_rot,KillHierarchy,,-1"
				OnStartTouchAll "popscript,$ActivateFireSale,,-1"
			
}
			logic_timer
			{

				targetname powerup_blinker
				RefireTime 0.5
				spawnflags 1
				parentname powerup_prop
				StartDisabled 1
				
				OnTimerHigh = "powerup_prop,Disable,,0,-1", 
				OnTimerLow = "powerup_prop,Enable,,0,-1", 
			
}
			logic_timer
			{

				RefireTime 15
				parentname powerup_prop
				
				OnTimer = "powerup_blinker,Enable,,-1",
			
}
			logic_timer
			{

				RefireTime 20
				parentname powerup_prop
				
				OnTimer = "powerup_blinker,RefireTime,0.25,-1",
			
}
			logic_timer
			{

				RefireTime 25
				parentname powerup_prop
				
				OnTimer = "powerup_blinker,RefireTime,0.1,-1",
			
}
			logic_timer
			{

				RefireTime 30
				parentname powerup_prop
				
				OnTimer = "powerup_rot,KillHierarchy,,-1",
			
}
		
}
		InstakillSpawner
		{

			NoFixup = true,
			env_entity_maker
			{

				targetname "Instakill_spawner"
				EntityTemplate "InstakillDrop"
			
}
		
}
		InstakillDrop
		{

			info_particle_system
			{

				effect_name spellbook_rainbow
				targetname powerup_particle
				parentname powerup_prop
				start_active 1
				origin "0 0 24"
			
}
			prop_dynamic
			{

				targetname powerup_prop
				parentname powerup_rot
				model "models\props_mvm\mvm_human_skull.mdl"
				solid 0
				modelscale 2.3
				origin "0 0 24"
				angles "-15 0 0"
			
}
			func_rotating
			{

				spawnflags 65 				maxspeed 48
				solidbsp 0
				rendermode 10
				targetname powerup_rot
			
}
			trigger_multiple
			{

				targetname powerup_trigger
				parentname powerup_prop
				filtername filter_redteam
				spawnflags 1
				mins "-12 -12 -12"
				maxs "12 12 12"
				origin "0 0 24"
				OnStartTouchAll "powerup_rot,KillHierarchy,,-1"
				OnStartTouchAll "popscript,$ActivateInstakill,,-1"
			
}
			logic_timer
			{

				targetname powerup_blinker
				RefireTime 0.5
				spawnflags 1
				parentname powerup_prop
				StartDisabled 1
				
				OnTimerHigh = "powerup_prop,Disable,,0,-1", 
				OnTimerLow = "powerup_prop,Enable,,0,-1", 
			
}
			logic_timer
			{

				RefireTime 15
				parentname powerup_prop
				
				OnTimer = "powerup_blinker,Enable,,-1",
			
}
			logic_timer
			{

				RefireTime 20
				parentname powerup_prop
				
				OnTimer = "powerup_blinker,RefireTime,0.25,-1",
			
}
			logic_timer
			{

				RefireTime 25
				parentname powerup_prop
				
				OnTimer = "powerup_blinker,RefireTime,0.1,-1",
			
}
			logic_timer
			{

				RefireTime 30
				parentname powerup_prop
				
				OnTimer = "powerup_rot,KillHierarchy,,-1",
			
}
		
}
		NukeSpawner
		{

			NoFixup = true,
			env_entity_maker
			{

				targetname "Nuke_spawner"
				EntityTemplate "NukeDrop"
			
}
		
}
		NukeDrop
		{

			info_particle_system
			{

				effect_name spellbook_rainbow
				targetname powerup_particle
				parentname powerup_prop
				start_active 1
				origin "0 0 24"
			
}
			info_particle_system
			{

				effect_name taunt_demo_nuke_shroomcloud
				targetname powerup_particlenuke
				start_active 0
				origin "0 0 24"
			
}
			prop_dynamic
			{

				targetname powerup_prop
				parentname powerup_rot
				model "models/props_trainyard/cart_bomb_separate.mdl"
				solid 0
				modelscale 0.5
				origin "0 0 32"
				angles "-45 0 0"
			
}
			func_rotating
			{

				spawnflags 65 				maxspeed 48
				solidbsp 0
				rendermode 10
				targetname powerup_rot
			
}
			trigger_multiple
			{

				targetname powerup_trigger
				parentname powerup_prop
				filtername filter_redteam
				spawnflags 1
				mins "-12 -12 -12"
				maxs "12 12 12"
				origin "0 0 24"
				OnStartTouchAll "powerup_rot,KillHierarchy,,-1"
				OnStartTouchAll "powerup_particlenuke,Start,,-1"
				OnStartTouchAll "powerup_particlenuke,Kill,,10,-1"
				OnStartTouchAll popscript,$ActivateNuke,,-1 = "OnStartTouchAll", hologram_nuke,Disable,,-1 = "OnStartTouchAll", hologram_nuke_snd,PlaySound,,-1 = "OnStartTouchAll", nuke_shake,StartShake,,-1 = "OnStartTouchAll", nuke_fade,Fade,,-1 = "OnStartTouchAll", powerup_timer,Enable,,-1 = "OnStartTouchAll", plate,skin,0,-1 = "OnStartTouchAll", "!activator,$AddCurrency,400,3,-1"
			
}
			logic_timer
			{

				targetname powerup_blinker
				RefireTime 0.5
				spawnflags 1
				parentname powerup_prop
				StartDisabled 1
				
				OnTimerHigh = "powerup_prop,Disable,,0,-1", 
				OnTimerLow = "powerup_prop,Enable,,0,-1", 
			
}
			logic_timer
			{

				RefireTime 15
				parentname powerup_prop
				
				OnTimer = "powerup_blinker,Enable,,-1",
			
}
			logic_timer
			{

				RefireTime 20
				parentname powerup_prop
				
				OnTimer = "powerup_blinker,RefireTime,0.25,-1",
			
}
			logic_timer
			{

				RefireTime 25
				parentname powerup_prop
				
				OnTimer = "powerup_blinker,RefireTime,0.1,-1",
			
}
			logic_timer
			{

				RefireTime 30
				parentname powerup_prop
				
				OnTimer = "powerup_rot,KillHierarchy,,-1",
			
}
			env_shake
			{

				amplitude 16
				duration 3
				frequency 40
				radius 48
				spawnflags 1
				targetname nuke_shake
			
}
			env_fade
			{

				targetname nuke_fade
				duration 1.3
				spawnflags 1
				rendercolor "255 255 255"
			
}
			ambient_generic 
			{

				health 10
				message )misc/doomsday_missile_explosion.wav
				radius 20
				pitch 100
				spawnflags 49
				targetname hologram_nuke_snd
			
}
			trigger_hurt
			{

				damage 4500
				spawnflags 1
				mins "-9999 -9999 -9999"
				maxs "9999 9999 9999"
				startdisabled 1
				targetname hologram_nuke_hurt
				filtername filter_notred
				origin "0 0 0"
			
}
			filter_activator_tfteam
			{

				targetname filter_notred
				teamnum 2
				negated 1 			
}
		
}
		MaxAmmoSpawner
		{

			NoFixup = true,
			env_entity_maker
			{

				targetname "MaxAmmo_spawner"
				EntityTemplate "MaxAmmoDrop"
			
}
		
}
		MaxAmmoDrop
		{

			info_particle_system
			{

				effect_name spellbook_rainbow
				targetname powerup_particle
				parentname powerup_prop
				start_active 1
				origin "0 0 24"
			
}
			prop_dynamic
			{

				targetname powerup_prop
				parentname powerup_rot
				model "models\items\ammopack_large.mdl"
				solid 0
				modelscale 1
				origin "0 0 10"
				angles "15 0 0"
			
}
			func_rotating
			{

				spawnflags 65 				maxspeed 48
				solidbsp 0
				rendermode 10
				targetname powerup_rot
			
}
			trigger_multiple
			{

				targetname powerup_trigger
				parentname powerup_prop
				filtername filter_redteam
				spawnflags 1
				mins "-12 -12 -12"
				maxs "12 12 12"
				origin "0 0 24"
				OnStartTouchAll "powerup_rot,KillHierarchy,,-1"
				OnStartTouchAll "popscript,$ActivateMaxAmmo,,-1"
			
}
			logic_timer
			{

				targetname powerup_blinker
				RefireTime 0.5
				spawnflags 1
				parentname powerup_prop
				StartDisabled 1
				
				OnTimerHigh = "powerup_prop,Disable,,0,-1", 
				OnTimerLow = "powerup_prop,Enable,,0,-1", 
			
}
			logic_timer
			{

				RefireTime 15
				parentname powerup_prop
				
				OnTimer = "powerup_blinker,Enable,,-1",
			
}
			logic_timer
			{

				RefireTime 20
				parentname powerup_prop
				
				OnTimer = "powerup_blinker,RefireTime,0.25,-1",
			
}
			logic_timer
			{

				RefireTime 25
				parentname powerup_prop
				
				OnTimer = "powerup_blinker,RefireTime,0.1,-1",
			
}
			logic_timer
			{

				RefireTime 30
				parentname powerup_prop
				
				OnTimer = "powerup_rot,KillHierarchy,,-1",
			
}
		
}
		BonusPointsSpawner
		{

			NoFixup = true,
			env_entity_maker
			{

				targetname "BonusPoints_spawner"
				EntityTemplate "BonusPointsDrop"
			
}
		
}
		BonusPointsDrop
		{

			info_particle_system
			{

				effect_name spellbook_rainbow
				targetname powerup_particle
				parentname powerup_prop
				start_active 1
				origin "0 0 24"
			
}
			prop_dynamic
			{

				targetname powerup_prop
				parentname powerup_rot
				model "models\items\currencypack_large.mdl"
				solid 0
				modelscale 1
				origin "0 0 10"
				angles "15 0 0"
			
}
			func_rotating
			{

				spawnflags 65 				mins = "0 0 0"
				maxs = "1 1 1"
				maxspeed 48
				solidbsp 0
				rendermode 10
				targetname powerup_rot
			
}
			trigger_multiple
			{

				targetname powerup_trigger
				parentname powerup_prop
				filtername filter_redteam
				spawnflags 1
				mins "-12 -12 -12"
				maxs "12 12 12"
				origin "0 0 24"
				OnStartTouchAll "powerup_rot,KillHierarchy,,-1"
				OnStartTouchAll "popscript,$ActivateBonusPoints,,-1"
			
}
			logic_timer
			{

				targetname powerup_blinker
				RefireTime 0.5
				spawnflags 1
				parentname powerup_prop
				StartDisabled 1
				
				OnTimerHigh = "powerup_prop,Disable,,0,-1", 
				OnTimerLow = "powerup_prop,Enable,,0,-1", 
			
}
			logic_timer
			{

				RefireTime 15
				parentname powerup_prop
				
				OnTimer = "powerup_blinker,Enable,,-1",
			
}
			logic_timer
			{

				RefireTime 20
				parentname powerup_prop
				
				OnTimer = "powerup_blinker,RefireTime,0.25,-1",
			
}
			logic_timer
			{

				RefireTime 25
				parentname powerup_prop
				
				OnTimer = "powerup_blinker,RefireTime,0.1,-1",
			
}
			logic_timer
			{

				RefireTime 30
				parentname powerup_prop
				
				OnTimer = "powerup_rot,KillHierarchy,,-1",
			
}
		
}
		DumpsterSpawner
		{

			NoFixup = true,
			env_entity_maker
			{

				targetname "dumpster_spawner1"
				EntityTemplate "DumpsterBoxRewrite1"
			
}
			env_entity_maker
			{

				targetname "dumpster_spawner2"
				EntityTemplate "DumpsterBoxRewrite2"
				angles "0 270 0"
			
}
			env_entity_maker
			{

				targetname "dumpster_spawner3"
				EntityTemplate "DumpsterBoxRewrite3"
			
}
			env_entity_maker
			{

				targetname "dumpster_spawner4"
				EntityTemplate "DumpsterBoxRewrite4"
				angles "0 180 0"
			
}
			env_entity_maker
			{

				targetname "dumpster_spawner5"
				EntityTemplate "DumpsterBoxRewrite5"
			
}
			point_teleport
			{

				targetname dumpster_tele_1
				origin "447 -2322 8"
				angles "0 0 0"
			
}
			point_teleport
			{

				targetname dumpster_tele_2
				origin "-399 -1380 -1"
				angles "0 270 0"
			
}
			point_teleport
			{

				targetname dumpster_tele_3
				origin "986 1338 96"
				angles "0 0 0"
			
}
			point_teleport
			{

				targetname dumpster_tele_4
				origin "-788 1016 -1"
				angles "0 180 0"
			
}
			point_teleport
			{

				targetname dumpster_tele_5
				origin "-548 -2216 3"
				angles "0 0 0"
			
}
			point_teleport
			{

				targetname dumpster_tele_out
				origin "-512 -25 -1008"
				angles "0 0 0"
			
}
		
}
		DumpsterBoxRewrite1
		{

			NoFixup = true,
			prop_dynamic
			{

				origin "0 0 104"
				angles "90 0 180"
				disableshadows 0
				model "models/workshop/player/items/all_class/mvm_memes_player/mvm_memes_player_heavy.mdl"
				solid 0
				startdisabled 1
				modelscale 3
				targetname dumpster_dudprop1
				parentname dumpster_prop1
			
}
			info_particle_system
			{

				origin "0 0 24"
				effect_name eyeboss_tp_vortex
				targetname dumpster_warp_eff1
				parentname dumpster_prop1
			
}
			info_particle_system
			{

				origin "0 0 24"
				effect_name teleporter_mvm_bot_persist
				targetname dumpster_warp_beam1
				parentname dumpster_prop1
			
}
			trigger_push 			{

				origin "0 0 0"
				pushdir "0 180 0"
				spawnflags 1
				speed 512
				targetname dumpster_push1
				mins "-32 -66 -16"
				maxs "12 66 64"
			
}
			prop_dynamic
			{

				origin "0 0 0"
				disableshadows 0
				model "models/props_construction/dumpster_body.mdl"
				solid 6
				skin 2
				targetname dumpster_prop1
			
}
			prop_dynamic
			{

				targetname dumpster_lid1
				origin "0 0 0"
				disableshadows 0
				model "models/props_construction/dumpster_lid.mdl"
				solid 0
				skin 2
				parentname dumpster_rotdoor1
			
}
			func_door_rotating 			{

				targetname dumpster_rotdoor1
				parentname dumpster_prop1
				origin "24 -24 59" 				distance 90
				speed 160
				wait -1
				disableshadows 1
				forceclosed 1
				spawnflags 128
				noise1 shadows/mystery_open.mp3 				startclosesound misc/null.wav
				closesound doors\door_metal_medium_close1.wav
				mins "-2 -2 -2"
				maxs "2 2 2"
			
}
			trigger_multiple
			{

				origin "0 0 50"
				targetname dumpster_msg1
				parentname dumpster_prop1
				filtername filter_redteam
				spawnflags 1
				mins "-72 -74 -64"
				maxs "40 74 96"
				
			
}
			light_dynamic
			{

				origin "0 0 20"
				targetname dumpster_light1
				parentname dumpster_prop1
				_light "255 200 0 275"
				distance 75
                brightness 10
				spawnflags 1
			
}
			info_particle_system
			{

				origin "0 0 0"
				effect_name utaunt_beams_yellow
				targetname dumpster_particles1
				parentname dumpster_prop1
			
}
			prop_dynamic
			{

				targetname dumpster_weapon1
				parentname dumpster_train1
				model "models\weapons\w_models\w_medigun.mdl"
				solid 0
			
}
			path_track
			{

				origin "-4 0 20"
				targetname dumpster_track11
				parentname dumpster_prop1
				target dumpster_track21
				OnPass "dumpster_train1,Stop,,0,-1"
			
}
			path_track
			{

				origin "-4 0 64"
				targetname dumpster_track21
				parentname dumpster_prop1
				target dumpster_track11
				OnPass "dumpster_train1,Stop,,0,-1"
			
}
			func_tracktrain
			{

				targetname dumpster_train1
				parentname dumpster_prop1
				target dumpster_track11
				orientationtype 0
				velocitytype 2
				solid 0
				speed 0
				startspeed 90
				mins "-4 -4 -4"
				maxs "4 4 4"
				angles "90 0 90"
				spawnflags 8
			
}
			ambient_generic 
			{

				health 10
				message "shadows\mystery_jingle.mp3"
				radius 11000
				spawnflags 48
				targetname dumpster_jingle1
				parentname dumpster_prop1
			
}
			ambient_generic 
			{

				health 10
				message "misc/halloween/merasmus_appear.wav"
				radius 11000
				spawnflags 48
				targetname dumpster_appear1
				parentname dumpster_prop1
			
}
			ambient_generic 
			{

				health 10
				message "misc/halloween/merasmus_disappear.wav"
				radius 11000
				spawnflags 48
				targetname dumpster_disappear1
				parentname dumpster_prop1
			
}
		
}
		DumpsterBoxRewrite2
		{

			NoFixup = true,
			prop_dynamic
			{

				origin "0 0 104"
				angles "90 0 180"
				disableshadows 0
				model "models/workshop/player/items/all_class/mvm_memes_player/mvm_memes_player_heavy.mdl"
				solid 0
				startdisabled 1
				modelscale 3
				targetname dumpster_dudprop2
				parentname dumpster_prop2
			
}
			info_particle_system
			{

				origin "0 0 24"
				effect_name eyeboss_tp_vortex
				targetname dumpster_warp_eff2
				parentname dumpster_prop2
			
}
			info_particle_system
			{

				origin "0 0 24"
				effect_name teleporter_mvm_bot_persist
				targetname dumpster_warp_beam2
				parentname dumpster_prop2
			
}
			trigger_push 			{

				origin "0 0 0"
				pushdir "0 180 0"
				spawnflags 1
				speed 512
				targetname dumpster_push2
				mins "-32 -66 -16"
				maxs "12 66 64"
			
}
			prop_dynamic
			{

				origin "0 0 0"
				disableshadows 0
				model "models/props_construction/dumpster_body.mdl"
				solid 6
				skin 2
				targetname dumpster_prop2
			
}
			prop_dynamic
			{

				targetname dumpster_lid2
				origin "0 0 0"
				disableshadows 0
				model "models/props_construction/dumpster_lid.mdl"
				solid 0
				skin 2
				parentname dumpster_rotdoor2
			
}
			func_door_rotating 			{

				targetname dumpster_rotdoor2
				parentname dumpster_prop2
				origin "24 -24 59" 				distance 90
				speed 160
				wait -1
				disableshadows 1
				forceclosed 1
				spawnflags 128
				noise1 shadows/mystery_open.mp3 				startclosesound misc/null.wav
				closesound doors\door_metal_medium_close1.wav
				mins "-2 -2 -2"
				maxs "2 2 2"
			
}
			trigger_multiple
			{

				origin "0 0 50"
				targetname dumpster_msg2
				parentname dumpster_prop2
				filtername filter_redteam
				spawnflags 1
				mins "-72 -74 -64"
				maxs "40 74 96"
				
			
}
			light_dynamic
			{

				origin "0 0 20"
				targetname dumpster_light2
				parentname dumpster_prop2
				_light "255 200 0 275"
				distance 75
                brightness 10
				spawnflags 1
			
}
			info_particle_system
			{

				origin "0 0 0"
				effect_name utaunt_beams_yellow
				targetname dumpster_particles2
				parentname dumpster_prop2
			
}
			prop_dynamic
			{

				targetname dumpster_weapon2
				parentname dumpster_train2
				model "models\weapons\w_models\w_medigun.mdl"
				solid 0
			
}
			path_track
			{

				origin "-4 0 20"
				targetname dumpster_track12
				parentname dumpster_prop2
				target dumpster_track22
				OnPass "dumpster_train2,Stop,,0,-1"
			
}
			path_track
			{

				origin "-4 0 64"
				targetname dumpster_track22
				parentname dumpster_prop2
				target dumpster_track12
				OnPass "dumpster_train2,Stop,,0,-1"
			
}
			func_tracktrain
			{

				targetname dumpster_train2
				parentname dumpster_prop2
				target dumpster_track12
				orientationtype 0
				velocitytype 2
				solid 0
				speed 0
				startspeed 90
				mins "-4 -4 -4"
				maxs "4 4 4"
				angles "90 0 90"
				spawnflags 8
			
}
			ambient_generic 
			{

				health 10
				message "shadows\mystery_jingle.mp3"
				radius 11000
				spawnflags 48
				targetname dumpster_jingle2
				parentname dumpster_prop2
			
}
			ambient_generic 
			{

				health 10
				message "misc/halloween/merasmus_appear.wav"
				radius 11000
				spawnflags 48
				targetname dumpster_appear2
				parentname dumpster_prop2
			
}
			ambient_generic 
			{

				health 10
				message "misc/halloween/merasmus_disappear.wav"
				radius 11000
				spawnflags 48
				targetname dumpster_disappear2
				parentname dumpster_prop2
			
}
		
}
		DumpsterBoxRewrite3
		{

			NoFixup = true,
			prop_dynamic
			{

				origin "0 0 104"
				angles "90 0 180"
				disableshadows 0
				model "models/workshop/player/items/all_class/mvm_memes_player/mvm_memes_player_heavy.mdl"
				solid 0
				startdisabled 1
				modelscale 3
				targetname dumpster_dudprop3
				parentname dumpster_prop3
			
}
			info_particle_system
			{

				origin "0 0 24"
				effect_name eyeboss_tp_vortex
				targetname dumpster_warp_eff3
				parentname dumpster_prop3
			
}
			info_particle_system
			{

				origin "0 0 24"
				effect_name teleporter_mvm_bot_persist
				targetname dumpster_warp_beam3
				parentname dumpster_prop3
			
}
			trigger_push 			{

				origin "0 0 0"
				pushdir "0 180 0"
				spawnflags 1
				speed 512
				targetname dumpster_push3
				mins "-32 -66 -16"
				maxs "12 66 64"
			
}
			prop_dynamic
			{

				origin "0 0 0"
				disableshadows 0
				model "models/props_construction/dumpster_body.mdl"
				solid 6
				skin 2
				targetname dumpster_prop3
			
}
			prop_dynamic
			{

				targetname dumpster_lid3
				origin "0 0 0"
				disableshadows 0
				model "models/props_construction/dumpster_lid.mdl"
				solid 0
				skin 2
				parentname dumpster_rotdoor3
			
}
			func_door_rotating 			{

				targetname dumpster_rotdoor3
				parentname dumpster_prop3
				origin "24 -24 59" 				distance 90
				speed 160
				wait -1
				disableshadows 1
				forceclosed 1
				spawnflags 128
				noise1 shadows/mystery_open.mp3 				startclosesound misc/null.wav
				closesound doors\door_metal_medium_close1.wav
				mins "-2 -2 -2"
				maxs "2 2 2"
			
}
			trigger_multiple
			{

				origin "0 0 50"
				targetname dumpster_msg3
				parentname dumpster_prop3
				filtername filter_redteam
				spawnflags 1
				mins "-72 -74 -64"
				maxs "40 74 96"
				
			
}
			light_dynamic
			{

				origin "0 0 20"
				targetname dumpster_light3
				parentname dumpster_prop3
				_light "255 200 0 275"
				distance 75
                brightness 10
				spawnflags 1
			
}
			info_particle_system
			{

				origin "0 0 0"
				effect_name utaunt_beams_yellow
				targetname dumpster_particles3
				parentname dumpster_prop3
			
}
			prop_dynamic
			{

				targetname dumpster_weapon3
				parentname dumpster_train3
				model "models\weapons\w_models\w_medigun.mdl"
				solid 0
			
}
			path_track
			{

				origin "-4 0 20"
				targetname dumpster_track13
				parentname dumpster_prop3
				target dumpster_track23
				OnPass "dumpster_train3,Stop,,0,-1"
			
}
			path_track
			{

				origin "-4 0 64"
				targetname dumpster_track23
				parentname dumpster_prop3
				target dumpster_track13
				OnPass "dumpster_train3,Stop,,0,-1"
			
}
			func_tracktrain
			{

				targetname dumpster_train3
				parentname dumpster_prop3
				target dumpster_track13
				orientationtype 0
				velocitytype 2
				solid 0
				speed 0
				startspeed 90
				mins "-4 -4 -4"
				maxs "4 4 4"
				angles "90 0 90"
				spawnflags 8
			
}
			ambient_generic 
			{

				health 10
				message "shadows\mystery_jingle.mp3"
				radius 11000
				spawnflags 48
				targetname dumpster_jingle3
				parentname dumpster_prop3
			
}
			ambient_generic 
			{

				health 10
				message "misc/halloween/merasmus_appear.wav"
				radius 11000
				spawnflags 48
				targetname dumpster_appear3
				parentname dumpster_prop3
			
}
			ambient_generic 
			{

				health 10
				message "misc/halloween/merasmus_disappear.wav"
				radius 11000
				spawnflags 48
				targetname dumpster_disappear3
				parentname dumpster_prop3
			
}
		
}
		DumpsterBoxRewrite4
		{

			NoFixup = true,
			prop_dynamic
			{

				origin "0 0 104"
				angles "90 0 180"
				disableshadows 0
				model "models/workshop/player/items/all_class/mvm_memes_player/mvm_memes_player_heavy.mdl"
				solid 0
				startdisabled 1
				modelscale 3
				targetname dumpster_dudprop4
				parentname dumpster_prop4
			
}
			info_particle_system
			{

				origin "0 0 24"
				effect_name eyeboss_tp_vortex
				targetname dumpster_warp_eff4
				parentname dumpster_prop4
			
}
			info_particle_system
			{

				origin "0 0 24"
				effect_name teleporter_mvm_bot_persist
				targetname dumpster_warp_beam4
				parentname dumpster_prop4
			
}
			trigger_push 			{

				origin "0 0 0"
				pushdir "0 180 0"
				spawnflags 1
				speed 512
				targetname dumpster_push4
				mins "-32 -66 -16"
				maxs "12 66 64"
			
}
			prop_dynamic
			{

				origin "0 0 0"
				disableshadows 0
				model "models/props_construction/dumpster_body.mdl"
				solid 6
				skin 2
				targetname dumpster_prop4
			
}
			prop_dynamic
			{

				targetname dumpster_lid4
				angles "0 0 0"
				origin "0 0 0"
				disableshadows 0
				model "models/props_construction/dumpster_lid.mdl"
				solid 0
				skin 2
				parentname dumpster_rotdoor4
			
}
			func_door_rotating 			{

				targetname dumpster_rotdoor4
				parentname dumpster_prop4
				origin "-24 -24 59" 				angles "0 0 0"
				distance 90
				speed 160
				wait -1
				disableshadows 1
				forceclosed 1
				spawnflags 128
				noise1 shadows/mystery_open.mp3 				startclosesound misc/null.wav
				closesound doors\door_metal_medium_close1.wav
				mins "-2 -2 -2"
				maxs "2 2 2"
			
}
			trigger_multiple
			{

				origin "0 0 50"
				targetname dumpster_msg4
				parentname dumpster_prop4
				filtername filter_redteam
				spawnflags 1
				mins "-72 -74 -64"
				maxs "40 74 96"
				
			
}
			light_dynamic
			{

				origin "0 0 20"
				targetname dumpster_light4
				parentname dumpster_prop4
				_light "255 200 0 275"
				distance 75
                brightness 10
				spawnflags 1
			
}
			info_particle_system
			{

				origin "0 0 0"
				effect_name utaunt_beams_yellow
				targetname dumpster_particles4
				parentname dumpster_prop4
			
}
			prop_dynamic
			{

				targetname dumpster_weapon4
				parentname dumpster_train4
				model "models\weapons\w_models\w_medigun.mdl"
				solid 0
			
}
			path_track
			{

				origin "-4 0 20"
				targetname dumpster_track14
				parentname dumpster_prop4
				target dumpster_track24
				OnPass "dumpster_train4,Stop,,0,-1"
			
}
			path_track
			{

				origin "-4 0 64"
				targetname dumpster_track24
				parentname dumpster_prop4
				target dumpster_track14
				OnPass "dumpster_train4,Stop,,0,-1"
			
}
			func_tracktrain
			{

				targetname dumpster_train4
				parentname dumpster_prop4
				target dumpster_track14
				orientationtype 0
				velocitytype 2
				solid 0
				speed 0
				startspeed 90
				mins "-4 -4 -4"
				maxs "4 4 4"
				angles "90 0 90"
				spawnflags 8
			
}
			ambient_generic 
			{

				health 10
				message "shadows\mystery_jingle.mp3"
				radius 11000
				spawnflags 48
				targetname dumpster_jingle4
				parentname dumpster_prop4
			
}
			ambient_generic 
			{

				health 10
				message "misc/halloween/merasmus_appear.wav"
				radius 11000
				spawnflags 48
				targetname dumpster_appear4
				parentname dumpster_prop4
			
}
			ambient_generic 
			{

				health 10
				message "misc/halloween/merasmus_disappear.wav"
				radius 11000
				spawnflags 48
				targetname dumpster_disappear4
				parentname dumpster_prop4
			
}
		
}
		DumpsterBoxRewrite5
		{

			NoFixup = true,
			prop_dynamic
			{

				origin "0 0 104"
				angles "90 0 180"
				disableshadows 0
				model "models/workshop/player/items/all_class/mvm_memes_player/mvm_memes_player_heavy.mdl"
				solid 0
				startdisabled 1
				modelscale 3
				targetname dumpster_dudprop5
				parentname dumpster_prop5
			
}
			info_particle_system
			{

				origin "0 0 24"
				effect_name eyeboss_tp_vortex
				targetname dumpster_warp_eff5
				parentname dumpster_prop5
			
}
			info_particle_system
			{

				origin "0 0 24"
				effect_name teleporter_mvm_bot_persist
				targetname dumpster_warp_beam5
				parentname dumpster_prop5
			
}
			trigger_push 			{

				origin "0 0 0"
				pushdir "0 180 0"
				spawnflags 1
				speed 512
				targetname dumpster_push5
				mins "-32 -66 -16"
				maxs "12 66 64"
			
}
			prop_dynamic
			{

				origin "0 0 0"
				disableshadows 0
				model "models/props_construction/dumpster_body.mdl"
				solid 6
				skin 2
				targetname dumpster_prop5
			
}
			prop_dynamic
			{

				targetname dumpster_lid5
				origin "0 0 0"
				disableshadows 0
				model "models/props_construction/dumpster_lid.mdl"
				solid 0
				skin 2
				parentname dumpster_rotdoor5
			
}
			func_door_rotating 			{

				targetname dumpster_rotdoor5
				parentname dumpster_prop5
				origin "24 -24 59" 				distance 90
				speed 160
				wait -1
				disableshadows 1
				forceclosed 1
				spawnflags 128
				noise1 shadows/mystery_open.mp3 				startclosesound misc/null.wav
				closesound doors\door_metal_medium_close1.wav
				mins "-2 -2 -2"
				maxs "2 2 2"
			
}
			trigger_multiple
			{

				origin "0 0 50"
				targetname dumpster_msg5
				parentname dumpster_prop5
				filtername filter_redteam
				spawnflags 1
				mins "-72 -74 -64"
				maxs "40 74 96"
				
			
}
			light_dynamic
			{

				origin "0 0 20"
				targetname dumpster_light5
				parentname dumpster_prop5
				_light "255 200 0 275"
				distance 75
                brightness 10
				spawnflags 1
			
}
			info_particle_system
			{

				origin "0 0 0"
				effect_name utaunt_beams_yellow
				targetname dumpster_particles5
				parentname dumpster_prop5
			
}
			prop_dynamic
			{

				targetname dumpster_weapon5
				parentname dumpster_train5
				model "models\weapons\w_models\w_medigun.mdl"
				solid 0
			
}
			path_track
			{

				origin "-4 0 20"
				targetname dumpster_track15
				parentname dumpster_prop5
				target dumpster_track25
				OnPass "dumpster_train5,Stop,,0,-1"
			
}
			path_track
			{

				origin "-4 0 64"
				targetname dumpster_track25
				parentname dumpster_prop5
				target dumpster_track15
				OnPass "dumpster_train5,Stop,,0,-1"
			
}
			func_tracktrain
			{

				targetname dumpster_train5
				parentname dumpster_prop5
				target dumpster_track15
				orientationtype 0
				velocitytype 2
				solid 0
				speed 0
				startspeed 90
				mins "-4 -4 -4"
				maxs "4 4 4"
				angles "90 0 90"
				spawnflags 8
			
}
			ambient_generic 
			{

				health 10
				message "shadows\mystery_jingle.mp3"
				radius 11000
				spawnflags 48
				targetname dumpster_jingle5
				parentname dumpster_prop5
			
}
			ambient_generic 
			{

				health 10
				message "misc/halloween/merasmus_appear.wav"
				radius 11000
				spawnflags 48
				targetname dumpster_appear5
				parentname dumpster_prop5
			
}
			ambient_generic 
			{

				health 10
				message "misc/halloween/merasmus_disappear.wav"
				radius 11000
				spawnflags 48
				targetname dumpster_disappear5
				parentname dumpster_prop5
			
}
		
}
		DumpsterBox 		{

			NoFixup = true,
			OnSpawnOutput
			{

				Target dumpster_warp_roulette
				Action PickRandomShuffle
			
}
			$filter_sendprop
            {

                targetname filter_dumpstermoney
                $name m_nCurrency
				negated 0
                $value 950
                $compare "greater than or equal"

				OnFail "!activator,$PlaySoundToSelf,buttons/button8.wav,0,-1"		            
}
			filter_multi
			{

				targetname filter_dumpstermulti
				filtertype 0
				negated 0
				filter01 filter_dumpstermoney
				filter02 filter_melee
				OnFail "!activator,$PlaySoundToSelf,buttons/button8.wav,0,-1"
			
}
			filter_damage_type 			{

				targetname filter_melee
				negated 0
				damagetype 134221952 			
}
			info_particle_system
			{

				origin "0 0 24"
				effect_name eyeboss_tp_vortex
				targetname dumpster_warp_eff
				parentname dumpster_prop
			
}
			info_particle_system
			{

				origin "0 0 24"
				effect_name teleporter_mvm_bot_persist
				targetname dumpster_warp_beam
				parentname dumpster_prop
			
}
			trigger_multiple
			{

				origin "0 0 50"
				targetname dumpster_msg
				parentname dumpster_prop
				filtername filter_redteam
				spawnflags 1
				mins "-64 -64 -64"
				maxs "96 96 96"
				
				OnStartTouchAll "!activator,$DisplayTextCenter,Hold Action key to receive a weapon for $950,0,-1"
			
}
			trigger_push 			{

				origin "0 0 0"
				pushdir "0 0 0"
				spawnflags 1
				speed 512
				StartDisabled 0
				targetname dumpster_push
				mins "-12 -64 -16"
				maxs "12 64 16"
			
}
			logic_relay 			{

				targetname dumpster_dud
				OnTrigger "!activator,$AddCurrency,950,-1"
				OnTrigger "player,$PlaySoundToSelf,misc/happy_birthday_tf_10.wav,,0,-1"
				OnTrigger "dumpsterbutton,Lock,,0,-1"
				OnTrigger "dumpster_dudprop,Enable,,0,-1"
				OnTrigger "player,$PlaySoundToSelf,shadows/powerup_dud_03.mp3,1,-1"
				OnTrigger "dumpster_warp_eff,Start,,3,-1"
				OnTrigger "dumpster_warp_beam,Stop,,3,-1"
				OnTrigger "player,$PlaySoundToSelf,misc/halloween/merasmus_disappear.wav,3,-1"
				OnTrigger "dumpster_tele_out,Teleport,,4,-1"
				OnTrigger "dumpster_warp_eff,Stop,,4.2,-1"
				OnTrigger "dumpster_dudprop,Disable,,8,-1"
				OnTrigger "dumpster_prop,AddOutput,solid 0,9,-1"
				OnTrigger "dumpster_push,Enable,,24,-1"
				OnTrigger "dumpster_warp_roulette,PickRandomShuffle,,25,-1"
				OnTrigger "dumpster_warp_eff,Start,,25,-1"
				OnTrigger "dumpsterbutton,Unlock,,26,-1"
				OnTrigger "dumpster_push,Disable,,26,-1"
				OnTrigger "dumpster_prop,AddOutput,solid 6,26,-1"
				OnTrigger "player,$PlaySoundToSelf,misc/halloween/merasmus_appear.wav,26,-1"
				OnTrigger "dumpster_warp_eff,Stop,,27.2,-1"
			
}
			logic_case
			{

				targetname dumpster_warp_roulette
				OnCase01 "dumpster_tele_1,Teleport,,-1"
				OnCase01 "dumpster_warp_beam,Start,,-1"
				OnCase02 "dumpster_tele_2,Teleport,,-1"
				OnCase02 "dumpster_warp_beam,Start,,-1"
				OnCase03 "dumpster_tele_3,Teleport,,-1"
				OnCase03 "dumpster_warp_beam,Start,,-1"
				OnCase04 "dumpster_tele_4,Teleport,,-1"
				OnCase04 "dumpster_warp_beam,Start,,-1"
				OnCase05 "dumpster_tele_5,Teleport,,-1"
				OnCase05 "dumpster_warp_beam,Start,,-1"
			
}
			point_teleport
			{

				targetname dumpster_tele_out
				target dumpster_prop
				origin "-512 -25 -1008"
				angles "0 0 0"
			
}
			point_teleport
			{

				targetname dumpster_tele_1
				target dumpster_prop
				origin "447 -2322 8"
				angles "0 0 0"
			
}
			point_teleport
			{

				targetname dumpster_tele_2
				target dumpster_prop
				origin "-399 -1380 -1"
				angles "0 270 0"
			
}
			point_teleport
			{

				targetname dumpster_tele_3
				target dumpster_prop
				origin "986 1338 96"
				angles "0 0 0"
			
}
			point_teleport
			{

				targetname dumpster_tele_4
				target dumpster_prop
				origin "-788 1016 -1"
				angles "0 180 0"
			
}
			point_teleport
			{

				targetname dumpster_tele_5
				target dumpster_prop
				origin "-548 -2216 3"
				angles "0 0 0"
			
}
			logic_case
			{

				targetname dumpster_case
				Case01 1 				Case02 2 				Case03 3 				Case04 4 				Case05 5 				Case06 6 				Case07 7 				Case08 8 				Case09 9 				OnCase01 "dumpster_picker_scout,PickRandom,,2.5,-1"
				OnCase02 "dumpster_picker_sniper,PickRandom,,2.5,-1"
				OnCase03 "dumpster_picker_soldier,PickRandom,,2.5,-1"
				OnCase04 "dumpster_picker_demo,PickRandom,,2.5,-1"
				OnCase05 "dumpster_picker_medic,PickRandom,,2.5,-1"
				OnCase06 "dumpster_picker_heavy,PickRandom,,2.5,-1"
				OnCase07 "dumpster_picker_pyro,PickRandom,,2.5,-1"
				OnCase08 "dumpster_picker_spy,PickRandom,,2.5,-1"
				OnCase09 "dumpster_picker_engie,PickRandom,,2.5,-1"
			
}
			prop_dynamic
			{

				origin "0 0 104"
				angles "90 0 180"
				disableshadows 0
				model "models/workshop/player/items/all_class/mvm_memes_player/mvm_memes_player_heavy.mdl"
				solid 0
				startdisabled 1
				modelscale 3
				targetname dumpster_dudprop
				parentname dumpster_prop
			
}
			training_annotation
            {

              targetname = "dumpster_hint",
              display_text = "Follow the beam of light to find the Weapons Dumpster!",
              lifetime = "5",
              origin = "0 0 256",
			              
}
			prop_dynamic
			{

				origin "0 0 0"
				disableshadows 0
				model "models/props_construction/dumpster_body.mdl"
				solid 6
				skin 2
				targetname dumpster_prop
				lightingorigin bombpath_arrows_void
			
}
			light_dynamic
			{

				_light = "255 249 234 275",
				distance "512"
				brightness "1"
				origin "0 0 36"
				parentname dumpster_prop
			
}
			prop_dynamic
			{

				origin "0 0 0"
				disableshadows 0
				model "models/props_construction/dumpster_lid.mdl"
				solid 0
				skin 2
				parentname dumpster_rotdoor
				lightingorigin bombpath_arrows_void
			
}
			func_door_rotating 			{

				targetname dumpster_rotdoor
				parentname dumpster_prop
				origin "28 -24 60" 				distance 90
				speed 160
				wait 5
				disableshadows 1
				forceclosed 1
				spawnflags 128
				noise1 shadows/mystery_open.mp3 				startclosesound misc/null.wav
				closesound doors\door_metal_medium_close1.wav
				mins "-2 -2 -2"
				maxs "2 2 2"
			
}
			func_button 			{

				origin "-32 -0 24"
				targetname dumpsterbutton
				parentname dumpster_prop
				damagefilter filter_dumpstermulti
				rendermode 10
				movedir "0 180 0"
				spawnflags 513
				speed 5
				wait 3
				sounds 3
				mins "-4 -44 -20"
				maxs "4 44 20"
				
				OnPressed "!activator,$PlaySoundToSelf,shadows/mystery_noise.mp3,0,-1"
				OnPressed "!activator,$RemoveCurrency,950,-1" 				OnPressed "dumpster_rotdoor,Open,,0,-1"
				OnPressed "dumpster_case,InValue,$$=!activator.m_iClass,,-1"
				OnPressed "dumpster_rotdoor,Close,,3.4,-1"
			
}
			logic_case 			{

				targetname dumpster_picker_scout
				OnCase01 "!activator,$AwardAndGiveExtraItem,The Shortstop,-1"
				OnCase01 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase01 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase01 "!activator,$DisplayTextChat,You've received: The Shortstop!,0,-1"
				OnCase02 "!activator,$AwardAndGiveExtraItem,The Shortstop,-1"
				OnCase02 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase02 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase02 "!activator,$DisplayTextChat,You've received: The Shortstop!,0,-1"
				OnCase03 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SMG,-1"
				OnCase03 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase03 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase03 "!activator,$DisplayTextChat,You've received: The SMG!,0,-1"
				OnCase04 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SMG,-1"
				OnCase04 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase04 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase04 "!activator,$DisplayTextChat,You've received: The SMG!,0,-1"
				OnCase05 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_PIPEBOMBLAUNCHER,-1"
				OnCase05 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase05 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase05 "!activator,$DisplayTextChat,You've received: The Stickybomb Launcher!,0,-1"
				OnCase06 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_PIPEBOMBLAUNCHER,-1"
				OnCase06 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase06 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase06 "!activator,$DisplayTextChat,You've received: The Stickybomb Launcher!,0,-1"
				OnCase07 "!activator,$AwardAndGiveExtraItem,The Force-a-Nature,-1"
				OnCase07 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase07 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase07 "!activator,$DisplayTextChat,You've received: The Force-a-Nature!,0,-1"
				OnCase08 "!activator,$AwardAndGiveExtraItem,The Force-a-Nature,-1"
				OnCase08 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase08 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase08 "!activator,$DisplayTextChat,You've received: The Force-a-Nature!,0,-1"
				OnCase09 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SCATTERGUN,-1"
				OnCase09 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase09 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase09 "!activator,$DisplayTextChat,You've received: The Scattergun,0,-1"
				OnCase10 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SCATTERGUN,-1"
				OnCase10 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase10 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase10 "!activator,$DisplayTextChat,You've received: The Scattergun,0,-1"
				OnCase11 "!activator,$AwardAndGiveExtraItem,The Punch Packer,-1"
				OnCase11 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase11 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1"
				OnCase11 "!activator,$DisplayTextChat,You've received: The Punch Packer!,0,-1"
				OnCase12 "!activator,$AwardAndGiveExtraItem,The Punch Packer,-1"
				OnCase12 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase12 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1"
				OnCase12 "!activator,$DisplayTextChat,You've received: The Punch Packer!,0,-1"
				OnCase13 "!activator,$AwardAndGiveExtraItem,The Ray Gun,-1"
				OnCase13 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase13 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1"
				OnCase13 "!activator,$DisplayTextChat,You've received: The Ray Gun!,0,-1"
				OnCase14 "dumpster_dud,Trigger,-1"
			
}
			logic_case 			{

				targetname dumpster_picker_sniper
				OnCase01 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SHOTGUN_PYRO,-1"
				OnCase01 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase01 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase01 "!activator,$DisplayTextChat,You've received: The Shotgun!,0,-1"
				OnCase02 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SHOTGUN_PYRO,-1"
				OnCase02 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase02 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase02 "!activator,$DisplayTextChat,You've received: The Shotgun!,0,-1"
				OnCase03 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SCATTERGUN,-1"
				OnCase03 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase03 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase03 "!activator,$DisplayTextChat,You've received: The Scattergun,0,-1"
				OnCase04 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SCATTERGUN,-1"
				OnCase04 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase04 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase04 "!activator,$DisplayTextChat,You've received: The Scattergun,0,-1"
				OnCase05 "!activator,$AwardAndGiveExtraItem,Double Barrel,-1"
				OnCase05 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase05 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase05 "!activator,$DisplayTextChat,You've received: The Double Barrel!,0,-1"
				OnCase06 "!activator,$AwardAndGiveExtraItem,Double Barrel,-1"
				OnCase06 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase06 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase06 "!activator,$DisplayTextChat,You've received: The Double Barrel!,0,-1"
				OnCase07 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_PIPEBOMBLAUNCHER,-1"
				OnCase07 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase07 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase07 "!activator,$DisplayTextChat,You've received: The Stickybomb Launcher!,0,-1"
				OnCase08 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_PIPEBOMBLAUNCHER,-1"
				OnCase08 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase08 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase08 "!activator,$DisplayTextChat,You've received: The Stickybomb Launcher!,0,-1"
				OnCase09 "!activator,$AwardAndGiveExtraItem,The Crusader's Crossbow,-1"
				OnCase09 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase09 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase09 "!activator,$DisplayTextChat,You've received: The Crusader's Crossbow!,0,-1"
				OnCase10 "!activator,$AwardAndGiveExtraItem,The Crusader's Crossbow,-1"
				OnCase10 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase10 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase10 "!activator,$DisplayTextChat,You've received: The Crusader's Crossbow!,0,-1"
				OnCase11 "!activator,$AwardAndGiveExtraItem,The Ray Gun,-1"
				OnCase11 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase11 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1"
				OnCase11 "!activator,$DisplayTextChat,You've received: The Ray Gun!,0,-1"
				OnCase12 "!activator,$AwardAndGiveExtraItem,Beam Rifle,-1"
				OnCase12 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase12 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1"
				OnCase12 "!activator,$DisplayTextChat,You've received: The Beam Rifle!,0,-1"
				OnCase13 "!activator,$AwardAndGiveExtraItem,The Punch Packer,-1"
				OnCase13 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase13 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1"
				OnCase13 "!activator,$DisplayTextChat,You've received: The Punch Packer!,0,-1"
				OnCase14 "!activator,$AwardAndGiveExtraItem,The Cleaner's Carbine,-1"
				OnCase14 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase14 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase14 "!activator,$DisplayTextChat,You've received: The Cleaner's Carbine!,0,-1"
				OnCase15 "dumpster_dud,Trigger,-1"
			
}
			logic_case 			{

				targetname dumpster_picker_soldier
				OnCase01 "!activator,$AwardAndGiveExtraItem,Double Barrel,-1"
				OnCase01 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase01 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase01 "!activator,$DisplayTextChat,You've received: The Double Barrel!,0,-1"
				OnCase02 "!activator,$AwardAndGiveExtraItem,Double Barrel,-1"
				OnCase02 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase02 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase02 "!activator,$DisplayTextChat,You've received: The Double Barrel!,0,-1"
				OnCase03 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SMG,-1"
				OnCase03 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase03 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase03 "!activator,$DisplayTextChat,You've received: The SMG!,0,-1"
				OnCase04 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SMG,-1"
				OnCase04 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase04 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase04 "!activator,$DisplayTextChat,You've received: The SMG!,0,-1"
				OnCase05 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_ROCKETLAUNCHER,-1"
				OnCase05 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase05 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase05 "!activator,$DisplayTextChat,You've received: The Rocket Launcher!,0,-1"
				OnCase06 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_ROCKETLAUNCHER,-1"
				OnCase06 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase06 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase06 "!activator,$DisplayTextChat,You've received: The Rocket Launcher!,0,-1"
				OnCase07 "!activator,$AwardAndGiveExtraItem,The Ray Gun,-1"
				OnCase07 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase07 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1"
				OnCase07 "!activator,$DisplayTextChat,You've received: The Ray Gun!,0,-1"
				OnCase08 "!activator,$AwardAndGiveExtraItem,Tactigatling,-1"
				OnCase08 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase08 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1"
				OnCase08 "!activator,$DisplayTextChat,You've received: The Tactigatling!,0,-1"
				OnCase09 "!activator,$AwardAndGiveExtraItem,Beam Rifle,-1"
				OnCase09 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase09 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1"
				OnCase09 "!activator,$DisplayTextChat,You've received: The Beam Rifle!,0,-1"
				OnCase10 "!activator,$AwardAndGiveExtraItem,The Cleaner's Carbine,-1"
				OnCase10 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase10 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase10 "!activator,$DisplayTextChat,You've received: The Cleaner's Carbine!,0,-1"
				OnCase11 "!activator,$AwardAndGiveExtraItem,The Cleaner's Carbine,-1"
				OnCase11 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase11 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase11 "!activator,$DisplayTextChat,You've received: The Cleaner's Carbine!,0,-1"
				OnCase12 "tgun_check,Test,,-1"
				OnCase13 "dumpster_dud,Trigger,-1"
			
}
			logic_case
			{

				targetname dumpster_picker_demo
				OnCase01 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SHOTGUN_PYRO,-1"
				OnCase01 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase01 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase01 "!activator,$DisplayTextChat,You've received: The Shotgun!,0,-1"
				OnCase02 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SHOTGUN_PYRO,-1"
				OnCase02 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase02 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase02 "!activator,$DisplayTextChat,You've received: The Shotgun!,0,-1"
				OnCase03 "!activator,$AwardAndGiveExtraItem,Double Barrel,-1"
				OnCase03 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase03 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase03 "!activator,$DisplayTextChat,You've received: The Double Barrel!,0,-1"
				OnCase04 "!activator,$AwardAndGiveExtraItem,Double Barrel,-1"
				OnCase04 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase04 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase04 "!activator,$DisplayTextChat,You've received: The Double Barrel!,0,-1"
				OnCase05 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SMG,-1"
				OnCase05 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase05 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase05 "!activator,$DisplayTextChat,You've received: The SMG!,0,-1"
				OnCase06 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SMG,-1"
				OnCase06 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase06 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase06 "!activator,$DisplayTextChat,You've received: The SMG!,0,-1"
				OnCase07 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_PIPEBOMBLAUNCHER,-1"
				OnCase07 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase07 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase07 "!activator,$DisplayTextChat,You've received: The Stickybomb Launcher!,0,-1"
				OnCase08 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_PIPEBOMBLAUNCHER,-1"
				OnCase08 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase08 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase08 "!activator,$DisplayTextChat,You've received: The Stickybomb Launcher!,0,-1"
				OnCase09 "!activator,$AwardAndGiveExtraItem,Tactigatling,-1"
				OnCase09 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase09 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1"
				OnCase09 "!activator,$DisplayTextChat,You've received: The Tactigatling!,0,-1"
				OnCase10 "!activator,$AwardAndGiveExtraItem,Beam Rifle,-1"
				OnCase10 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase10 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1"
				OnCase10 "!activator,$DisplayTextChat,You've received: The Beam Rifle!,0,-1"
				OnCase11 "!activator,$AwardAndGiveExtraItem,The Ray Gun,-1"
				OnCase11 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase11 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1"
				OnCase11 "!activator,$DisplayTextChat,You've received: The Ray Gun!,0,-1"
				OnCase12 "dumpster_dud,Trigger,-1"
			
}
			logic_case 			{

				targetname dumpster_picker_medic
				OnCase01 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SCATTERGUN,-1"
				OnCase01 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase01 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase01 "!activator,$DisplayTextChat,You've received: The Scattergun!,0,-1"
				OnCase02 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SCATTERGUN,-1"
				OnCase02 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase02 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase02 "!activator,$DisplayTextChat,You've received: The Scattergun!,0,-1"
				OnCase03 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_FLAMETHROWER,-1"
				OnCase03 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase03 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase03 "!activator,$DisplayTextChat,You've received: The Flamethrower!,0,-1"
				OnCase04 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_FLAMETHROWER,-1"
				OnCase04 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase04 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase04 "!activator,$DisplayTextChat,You've received: The Flamethrower!,0,-1"
				OnCase05 "!activator,$AwardAndGiveExtraItem,The Punch Packer,-1"
				OnCase05 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase05 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase05 "!activator,$DisplayTextChat,You've received: The Punch Packer!,0,-1"
				OnCase06 "!activator,$AwardAndGiveExtraItem,The Punch Packer,-1"
				OnCase06 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase06 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase06 "!activator,$DisplayTextChat,You've received: The Punch Packer!,0,-1"
				OnCase07 "!activator,$AwardAndGiveExtraItem,Primary SMG,-1"
				OnCase07 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase07 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase07 "!activator,$DisplayTextChat,You've received: The SMG!,0,-1"
				OnCase08 "!activator,$AwardAndGiveExtraItem,Primary SMG,-1"
				OnCase08 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase08 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase08 "!activator,$DisplayTextChat,You've received: The SMG!,0,-1"
				OnCase09 "!activator,$AwardAndGiveExtraItem,The Crusader's Crossbow,-1"
				OnCase09 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1" 
				OnCase09 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase09 "!activator,$DisplayTextChat,You've received: The Crusader's Crossbow!,0,-1"
				OnCase10 "!activator,$AwardAndGiveExtraItem,The Crusader's Crossbow,-1"
				OnCase10 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1" 
				OnCase10 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase10 "!activator,$DisplayTextChat,You've received: The Crusader's Crossbow!,0,-1"
				OnCase11 "!activator,$AwardAndGiveExtraItem,The Black Box,-1"
				OnCase11 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1" 
				OnCase11 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1"
				OnCase11 "!activator,$DisplayTextChat,You've received: The Black Box!,0,-1"
				OnCase12 "!activator,$AwardAndGiveExtraItem,Das Maschinenpistole,-1"
				OnCase12 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase12 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1"
				OnCase12 "!activator,$DisplayTextChat,You've received: Das Maschinenpistole!,0,-1"
				OnCase13 "dumpster_dud,Trigger,-1"
			
}
			logic_case
			{

				targetname dumpster_picker_heavy
				OnCase01 "!activator,$AwardAndGiveExtraItem,Double Barrel,-1"
				OnCase01 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase01 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase01 "!activator,$DisplayTextChat,You've received: The Double Barrel!,0,-1"
				OnCase02 "!activator,$AwardAndGiveExtraItem,Double Barrel,-1"
				OnCase02 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase02 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase02 "!activator,$DisplayTextChat,You've received: The Double Barrel!,0,-1"
				OnCase03 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SMG,-1"
				OnCase03 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase03 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase03 "!activator,$DisplayTextChat,You've received: The SMG!,0,-1"
				OnCase04 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SMG,-1"
				OnCase04 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase04 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase04 "!activator,$DisplayTextChat,You've received: The SMG!,0,-1"
				OnCase05 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_FLAMETHROWER,-1"
				OnCase05 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase05 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase05 "!activator,$DisplayTextChat,You've received: The Flamethrower!,0,-1"
				OnCase06 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_FLAMETHROWER,-1"
				OnCase06 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase06 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase06 "!activator,$DisplayTextChat,You've received: The Flamethrower!,0,-1"
				OnCase07 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_MINIGUN,-1"
				OnCase07 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase07 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase07 "!activator,$DisplayTextChat,You've received: The Minigun!,0,-1"
				OnCase08 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_MINIGUN,-1"
				OnCase08 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase08 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase08 "!activator,$DisplayTextChat,You've received: The Minigun!,0,-1"
				OnCase09 "!activator,$AwardAndGiveExtraItem,The Ray Gun,-1"
				OnCase09 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase09 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1"
				OnCase09 "!activator,$DisplayTextChat,You've received: The Ray Gun!,0,-1"
				OnCase10 "!activator,$AwardAndGiveExtraItem,Beam Rifle,-1"
				OnCase10 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase10 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1"
				OnCase10 "!activator,$DisplayTextChat,You've received: The Beam Rifle!,0,-1"
				OnCase11 "!activator,$AwardAndGiveExtraItem,Tactigatling,-1"
				OnCase11 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase11 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1"
				OnCase11 "!activator,$DisplayTextChat,You've received: The Tactigatling!,0,-1"
				OnCase12 "tgun_check,Test,,-1"
				OnCase13 "dumpster_dud,Trigger,-1"
			
}
			logic_case
			{

				targetname dumpster_picker_pyro
				OnCase01 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_FLAMETHROWER,-1"
				OnCase01 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase01 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase01 "!activator,$DisplayTextChat,You've received: The Flamethrower!,0,-1"
				OnCase02 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_FLAMETHROWER,-1"
				OnCase02 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase02 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase02 "!activator,$DisplayTextChat,You've received: The Flamethrower!,0,-1"
				OnCase03 "!activator,$AwardAndGiveExtraItem,Double Barrel,-1"
				OnCase03 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase03 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase03 "!activator,$DisplayTextChat,You've received: The Double Barrel!,0,-1"
				OnCase04 "!activator,$AwardAndGiveExtraItem,Double Barrel,-1"
				OnCase04 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase04 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase04 "!activator,$DisplayTextChat,You've received: The Double Barrel!,0,-1"
				OnCase05 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SMG,-1"
				OnCase05 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase05 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase05 "!activator,$DisplayTextChat,You've received: The SMG!,0,-1"
				OnCase06 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SMG,-1"
				OnCase06 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase06 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase06 "!activator,$DisplayTextChat,You've received: The SMG!,0,-1"
				OnCase07 "!activator,$AwardAndGiveExtraItem,The Dragon's Fury,-1"
				OnCase07 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase07 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase07 "!activator,$DisplayTextChat,You've received: The Dragon's Fury!,0,-1"
				OnCase08 "!activator,$AwardAndGiveExtraItem,The Dragon's Fury,-1"
				OnCase08 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase08 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase08 "!activator,$DisplayTextChat,You've received: The Dragon's Fury!,0,-1"
				OnCase09 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_MINIGUN,-1"
				OnCase09 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase09 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase09 "!activator,$DisplayTextChat,You've received: The Minigun!,0,-1"
				OnCase10 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_MINIGUN,-1"
				OnCase10 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase10 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase10 "!activator,$DisplayTextChat,You've received: The Minigun!,0,-1"
				OnCase11 "!activator,$AwardAndGiveExtraItem,The Ray Gun,-1"
				OnCase11 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase11 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1"
				OnCase11 "!activator,$DisplayTextChat,You've received: The Ray Gun!,0,-1"
				OnCase12 "!activator,$AwardAndGiveExtraItem,Tactigatling,-1"
				OnCase12 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase12 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1"
				OnCase12 "!activator,$DisplayTextChat,You've received: The Tactigatling!,0,-1"
				OnCase13 "tgun_check,Test,,-1"
				OnCase14 "dumpster_dud,Trigger,-1"
			
}
			logic_case 			{

				targetname dumpster_picker_spy
				OnCase01 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SMG,-1"
				OnCase01 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase01 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase01 "!activator,$DisplayTextChat,You've received: The SMG!,0,-1"
				OnCase02 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SMG,-1"
				OnCase02 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase02 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase02 "!activator,$DisplayTextChat,You've received: The SMG!,0,-1"
				OnCase03 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_PISTOL,-1"
				OnCase03 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase03 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase03 "!activator,$DisplayTextChat,You've received: The Pistol!,0,-1"
				OnCase04 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_PISTOL,-1"
				OnCase04 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase04 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase04 "!activator,$DisplayTextChat,You've received: The Pistol!,0,-1"
				OnCase05 "!activator,$AwardAndGiveExtraItem,Primary Ambassador,-1"
				OnCase05 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase05 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase05 "!activator,$DisplayTextChat,You've received: The Ambassador!,0,-1"
				OnCase06 "!activator,$AwardAndGiveExtraItem,Primary Ambassador,-1"
				OnCase06 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase06 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase06 "!activator,$DisplayTextChat,You've received: The Ambassador!,0,-1"
				OnCase07 "!activator,$AwardAndGiveExtraItem,Big Iron,-1"
				OnCase07 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase07 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase07 "!activator,$DisplayTextChat,You've received: The Big Iron!,0,-1"
				OnCase08 "!activator,$AwardAndGiveExtraItem,Big Iron,-1"
				OnCase08 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase08 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase08 "!activator,$DisplayTextChat,You've received: The Big Iron!,0,-1"
				OnCase09 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SHOTGUN_PYRO,-1"
				OnCase09 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase09 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase09 "!activator,$DisplayTextChat,You've received: The Shotgun!,0,-1"
				OnCase10 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SHOTGUN_PYRO,-1"
				OnCase10 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase10 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase10 "!activator,$DisplayTextChat,You've received: The Shotgun!,0,-1"
				OnCase11 "!activator,$AwardAndGiveExtraItem,The Winger,-1"
				OnCase11 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase11 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase11 "!activator,$DisplayTextChat,You've received: The Winger!,0,-1"
				OnCase12 "!activator,$AwardAndGiveExtraItem,The Winger,-1"
				OnCase12 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase12 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase12 "!activator,$DisplayTextChat,You've received: The Winger!,0,-1"
				OnCase13 "!activator,$AwardAndGiveExtraItem,The Ray Gun,-1"
				OnCase13 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase13 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1"
				OnCase13 "!activator,$DisplayTextChat,You've received: The Ray Gun!,0,-1"
				OnCase14 "dumpster_dud,Trigger,-1"
			
}
			logic_case 			{

				targetname dumpster_picker_engie
				OnCase01 "!activator,$AwardAndGiveExtraItem,The B.M.M.H,-1"
				OnCase01 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase01 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase01 "!activator,$DisplayTextChat,You've received: The B.M.M.H!,0,-1"
				OnCase02 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SMG,-1"
				OnCase02 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase02 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase02 "!activator,$DisplayTextChat,You've received: The SMG!,0,-1"
				OnCase03 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SMG,-1"
				OnCase03 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase03 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase03 "!activator,$DisplayTextChat,You've received: The SMG!,0,-1"
				OnCase04 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SHOTGUN_PRIMARY,-1"
				OnCase04 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase04 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase04 "!activator,$DisplayTextChat,You've received: The Shotgun!,0,-1"
				OnCase05 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SCATTERGUN,-1"
				OnCase05 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase05 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase05 "!activator,$DisplayTextChat,You've received: The Scattergun!,0,-1"
				OnCase06 "!activator,$AwardAndGiveExtraItem,TF_WEAPON_SHOTGUN_PRIMARY,-1"
				OnCase06 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase06 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase06 "!activator,$DisplayTextChat,You've received: The Shotgun!,0,-1"
				OnCase07 "!activator,$AwardAndGiveExtraItem,The Nostromo Napalmer,-1"
				OnCase07 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase07 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase07 "!activator,$DisplayTextChat,You've received: The Nostromo Napalmer!,0,-1"
				OnCase08 "!activator,$AwardAndGiveExtraItem,The Nostromo Napalmer,-1"
				OnCase08 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase08 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_COMMON,0.6,-1"
				OnCase08 "!activator,$DisplayTextChat,You've received: The Nostromo Napalmer!,0,-1"
				OnCase09 "!activator,$AwardAndGiveExtraItem,The Ray Gun,-1"
				OnCase09 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase09 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1"
				OnCase09 "!activator,$DisplayTextChat,You've received: The Ray Gun!,0,-1"
				OnCase10 "!activator,$AwardAndGiveExtraItem,The Punch Packer,-1"
				OnCase10 "!activator,$PlaySoundToSelf,items/gunpickup2.wav,-1"
				OnCase10 "!activator,SpeakResponseConcept,TLK_MVM_LOOT_RARE,0.6,-1"
				OnCase10 "!activator,$DisplayTextChat,You've received: The Punch Packer!,0,-1"
				OnCase11 "dumpster_dud,Trigger,-1"
			
}
		
}
		TankTeleport
		{

			NoFixup = true,
			trigger_teleport
			{

				targetname tank_warper
				spawnflags 1
				target tank_spawnroulette
				filtername filter_tank
				mins = "-9999 -9999 -9999",
				maxs = "9999 9999 9999",
			
}
			trigger_multiple
			{

				targetname tank_spawnroulette
				spawnflags 1
				filtername filter_tank
				origin -2168 40 13604 = "mins", -24 -24 -36 = "maxs", "24 24 36"
				
				OnStartTouchAll "tank_spawn_picker,PickRandomShuffle,,-1"
			
}
			trigger_bot_tag
			{

				targetname tank_spawnroulette
				spawnflags 1
				filtername filter_tank
				tags swooce
				add 0 				origin -2168 40 13604 = "mins", -128 -128 -128 = "maxs", "128 128 128"
			
}
						filter_tf_bot_has_tag
			{

				targetname filter_tank
				require_all_tags 1
				tags swooce
				Negated "Allow entities that match criteria"
			
}
			point_teleport
			{

				targetname tank_spawn_01
				target !activator
				origin "-2048 -2432 24"
			
}
			info_particle_system 			{

				targetname tank_spawn_01_eff1
				effect_name utaunt_electricity_cloud_parent_WB
				origin "-2048 -2432 24"
			
}
			info_particle_system 			{

				targetname tank_spawn_01_eff2
				effect_name utaunt_lightning_bolt
				origin "-2048 -2432 24"
			
}
			point_teleport
			{

				targetname tank_spawn_02
				target !activator
				origin "-352 -3064 8"
			
}
			info_particle_system
			{

				targetname tank_spawn_02_eff1
				effect_name utaunt_electricity_cloud_parent_WB
				origin "-352 -3064 8"
			
}
			info_particle_system
			{

				targetname tank_spawn_02_eff2
				effect_name utaunt_lightning_bolt
				origin "-352 -3064 8"
			
}
			point_teleport
			{

				targetname tank_spawn_03
				target !activator
				origin "1376 -945 24"
			
}
			info_particle_system
			{

				targetname tank_spawn_03_eff1
				effect_name utaunt_electricity_cloud_parent_WB
				origin "1376 -945 24"
			
}
			info_particle_system
			{

				targetname tank_spawn_03_eff2
				effect_name utaunt_lightning_bolt
				origin "1376 -945 24"
			
}
			point_teleport
			{

				targetname tank_spawn_04
				target !activator
				origin "1376 1120 16"
			
}
			info_particle_system
			{

				targetname tank_spawn_04_eff1
				effect_name utaunt_electricity_cloud_parent_WB
				origin "1376 1120 16"
			
}
			info_particle_system
			{

				targetname tank_spawn_04_eff2
				effect_name utaunt_lightning_bolt
				origin "1376 1120 16"
			
}
			point_teleport
			{

				targetname tank_spawn_05
				target !activator
				origin "-8 1556 224"
			
}
			info_particle_system
			{

				targetname tank_spawn_05_eff1
				effect_name utaunt_electricity_cloud_parent_WB
				origin "-8 1556 224"
			
}
			info_particle_system
			{

				targetname tank_spawn_05_eff2
				effect_name utaunt_lightning_bolt
				origin "-8 1556 224"
			
}
			point_teleport
			{

				targetname tank_spawn_06
				target !activator
				origin "-792 2280 16"
			
}
			info_particle_system
			{

				targetname tank_spawn_06_eff1
				effect_name utaunt_electricity_cloud_parent_WB
				origin "-792 2280 16"
			
}
			info_particle_system
			{

				targetname tank_spawn_06_eff2
				effect_name utaunt_lightning_bolt
				origin "-792 2280 16"
			
}
			point_teleport
			{

				targetname tank_spawn_07
				target !activator
				origin "-3136 1272 24"
			
}
			info_particle_system
			{

				targetname tank_spawn_07_eff1
				effect_name utaunt_electricity_cloud_parent_WB
				origin "-3136 1272 24"
			
}
			info_particle_system
			{

				targetname tank_spawn_07_eff2
				effect_name utaunt_lightning_bolt
				origin "-3136 1272 24"
			
}
			point_teleport
			{

				targetname tank_spawn_08
				target !activator
				origin "-2296 -264 24"
			
}
			info_particle_system
			{

				targetname tank_spawn_08_eff1
				effect_name utaunt_electricity_cloud_parent_WB
				origin "-2296 -264 24"
			
}
			info_particle_system
			{

				targetname tank_spawn_08_eff2
				effect_name utaunt_lightning_bolt
				origin "-2296 -264 24"
			
}
			logic_case
			{

				targetname tank_spawn_picker
				OnCase01 = "tank_spawn_01_eff1,Start,,-1",
				OnCase01 = "player,$PlaySoundToSelf,misc/halloween_eyeball/book_spawn.wav,,-1",
				OnCase01 = "tank_spawn_01_eff2,Start,,1.75,-1",
				OnCase01 = "tank_spawn_01,Teleport,,1.75,-1",
				OnCase01 = "player,$PlaySoundToSelf,ambient/halloween/thunder_04.wav,1.75,-1",
				OnCase01 = "tank_spawn_01_eff1,Stop,,1.8,-1",
				OnCase01 = "tank_spawn_01_eff2,Stop,,2,-1",
				OnCase02 = "tank_spawn_02_eff1,Start,,-1",
				OnCase02 = "player,$PlaySoundToSelf,misc/halloween_eyeball/book_spawn.wav,,-1",
				OnCase02 = "tank_spawn_02_eff2,Start,,1.75,-1",
				OnCase02 = "tank_spawn_02,Teleport,,1.75,-1",
				OnCase02 = "player,$PlaySoundToSelf,ambient/halloween/thunder_04.wav,1.75,-1",
				OnCase02 = "tank_spawn_02_eff1,Stop,,1.8,-1",
				OnCase02 = "tank_spawn_02_eff2,Stop,,2,-1",
				OnCase03 = "tank_spawn_03_eff1,Start,,-1",
				OnCase03 = "player,$PlaySoundToSelf,misc/halloween_eyeball/book_spawn.wav,,-1",
				OnCase03 = "tank_spawn_03_eff2,Start,,1.75,-1",
				OnCase03 = "tank_spawn_03,Teleport,,1.75,-1",
				OnCase03 = "player,$PlaySoundToSelf,ambient/halloween/thunder_04.wav,1.75,-1",
				OnCase03 = "tank_spawn_03_eff1,Stop,,1.8,-1",
				OnCase03 = "tank_spawn_03_eff2,Stop,,2,-1",
				OnCase04 = "tank_spawn_04_eff1,Start,,-1",
				OnCase04 = "player,$PlaySoundToSelf,misc/halloween_eyeball/book_spawn.wav,,-1",
				OnCase04 = "tank_spawn_04_eff2,Start,,1.75,-1",
				OnCase04 = "tank_spawn_04,Teleport,,1.75,-1",
				OnCase04 = "player,$PlaySoundToSelf,ambient/halloween/thunder_04.wav,1.75,-1",
				OnCase04 = "tank_spawn_04_eff1,Stop,,1.8,-1",
				OnCase04 = "tank_spawn_04_eff2,Stop,,2,-1",
				OnCase05 = "tank_spawn_05_eff1,Start,,-1",
				OnCase05 = "player,$PlaySoundToSelf,misc/halloween_eyeball/book_spawn.wav,,-1",
				OnCase05 = "tank_spawn_05_eff2,Start,,1.75,-1",
				OnCase05 = "tank_spawn_05,Teleport,,1.75,-1",
				OnCase05 = "player,$PlaySoundToSelf,ambient/halloween/thunder_04.wav,1.75,-1",
				OnCase05 = "tank_spawn_05_eff1,Stop,,1.8,-1",
				OnCase05 = "tank_spawn_05_eff2,Stop,,2,-1",
				OnCase06 = "tank_spawn_06_eff1,Start,,-1",
				OnCase06 = "player,$PlaySoundToSelf,misc/halloween_eyeball/book_spawn.wav,,-1",
				OnCase06 = "tank_spawn_06_eff2,Start,,1.75,-1",
				OnCase06 = "tank_spawn_06,Teleport,,1.75,-1",
				OnCase06 = "player,$PlaySoundToSelf,ambient/halloween/thunder_04.wav,1.75,-1",
				OnCase06 = "tank_spawn_06_eff1,Stop,,1.8,-1",
				OnCase06 = "tank_spawn_06_eff2,Stop,,2,-1",
				OnCase07 = "tank_spawn_07_eff1,Start,,-1",
				OnCase07 = "player,$PlaySoundToSelf,misc/halloween_eyeball/book_spawn.wav,,-1",
				OnCase07 = "tank_spawn_07_eff2,Start,,1.75,-1",
				OnCase07 = "tank_spawn_07,Teleport,,1.75,-1",
				OnCase07 = "player,$PlaySoundToSelf,ambient/halloween/thunder_04.wav,1.75,-1",
				OnCase07 = "tank_spawn_07_eff1,Stop,,1.8,-1",
				OnCase07 = "tank_spawn_07_eff2,Stop,,2,-1",
				OnCase08 = "tank_spawn_08_eff1,Start,,-1",
				OnCase08 = "player,$PlaySoundToSelf,misc/halloween_eyeball/book_spawn.wav,,-1",
				OnCase08 = "tank_spawn_08_eff2,Start,,1.75,-1",
				OnCase08 = "tank_spawn_08,Teleport,,1.75,-1",
				OnCase08 = "player,$PlaySoundToSelf,ambient/halloween/thunder_04.wav,1.75,-1",
				OnCase08 = "tank_spawn_08_eff1,Stop,,1.8,-1",
				OnCase08 = "tank_spawn_08_eff2,Stop,,2,-1",
			
}
		
}
		Camera_Crew_Death 		{

			NoFixup = true,
			point_viewcontrol
			{

				angles "14 206 0"
				origin "2948 924 518"
				acceleration 0
				deceleration 0
				spawnflags 0
				targetname camera_gameover_1
				parentname camera_spin
				wait 5
				interpolatepositiontoplayer 0
				speed 0
			
}
			func_rotating
			{

				spawnflags 64
				maxspeed 1
				solidbsp 0
				rendermode 10
				targetname camera_spin
				origin "2948 924 518"
			
}
			game_text
			{

				targetname = "gameovertext",
				color = "222 222 222",
				color2 = "240 110 0",					fxtime = "8", 				holdtime = "30",
				spawnflags = "1",
				"channel" 2
				"effect" 2
				x = "0.4",
				y = "0.37",
			
}
			logic_case
			{

				targetname = "gameoverformat",
				case16 = "You survived % waves", 				ondefault = "gameovertext,$setkey$message,,0,-1",
				ondefault = "gameovertext,display,0,0,-1",
			
}
			point_viewcontrol
			{

				angles "23 298 0"
				origin "-2349 1008 479"
				acceleration 0
				deceleration 0
				spawnflags 0
				targetname camera_gameover_2
				wait 5
				parentname camera_spin_2
				interpolatepositiontoplayer 0
				speed 0
			
}
			func_rotating
			{

				spawnflags 66
				maxspeed 1
				solidbsp 0
				rendermode 10
				targetname camera_spin_2
				origin "-2349 1008 479"
			
}
			env_fade 			{

				targetname fade_out
				duration 2
				holdtime 0.5
				rendercolor "0 0 0" 			
}
			env_fade 
			{

				targetname fade_in
				duration 2
				holdtime 0.5
				spawnflags 1
				rendercolor "0 0 0"
			
}
			point_populator_interface
			{

				targetname populator
			
}
			logic_relay
			{

				targetname gameover
				startdisabled 1 							OnTrigger = "youwin,Disable,,1.5,-1",
				OnTrigger = "LMA,Disable,,3,-1",
				OnTrigger = "populator,PauseBotSpawning,,3,-1",
				OnTrigger = "player,$PlaySequence,victory,3,-1",
				OnTrigger = "bossstage_start,CancelPending,,3,-1",
				OnTrigger = "bossstage_start_tread,CancelPending,,3,-1",
				OnTrigger = "stage_clear_finale,CancelPending,,3,-1",
				OnTrigger = "stage_clear,CancelPending,,3,-1",
				OnTrigger = "player,$DisplayTextCenter,Game over,3,-1",
				OnTrigger = "roundformat,FireUser2,,3,-1",
				OnTrigger = "realtimer,FireUser2,,3,-1",
				OnTrigger = "realtimer,FireUser2,,3.7,-1",
				OnTrigger = "finale_snd,volume,0,3,-1",
				OnTrigger = "bossfight_snd,volume,0,3,-1",
				OnTrigger = "tankround_snd,volume,0,3,-1",
				OnTrigger = "fail_snd,PlaySound,,3,-1",
				OnTrigger = "fade_out,Fade,,6,-1",
				OnTrigger = "camera_gameover_1,$EnableAll,,8,-1",
				OnTrigger = "camera_spin,start,,8,-1",
				OnTrigger = "player,$PlaySequence,victoryb,8,-1",
				OnTrigger = "fade_in,Fade,,8,-1",
				OnTrigger = "fade_out,Fade,,13,-1",
				OnTrigger = "camera_spin,stop,,15,-1",
				OnTrigger = "camera_gameover_2,$EnableAll,,15,-1",
				OnTrigger = "camera_spin_2,start,,15,-1",
				OnTrigger = "player,$PlaySequence,victory,15,-1",
				OnTrigger = "fade_in,Fade,,15,-1",
				OnTrigger = "bots_win,RoundWin,,18.5,-1",
			
}
			logic_relay
			{

				targetname youwin
							OnTrigger = "finale_snd,volume,0,0,-1",
				OnTrigger = "player,$DisplayTextCenter,Game over,0,-1",
				OnTrigger = "gameover,Disable,,-1",
				OnTrigger = "roundformat,FireUser2,,0,-1",
				OnTrigger = "realtimer,FireUser2,,0,-1",
				OnTrigger = "realtimer,FireUser2,,0.7,-1",
				OnTrigger = "win_snd,PlaySound,,0,-1",
				OnTrigger = "fade_out,Fade,,13,-1",
				OnTrigger = "camera_gameover_1,$EnableAll,,15,-1",
				OnTrigger = "camera_spin,start,,15,-1",
				OnTrigger = "fade_in,Fade,,15,-1",
				OnTrigger = "fade_out,Fade,,20,-1",
				OnTrigger = "camera_spin,stop,,22,-1",
				OnTrigger = "camera_gameover_2,$EnableAll,,22,-1",
				OnTrigger = "camera_spin_2,start,,22,-1",
				OnTrigger = "fade_in,Fade,,22,-1",
				OnTrigger = "hologram_nuke_hurt,Enable,,25.5,-1",
				OnTrigger = "camera_spin_2,stop,,32,-1",
			
}
		
}
		FrearmPT 		{

			OnSpawnOutput
			{

				Target !activator
				Action $giveitem
				Param "Secondary Revolver" 
			
}
		
}
		ThundergunPT
		{

			OnSpawnOutput
			{

				Target thundergun_effect
				Action Start
			
}
			OnSpawnOutput
			{

				Target thundergun_hurt
				Action $SetOwner
				Param !activator
			
}
			OnSpawnOutput
			{

				Target thundergun*
				Action Kill
				Delay 0.35
			
}
			info_particle_system
			{

				targetname thundergun_effect
				effect_name utaunt_lightning_bolt
				angles "0 90 90"
			
}
			info_particle_system
			{

				targetname thundergun_effect
				effect_name utaunt_lightning_bolt
				angles "0 65 90"
			
}
			info_particle_system
			{

				targetname thundergun_effect
				effect_name utaunt_lightning_bolt
				angles "0 115 90"
			
}
			trigger_hurt
			{

				damage 5000
				damagetype 4194304
				targetname thundergun_hurt
				spawnflags 1
				nodmgforce 0
				filtername filter_blueteam
				mins "-128 -48 -24"
				maxs "128 48 24"
			
}
		
}
		Thundergun_2PT
		{

			OnSpawnOutput
			{

				Target thundergun_effect
				Action Start
			
}
			OnSpawnOutput
			{

				Target thundergun_hurt
				Action $SetOwner
				Param !activator
			
}
			OnSpawnOutput
			{

				Target thundergun*
				Action Kill
				Delay 0.35
			
}
			info_particle_system
			{

				targetname thundergun_effect
				effect_name utaunt_lightning_bolt
				angles "0 90 90"
			
}
			info_particle_system
			{

				targetname thundergun_effect
				effect_name utaunt_lightning_bolt
				angles "0 65 90"
			
}
			info_particle_system
			{

				targetname thundergun_effect
				effect_name utaunt_lightning_bolt
				angles "0 115 90"
			
}
			trigger_hurt
			{

				damage 9750
				damagetype 4194304
				targetname thundergun_hurt
				spawnflags 1
				nodmgforce 0
				filtername filter_blueteam
				mins "-128 -48 -24"
				maxs "128 96 24"
			
}
		
}
		MedicbagPT
		{

			dispenser_touch_trigger
			{

				spawnflags 1
				targetname "medicbag_aoe"
				origin "0 0 0"
				mins "-128 -128 -36"
				maxs "128 128 36"
			
}
			mapobj_cart_dispenser
			{

				spawnflags 12
				origin "0 -12 0"
				targetname medicbag_dispbeam
				TeamNum 2
				touch_trigger medicbag_aoe
			
}
			trigger_multiple
			{

				spawnflags 1
				filtername filter_notred
				origin "0 0 0"
				mins "-128 -128 -36"
				maxs "128 128 36"
				OnStartTouchAll "medicbag_aoe,Disable,,-1"
				OnEndTouchAll "medicbag_aoe,Enable,,3,-1"
			
}
		
}
	
	PlayerSpawnTemplate "PlayerTracker"
	SpawnTemplate "corelogic"
	SpawnTemplate "DummyMachines"
	SpawnTemplate "Spawn_things"
	SpawnTemplate "PlayersLeftLogic"  
	SpawnTemplate "tutorial"
	SpawnTemplate "BuildingBlocks"
	SpawnTemplate "Plate_Big"
	SpawnTemplate "Camera_Crew_Death"
	SpawnTemplate "DumpsterSpawner"
	
																				