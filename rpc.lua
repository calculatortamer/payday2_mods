ConnectionNetworkHandler.ctamer_old_send_chat_msg=ConnectionNetworkHandler.send_chat_message

function ConnectionNetworkHandler:send_chat_message(channel_id, ...)
	if (channel_id==1) then
		ConnectionNetworkHandler:ctamer_old_send_chat_msg(channel_id, ...)
--	elseif (true) then
--		log("blocked channel " .. tostring(channel_id) .. " message :)")
	end
end
