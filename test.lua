colortest=Color(200,255,000,255)/255

for _,v in pairs(managers.network:session():peers()) do
managers.chat:_receive_message(1, v:name(), "SteamID : " .. v:user_id() .. " IP : " .. Network:get_ip_address_from_user_id(v:user_id()),colortest)
--QuickMenu:new(v:name(),Network:get_ip_address_from_user_id(v:user_id()),{},true)
log("ctamer_mod4assholes - Name : " .. v:name() .. "SteamID : " .. v:user_id() .. " IP : " .. Network:get_ip_address_from_user_id(v:user_id()))
end

