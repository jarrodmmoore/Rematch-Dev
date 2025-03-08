#lives
data merge block -9 51 35 {front_text:{messages:['{"text":"PVP Phase","clickEvent":{"action":"run_command","value":"/function rematch:cosmetics/set_default_lives"},"color":"dark_red","type":"text"}','{"text":"Lives","bold":true,"color":"red","type":"text"}','""','["",{"text":" ","bold":true,"color":"gold","type":"text"},{"score":{"name":"@e[name=Global]","objective":"optionLives"},"bold":true,"color":"gold","type":"score"},{"text":" ","bold":true,"color":"gold","type":"text"}]']}}
execute if entity @e[scores={optionLives=0},name=Global] run scoreboard players set @e[name=Global] optionLives 1

#time (pvp)
scoreboard players set @e[tag=settings_stand] math 1200
scoreboard players operation @e[tag=settings_stand] timePVPDisplay1 = @e[name=Global] optionTimePVP
scoreboard players operation @e[tag=settings_stand] timePVPDisplay1 /= @e[tag=settings_stand] math
#scoreboard players operation @e[tag=settings_stand] timePVPDisplay2 = @e[name=Global] optionTimePVP
#scoreboard players operation @e[tag=settings_stand] timePVPDisplay2 %= @e[tag=settings_stand] math
#scoreboard players set @e[tag=settings_stand] math 20
#scoreboard players operation @e[tag=settings_stand] timePVPDisplay2 %= @e[tag=settings_stand] math
#scoreboard players set @e[tag=settings_stand] math 10
#scoreboard players operation @e[tag=settings_stand] timePVPDisplay2 %= @e[tag=settings_stand] math
data merge block -9 51 34 {front_text:{messages:['{"text":"PVP Phase","clickEvent":{"action":"run_command","value":"/function rematch:cosmetics/set_default_time_pvp"},"color":"dark_red","type":"text"}','{"text":"Time","bold":true,"color":"green","type":"text"}','""','["",{"text":" ","bold":true,"color":"gold","type":"text"},{"score":{"name":"@e[tag=settings_stand]","objective":"timePVPDisplay1"},"bold":true,"color":"gold","type":"score"},{"text":":","bold":true,"color":"gold","type":"text"},{"score":{"name":"@e[tag=settings_stand]","objective":"timePVPDisplay2"},"bold":true,"color":"gold","type":"score"},{"text":"0 ","bold":true,"color":"gold","type":"text"}]']}}
execute if entity @e[scores={optionTimePVP=73200},name=Global] run scoreboard players set @e[name=Global] optionTimePVP 72000
execute if entity @e[scores={optionTimePVP=0},name=Global] run scoreboard players set @e[name=Global] optionTimePVP 1200


#time (gather)
scoreboard players set @e[tag=settings_stand] math_minute 60
scoreboard players operation @e[tag=settings_stand] minutes = @e[name=Global] optionGatherTime
scoreboard players operation @e[tag=settings_stand] minutes /= @e[tag=settings_stand] math_minute
data merge block -9 51 33 {front_text:{messages:['{"text":"Gathering Phase","clickEvent":{"action":"run_command","value":"/function rematch:cosmetics/set_default_time_gather"},"color":"dark_green","type":"text"}','{"text":"Time","bold":true,"color":"green","type":"text"}','""','["",{"text":" ","bold":true,"color":"gold","type":"text"},{"score":{"name":"@e[tag=settings_stand]","objective":"minutes"},"bold":true,"color":"gold","type":"score"},{"text":":00 ","bold":true,"color":"gold","type":"text"}]']}}
execute if entity @e[scores={optionGatherTime=3660},name=Global] run scoreboard players set @e[name=Global] optionGatherTime 3600
execute if entity @e[scores={optionGatherTime=0},name=Global] run scoreboard players set @e[name=Global] optionGatherTime 60