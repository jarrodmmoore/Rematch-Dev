execute unless entity @e[scores={playerID=2..},name=Global] run scoreboard players set @e[name=Global] playerID 2

scoreboard players operation @s playerID = @e[limit=1,name=Global] playerID
scoreboard players add @e[name=Global] playerID 1
return 1