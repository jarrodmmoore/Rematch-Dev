tag @e[tag=spawnOccupy] remove spawnOccupy
execute unless entity @e[scores={loadingTimeout=240..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[team=redplayers] at @s run function rematch:game/pvp/find_spawnpoints/goto_red
execute unless entity @e[scores={loadingTimeout=240..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[team=blueplayers] at @s run function rematch:game/pvp/find_spawnpoints/goto_blue
tag @e[tag=spawnOccupy] remove spawnOccupy

#timed out and couldn't verify spawnpoints? send players to a random spawn, I guess
execute if entity @e[scores={loadingTimeout=240..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[sort=random,team=players] at @s run tp @s @e[distance=..400,tag=playerSpawn,sort=random,limit=1]