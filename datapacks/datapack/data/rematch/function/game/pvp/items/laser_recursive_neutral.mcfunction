tp @s ^ ^ ^.75
particle minecraft:dust{color:[1.0f,0.2f,0.2f],scale:2.0f} ~ ~1.7 ~ 0.0 0.0 0.0 0 1 force

execute as @a[gamemode=adventure,distance=..2] unless entity @s[scores={math=0}] run tag @s add hit

scoreboard players add @s age 1
tag @s[scores={age=135..}] add die

execute unless entity @s[tag=die] if block ~ ~1.7 ~ #rematch:missile_do_not_explode at @s run function rematch:game/pvp/items/laser_recursive_neutral
return 1