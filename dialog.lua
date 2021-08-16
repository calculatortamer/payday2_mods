require("lib/managers/banlistmanager")

function ctamer_BanAssholeHost(id,name,ip)
	BanListManager:init()
        BanListManager:ban(id, name)
	QuickMenu:new("Automatic Ban","Added Name : " .. name .. " SteamID : " .. id .. " IP Address : " .. ip, {}, true)
	log("ctamer_banhost - BANNED - Name : " .. name .. " SteamID : " .. id .. " IP Address : " .. ip)
end

Hooks:PostHook(MenuManager, "show_peer_kicked_dialog", "ctamer_autoban_kick_dialog", function(ass)
	ctamer_BanAssholeHost(Global.ctamer_host_steamid, Global.ctamer_host_name, Global.ctamer_host_ipaddress)
end)
Hooks:PostHook(MenuManager, "show_peer_banned_dialog", "ctamer_autoban_ban_dialog", function(ass)
	ctamer_BanAssholeHost(Global.ctamer_host_steamid, Global.ctamer_host_name, Global.ctamer_host_ipaddress)
end)
