execute if entity @s[team=players] run tag @a[gamemode=adventure] add target
execute if entity @s[team=redplayers] run tag @a[gamemode=adventure,team=blueplayers] add target
execute if entity @s[team=blueplayers] run tag @a[gamemode=adventure,team=redplayers] add target

playsound minecraft:entity.vex.charge master @a ~ ~ ~ 2 .8
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 3 .7
particle minecraft:falling_dust{block_state:{Name:"minecraft:redstone_block"}} ^ ^1 ^1 0.5 0.5 0.5 1 20

execute as @a[tag=target,sort=random,limit=1] at @s run function rematch:explode
tag @a[tag=target] remove target

scoreboard players reset @s dropFCoral
return 1