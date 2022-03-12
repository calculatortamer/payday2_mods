local auto_pause_enabled=false
-- set this to false to enable it by default


if(ctamer_disable_autoready==nil) then
	ctamer_disable_autoready=auto_pause_enabled
end

if(ctamer_disable_autoready) then
	ctamer_disable_autoready=false
--	QuickMenu:new("enabled", tostring(ctamer_disable_autoready), {}, true)
	managers.chat:feed_system_message(ChatManager.GAME, "auto enable on")
else
	ctamer_disable_autoready=true
--	QuickMenu:new("disabled", tostring(ctamer_disable_autoready), {}, true)
	managers.chat:feed_system_message(ChatManager.GAME, "auto enable off")
end


