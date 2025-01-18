execute at @s run setblock ~ ~ ~ minecraft:chest[type=left]{lock:{components:{"minecraft:item_name":'{"extra":["locked"],"text":"EMU"}'}}}

execute at @s run tp @s ~1 ~ ~
execute at @s run setblock ~ ~ ~ minecraft:chest[type=right]{lock:{components:{"minecraft:item_name":'{"extra":["locked"],"text":"EMU"}'}}}

execute at @s run tp @s ~1 ~ ~
scoreboard players remove @s math 1
execute unless entity @s[scores={math=0}] run function rematch:game/pvp/layoutrecursive
return 1