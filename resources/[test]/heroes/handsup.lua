--[[------------------------------------------------------------------------
    Hands Up w/knees and other Animation Commands 
------------------------------------------------------------------------]]--
function loadAnimDict( dict )
    while ( not HasAnimDictLoaded( dict ) ) do
        RequestAnimDict( dict )
        Citizen.Wait( 5 )
    end
end 

RegisterNetEvent( 'wk:handsUp' )
AddEventHandler( 'wk:handsUp', function()
    local ped = GetPlayerPed( -1 )

    if ( DoesEntityExist( ped ) and not IsEntityDead( ped ) ) then 
        loadAnimDict( "ped" )

        if ( IsEntityPlayingAnim( ped, "ped", "handsup_base", 3 ) ) then
            ClearPedSecondaryTask( ped )
        else
            TaskPlayAnim( ped, "ped", "handsup_enter", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )

            while ( GetEntityAnimCurrentTime( ped, "ped", "handsup_enter" ) < 0.999999 ) do 
                Citizen.Wait( 0 )
            end 

            ClearPedTasks( ped )
            TaskPlayAnim( ped, "ped", "handsup_base", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
        end     
    end
end )