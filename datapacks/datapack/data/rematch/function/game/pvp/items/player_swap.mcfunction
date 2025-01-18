tag @s add self

execute if entity @s[team=players] run tag @a[gamemode=adventure,tag=!self,sort=random,limit=1,team=players] add target
execute if entity @s[team=redplayers] run tag @a[gamemode=adventure,sort=random,limit=1,team=blueplayers] add target
execute if entity @s[team=blueplayers] run tag @a[gamemode=adventure,sort=random,limit=1,team=redplayers] add target

playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1.5 1
particle minecraft:falling_dust{block_state:{Name:"minecraft:purpur_block"}} ~ ~1 ~ 0.6 0.6 0.6 1 50
execute as @e[tag=target] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1.5 1
execute as @e[tag=target] at @s run particle minecraft:falling_dust{block_state:{Name:"minecraft:purpur_block"}} ~ ~1 ~ 0.6 0.6 0.6 1 50

execute at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["warphere1"]}
execute as @a[tag=target,limit=1] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["warphere2"]}

#rise out of potential sinkhole
execute if entity @a[tag=target,scores={sinkHole=1..}] run scoreboard players set @s sinkHole 101

tp @a[tag=target] @e[tag=warphere1,limit=1]
tp @s @e[tag=warphere2,limit=1]

kill @e[tag=warphere1]
kill @e[tag=warphere2]

particle minecraft:falling_dust{block_state:{Name:"minecraft:purpur_block"}} ~ ~1 ~ 0.6 0.6 0.6 1 50

tag @a[tag=target] remove target
tag @s remove self

scoreboard players reset @s dropClock
return 1