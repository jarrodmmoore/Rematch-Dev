#playerCountA is the number of players in the "players" team (active players)
scoreboard players set @e[name=Global] playerCountA 0
execute as @a[team=!spectators] run scoreboard players add @e[name=Global] playerCountA 1

#add more here...
return 1