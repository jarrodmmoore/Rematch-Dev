scoreboard players operation @s math = @s hp
scoreboard players operation @s math -= @s hpDummy

execute if entity @s[scores={math=1..}] at @s positioned ~ ~-.2 ~ run function rematch:damage_indicators/healed/index
execute if entity @s[scores={math=..-1}] at @s run function rematch:damage_indicators/hurt/index

scoreboard players operation @s hpDummy = @s hp