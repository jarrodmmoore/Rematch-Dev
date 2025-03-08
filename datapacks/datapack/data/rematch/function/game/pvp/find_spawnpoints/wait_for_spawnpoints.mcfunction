tag @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] remove wegood

#make sure the first 11 spawnpoints are loaded before we get going
function rematch:game/pvp/find_spawnpoints/verify_spawnpoints/1

scoreboard players set @e[tag=!wegood,scores={loadingTimeout=..240},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] gameTime 61
scoreboard players add @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] loadingTimeout 1
tag @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] remove wegood