local discord = require('discordia')
local bot = discord.Client()

local Prefix = '!'

bot:on('ready', function()
    print('idk')
end)

bot:on('messageCreate', function(message)
    local msg = message.content:split(" ")
    local Users = message.mentionedUsers
    if msg[1] and msg[2] then
        if msg[1]:lower() == Prefix.."kick" then
            if #Users == 1 then
                message.channel:send("Successfully kicked <@"..Users[1][1].."> from the Server!")
                message.member.guild:kickUser(Users,_)
            elseif if #Users == 0 then
                message.channel:send("ERROR: you should tag a user.")
            end
        end
    end
end)

bot:run("Bot NzkwODA3OTk5MjQwMzM5NDc3.X-F_Vw.1cMLQtuXSvSpez1pLUjoQY2HSX8")
