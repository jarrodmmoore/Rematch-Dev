#0.2 chance for podzol
#0.2 chance for coarse dirt
#0.59 chance for nothing
#0.01 chance for beetroot

scoreboard players operation @e[name=Global] math = @e[tag=arenaStand,scores={arenaID=1..5},sort=random,limit=1] arenaID
scoreboard players operation @e[name=Global] math2 = @e[tag=arenaStand,scores={arenaID=1..5},sort=random,limit=1] arenaID
scoreboard players operation @e[name=Global] randomSelect = @e[tag=arenaStand,scores={arenaID=1..4},sort=random,limit=1] arenaID

execute if entity @e[scores={math=1},name=Global] run setblock ~ ~ ~ minecraft:potatoes[age=7]
execute if entity @e[scores={math=2},name=Global] run setblock ~ ~ ~ minecraft:carrots[age=7]
execute if entity @e[scores={math=5,math2=5,randomSelect=4},name=Global] run setblock ~ ~ ~ minecraft:beetroots[age=3]
return 1