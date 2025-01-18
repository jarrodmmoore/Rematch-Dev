tag @s add self

execute if entity @s[team=players] run tag @a[gamemode=adventure,distance=..35,tag=!self] add target
execute if entity @s[team=redplayers] run tag @a[gamemode=adventure,distance=..35,team=blueplayers] add target
execute if entity @s[team=blueplayers] run tag @a[gamemode=adventure,distance=..35,team=redplayers] add target

playsound minecraft:entity.phantom.ambient master @a ~ ~ ~ 3 1
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 3 1.2

particle minecraft:cloud ~ ~1 ~ 0.1 0.3 0.1 1 100
particle minecraft:falling_dust{block_state:{Name:"minecraft:redstone_block"}} ~ ~1 ~ 10.0 2.0 10.0 1 150

scoreboard players set @a[tag=target] SPEEN 100
execute as @a[tag=target] at @s run particle minecraft:cloud ~ ~1 ~ 0.4 0.4 0.4 .01 10
execute as @a[tag=target] at @s run particle minecraft:falling_dust{block_state:{Name:"minecraft:snow_block"}} ~ ~1 ~ 0.4 0.4 0.4 .01 5

tag @a[tag=target] remove target
tag @s remove self

scoreboard players reset @s dropString
return 1