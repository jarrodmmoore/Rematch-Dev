execute at @s if entity @s[scores={layoutID=2..}] run tp @s ~2 ~ ~
scoreboard players remove @s layoutID 1
execute if entity @s[scores={layoutID=..1}] run tag @s add found
execute if entity @s[scores={layoutID=2..}] run function rematch:game/pvp/findlayout