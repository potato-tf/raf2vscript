PointTemplates <-
{
	flag =
	{
        NoFixup = true,
		[0] =
		{
			prop_dynamic =
			{
				targetname = "testprop"
				model = "models/props_doomsday/australium_container.mdl"

				//outputs must be named like this if you have multiple of the same ones
				"OnCapTeam1#1" : "testflag,Skin,1,0,-1"
				"OnCapTeam1#2" : "testflag,Skin,0,0,-1"
				"OnCapTeam1#3" : "testflag,Skin,0,0,-1"
				"OnCapTeam1#4" : "testflag,Skin,0,0,-1"
			}
		},
		[1] =
		{
			prop_dynamic =
			{
				model = "models/props_doomsday/australium_container.mdl"
				skin = 1
				origin = Vector(0, 0, 20)
			}
		},
		[2] =
		{
			OnSpawnOutput =
			{
				Target = "testprop"
				Action = "Skin"
				Delay = 0
				Param = "2" //even if this is a number, this must be a string type
			}
		},
		[3] =
		{
			//if parented, will fire these outputs after the parent is killed,
			//can target internal entities ONLY if NoFixup is true
			//can target external entities regardless of fixup

			OnParentKilledOutput =
			{
				Target = "cap_master"
				Action = "RoundSpawn"
			}
		} 
	}
}