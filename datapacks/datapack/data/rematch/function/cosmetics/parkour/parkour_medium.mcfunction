execute as @e[tag=Parkour_Medium] at @s if entity @a[distance=..12] run scoreboard players add @s Parkour_Medium_V 1
execute as @e[tag=Parkour_Medium] at @s unless entity @a[distance=..12] run scoreboard players set @s Parkour_Medium_V 0
execute as @e[tag=Parkour_Medium] at @s if entity @a[distance=..5] run scoreboard players add @s Parkour_Medium 1
execute as @e[tag=Parkour_Medium] at @s unless entity @a[distance=..5] run scoreboard players set @s Parkour_Medium 0

execute as @e[tag=Parkour_Medium,scores={Parkour_Medium_V=1}] at @s run item replace entity @s armor.head with minecraft:player_head[minecraft:custom_name='"Yellow"',minecraft:item_name='{"extra":["Yellow"],"text":"EMU"}',minecraft:profile={id:[I;299415663,-1944303033,-1137432869,-1536947620],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTRjNDE0MWMxZWRmM2Y3ZTQxMjM2YmQ2NThjNWJjN2I1YWE3YWJmN2UyYTg1MmI2NDcyNTg4MThhY2Q3MGQ4In19fQ=="}]},minecraft:custom_data={emu_lock_name:'"Yellow"'}]
execute as @e[tag=Parkour_Medium,scores={Parkour_Medium_V=0}] at @s run item replace entity @s armor.head with minecraft:air

execute as @e[tag=Parkour_Medium,scores={Parkour_Medium=1}] at @s run setblock ~ ~2 ~ minecraft:yellow_stained_glass
execute as @e[tag=Parkour_Medium,scores={Parkour_Medium=0}] at @s run setblock ~ ~2 ~ minecraft:air

execute as @e[tag=Parkour_Medium,scores={Parkour_Medium=1}] at @s run particle minecraft:dust{color:[0.9f,0.7f,0.0f],scale:1.0f} ~ ~1.8 ~ 0.5 0.5 0.5 1 15 normal @a
execute as @e[tag=Parkour_Medium,scores={Parkour_Medium_V=1}] at @s run particle minecraft:dust{color:[0.9f,0.7f,0.0f],scale:1.0f} ~ ~1.8 ~ 0.5 0.5 0.5 1 3 normal @a
execute as @e[tag=Parkour_Medium,scores={Parkour_Medium=1}] at @s run playsound minecraft:block.stone.break player @a ~ ~1.8 ~ 1 1