-- auto disable mod when joining a new lobby
Hooks:PostHook(ClientNetworkSession, "request_join_host", "ctamer_autodisableautoready", function(ass)
	ctamer_disable_autohost=true
	--set it to false to enable it by default (NOT RECOMMENDED, ESPECIALLY IF YOU JOIN STEALTH LOBBIES)
end)
