execute as @e[tag=Green_Step,tag=!playernoparticle] run scoreboard players operation @s math = @e[tag=arenaStand,scores={arenaID=1..4},sort=random,limit=1] arenaID

execute as @e[tag=Green_Step,tag=!playernoparticle,scores={math=1}] at @s run particle minecraft:composter ~ ~ ~ 0.100 0.000 0.100 1 0 normal @a
execute as @e[tag=Green_Step,tag=!playernoparticle,scores={math=2}] at @s run particle minecraft:happy_villager ~ ~ ~ 0.100 0.000 0.100 1 0 normal @a
execute as @e[tag=Green_Step,tag=!playernoparticle,scores={math=3}] at @s run particle minecraft:totem_of_undying ~ ~ ~ 0.100 0.000 0.100 1 0 normal @a
execute as @e[tag=Green_Step,tag=!playernoparticle,scores={math=4}] at @s run particle minecraft:item_slime ~ ~ ~ 0.100 0.000 0.100 1 0 normal @a
return 1