tag @e[name=Global] remove teamplay

#if at least 1/2 of active players have requested a team, mode will be teamplay instead of ffa.

#calculate required players
scoreboard players operation @e[name=Global] readyDummy = @e[limit=1,name=Global] playerCountA
scoreboard players set @e[name=Global] math 2
scoreboard players operation @e[name=Global] readyDummy /= @e[limit=1,name=Global] math
scoreboard players operation @e[name=Global] readyRequired = @e[limit=1,name=Global] readyDummy
scoreboard players add @e[name=Global] readyRequired 1
scoreboard players set @e[scores={readyRequired=..0},name=Global] readyRequired 1

#calculate no. players on teams
scoreboard players set @e[name=Global] readyDummy 0
execute as @a[tag=requestRedTeam,team=!spectators] run scoreboard players add @e[name=Global] readyDummy 1
execute as @a[tag=requestBlueTeam,team=!spectators] run scoreboard players add @e[name=Global] readyDummy 1
scoreboard players operation @e[name=Global] readyCount = @e[limit=1,name=Global] readyDummy

#take (ready players) - (required ready players)
#if result is 0 or greater, get the lobby enters into "ready" mode and track is selected
scoreboard players operation @e[name=Global] readyDummy -= @e[limit=1,name=Global] readyRequired
execute if entity @e[scores={readyDummy=0..},name=Global] run tag @e[name=Global] add teamplay

#less than 4 players? no teams.
execute if entity @e[scores={playerCountA=..3},name=Global] run tag @e[name=Global] remove teamplay

#teams enabled? assign players to teams.
execute if entity @e[tag=teamplay,name=Global] run function rematch:game/pvp/teams/assign_teams
return 1