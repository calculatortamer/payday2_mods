if(Global.ctamer_disable_autoready==nil) then
	Global.ctamer_disable_autoready=true
end
if(ctamer_disable_autoready==nil) then
	ctamer_disable_autoready=Global.ctamer_disable_autoready
end

if(managers.menu_component._mission_briefing_gui~=nil) then
	managers.menu_component._mission_briefing_gui:on_ready_pressed(nil)
end
