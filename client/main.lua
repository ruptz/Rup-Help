local alertsActive = true

function ChatNotification(icon, title, subtitle, message)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(message)
    SetNotificationMessage(icon, icon, false, 2, title, subtitle, "")
    DrawNotification(false, true)
    PlaySoundFrontend(-1, "GOON_PAID_SMALL", "GTAO_Boss_Goons_FM_SoundSet", 0)
    return true
end

RegisterCommand("togglehelp", function()
    alertsActive = not alertsActive
    if alertsActive then
        ChatNotification("CHAR_SOCIAL_CLUB", "System Help", "/togglehelp", "~g~ENABLED")
    else
        ChatNotification("CHAR_SOCIAL_CLUB", "System Help", "/togglehelp", "~r~DISABLED")
    end
end)

RegisterCommand("help", function()
    SetNuiFocus(true, true)
    SendNUIMessage({
        type = "openHelp"
    })
end)

RegisterNUICallback("closeHelp", function(data, cb)
    SetNuiFocus(false, false)
    cb("ok")
end)

Citizen.CreateThread(function()
    local randomHelp = math.random(#Config.Messages)
    while true do
        if alertsActive then
            ChatNotification("CHAR_SOCIAL_CLUB", "~y~System Help", "/togglehelp", Config.Messages[randomHelp])
            randomHelp = randomHelp + 1
            if randomHelp > #Config.Messages then
                randomHelp = 1
            end
        end
        Citizen.Wait(Config.WaitNoti * 60 * 1000) -- Convert minutes to milliseconds
    end
end)
