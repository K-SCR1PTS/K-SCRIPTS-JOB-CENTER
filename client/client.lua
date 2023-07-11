exports.ox_target:addSphereZone({
    coords = vec3(-261.25, -964.62, 31.22),
    size = vec3(2, 2, 2),
    rotation = 330,
    debug = false,
    options = {
        {
            name = 'open_jobcenter',
            event = 'k-scripts_jobcenter:open',
            icon = 'fas fa-sign-in-alt',
            label = 'Register'
        }
    }
})

AddEventHandler('k-scripts_jobcenter:setjob1', function(job)
	TriggerServerEvent("k-scripts_jobcenter:setjob1")
end)

AddEventHandler('k-scripts_jobcenter:setjob2', function(job)
	TriggerServerEvent("k-scripts_jobcenter:setjob2")
end)


AddEventHandler('k-scripts_jobcenter:setjob3', function(job)
	TriggerServerEvent("k-scripts_jobcenter:setjob3")
end)



RegisterNetEvent('k-scripts_jobcenter:open', function(job)
    lib.registerContext({
        id = 'jobcenter_menu',
        title = 'JOB CENTER',
        onExit = function()
        end,
        options = {
            {
                title = 'POLICE JOB',
                icon = 'fa-solid fa-handcuffs',
                image = 'https://s3-screenshots.int-cdn.lcpdfrusercontent.com/monthly_2020_07/271590_20200630222342_1.png.a17364b16fdc65230dace2ac5c95e808.png',
                onSelect = function(args)
                    lib.hideContext(onExit)
                    lib.progressBar({
                        duration = 5000,
                        label = 'You register at the office..',
                        position = 'bottom',
                        useWhileDead = false,
                        canCancel = false,
                        anim = {
                            dict = 'misscarsteal4@actor',
                            clip = 'actor_berating_loop'
                        },
                        disable = {
                            move = true,
                            car = false
                        },
                    })
                    lib.notify({
                        title = 'JOB CENTER',
                        description = 'Job successfully selected',
                        position = 'top',
                        icon = 'fa fa-check',
                        type = 'success'
                    })
                end,
                event = 'k-scripts_jobcenter:setjob1'     
            },
            {
                title = 'TRUCKER JOB',
                icon = 'fa-solid fa-truck',
                image = 'https://i.ytimg.com/vi/C7ZBhzgIVA0/maxresdefault.jpg',
                onSelect = function(args)
                    lib.hideContext(onExit)
                    lib.progressBar({
                        duration = 5000,
                        label = 'You register at the office..',
                        position = 'bottom',
                        useWhileDead = false,
                        canCancel = false,
                        anim = {
                            dict = 'misscarsteal4@actor',
                            clip = 'actor_berating_loop'
                        },
                        disable = {
                            move = true,
                            car = false
                        },
                    })
                    lib.notify({
                        title = 'JOB CENTER',
                        description = 'Job successfully selected',
                        position = 'top',
                        icon = 'fa fa-check',
                        type = 'success'
                    })
                end,
                event = 'k-scripts_jobcenter:setjob2'
            },
            {
                title = 'WEAZEL NEWS JOB',
                icon = 'fas fa-camera',
                image = 'https://i.ytimg.com/vi/oySDzlExvyA/maxresdefault.jpg',
                onSelect = function(args)
                    lib.hideContext(onExit)
                    lib.progressBar({
                        duration = 5000,
                        label = 'You register at the office..',
                        position = 'bottom',
                        useWhileDead = false,
                        canCancel = false,
                        anim = {
                            dict = 'misscarsteal4@actor',
                            clip = 'actor_berating_loop'
                        },
                        disable = {
                            move = true,
                            car = false
                        },
                    })
                    lib.notify({
                        title = 'JOB CENTER',
                        description = 'Job successfully selected',
                        position = 'top',
                        icon = 'fa fa-check',
                        type = 'success'
                    })
                end,
                event = 'k-scripts_jobcenter:setjob3'
            }
        }
    })
    lib.showContext('jobcenter_menu')
end)