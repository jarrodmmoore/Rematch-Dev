execute as @e[tag=Parkour_Hard] at @s if entity @a[distance=..12] run scoreboard players add @s Parkour_Hard_V 1
execute as @e[tag=Parkour_Hard] at @s unless entity @a[distance=..12] run scoreboard players set @s Parkour_Hard_V 0
execute as @e[tag=Parkour_Hard] at @s if entity @a[distance=..5] run scoreboard players add @s Parkour_Hard 1
execute as @e[tag=Parkour_Hard] at @s unless entity @a[distance=..5] run scoreboard players set @s Parkour_Hard 0

execute as @e[tag=Parkour_Hard,scores={Parkour_Hard_V=1}] at @s run item replace entity @s armor.head with minecraft:player_head[minecraft:custom_name='"Red"',minecraft:item_name='{"extra":["Red"],"text":"EMU"}',minecraft:profile={id:[I;1859912692,1910066376,-2043482960,-1942992270],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTdjMWYxZWFkNGQ1MzFjYWE0YTViMGQ2OWVkYmNlMjlhZjc4OWEyNTUwZTVkZGJkMjM3NzViZTA1ZTJkZjJjNCJ9fX0="}]},minecraft:custom_data={emu_lock_name:'"Red"'}]
execute as @e[tag=Parkour_Hard,scores={Parkour_Hard_V=0}] at @s run item replace entity @s armor.head with minecraft:air

execute as @e[tag=Parkour_Hard,scores={Parkour_Hard=1}] at @s run setblock ~ ~2 ~ minecraft:red_stained_glass
execute as @e[tag=Parkour_Hard,scores={Parkour_Hard=0}] at @s run setblock ~ ~2 ~ minecraft:air

execute as @e[tag=Parkour_Hard,scores={Parkour_Hard=1}] at @s run particle minecraft:dust{color:[0.9f,0.0f,0.0f],scale:1.0f} ~ ~1.8 ~ 0.5 0.5 0.5 1 15 normal @a
execute as @e[tag=Parkour_Hard,scores={Parkour_Hard_V=1}] at @s run particle minecraft:dust{color:[0.9f,0.0f,0.0f],scale:1.0f} ~ ~1.8 ~ 0.5 0.5 0.5 1 3 normal @a
execute as @e[tag=Parkour_Hard,scores={Parkour_Hard=1}] at @s run playsound minecraft:block.stone.break player @a ~ ~1.8 ~ 1 1