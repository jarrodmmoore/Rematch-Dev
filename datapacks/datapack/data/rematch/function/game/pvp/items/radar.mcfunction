tag @s add self

execute if entity @s[team=players] run tag @a[gamemode=adventure,distance=..50,tag=!self] add target
execute if entity @s[team=redplayers] run tag @a[gamemode=adventure,distance=..50,team=blueplayers] add target
execute if entity @s[team=blueplayers] run tag @a[gamemode=adventure,distance=..50,team=redplayers] add target

playsound minecraft:block.beacon.activate master @a ~ ~ ~ 2 1.4

effect give @a[tag=target] minecraft:glowing 15 1 true

tag @a[tag=target] remove target
tag @s remove self

scoreboard players reset @s dropRadar
return 1