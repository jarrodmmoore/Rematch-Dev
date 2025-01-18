tag @s add immalaser

execute as @a[gamemode=adventure,team=!spectators] run scoreboard players operation @s math = @s playerID
execute as @a[gamemode=adventure,team=!spectators] run scoreboard players operation @s math -= @e[tag=immalaser,limit=1] playerID

execute if entity @s[tag=!reditem,tag=!blueitem] at @s run function rematch:game/pvp/items/laser_recursive_neutral
execute if entity @s[tag=reditem] at @s run function rematch:game/pvp/items/laser_recursive_red
execute if entity @s[tag=blueitem] at @s run function rematch:game/pvp/items/laser_recursive_blue



execute as @a[tag=hit] at @s run particle minecraft:dust{color:[1.0f,0.2f,0.2f],scale:2.0f} ~ ~1 ~ 0.5 0.5 0.5 0 1 force
execute as @a[tag=hit] at @s run playsound minecraft:entity.generic.burn master @a ~ ~ ~ 1 .75
effect give @a[tag=hit] minecraft:instant_damage 1 0 true

tag @e[tag=hit] remove hit
tag @e[tag=immalaser] remove immalaser

kill @s
return 1