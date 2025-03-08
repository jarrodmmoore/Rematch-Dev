#pick a unique spawnpoint marked as blue
tag @e[distance=..400,tag=playerSpawn,tag=blueteam,tag=!spawnOccupy,sort=random,limit=1] add gotome

#no unique blue spawnpoints? double up with a teammate
execute unless entity @e[tag=gotome] run tag @e[distance=..400,tag=playerSpawn,tag=blueteam,sort=random,limit=1] add gotome

#no blue spawnpoints? go to a unique random spawnpoint
execute unless entity @e[tag=gotome] run tag @e[distance=..400,tag=playerSpawn,tag=!spawnOccupy,sort=random,limit=1] add gotome

#no unique spawnpoints? go to a random spawnpoint
execute unless entity @e[tag=gotome] run tag @e[distance=..400,tag=playerSpawn,sort=random,limit=1] add gotome

tp @s @e[tag=gotome,sort=nearest,limit=1]
tag @e[tag=gotome] add spawnOccupy
tag @e[tag=gotome] remove gotome