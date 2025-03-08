execute store result entity @s Motion[0] double 0.1 run scoreboard players get @s coord_dx
execute store result entity @s Motion[1] double 0.1 run scoreboard players get @s coord_dy
execute store result entity @s Motion[2] double 0.1 run scoreboard players get @s coord_dz

particle minecraft:flame ~ ~.15 ~ 0 0 0 0 1 force @a
particle minecraft:large_smoke ~ ~.15 ~ .03 .03 .03 .05 4
playsound minecraft:block.lava.extinguish master @a ~ ~ ~ .3 .3

tag @s add compare
execute as @a[gamemode=adventure] run scoreboard players operation @s math = @s playerID
execute as @a[gamemode=adventure] run scoreboard players operation @s math -= @e[tag=compare,limit=1] playerID
tag @s remove compare

execute if entity @s[tag=!reditem,tag=!blueitem] run effect give @a[gamemode=adventure,distance=..2,scores={math=1..}] minecraft:instant_damage 1 0 true
execute if entity @s[tag=!reditem,tag=!blueitem] run effect give @a[gamemode=adventure,distance=..2,scores={math=..-1}] minecraft:instant_damage 1 0 true
execute if entity @s[tag=reditem] run effect give @a[gamemode=adventure,distance=..2,team=blueplayers] minecraft:instant_damage 1 0 true
execute if entity @s[tag=blueitem] run effect give @a[gamemode=adventure,distance=..2,team=blueplayers] minecraft:instant_damage 1 0 true

execute if entity @s[tag=!reditem,tag=!blueitem] run tag @a[gamemode=adventure,distance=..3,scores={math=1..}] add target
execute if entity @s[tag=!reditem,tag=!blueitem] run tag @a[gamemode=adventure,distance=..3,scores={math=..-1}] add target
execute if entity @s[tag=reditem] run tag @a[gamemode=adventure,distance=..3,team=blueplayers] add target
execute if entity @s[tag=blueitem] run tag @a[gamemode=adventure,distance=..3,team=blueplayers] add target

execute as @a[tag=target] unless entity @s[scores={burn=1..}] run scoreboard players set @s burn 1

tag @a[tag=target] remove target

scoreboard players add @s age 1
kill @s[scores={age=120..}]