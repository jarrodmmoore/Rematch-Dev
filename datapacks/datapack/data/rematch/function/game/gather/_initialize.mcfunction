scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] gameState 1
scoreboard players reset * currency
scoreboard objectives setdisplay sidebar currency

scoreboard objectives add extraCDelay dummy
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] extraCDelay 100

tag @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] add noparticles
tag @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] remove noPunch
gamerule showDeathMessages false

#send all players back to players team (still remembers their team request tags)
team modify players prefix [""]
team modify players friendlyFire false
team join players @a[team=!spectators]
team modify players color red

#clear all bossbars
bossbar set minecraft:menutimer players
bossbar set minecraft:readyprogress players
bossbar set minecraft:unreadyprogress players
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.blue

#decide event multiplier
scoreboard players reset @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] eventScore
execute if entity @e[tag=settings_stand,scores={eventsToggle=1}] run scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] eventScore = @e[tag=arenaStand,scores={arenaID=1..7},sort=random,limit=1] arenaID

#reset player ID's
function rematch:give_all_player_id

#summon player currency armor stands
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] itemID 2
function rematch:game/gather/currencystands
execute as @e[tag=currencystand] run scoreboard players operation @s math = @s playerID
scoreboard players reset @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] itemID

#gamerule naturalRegeneration true
gamerule drowningDamage true
gamerule fallDamage true

#guidebook
clear @a minecraft:written_book

tp @a[team=players] 1265 75 1212
effect give @a[team=players] minecraft:blindness 15 255 true
effect give @a[team=players] minecraft:slowness 16 255 true
function help:62c303cf151d5132af1d1fde4a0a19138c41432953b2d780eb9b1c61111956df
spawnpoint @a[team=players] 1260 75 1218
effect give @a minecraft:instant_health 1 100 true
scoreboard players set @a berries_picked 0

tp @a[team=spectators] 1260 125 1222
gamemode spectator @a[team=spectators]

function rematch:game/gather/clear_inventory
title @a[team=players] times 0 60 0
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] countdown 1
return 1