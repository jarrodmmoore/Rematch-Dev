#this is run by the chosen arena's armor stand
execute if entity @s[scores={arenaID=1}] run function rematch:text/start/vote_announce/default
execute if entity @s[scores={arenaID=2}] run function rematch:text/start/vote_announce/desert
execute if entity @s[scores={arenaID=3}] run function rematch:text/start/vote_announce/forest
execute if entity @s[scores={arenaID=4}] run function rematch:text/start/vote_announce/graveyard
execute if entity @s[scores={arenaID=5}] run function rematch:text/start/vote_announce/jungle
execute if entity @s[scores={arenaID=6}] run function rematch:text/start/vote_announce/snowy
execute if entity @s[scores={arenaID=7}] run function rematch:text/start/vote_announce/swamp

#CUSHIE
return 1