if(ctamer_disable_autoready==nil) then
	ctamer_disable_autoready=true
end

if(managers.menu_component._mission_briefing_gui~=nil) then
	managers.menu_component._mission_briefing_gui:on_ready_pressed(nil)
end
