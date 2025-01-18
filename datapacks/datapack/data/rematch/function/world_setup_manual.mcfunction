#define teams, bossbars, scoreboard objectives, etc here
#useful in case we lose all of it but still have the datapack

#teams
team add players
#team modify players color red
team modify players friendlyFire true
team modify players collisionRule never
team modify players seeFriendlyInvisibles false
team add deadplayers
team modify deadplayers color dark_red
team modify deadplayers friendlyFire true
team modify deadplayers collisionRule never
team modify deadplayers seeFriendlyInvisibles true
team add spectators
#team modify spectators color gray
team modify spectators friendlyFire true
team modify spectators collisionRule never
team modify spectators seeFriendlyInvisibles true


#for editing spawnpoints...
scoreboard objectives add playerSpawn dummy


#damage indicators
scoreboard objectives add hpDummy dummy
scoreboard objectives add floatup dummy

#game join stuff
scoreboard objectives add join dummy
scoreboard objectives add hpSet dummy
scoreboard objectives add playersID dummy
scoreboard objectives add dummyID dummy

#very important game function
scoreboard objectives add gameState dummy
scoreboard objectives add carrotInput minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add inputCooldown dummy
scoreboard objectives add lives dummy
scoreboard objectives add optionLives dummy
scoreboard objectives add loadingTimeout dummy
scoreboard objectives add timeRemaning dummy
scoreboard objectives add timeMin dummy
scoreboard objectives add timeSec dummy
bossbar add timeremaining [""]

#items in phase 3
scoreboard objectives add brewingTime dummy
scoreboard objectives add dropClock minecraft.dropped:minecraft.clock
scoreboard objectives add dropMissile minecraft.dropped:minecraft.dispenser
scoreboard objectives add age dummy
scoreboard objectives add hitPlayer minecraft.custom:minecraft.damage_dealt
scoreboard objectives add dropEmeraldBlock minecraft.dropped:minecraft.emerald_block
scoreboard objectives add dropBerries minecraft.dropped:minecraft.sweet_berries
scoreboard objectives add dropFCoral minecraft.dropped:minecraft.fire_coral_block
scoreboard objectives add SPEEN dummy
scoreboard objectives add dropString minecraft.dropped:minecraft.string
scoreboard objectives add dropCompass minecraft.dropped:minecraft.compass
scoreboard objectives add dropFireball minecraft.dropped:minecraft.fire_charge
scoreboard objectives add dropDiamond minecraft.dropped:minecraft.diamond
scoreboard objectives add lightningRing dummy
scoreboard objectives add electrocute dummy
scoreboard objectives add coord_x dummy
scoreboard objectives add coord_y dummy
scoreboard objectives add coord_z dummy
scoreboard objectives add coord_dx dummy
scoreboard objectives add coord_dy dummy
scoreboard objectives add coord_dz dummy
scoreboard objectives add sinkHole dummy
scoreboard objectives add dropRedGlass minecraft.dropped:minecraft.red_stained_glass

#math.
scoreboard objectives add math dummy
scoreboard objectives add math2 dummy

#lobby stuff
scoreboard objectives add readyState dummy
scoreboard objectives add readyDummy dummy
scoreboard objectives add readyCount dummy
scoreboard objectives add readyRequired dummy
scoreboard objectives add playerCountA dummy
scoreboard objectives add oTimer dummy
scoreboard objectives add unReadyCount dummy
scoreboard objectives add countdown2 dummy

#lobby bossbar
bossbar add menutimer {"text":"name","type":"text"}
bossbar set minecraft:menutimer color white
bossbar set minecraft:menutimer style notched_10
bossbar set minecraft:menutimer max 800
bossbar add readyprogress {"text":"...","type":"text"}
bossbar add unreadyprogress {"text":"...","type":"text"}

#frequeny handling stuff for phase 1
scoreboard objectives add frequencyA dummy
scoreboard objectives add frequencyB dummy
scoreboard objectives add frequencyC dummy
scoreboard objectives add frequencyD dummy


#voting stuff
scoreboard objectives add voteTime dummy
scoreboard objectives add gameTime dummy
scoreboard objectives add arenaID dummy
scoreboard objectives add voteCount dummy
kill @e[tag=arenaStand]
execute as @e[type=!minecraft:player,limit=1,name=Global] at @s run summon minecraft:armor_stand ~ ~5 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["arenaStand","setvalue"]}
scoreboard players set @e[tag=setvalue] arenaID 1
tag @e[tag=setvalue] remove setvalue
execute as @e[type=!minecraft:player,limit=1,name=Global] at @s run summon minecraft:armor_stand ~ ~5 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["arenaStand","setvalue"]}
scoreboard players set @e[tag=setvalue] arenaID 2
tag @e[tag=setvalue] remove setvalue
execute as @e[type=!minecraft:player,limit=1,name=Global] at @s run summon minecraft:armor_stand ~ ~5 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["arenaStand","setvalue"]}
scoreboard players set @e[tag=setvalue] arenaID 3
tag @e[tag=setvalue] remove setvalue
execute as @e[type=!minecraft:player,limit=1,name=Global] at @s run summon minecraft:armor_stand ~ ~5 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["arenaStand","setvalue"]}
scoreboard players set @e[tag=setvalue] arenaID 4
tag @e[tag=setvalue] remove setvalue
execute as @e[type=!minecraft:player,limit=1,name=Global] at @s run summon minecraft:armor_stand ~ ~5 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["arenaStand","setvalue"]}
scoreboard players set @e[tag=setvalue] arenaID 5
tag @e[tag=setvalue] remove setvalue
execute as @e[type=!minecraft:player,limit=1,name=Global] at @s run summon minecraft:armor_stand ~ ~5 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["arenaStand","setvalue"]}
scoreboard players set @e[tag=setvalue] arenaID 6
tag @e[tag=setvalue] remove setvalue
execute as @e[type=!minecraft:player,limit=1,name=Global] at @s run summon minecraft:armor_stand ~ ~5 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["arenaStand","setvalue"]}
scoreboard players set @e[tag=setvalue] arenaID 7
tag @e[tag=setvalue] remove setvalue

#misc
scoreboard objectives add brewParticle dummy
return 1