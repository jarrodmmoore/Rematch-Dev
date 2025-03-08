tag @s add nohit
execute if entity @s[team=redplayers] run tag @a[team=redplayers] add nohit
execute if entity @s[team=blueplayers] run tag @a[team=blueplayers] add nohit

clear @s minecraft:fishing_rod[minecraft:custom_data~{Tags:["rumblerod"]}] 1

particle minecraft:falling_dust{block_state:{Name:"minecraft:white_concrete"}} ~ ~.2 ~ 1.0 .1 1.0 1 50
particle minecraft:falling_dust{block_state:{Name:"minecraft:gray_concrete"}} ~ ~.2 ~ 1.0 .1 1.0 1 50
playsound minecraft:entity.iron_golem.damage master @a ~ ~ ~ 3 .5
playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 3 .5

execute as @a[distance=..25,tag=!nohit] at @s run particle minecraft:falling_dust{block_state:{Name:"minecraft:white_concrete"}} ~ ~.2 ~ 1.0 .1 1.0 1 10
execute as @a[distance=..25,tag=!nohit] at @s run particle minecraft:falling_dust{block_state:{Name:"minecraft:gray_concrete"}} ~ ~.2 ~ 1.0 .1 1.0 1 10
effect give @a[distance=..25,tag=!nohit] minecraft:levitation 1 15 true
effect give @a[distance=..20,tag=!nohit] minecraft:levitation 1 25 true
effect give @a[distance=..15,tag=!nohit] minecraft:levitation 1 35 true
effect give @a[distance=..10,tag=!nohit] minecraft:levitation 1 41 true
effect give @a[distance=..5,tag=!nohit] minecraft:levitation 1 47 true
tag @a[distance=..25,tag=!nohit] add removelevitation
schedule function rematch:game/pvp/items/remove_levitation 5t

tag @e[tag=nohit] remove nohit

kill @e[tag=myBobber]