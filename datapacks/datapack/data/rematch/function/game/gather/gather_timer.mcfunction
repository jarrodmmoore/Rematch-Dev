bossbar set timer visible true
bossbar set timer players @a
bossbar set timer color green
scoreboard players set @e[name=Global] timer 0
scoreboard players operation @e[name=Global] globalTimer = @e[name=Global] optionGatherTime
scoreboard players set @e[name=Global] math_colors 2
scoreboard players set @e[name=Global] math_minute 60
scoreboard players operation @e[name=Global] green = @e[name=Global] globalTimer
scoreboard players operation @e[name=Global] yellow = @e[name=Global] globalTimer
scoreboard players operation @e[name=Global] red = @e[name=Global] globalTimer
scoreboard players operation @e[name=Global] yellow /= @e[name=Global] math_colors
scoreboard players set @e[name=Global] math_colors 6
scoreboard players operation @e[name=Global] red /= @e[name=Global] math_colors
execute store result bossbar minecraft:timer max run scoreboard players get @e[limit=1,name=Global] globalTimer
scoreboard players set @e[name=Global] math_livestock 30
scoreboard players set @e[name=Global] math_monster 60
scoreboard players operation @e[name=Global] maxTime = @e[name=Global] globalTimer
scoreboard players set @e[name=Global] math_30 30
tag @e[name=Global] add secondsCount
return 1