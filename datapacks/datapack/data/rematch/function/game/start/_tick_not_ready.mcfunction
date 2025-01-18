bossbar set minecraft:menutimer players
bossbar set minecraft:unreadyprogress players
bossbar set minecraft:readyprogress players @a

clear @a minecraft:filled_map

#cycle display
scoreboard players set @e[scores={oTimer=201..},name=Global] oTimer 0
scoreboard players add @e[name=Global] oTimer 1

#bossbar display for required ready players
execute store result bossbar minecraft:readyprogress max run scoreboard players get @e[limit=1,name=Global] readyRequired
execute store result bossbar minecraft:readyprogress value run scoreboard players get @e[limit=1,name=Global] readyCount
function rematch:text/start/bossbar_ready_up
return 1