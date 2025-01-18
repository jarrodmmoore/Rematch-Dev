#no vote options? pick 3 at random
execute unless entity @e[tag=voteOption] run function rematch:game/start/get_vote_options

#timer and lobby logic
scoreboard players set @e[scores={oTimer=21..},name=Global] oTimer 0
scoreboard players add @e[name=Global] oTimer 1

scoreboard players remove @e[scores={oTimer=20,voteTime=1..},name=Global] voteTime 1
scoreboard players remove @e[scores={oTimer=20,gameTime=1..},name=Global] gameTime 1

execute if entity @e[scores={voteTime=1..},name=Global] run bossbar set minecraft:menutimer max 30
execute if entity @e[scores={voteTime=1..},name=Global] store result bossbar minecraft:menutimer value run scoreboard players get @e[limit=1,name=Global] voteTime

execute if entity @e[scores={voteTime=..0},name=Global] run bossbar set minecraft:menutimer max 10
execute if entity @e[scores={voteTime=..0},name=Global] store result bossbar minecraft:menutimer value run scoreboard players get @e[limit=1,name=Global] gameTime



#player voting logic
execute if entity @e[scores={voteTime=1..},name=Global] as @a[team=!spectators] at @s run function rematch:game/start/player_vote

#vote option display items
execute if entity @e[scores={voteTime=1..},name=Global] as @e[tag=voteOption] run function rematch:game/start/vote_display_index

#players can't have filled maps after the vote concludes
execute if entity @e[scores={voteTime=..0},name=Global] run clear @a minecraft:filled_map
clear @a[team=spectators] minecraft:filled_map


#bossbar menu timer display
bossbar set minecraft:menutimer players @a
execute if entity @e[scores={voteTime=1..},name=Global] run function rematch:text/start/bossbar_voting_arena
execute unless entity @e[scores={voteTime=1..},name=Global] run function rematch:text/start/bossbar_start_countdown


#bossbar showing how many players are needed to pause the menu
bossbar set minecraft:readyprogress players
bossbar set minecraft:unreadyprogress players @a[tag=!readyup,team=players]
scoreboard players set @e[name=Global] unReadyCount 0
execute as @a[tag=!readyup,team=players] run scoreboard players add @e[name=Global] unReadyCount 1
execute store result bossbar minecraft:unreadyprogress value run scoreboard players get @e[limit=1,name=Global] unReadyCount
execute store result bossbar minecraft:unreadyprogress max run scoreboard players get @e[limit=1,name=Global] readyRequired
function rematch:text/start/bossbar_unready_up


#voteTime=1, tally the votes and choose an arena
execute if entity @e[scores={voteTime=1,oTimer=19},name=Global] run function rematch:game/start/tally_vote

#time's up, start gameplay
execute if entity @e[scores={gameTime=0},name=Global] run function rematch:game/gather/_initialize
return 1