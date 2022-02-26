local colortest=Color(200,255,000,255)/255

function ctamer_grab_ip()
	local pires=managers.network:session():peers()
	if(pires~={} and pires~=nil)
	then
		for _,v in pairs(pires) do
			managers.chat:_receive_message(1, v:name(), "SteamID : " .. v:user_id() .. " IP : " .. tostring(Network:get_ip_address_from_user_id(v:user_id())),(Color(200,255,000,255)/255) )
			log("(BITE AUTO) ctamer_mod4assholes - Name : " .. v:name() .. "SteamID : " .. v:user_id() .. " IP : " .. tostring(Network:get_ip_address_from_user_id(v:user_id())) )
		end
	end
end

Hooks:PostHook(BaseNetworkSession, "add_peer", "feergeg234232423", function(self) ctamer_grab_ip() end)
--Hooks:PostHook(NetworkManager, "on_peer_added", "feergeg234232425", function(self) ctamer_grab_ip() end)
Hooks:PostHook(BaseNetworkSession, "on_peer_entered_lobby", "feergeg234232424",function(self) ctamer_grab_ip() end)

