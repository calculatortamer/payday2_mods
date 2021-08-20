Hooks:PostHook(BlackMarketTweakData, "_init_melee_weapons", "equal_melees", function(ass)
	log("equal_melees : changing melee values")
	for _, meles in pairs(ass.melee_weapons) do		
		if(meles.stats~=nil and meles.tase_data==nil and meles.dot_data==nil)
		then
			meles.stats=ass.sandsteel.stats
		end
	end
end)
