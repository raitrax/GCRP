require "resources/mysql-async/lib/MySQL"

RegisterServerEvent("camerasc:checkCop")
AddEventHandler("camerasc:checkCop", function()

    local player = getPlayerID(source)
    

    MySQL.Async.fetchAll("SELECT * FROM users WHERE identifier = @player", {['@player'] = player},function(result)
        for _, c in pairs(result) do


              if(c.job == "police") then
                TriggerClientEvent("camerasc:isCop", source, true)
              else
                TriggerClientEvent("camerasc:isCop", source, false)
              end
        end
    end)
end)

function getPlayerID(source)
    local identifiers = GetPlayerIdentifiers(source)
    local player = getIdentifiant(identifiers)
    return player
end

-- gets the actual player id unique to the player,
-- independent of whether the player changes their screen name
function getIdentifiant(id)
    for _, v in ipairs(id) do
        return v
    end
end


