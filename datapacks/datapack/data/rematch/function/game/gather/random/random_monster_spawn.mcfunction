#0.5 chance to increment

scoreboard players operation @e[name=Global] math = @e[tag=arenaStand,scores={arenaID=1..2},sort=random,limit=1] arenaID

execute if entity @e[scores={math=1},name=Global] run function rematch:game/gather/monster_selector
return 1