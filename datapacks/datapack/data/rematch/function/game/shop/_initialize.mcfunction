#Global / gamestate
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] gameState 2
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] countdown 0
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] countdown2 0
tag @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] remove bossbarGather
scoreboard players reset @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] globalTimer
worldborder set 10000000 0
function rematch:game/gather/reset_mon

scoreboard objectives remove readyShop
scoreboard objectives add readyShop dummy ["",{"text":"[Ready] ","color":"dark_green","bold":true,"type":"text"},{"text":"Players","color":"green","bold":true,"type":"text"}]

tag @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] add noparticles
tag @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] remove noPunch
gamerule showDeathMessages false
scoreboard players reset @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] globalTimer

#kill currency stands
kill @e[tag=currencystand]

#send all players back to players team (still remembers their team request tags)
team modify players prefix [""]
team modify players color red
team modify players friendlyFire false
team join players @a[team=!spectators]
effect give @a minecraft:instant_health 1 100 true

#guidebook
clear @a minecraft:written_book

#readyup system
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] gameTime 20
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyState 0
tag @a remove readyup

#clear all bossbars
bossbar set minecraft:menutimer players
bossbar set minecraft:readyprogress players
bossbar set minecraft:unreadyprogress players
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.blue

#gamerules
gamerule drowningDamage false
gamerule fallDamage false
#gamerule naturalRegeneration true

#clear inventories
clear @a[team=players] minecraft:stone_sword
clear @a[team=players] minecraft:iron_pickaxe
clear @a[team=players] minecraft:stone_axe
clear @a[team=players] minecraft:stone_hoe
clear @a[team=players] minecraft:fishing_rod
clear @a[team=players] minecraft:bowl
clear @a[team=players] minecraft:rabbit_stew
clear @a[team=players] minecraft:mushroom_stew
clear @a[team=players] minecraft:beetroot_soup
clear @a[team=players] minecraft:sea_lantern
clear @a[team=players] minecraft:redstone_block
effect clear @a[team=players] minecraft:speed
effect clear @a[team=players] minecraft:jump_boost
scoreboard players add @a currency 0

#initiate text
tag @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] add text_start2
title @a times 0 20 20

#reset @a on shop ready up
scoreboard players set @a readyShop 0