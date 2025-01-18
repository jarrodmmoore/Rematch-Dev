scoreboard players set @e[name=Global] math 0
execute as @a[gamemode=adventure,tag=!eliminated,team=redplayers] run scoreboard players add @e[name=Global] math 1

scoreboard players set @e[name=Global] math2 0
execute as @a[gamemode=adventure,tag=!eliminated,team=blueplayers] run scoreboard players add @e[name=Global] math2 1

#if either team drops to 0 living players, end the game
execute if entity @e[scores={math=..0},name=Global] run scoreboard players set @e[name=Global] gameTime 100000
execute if entity @e[scores={math2=..0},name=Global] run scoreboard players set @e[name=Global] gameTime 100000
return 1