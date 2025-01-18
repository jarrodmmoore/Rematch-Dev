#create storage for layouts
execute if entity @e[scores={gameTime=-299},name=Global] run summon minecraft:armor_stand -37 33 39 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["layoutstand"]}
execute if entity @e[scores={gameTime=-299},name=Global] run scoreboard players set @e[tag=layoutstand] math2 20
execute if entity @e[scores={gameTime=-299},name=Global] run scoreboard players set @e[tag=layoutstand] layout_timer 320
execute if entity @e[scores={gameTime=-299},name=Global] as @a[team=!spectator] run scoreboard players add @e[tag=layoutstand] math 1
execute if entity @e[scores={gameTime=-299},name=Global] as @e[tag=layoutstand] at @s run function rematch:game/pvp/layoutrecursive

#prompt for user to create layout
scoreboard players remove @e[tag=layoutstand] layout_timer 1
scoreboard players operation @e[tag=layoutstand,limit=1] math = @e[tag=layoutstand,limit=1] layout_timer
scoreboard players operation @e[tag=layoutstand,limit=1] math /= @e[tag=layoutstand,limit=1] math2
title @a[team=!spectator] actionbar [{"text":"Arrange your inventory: ","color":"yellow","bold":true,"type":"text"},{"score":{"name":"@e[tag=layoutstand]","objective":"math"},"color":"gold","type":"score"},{"text":"s","color":"gold","bold":false,"type":"text"}]
execute if entity @e[scores={gameTime=-299},name=Global] as @a[team=!spectator] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 0

#playsound to emphasize time
execute if entity @e[scores={gameTime=-59},name=Global] as @a[team=!spectator] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1
execute if entity @e[scores={gameTime=-39},name=Global] as @a[team=!spectator] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.5
execute if entity @e[scores={gameTime=-19},name=Global] as @a[team=!spectator] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

#assign layout ID's to players
execute if entity @e[scores={gameTime=0},name=Global] run scoreboard players set @a[team=!spectator] layoutID 0
execute if entity @e[scores={gameTime=0},name=Global] run scoreboard players set @e[tag=layoutstand] layoutID 1
execute if entity @e[scores={gameTime=0},name=Global] run function rematch:game/pvp/layoutid

#copy layouts to chests
execute if entity @e[scores={gameTime=0},name=Global] run tp @e[tag=layoutstand] -37 33 39
execute if entity @e[scores={gameTime=0},name=Global] run scoreboard players reset @e[tag=layoutstand] math
execute if entity @e[scores={gameTime=0},name=Global] as @a[team=!spectator] run scoreboard players add @e[tag=layoutstand] math 1
execute if entity @e[scores={gameTime=0},name=Global] run scoreboard players set @e[tag=layoutstand] layoutID 0
execute if entity @e[scores={gameTime=0},name=Global] as @a[team=!spectator] run scoreboard players operation @s layoutID_temp = @s layoutID
execute if entity @e[scores={gameTime=0},name=Global] as @e[tag=layoutstand,limit=1] at @s run function rematch:game/pvp/loadlayouts
return 1