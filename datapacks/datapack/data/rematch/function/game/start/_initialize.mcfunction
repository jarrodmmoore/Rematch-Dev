scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] gameState 0

scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyState 0
tag @a remove readyup

tag @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] remove noPunch
tag @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] remove noparticles
gamerule showDeathMessages false

#guidebook
clear @a minecraft:written_book

#misc stuff
stopsound @a
effect clear @a
execute as @a run attribute @s minecraft:jump_strength base reset
effect give @a minecraft:instant_health 1 100 true
#gamerule naturalRegeneration true
#function rematch:game/gather/clear_inventory
gamerule fallDamage false
tag @a remove requestRedTeam
tag @a remove requestBlueTeam
team join players @a[team=!spectators]
gamemode adventure @a[gamemode=!creative]
team modify players nametagVisibility always
team modify redplayers nametagVisibility always
team modify blueplayers nametagVisibility always
team modify redplayers collisionRule never
team modify blueplayers collisionRule never
team modify players friendlyFire false
worldborder set 10000000 0
kill @e[type=minecraft:axolotl]
kill @e[tag=currencystand]
xp add @a -3000
execute as @e[tag=rotated] run data merge entity @s {Fixed:0b,Item:{id:"minecraft:copper_ingot",count:1}}
execute as @e[tag=rotated,scores={info_timer=1..}] run scoreboard players reset @s info_timer
execute as @e[tag=rotated] run tag @s remove rotated

#clear inventories, leaving hats
function rematch:game/start/hats_tags_give
clear @a[gamemode=!creative]
function rematch:game/start/hats_tags_clear

#clear layouts
execute if entity @e[tag=layoutstand] as @e[tag=layoutstand] at @s run fill ~ ~ ~ -37 33 39 minecraft:air replace minecraft:chest
kill @e[tag=layoutstand]

#clear all bossbars
bossbar set minecraft:menutimer players
bossbar set minecraft:readyprogress players
bossbar set minecraft:unreadyprogress players
bossbar set minecraft:timer players
bossbar set minecraft:timeremaining players
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.blue

#resummon flamingo's spawn horse
kill @e[tag=FlamingosaurusHorse]
summon minecraft:horse 21 50 19 {OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Health:100.0f,Age:-25000,Tags:["FlamingosaurusHorse"]}
data merge entity @e[tag=FlamingosaurusHorse,limit=1] {Rotation:[30.0f,0.0f],Pose:{Head:[0.0f,0.0f,0.0f]}}
execute as @e[tag=FlamingosaurusHorse] at @s run rotate @s ~ ~30

#clear all previous vote options
tag @e[tag=chosenArena] remove chosenArena
tag @e[tag=voteOption] remove voteOption
tag @e[tag=vote1] remove vote1
tag @e[tag=vote2] remove vote2
tag @e[tag=vote3] remove vote3
scoreboard objectives remove voteCount
scoreboard objectives add voteCount dummy
tag @a remove playerVote1
tag @a remove playerVote2
tag @a remove playerVote3

#vote time is 30s (once players are ready)
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] voteTime 30

#lobby time is 40s (once players are ready)
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] gameTime 40

scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] oTimer 1

function rematch:game/start/reset_player_sb

#SHOOSH