-- created by the fbi
-- << settings >> 
local webhook = "" -- put your webhook here
-- << Dont Change. >> --
local namecall
namecall = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
	local caller = checkcaller()
    if method == "HttpGet" and caller then
		warn("Running Loadstring!")
          return httpget(...)
	end
    return namecall(self, ...)
end)
local device = ""
if game:GetService("UserInputService").TouchEnabled and game:GetService("UserInputService").KeyboardEnabled == false then
    device = "Mobile User"
else
	device = "PC or Console"
end
wait(1)
local LocalPlayer = game:GetService("Players").LocalPlayer
local IdentifyExecutor = false
local RetrieveExecutor = identifyexecutor()
local plr = game.Players.LocalPlayer
local OSTime = os.time()
local Time = os.date('!*t', OSTime)
local Embed = {
			["title"] = "__**Execution Logs.**__",
			["description"] = "",
			["type"] = "rich",
			["color"] = tonumber(0xffff00),
	                ["thumbnail"] = {
				["url"] = "https://www.roblox.com/asset-thumbnail/image?assetId="..game.PlaceId.."&width=768&height=432"
			},
			["image"] = {
				["url"] = ""
			},
			["fields"] = {
			    	{
					["name"] = "__Username__",
					["value"] = plr.Name,
					["inline"] = false
				},
							    	{
					["name"] = "__UserID__",
					["value"] = plr.UserId,
					["inline"] = false
				},
											    	{
					["name"] = "__GameID__",
					["value"] = game.PlaceId,
					["inline"] = false
				},
															    	{
					["name"] = "__JobID__",
					["value"] = game.JobId,
					["inline"] = false
				},
																			    	{
					["name"] = "__Executor__",
					["value"] = RetrieveExecutor,
					["inline"] = false
				},
																							    	{
					["name"] = "__Device__",
					["value"] = device,
					["inline"] = false
				}
			},
			["footer"] = {
			    ["text"] = "Execution logs",
			    ["icon_url"] = ""
			},
			["timestamp"] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
};
(syn and syn.request or http_request or http.request) {
    Url = webhook;
    Method = 'POST';
    Headers = {
        ['Content-Type'] = 'application/json';
    };
    Body = game:GetService'HttpService':JSONEncode({content = Content; embeds = {Embed}; });
};
