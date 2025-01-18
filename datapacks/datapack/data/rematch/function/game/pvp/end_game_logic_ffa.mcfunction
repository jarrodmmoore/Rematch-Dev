scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math 0
execute as @a[gamemode=adventure,tag=!eliminated,team=!spectators] run scoreboard players add @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math 1

#if one player or less remains, end the game
execute if entity @e[tag=!noEnd,scores={math=..1},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] gameTime 100000
return 1