local function SendMessage(url)
    local HttpService = game:GetService("HttpService")

    local headers = {
        ["Content-Type"] = "application/json"
    }

    local data = {
        ["embeds"] = {{
            ["title"] = "Script Ran",
            ["color"] = 65280,
            ["footer"] = {
                ["text"] = "Omega Hub!"
            }
        }}
    }

    local body = HttpService:JSONEncode(data)
    local response = request({
        Url = url,
        Method = "POST",
        Headers = headers,
        Body = body
    })
end
local webhook = "https://discord.com/api/webhooks/1244411645975855104/RzzcMHhQGodtBUl9i2BzY3Pqi9q5iaOsXZ1X5XxpbiZAe4ReHdLOmqOBgZPOMcGTgtEd"
SendMessage(webhook)
