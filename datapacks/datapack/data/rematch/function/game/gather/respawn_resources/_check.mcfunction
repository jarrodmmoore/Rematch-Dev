scoreboard players operation @e[name=Global] isLivestock = @e[name=Global] globalTimer
scoreboard players operation @e[name=Global] isMonster = @e[name=Global] globalTimer
scoreboard players operation @e[name=Global] isLivestock %= @e[name=Global] math_30
scoreboard players operation @e[name=Global] isMonster %= @e[name=Global] math_minute
scoreboard players operation @e[name=Global] isStart = @e[name=Global] maxTime
scoreboard players operation @e[name=Global] isStart -= @e[name=Global] globalTimer
execute if entity @e[scores={isLivestock=0,isMonster=1..,isStart=1..},name=Global] run function rematch:game/gather/respawn_resources/30
execute if entity @e[scores={isMonster=0,isLivestock=0,isStart=1..},name=Global] run function rematch:game/gather/respawn_resources/60
return 1