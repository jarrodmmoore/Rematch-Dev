scoreboard players set @s math 0
scoreboard players operation @s math = @e[tag=arenaStand,scores={arenaID=1..4},sort=random,limit=1] arenaID

execute if entity @s[scores={math=1}] at @s run summon minecraft:cod ~ ~2.5 ~ {NoGravity:1b,Motion:[0.0d,0.1d,0.0d],Tags:["we_f_fish"]}
execute if entity @s[scores={math=2}] at @s run summon minecraft:pufferfish ~ ~2.5 ~ {NoGravity:1b,Motion:[0.0d,0.1d,0.0d],Tags:["we_f_fish"]}
execute if entity @s[scores={math=3}] at @s run summon minecraft:tropical_fish ~ ~2.5 ~ {NoGravity:1b,Motion:[0.0d,0.1d,0.0d],Tags:["we_f_fish"]}
execute if entity @s[scores={math=4}] at @s run summon minecraft:salmon ~ ~2.5 ~ {NoGravity:1b,Motion:[0.0d,0.1d,0.0d],Tags:["we_f_fish"]}

scoreboard players reset @s math
return 1