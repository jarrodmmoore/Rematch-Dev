execute if entity @a[tag=winner,tag=we_chicken] run scoreboard players add @e[tag=we_c_egg] gameTime 1
execute if entity @a[tag=winner,tag=we_chicken] run scoreboard players add @e[tag=we_c_chicken] gameTime 1
execute if entity @e[type=minecraft:egg,tag=we_c_egg,scores={gameTime=20}] as @e[tag=we_c_egg,scores={gameTime=20}] at @s run summon minecraft:chicken ~ ~ ~ {Tags:["we_c_chicken"]}
kill @e[type=minecraft:egg,tag=we_c_egg,scores={gameTime=20}]
execute if entity @e[type=minecraft:chicken,tag=we_c_chicken,scores={gameTime=20}] as @e[type=minecraft:chicken,tag=we_c_chicken,scores={gameTime=20}] at @s run summon minecraft:creeper ~ ~ ~ {Fuse:0s}

return 1