scoreboard players set @s math 0
scoreboard players operation @s math = @e[tag=arenaStand,scores={arenaID=1..5},sort=random,limit=1] arenaID

execute if entity @s[scores={math=1}] at @s run summon minecraft:snowball ~ ~1.8 ~ {NoGravity:1b,Invisible:1b,Motion:[0.0d,0.5d,0.0d],Tags:["we_s_streamer"]}
execute if entity @s[scores={math=2}] at @s run summon minecraft:snowball ~ ~1.8 ~ {NoGravity:1b,Invisible:1b,Motion:[0.5d,0.5d,0.0d],Tags:["we_s_streamer"]}
execute if entity @s[scores={math=3}] at @s run summon minecraft:snowball ~ ~1.8 ~ {NoGravity:1b,Invisible:1b,Motion:[-0.5d,0.5d,0.0d],Tags:["we_s_streamer"]}
execute if entity @s[scores={math=4}] at @s run summon minecraft:snowball ~ ~1.8 ~ {NoGravity:1b,Invisible:1b,Motion:[0.0d,0.5d,0.5d],Tags:["we_s_streamer"]}
execute if entity @s[scores={math=5}] at @s run summon minecraft:snowball ~ ~1.8 ~ {NoGravity:1b,Invisible:1b,Motion:[0.0d,0.5d,-0.5d],Tags:["we_s_streamer"]}

scoreboard players reset @s math
return 1