#try to avoid spawning next to enemy players

scoreboard players reset @s sinkHole

tag @s add self

tag @e[tag=dontspawnhere] remove dontspawnhere
execute if entity @s[team=redplayers] as @a[gamemode=adventure,team=blueplayers] at @s run tag @e[tag=playerSpawn,sort=nearest,limit=1] add dontspawnhere
execute if entity @s[team=blueplayers] as @a[gamemode=adventure,team=redplayers] at @s run tag @e[tag=playerSpawn,sort=nearest,limit=1] add dontspawnhere
execute if entity @s[team=players] as @a[gamemode=adventure,tag=!self,team=players] at @s run tag @e[tag=playerSpawn,sort=nearest,limit=1] add dontspawnhere

execute if entity @e[distance=..400,tag=playerSpawn,tag=!dontspawnhere] run tp @s @e[tag=playerSpawn,tag=!dontspawnhere,sort=random,limit=1]
execute unless entity @e[distance=..400,tag=playerSpawn,tag=!dontspawnhere] run tp @s @e[tag=playerSpawn,sort=furthest,limit=1]

tag @e[tag=dontspawnhere] remove dontspawnhere
tag @s remove self