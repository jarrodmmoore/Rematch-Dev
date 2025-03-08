execute as @e[tag=Parkour_Easy_E] at @s if entity @a[distance=..12] run scoreboard players add @s Parkour_Easy_V 1
execute as @e[tag=Parkour_Easy_E] at @s unless entity @a[distance=..12] run scoreboard players set @s Parkour_Easy_V 0
execute as @e[tag=Parkour_Easy_E] at @s if entity @a[distance=..5] run scoreboard players add @s Parkour_Easy 1
execute as @e[tag=Parkour_Easy_E] at @s unless entity @a[distance=..5] run scoreboard players set @s Parkour_Easy 0

execute as @e[tag=Parkour_Easy_E,scores={Parkour_Easy_V=1}] at @s run item replace entity @s armor.head with minecraft:player_head[minecraft:custom_name='"White Block"',minecraft:item_name='{"extra":["White Block"],"text":"EMU"}',minecraft:profile={id:[I;-2006423508,1557676815,-1392063891,-1370946579],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTVhNzcwZTdlNDRiM2ExZTZjM2I4M2E5N2ZmNjk5N2IxZjViMjY1NTBlOWQ3YWE1ZDUwMjFhMGMyYjZlZSJ9fX0="}]},minecraft:custom_data={emu_lock_name:'"White Block"'}]
execute as @e[tag=Parkour_Easy_E,scores={Parkour_Easy_V=0}] at @s run item replace entity @s armor.head with minecraft:air

execute as @e[tag=Parkour_Easy_E,scores={Parkour_Easy=1}] at @s run setblock ~ ~2 ~ minecraft:white_stained_glass
execute as @e[tag=Parkour_Easy_E,scores={Parkour_Easy=0}] at @s run setblock ~ ~2 ~ minecraft:air

execute as @e[tag=Parkour_Easy_E,scores={Parkour_Easy=1}] run setblock -14 73 -30 minecraft:birch_wall_sign[facing=north]{front_text:{messages:['{"text":"","clickEvent":{"action":"run_command","value":"/tellraw @s [\\"\\",{\\"text\\":\\"\\\\n\\",\\"type\\":\\"text\\"},{\\"text\\":\\"\\\\u2714 \\",\\"italic\\":true,\\"color\\":\\"dark_green\\",\\"type\\":\\"text\\"},{\\"text\\":\\"Nice work! You have completed the \\",\\"italic\\":true,\\"type\\":\\"text\\"},{\\"text\\":\\"EASY\\",\\"bold\\":true,\\"italic\\":true,\\"color\\":\\"dark_green\\",\\"type\\":\\"text\\"},{\\"text\\":\\" section of the parkour!\\",\\"italic\\":true,\\"type\\":\\"text\\"},{\\"text\\":\\"\\\\n \\",\\"type\\":\\"text\\"}]"},"type":"text"}','{"text":"[CLICK]","clickEvent":{"action":"run_command","value":"/tp @s 5 57 -36 270 0"},"bold":true,"color":"dark_green","type":"text"}','{"text":"","clickEvent":{"action":"run_command","value":"/execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2"},"type":"text"}','""']}}
execute as @e[tag=Parkour_Easy_E,scores={Parkour_Easy=0}] run setblock -14 73 -30 minecraft:air

execute as @e[tag=Parkour_Easy_E,scores={Parkour_Easy=1}] at @s run particle minecraft:dust{color:[0.9f,0.9f,0.9f],scale:1.0f} ~ ~1.8 ~ 0.5 0.5 0.5 1 15 normal @a
execute as @e[tag=Parkour_Easy_E,scores={Parkour_Easy_V=1}] at @s run particle minecraft:dust{color:[0.9f,0.9f,0.9f],scale:1.0f} ~ ~1.8 ~ 0.5 0.5 0.5 1 3 normal @a
execute as @e[tag=Parkour_Easy_E,scores={Parkour_Easy=1}] at @s run playsound minecraft:block.note_block.pling player @a ~ ~1.8 ~ 1 2