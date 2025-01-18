scoreboard players reset * playerID
scoreboard players set @a playerID 0

#every player is given a unique ID
#note: playerID=0 is null, usually given to spectators
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] playerID 2
execute as @a run function rematch:give_self_player_id
return 1