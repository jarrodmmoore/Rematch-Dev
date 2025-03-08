#playerCountA is the number of players in the "players" team (active players)
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] playerCountA 0
execute as @a[team=!spectators] run scoreboard players add @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] playerCountA 1

#add more here...