tag @s add trapcheck
scoreboard players set @a[gamemode=adventure,team=!spectators] math 0
execute as @a[gamemode=adventure,team=!spectators] run scoreboard players operation @s math = @s playerID
execute as @a[gamemode=adventure,team=!spectators] run scoreboard players operation @s math -= @e[tag=trapcheck,limit=1] playerID

execute if entity @s[tag=!reditem,tag=!blueitem] as @a[gamemode=adventure,distance=..2] unless entity @s[scores={math=0}] run tag @s add target
execute if entity @s[tag=reditem] as @a[gamemode=adventure,distance=..2,team=blueplayers] unless entity @s[scores={math=0}] run tag @s add target
execute if entity @s[tag=blueitem] as @a[gamemode=adventure,distance=..2,team=redplayers] unless entity @s[scores={math=0}] run tag @s add target
tag @a[gamemode=adventure,distance=..2] add target2

execute if entity @s[tag=slownesstrap] if entity @a[tag=target] run function rematch:game/pvp/items/traps/slowness_trap
execute if entity @s[tag=poisontrap] if entity @a[tag=target] run function rematch:game/pvp/items/traps/poison_trap
execute if entity @s[tag=harmingtrap] if entity @a[tag=target] run function rematch:game/pvp/items/traps/harming_trap
execute if entity @s[tag=tnttrap] if entity @a[tag=target] run function rematch:game/pvp/items/traps/tnt_trap
execute if entity @s[tag=launchpad] if entity @a[tag=target2] run function rematch:game/pvp/items/traps/launch_pad

tag @a[tag=target] remove target
tag @a[tag=target2] remove target2
tag @s remove trapcheck

kill @s[tag=die]