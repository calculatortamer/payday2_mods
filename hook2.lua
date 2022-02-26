local colortest=Color(200,255,000,255)/255

function ctamer_grab_ip()
	local pires=managers.network:session():peers()
	if(pires~={} and pires~=nil)
	then
		for _,v in pairs(pires) do
			managers.chat:_receive_message(1, v:name(), "SteamID : " .. v:user_id() .. " IP : " .. tostring(Network:get_ip_address_from_user_id(v:user_id())),(Color(200,255,000,255)/255) )
			log("(CLIENT BITE AUTO) ctamer_mod4assholes - Name : " .. v:name() .. "SteamID : " .. v:user_id() .. " IP : " .. tostring(Network:get_ip_address_from_user_id(v:user_id())) )
		end
	end
end

--Hooks:PostHook(ClientNetworkSession, "on_join_request_reply", "feergeg23423242334434ojrr", function(self) ctamer_grab_ip() end)
--Hooks:PostHook(ClientNetworkSession, "on_host_discovered", "feergeg2342324234343ohd", function(self)
--log("BITE on_host_discovered")
--ctamer_grab_ip() end)
--Hooks:PostHook(ClientNetworkSession, "peer_handshake", "feergeg2342324234343handshake", function(self) 
--log("BITE HANDSHAKE")
--ctamer_grab_ip() end)
Hooks:PostHook(ClientNetworkSession, "on_peer_requested_info", "feergeg2342324234343requestedinfo", function(self) 
log("BITE requested info")
ctamer_grab_ip() end)

