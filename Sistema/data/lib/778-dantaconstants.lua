dantasystem = {
	chargespell = {
		enable = true,
		storage = 54678,
		losspercent = {
			[1] = {20},
			[2] = {40, 30},
			[3] = {60, 50, 30}
		},
		maxcharges = 3,
		paralyzesegs = 2,
		vocs = {3, 7},
		multiplier = {
			[0] = {1000.0, 1000.0},
			[1] = {5.0, 10.0},
			[2] = {20.0, 100.0},
			[3] = {1000.0, 10000.0}
		},
		monstersEvents = {'chargesdeal'}
	},
	extraexpitem = {
		newrate  = 1.2
	},
	deathneartown = {
		use = true,
		townnumber = 3
	}	
}

dantaFuncName = {'dantaChargesGet','dantaChargesLose','dantaChargesGain','dantaChargesAttack','dantaItemExpDeEquip','dantaItemExpEquip'}