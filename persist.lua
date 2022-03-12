if(Global.ctamer_disable_autoready==nil) then
        Global.ctamer_disable_autoready=true
end
if(ctamer_disable_autoready==nil) then
        ctamer_disable_autoready=Global.ctamer_disable_autoready
end

if(Global.ctamer_autoready_delay==nil) then
        Global.ctamer_autoready_delay=Application:time()
end
if(Global.ctamer_autoready_delay>Application:time()) then
        Global.ctamer_autoready_delay=Application:time()
end

if(managers.menu_component._mission_briefing_gui~=nil and Application:time()>Global.ctamer_autoready_delay+1) then
        managers.menu_component._mission_briefing_gui:on_ready_pressed(nil)
        Global.ctamer_autoready_delay=Application:time()
end
