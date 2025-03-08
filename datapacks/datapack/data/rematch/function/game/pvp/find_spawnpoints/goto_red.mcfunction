#pick a unique spawnpoint marked as red
tag @e[distance=..400,tag=playerSpawn,tag=redteam,tag=!spawnOccupy,sort=random,limit=1] add gotome

#no unique red spawnpoints? double up with a teammate
execute unless entity @e[tag=gotome] run tag @e[distance=..400,tag=playerSpawn,tag=redteam,sort=random,limit=1] add gotome

#no red spawnpoints? go to a unique random spawnpoint
execute unless entity @e[tag=gotome] run tag @e[distance=..400,tag=playerSpawn,tag=!spawnOccupy,sort=random,limit=1] add gotome

#no unique spawnpoints? go to a random spawnpoint
execute unless entity @e[tag=gotome] run tag @e[distance=..400,tag=playerSpawn,sort=random,limit=1] add gotome

tp @s @e[tag=gotome,sort=nearest,limit=1]
tag @e[tag=gotome] add spawnOccupy
tag @e[tag=gotome] remove gotome