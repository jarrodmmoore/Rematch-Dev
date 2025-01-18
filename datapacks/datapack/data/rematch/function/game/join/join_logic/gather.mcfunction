#mid-game join, send to spectator
team join spectators
gamemode spectator @s

#join message for gather phase
function rematch:text/join_messages/in_game_gather

#teleport to a random player in-game
tag @a[sort=random,limit=1,team=player] add gotome
tp @s @a[tag=gotome,limit=1]
execute at @s rotated ~ 0 run function help:4746d675c1a76edadffc15797ceb6778acda50b2dc7fcff7674feefe329baa76
tag @a[tag=gotome] remove gotome
return 1