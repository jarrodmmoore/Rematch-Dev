scoreboard players remove @s lightningRing 1

tag @s add self
execute if entity @s[team=players] run tag @a[gamemode=adventure,distance=..4,tag=!self,team=players] add target
execute if entity @s[team=redplayers] run tag @a[gamemode=adventure,distance=..4,team=blueplayers] add target
execute if entity @s[team=blueplayers] run tag @a[gamemode=adventure,distance=..4,team=redplayers] add target

execute as @a[tag=target] unless entity @s[scores={electrocute=1..}] run scoreboard players set @s electrocute 1

particle minecraft:end_rod ~ ~.5 ~ 2.0 0 2.0 .01 20

tag @s remove self
tag @a[tag=target] remove target