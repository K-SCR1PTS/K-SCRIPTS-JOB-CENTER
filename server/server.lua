ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("k-scripts_jobcenter:setjob1") 
AddEventHandler('k-scripts_jobcenter:setjob1', function(job)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.setJob(Config.job1, 0)
end)

RegisterServerEvent("k-scripts_jobcenter:setjob2") 
AddEventHandler('k-scripts_jobcenter:setjob2', function(job)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.setJob(Config.job2, 0)

end)

RegisterServerEvent("k-scripts_jobcenter:setjob3") 
AddEventHandler('k-scripts_jobcenter:setjob3', function(job)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.setJob(Config.job3, 0)

end)