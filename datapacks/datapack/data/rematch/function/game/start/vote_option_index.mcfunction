#this is run by each vote option's armor stand
execute if entity @s[scores={arenaID=1}] run function rematch:text/start/vote_preview_item/default
execute if entity @s[scores={arenaID=2}] run function rematch:text/start/vote_preview_item/desert
execute if entity @s[scores={arenaID=3}] run function rematch:text/start/vote_preview_item/forest
execute if entity @s[scores={arenaID=4}] run function rematch:text/start/vote_preview_item/graveyard
execute if entity @s[scores={arenaID=5}] run function rematch:text/start/vote_preview_item/jungle
execute if entity @s[scores={arenaID=6}] run function rematch:text/start/vote_preview_item/snowy
execute if entity @s[scores={arenaID=7}] run function rematch:text/start/vote_preview_item/swamp

#SAMADO