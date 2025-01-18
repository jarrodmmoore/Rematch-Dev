#0.16 chance for podzol
#0.33 chance for coarse dirt
#0.5 chance for farmland

scoreboard players operation @e[name=Global] math = @e[tag=arenaStand,scores={arenaID=1..6},sort=random,limit=1] arenaID

execute if entity @e[scores={math=1},name=Global] run setblock ~ ~ ~ minecraft:podzol
execute if entity @e[scores={math=2..3},name=Global] run setblock ~ ~ ~ minecraft:coarse_dirt
execute if entity @e[scores={math=4..6},name=Global] run setblock ~ ~ ~ minecraft:farmland
return 1