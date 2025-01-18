#0.5 chance
scoreboard players operation @e[name=Global] math = @e[tag=arenaStand,scores={arenaID=1..2},sort=random,limit=1] arenaID

execute if entity @e[scores={math=1},name=Global] run setblock ~ ~ ~ minecraft:bookshelf
return 1