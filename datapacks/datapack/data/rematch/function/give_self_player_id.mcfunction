execute unless entity @e[scores={playerID=2..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] playerID 2

scoreboard players operation @s playerID = @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] playerID
scoreboard players add @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] playerID 1
return 1