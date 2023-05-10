local v0;
v0 = hookmetamethod(game, "__namecall", function(v9, ...)
	local v10 = getnamecallmethod();
	local v11 = checkcaller();
	if ((v10 == "HttpGet") and v11) then
		warn("Running Loadstring!");
		return httpget(...);
	end
	return v0(v9, ...);
end);
