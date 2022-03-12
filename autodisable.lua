Hooks:PostHook(ClientNetworkSession, "request_join_host", "ctamer_autodisableautoready", function(ass)
	Global.ctamer_disable_autohost=true
	--set it to false to enable it by default (NOT RECOMMENDED, ESPECIALLY IF YOU JOIN STEALTH LOBBIES)
	ctamer_disable_autohost=Global.ctamer_disable_autohost
end)
