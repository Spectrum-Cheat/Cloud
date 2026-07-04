-- [[( //  SPECTRUM CHEAT  |  GAME ROUTER SYSTEM  |  MADE BY xZPUHigh [ZPU]

--     ░██████╗██████╗░███████╗░█████╗░████████╗██████╗░██╗░░░██╗███╗░░░███╗
--     ██╔════╝██╔══██╗██╔════╝██╔══██╗╚══██╔══╝██╔══██╗██║░░░██║████╗░████║
--     ╚█████╗░██████╔╝█████╗░░██║░░╚═╝░░░██║░░░██████╔╝██║░░░██║██╔████╔██║
--     ░╚═══██╗██╔═══╝░██╔══╝░░██║░░██╗░░░██║░░░██╔══██╗██║░░░██║██║╚██╔╝██║
--     ██████╔╝██║░░░░░███████╗╚█████╔╝░░░██║░░░██║░░██║╚██████╔╝██║░╚═╝░██║

--     ░█████╗░██╗░░██╗███████╗░█████╗░████████╗  ░░██╗██████╗░
--     ██╔══██╗██║░░██║██╔════╝██╔══██╗╚══██╔══╝  ░██╔╝╚════██╗
--     ██║░░╚═╝███████║█████╗░░███████║░░░██║░░░  ██╔╝░░█████╔╝
--     ██║░░██╗██╔══██║██╔══╝░░██╔══██║░░░██║░░░  ╚██╗░░╚═══██╗
--     ╚█████╔╝██║░░██║███████╗██║░░██║░░░██║░░░   ░╚██╗██████╔╝

-- POWERED BY SPECTRUM ASSISTANT [AI] @SpectrumTrash , https://spectrumcheat.com  //  ]])

loadstring(game:HttpGet("https://raw.githubusercontent.com/Spectrum-Trash/Storage/main/SupportedGames.lua"))()

local Games     = getgenv().Games
local supported = false

if type(Games) == "table" then
    for PlaceID, Execute in pairs(Games) do
        if PlaceID == game.PlaceId then
            supported = true
            task.wait(0.1)
            loadstring(game:HttpGet(Execute))()
            break
        end
    end
end

if not supported then
    if setclipboard then setclipboard("https://discord.gg/hackerclub") end
    task.wait(0.5)
    game.Players.LocalPlayer:Kick(
        "[ SPECTRUM ASSISTANT ]\n" ..
        "━━━━━━━━━━━━━━━━━━━━━━━━\n" ..
        "❌  This game is not supported yet.\n" ..
        "Join our Discord for updates!\n" ..
        "🌐  https://discord.gg/hackerclub"
    )
end