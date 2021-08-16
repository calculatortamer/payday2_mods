if(Global.ctamer_host_name==nil)
then
Global.ctamer_host_name="test"
end
if(Global.ctamer_host_steamid==nil)
then
Global.ctamer_host_steamid="test"
end
if(Global.ctamer_host_ipaddress==nil)
then
Global.ctamer_host_ipaddress="test"
end

Hooks:PostHook(ClientNetworkSession, "request_join_host", "ctamer_get_host", function(ass)
	host_name_test=managers.network:session():server_peer():name()
	host_name_userid=managers.network:session():server_peer():user_id()
		
	
	if(host_name_test ~= nil)
	then
	Global.ctamer_host_name=host_name_test
	end
	if(host_name_test ~= nil)
	then
	Global.ctamer_host_steamid=host_name_userid
	end
end)

Hooks:PostHook(ClientNetworkSession,"on_join_request_reply","ctamer_get_ip_peers_lol_BHOK_version",function(ass)
	Global.ctamer_host_ipaddress=Network:get_ip_address_from_user_id(Global.ctamer_host_steamid)
	log("ctamer_banhost - Host Information - Name : " .. Global.ctamer_host_name .. " SteamID : " .. Global.ctamer_host_steamid .. " IP Address : " .. Global.ctamer_host_ipaddress)
end)
