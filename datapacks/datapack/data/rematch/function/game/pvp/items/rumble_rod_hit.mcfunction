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
function help:a61514910670d0292124b6895839deb9922ddd1ab64dfa2812f729884e34c8f1
function help:1d4cff671caa50e96e3cd0b214d0285befc9338b6ca6a82f444a14803fb59b9b
function help:164ce7e573e933e3d4f9e7061c2f1d0517dc62fd4467b522fe79fc4d16dd32f1
function help:9b3c04bcf252f5b155d9b93b781a9009dfbb66120a5b5cfc7d4c43bc177d8616
function help:403a47c272b8c039f273268946ccc0a5fb8aa62f9caeb65a908c128e4fa646d0
tag @a[distance=..25,tag=!nohit] add removelevitation
schedule function rematch:game/pvp/items/remove_levitation 5t

tag @e[tag=nohit] remove nohit

kill @e[tag=myBobber]
return 1