Hooks:PostHook(BlackMarketTweakData, "_init_melee_weapons", "equal_melees", function(ass)
	log("equal_melees : changing melee values")
	for _, meles in pairs(ass.melee_weapons) do		
		if(meles.stats~=nil and meles.tase_data==nil and meles.dot_data==nil and meles~=ass.melee_weapons.fists)
		then
			meles.stats.min_damage=(14*meles.repeat_expire_t)
			if(meles.stats.charge_time==0)
			then
			meles.stats.max_damage=meles.stats.min_damage
			else
			meles.stats.max_damage=45
			end
			meles.stats.min_damage_effect=1
			meles.stats.max_damage_effect=1
		end
	end
end)
