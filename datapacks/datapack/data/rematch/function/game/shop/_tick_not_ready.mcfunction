bossbar set minecraft:menutimer players
bossbar set minecraft:unreadyprogress players
execute if entity @e[scores={countdown2=320..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run bossbar set minecraft:readyprogress players @a

#cycle display
scoreboard players set @e[scores={oTimer=201..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] oTimer 0
scoreboard players add @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] oTimer 1

#bossbar display for required ready players
execute store result bossbar minecraft:readyprogress max run scoreboard players get @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyRequired
execute store result bossbar minecraft:readyprogress value run scoreboard players get @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyCount
function rematch:text/shop_messages/bossbar_ready_up