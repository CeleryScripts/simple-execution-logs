local v2 = game:GetService("Players").LocalPlayer;
local v3 = false;
local v4 = identifyexecutor();
local v5 = game.Players.LocalPlayer;
local v6 = os.time();
local v7 = os.date("!*t", v6);
local v8 = {title="__**Execution Logs.**__",description="",type="rich",color=tonumber(16776960),thumbnail={url=("https://www.roblox.com/asset-thumbnail/image?assetId=" .. game.PlaceId .. "&width=768&height=432")},image={url=""},fields={{name="__Username__",value=v5.Name,inline=false},{name="__UserID__",value=v5.UserId,inline=false},{name="__GameID__",value=game.PlaceId,inline=false},{name="__JobID__",value=game.JobId,inline=false},{name="__Executor__",value=v4,inline=false},{name="__Device__",value=v1,inline=false}},footer={text="Execution logs",icon_url=""},timestamp=string.format("%d-%d-%dT%02d:%02d:%02dZ", v7.year, v7.month, v7.day, v7.hour, v7.min, v7.sec)};
((syn and syn.request) or http_request or http.request)({Url=webhook,Method="POST",Headers={["Content-Type"]="application/json"},Body=game:GetService("HttpService"):JSONEncode({content=Content,embeds={v8}})});
