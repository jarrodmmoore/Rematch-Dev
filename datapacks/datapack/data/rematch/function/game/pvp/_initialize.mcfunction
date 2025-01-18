gamerule spectatorsGenerateChunks true

function rematch:game/pvp/reset_item_scoreboard
function rematch:give_all_player_id

#armor stand title visibility
#execute as @e[tag=phase2_text] run item replace entity @s armor.head with air

#Global / gamestate
scoreboard players set @e[name=Global] gameState 3
scoreboard players set @e[name=Global] countdown 0
scoreboard players set @e[name=Global] countdown2 0
tag @e[name=Global] remove bossbarGather
scoreboard players reset @e[name=Global] globalTimer
#scoreboard players set @e[name=Global] gameTime -40
tag @e[name=Global] remove teamplay
tag @e[name=Global] remove darkHUD
scoreboard objectives remove death
scoreboard objectives add death minecraft.custom:minecraft.deaths
function rematch:text/pvp/scoreboard_display_names
scoreboard players set @e[name=Global] loadingTimeout 0

tag @e[name=Global] add noparticles
tag @e[name=Global] add noPunch
gamerule showDeathMessages false

#set time
scoreboard players operation @e[name=Global] timeRemaining = @e[name=Global] optionTimePVP
worldborder set 10000000 0
scoreboard players set @e[name=Global] gameTime -300

#give all players lives
scoreboard players operation @a[team=!spectators] lives = @e[name=Global] optionLives
scoreboard players set @a[scores={lives=..1},team=!spectators] lives 1
tag @a[tag=eliminated] remove eliminated
effect give @a minecraft:instant_health 1 100 true

#clear saturation
effect clear @a minecraft:saturation

#guidebook
clear @a minecraft:written_book

#fix item frames in shop
execute as @e[tag=rotated] run data merge entity @s {Fixed:0b,Item:{id:"minecraft:copper_ingot",count:1}}
execute as @e[tag=rotated,scores={info_timer=1..}] run scoreboard players reset @s info_timer
execute as @e[tag=rotated] run tag @s remove rotated

#send all players back to players team for a second (still remembers their team request tags)
team modify players prefix [""]
team modify players color red
team modify players friendlyFire false
team join players @a[team=!spectators]
team modify redplayers collisionRule never
team modify blueplayers collisionRule never

#gamemodes
gamemode adventure @a[team=players]
gamemode spectator @a[team=spectators]

#clean the screen up
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.blue
title @a times 0 45 5
title @s subtitle [""]
title @s title [""]
title @s actionbar [""]
bossbar set minecraft:menutimer players
bossbar set minecraft:readyprogress players
bossbar set minecraft:unreadyprogress players
bossbar set minecraft:timeremaining players

#clear effects, then give blindness and invis for loading screen
function help:ac476149d96da1bb0d62bbcfbe1f2666bb0fd49f2cf83665028b317da1710321
clear @a minecraft:lime_concrete
clear @a minecraft:red_concrete
clear @a minecraft:carrot_on_a_stick
effect give @a minecraft:blindness 10000 1 true
effect give @a minecraft:invisibility 10000 1 true
effect give @a minecraft:weakness 10000 100 true
team modify spectators seeFriendlyInvisibles false
team modify players seeFriendlyInvisibles false
team modify playersRed seeFriendlyInvisibles false
team modify playersBlue seeFriendlyInvisibles false

#gamerules (this will be overwritten later)
gamerule drowningDamage true
gamerule fallDamage false
#these will NOT be overwritten
#gamerule naturalRegeneration false
gamerule keepInventory true

#make sure an arena is chosen if it wasn't already (also prevent mulitples)
execute unless entity @e[tag=chosenArena] run tag @e[tag=arenaStand,sort=random,limit=1] add chosenArena
tag @e[tag=thisArenaOnly] remove thisArenaOnly
tag @e[tag=chosenArena,limit=1] add thisArenaOnly
execute as @e[tag=thisArenaOnly] run tag @e[tag=chosenArena,tag=!thisArenaOnly] remove chosenArena
tag @e[tag=thisArenaOnly] remove thisArenaOnly

#chosen arena loads its stuff
execute as @e[tag=chosenArena] run function rematch:game/pvp/arenas/tp_index

#clear refund
#clear @a[team=players] gold_ingot
return 1