function IntimitateInteractionExt:_is_in_required_state(player)
	if self.tweak_data == "corpse_dispose" then
		return true
	end
	return IntimitateInteractionExt.super._is_in_required_state(self, player)
end
