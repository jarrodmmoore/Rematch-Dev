tag @s add trapcheck
scoreboard players set @a[gamemode=adventure,team=!spectators] math 0
execute as @a[gamemode=adventure,team=!spectators] run scoreboard players operation @s math = @s playerID
execute as @a[gamemode=adventure,team=!spectators] run scoreboard players operation @s math -= @e[tag=trapcheck,limit=1] playerID

execute if entity @s[tag=!reditem,tag=!blueitem] as @a[distance=..3] unless entity @s[scores={math=0}] run tag @s add target
execute if entity @s[tag=reditem] as @a[distance=..3,team=blueplayers] unless entity @s[scores={math=0}] run tag @s add target
execute if entity @s[tag=blueitem] as @a[distance=..3,team=redplayers] unless entity @s[scores={math=0}] run tag @s add target

execute if entity @s[tag=sinkhole] if entity @a[tag=target] run function rematch:game/pvp/items/traps/sink_hole

tag @a[tag=target] remove target
tag @s remove trapcheck

kill @s[tag=die]
return 1