local auto_pause_disabled=true
-- set this to false to enable it by default


if(ctamer_disable_autoready==nil) then
	Global.ctamer_disable_autoready=auto_pause_enabled
	ctamer_disable_autoready=Global.ctamer_disable_autoready
end

if(Global.ctamer_disable_autoready) then
	Global.ctamer_disable_autoready=false
	ctamer_disable_autoready=Global.ctamer_disable_autoready
--	QuickMenu:new("enabled", tostring(Global.ctamer_disable_autoready), {}, true)
	managers.chat:feed_system_message(ChatManager.GAME, "auto enable on")
else
	Global.ctamer_disable_autoready=true
	ctamer_disable_autoready=Global.ctamer_disable_autoready
--	QuickMenu:new("disabled", tostring(Global.ctamer_disable_autoready), {}, true)
	managers.chat:feed_system_message(ChatManager.GAME, "auto enable off")
end


