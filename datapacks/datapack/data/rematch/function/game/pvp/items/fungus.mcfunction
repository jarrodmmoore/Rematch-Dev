tag @s add self

execute if entity @s[team=players] run tag @a[gamemode=adventure,distance=..35,tag=!self] add target
execute if entity @s[team=redplayers] run tag @a[gamemode=adventure,distance=..35,team=blueplayers] add target
execute if entity @s[team=blueplayers] run tag @a[gamemode=adventure,distance=..35,team=redplayers] add target

playsound minecraft:ambient.cave master @a ~ ~ ~ 3 2
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 3 1.2

particle minecraft:large_smoke ~ ~1 ~ 0.1 0.3 0.1 1 100
particle minecraft:falling_dust{block_state:{Name:"minecraft:redstone_block"}} ~ ~1 ~ 10.0 2.0 10.0 1 150

effect give @a[tag=target] minecraft:wither 10 1
effect give @a[tag=target] minecraft:nausea 12 1
execute as @a[tag=target] at @s run particle minecraft:large_smoke ~ ~1 ~ 0.4 0.4 0.4 .01 10
execute as @a[tag=target] at @s run particle minecraft:falling_dust{block_state:{Name:"minecraft:redstone_block"}} ~ ~1 ~ 0.4 0.4 0.4 .01 5

tag @a[tag=target] remove target
tag @s remove self

scoreboard players reset @s dropVines