scoreboard players set @e[name=Global] math 0
execute as @a[gamemode=adventure,tag=!eliminated,team=!spectators] run scoreboard players add @e[name=Global] math 1

#if one player or less remains, end the game
execute if entity @e[tag=!noEnd,scores={math=..1},name=Global] run scoreboard players set @e[name=Global] gameTime 100000
return 1