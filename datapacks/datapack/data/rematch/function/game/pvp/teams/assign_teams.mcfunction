tag @a[tag=teamassigned] remove teamassigned

#figure out which team has more join requests, then start with that one
#note: in event of a tie, choose a random
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math 0
execute as @a[tag=requestRedTeam,team=!spectators] run scoreboard players add @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math 1
execute as @a[tag=requestBlueTeam,team=!spectators] run scoreboard players remove @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math 1

#tied? pick a random team to start with
execute if entity @e[scores={math=0},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run tag @e[tag=arenaStand,scores={arenaID=1..2},sort=random,limit=1] add pickrandomteam
execute if entity @e[tag=pickrandomteam,scores={arenaID=1}] run scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math -1
execute if entity @e[tag=pickrandomteam,scores={arenaID=2}] run scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math 1
tag @e[tag=pickrandomteam] remove pickrandomteam

execute if entity @e[scores={math=1..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/pvp/teams/pick_player_red
execute if entity @e[scores={math=..0},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/pvp/teams/pick_player_blue