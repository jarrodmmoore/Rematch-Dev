tag @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] remove teamplay

#if at least 1/2 of active players have requested a team, mode will be teamplay instead of ffa.

#calculate required players
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyDummy = @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] playerCountA
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math 2
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyDummy /= @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyRequired = @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyDummy
scoreboard players add @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyRequired 1
scoreboard players set @e[scores={readyRequired=..0},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyRequired 1

#calculate no. players on teams
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyDummy 0
execute as @a[tag=requestRedTeam,team=!spectators] run scoreboard players add @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyDummy 1
execute as @a[tag=requestBlueTeam,team=!spectators] run scoreboard players add @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyDummy 1
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyCount = @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyDummy

#take (ready players) - (required ready players)
#if result is 0 or greater, get the lobby enters into "ready" mode and track is selected
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyDummy -= @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyRequired
execute if entity @e[scores={readyDummy=0..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run tag @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] add teamplay

#less than 4 players? no teams.
execute if entity @e[scores={playerCountA=..3},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run tag @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] remove teamplay

#teams enabled? assign players to teams.
execute if entity @e[tag=teamplay,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/pvp/teams/assign_teams