execute if entity @a[gamemode=adventure,distance=..2] run data merge entity @s[type=minecraft:item] {PickupDelay:0}
scoreboard players add @s age 1
execute if score @s age matches 10.. run kill @s