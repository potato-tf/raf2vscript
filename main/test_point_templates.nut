PointTemplates <- 
{
	flag =
	{
		NoFixup = 1,
		[0] =
		{
			prop_dynamic =
			{
				targetname = "testprop",
				model = "models/props_doomsday/australium_container.mdl",
				"OnCapTeam1#1" : "testflag,Skin,1,0,-1",
				"OnCapTeam1#2" : "testflag,Skin,0,0,-1",
				"OnCapTeam1#3" : "testflag,Skin,0,0,-1",
				"OnCapTeam1#4" : "testflag,Skin,0,0,-1",
			},
		},
		[1] =
		{
			prop_dynamic =
			{
				model = "models/props_doomsday/australium_container.mdl",
				skin = 1,
				origin = "Vector(0,",
				0, = "20)",
			},
		},
		[2] =
		{
			OnSpawnOutput =
			{
				Target = "testprop",
				Action = "Skin",
				Delay = 0,
				Param = 2,
			},
		},
		[3] =
		{
			OnParentKilledOutput =
			{
				Target = "cap_master",
				Action = "RoundSpawn",
			},
		},
	},
}