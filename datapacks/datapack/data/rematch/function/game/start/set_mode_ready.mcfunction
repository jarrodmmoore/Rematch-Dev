tag @a add readyup
scoreboard players set @e[name=Global] readyState 1

function rematch:text/start/announce_lobby_ready


#add time so players aren't caught off guard if the lobby un-readied right before voting or game time was about to expire
execute if entity @e[scores={voteTime=..0},name=Global] run scoreboard players set @e[name=Global] gameTime 10
execute if entity @e[scores={voteTime=1..},name=Global] run scoreboard players set @e[name=Global] voteTime 30
execute if entity @e[scores={voteTime=1..},name=Global] run scoreboard players set @e[name=Global] gameTime 40
return 1