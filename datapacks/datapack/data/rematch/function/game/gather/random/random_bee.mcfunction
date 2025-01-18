#0.1 chance
scoreboard players operation @e[name=Global] math = @e[tag=arenaStand,scores={arenaID=1..5},sort=random,limit=1] arenaID
scoreboard players operation @e[name=Global] math2 = @e[tag=arenaStand,scores={arenaID=1..2},sort=random,limit=1] arenaID

execute if entity @e[scores={math=1,math2=1},name=Global] run setblock ~ ~ ~ minecraft:bee_nest
return 1