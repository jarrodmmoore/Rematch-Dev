execute as @e[tag=Parkour_Easy] at @s if entity @a[distance=..12] run scoreboard players add @s Parkour_Easy_V 1
execute as @e[tag=Parkour_Easy] at @s unless entity @a[distance=..12] run scoreboard players set @s Parkour_Easy_V 0
execute as @e[tag=Parkour_Easy] at @s if entity @a[distance=..5] run scoreboard players add @s Parkour_Easy 1
execute as @e[tag=Parkour_Easy] at @s unless entity @a[distance=..5] run scoreboard players set @s Parkour_Easy 0

execute as @e[tag=Parkour_Easy,scores={Parkour_Easy_V=1}] at @s run item replace entity @s armor.head with minecraft:player_head[minecraft:custom_name='"Bright Green"',minecraft:item_name='{"extra":["Bright Green"],"text":"EMU"}',minecraft:profile={id:[I;42752491,-49461939,-1321196390,613691357],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzYxZTViMzMzYzJhMzg2OGJiNmE1OGI2Njc0YTI2MzkzMjM4MTU3MzhlNzdlMDUzOTc3NDE5YWYzZjc3In19fQ=="}]},minecraft:custom_data={emu_lock_name:'"Bright Green"'}]
execute as @e[tag=Parkour_Easy,scores={Parkour_Easy_V=0}] at @s run item replace entity @s armor.head with minecraft:air

execute as @e[tag=Parkour_Easy,scores={Parkour_Easy=1}] at @s run setblock ~ ~2 ~ minecraft:lime_stained_glass
execute as @e[tag=Parkour_Easy,scores={Parkour_Easy=0}] at @s run setblock ~ ~2 ~ minecraft:air

execute as @e[tag=Parkour_Easy,scores={Parkour_Easy=1}] at @s run particle minecraft:dust{color:[0.3f,0.8f,0.0f],scale:1.0f} ~ ~1.8 ~ 0.5 0.5 0.5 1 15 normal @a
execute as @e[tag=Parkour_Easy,scores={Parkour_Easy_V=1}] at @s run particle minecraft:dust{color:[0.3f,0.8f,0.0f],scale:1.0f} ~ ~1.8 ~ 0.5 0.5 0.5 1 3 normal @a
execute as @e[tag=Parkour_Easy,scores={Parkour_Easy=1}] at @s run playsound minecraft:block.stone.break player @a ~ ~1.8 ~ 1 1