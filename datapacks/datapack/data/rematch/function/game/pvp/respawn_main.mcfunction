#try to avoid spawning next to enemy players

scoreboard players reset @s sinkHole
scoreboard players reset @s eatCookie
scoreboard players reset @s eatCookie2
scoreboard players reset @s eatGlowberries

clear @s
function rematch:game/pvp/restore_layout

execute as @e[type=minecraft:item,tag=given_id] run scoreboard players operation @s math = @s itemID
scoreboard players operation @e[type=minecraft:item,tag=given_id] math -= @s playerID
execute as @e[type=minecraft:item,tag=given_id,scores={math=0}] run kill @s
scoreboard players operation @e[tag=phase3trap] playerID -= @s playerID
execute as @e[tag=phase3trap,scores={playerID=0}] run kill @s
scoreboard players operation @e[tag=phase3trap] playerID += @s playerID

tag @s add self

tag @e[tag=dontspawnhere] remove dontspawnhere
execute if entity @s[team=redplayers] as @a[gamemode=adventure,team=blueplayers] at @s run tag @e[tag=playerSpawn,sort=nearest,limit=1] add dontspawnhere
execute if entity @s[team=blueplayers] as @a[gamemode=adventure,team=redplayers] at @s run tag @e[tag=playerSpawn,sort=nearest,limit=1] add dontspawnhere
execute if entity @s[team=players] as @a[gamemode=adventure,tag=!self,team=players] at @s run tag @e[tag=playerSpawn,sort=nearest,limit=1] add dontspawnhere

execute if entity @e[distance=..400,tag=playerSpawn,tag=!dontspawnhere] run tp @s @e[tag=playerSpawn,tag=!dontspawnhere,sort=random,limit=1]
execute unless entity @e[distance=..400,tag=playerSpawn,tag=!dontspawnhere] run tp @s @e[tag=playerSpawn,sort=furthest,limit=1]

tag @e[tag=dontspawnhere] remove dontspawnhere
tag @s remove self
return 1