#timer and lobby logic
scoreboard players set @e[scores={oTimer=21..},name=Global] oTimer 0
scoreboard players add @e[name=Global] oTimer 1

scoreboard players remove @e[scores={oTimer=20,gameTime=1..},name=Global] gameTime 1

bossbar set minecraft:menutimer max 20
execute store result bossbar minecraft:menutimer value run scoreboard players get @e[limit=1,name=Global] gameTime



#bossbar menu timer display
bossbar set minecraft:menutimer players @a
function rematch:text/shop_messages/bossbar_start_countdown


#bossbar showing how many players are needed to pause the menu
bossbar set minecraft:readyprogress players
bossbar set minecraft:unreadyprogress players @a[tag=!readyup,team=players]
scoreboard players set @e[name=Global] unReadyCount 0
execute as @a[tag=!readyup,team=players] run scoreboard players add @e[name=Global] unReadyCount 1
execute store result bossbar minecraft:unreadyprogress value run scoreboard players get @e[limit=1,name=Global] unReadyCount
execute store result bossbar minecraft:unreadyprogress max run scoreboard players get @e[limit=1,name=Global] readyRequired
function rematch:text/shop_messages/bossbar_unready_up



#time's up, start phase 3
execute if entity @e[scores={gameTime=0},name=Global] run function rematch:game/pvp/_initialize
return 1