#this is called once, sends up to 30 players to a unique pre-placed spawnpoint
#spawnpoints are utilized in a pre-difined order for game balance
#players will have to share a spawnpoint if there are more than 30

scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] playerSpawn 1

execute unless entity @e[scores={loadingTimeout=240..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[sort=random,team=players] at @s run function rematch:game/pvp/find_spawnpoints/player_find

#timed out and couldn't verify spawnpoints? send players to a random spawn, I guess
execute if entity @e[scores={loadingTimeout=240..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[sort=random,team=players] at @s run tp @s @e[distance=..400,tag=playerSpawn,sort=random,limit=1]
return 1