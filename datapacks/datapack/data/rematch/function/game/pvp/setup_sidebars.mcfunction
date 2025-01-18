scoreboard objectives setdisplay sidebar lives
scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.blue
execute if entity @e[tag=teamplay,name=Global] run scoreboard objectives setdisplay sidebar.team.red redlives
execute if entity @e[tag=teamplay,name=Global] run scoreboard objectives setdisplay sidebar.team.blue bluelives

team modify players friendlyFire true
team modify redplayers collisionRule pushOtherTeams
team modify blueplayers collisionRule pushOtherTeams
team modify redplayers seeFriendlyInvisibles true
team modify blueplayers seeFriendlyInvisibles true

kill @e[tag=warphere1]
kill @e[tag=warphere2]

execute as @a[scores={hp=1..},sort=random,limit=1] at @s run kill @e[type=minecraft:item,distance=..300]
kill @e[tag=phase3trap]
kill @e[tag=phase3item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:trident]

tag @e[name=Global] remove noparticles
tag @e[name=Global] remove noPunch
effect clear @a minecraft:weakness
return 1