#run this as a player, not an entity that can potentially get unloaded

scoreboard players operation @s arenaID = @e[tag=chosenArena,limit=1] arenaID

execute if entity @s[scores={arenaID=1}] run function rematch:game/pvp/arenas/default/worldborder
execute if entity @s[scores={arenaID=2}] run function rematch:game/pvp/arenas/desert/worldborder
execute if entity @s[scores={arenaID=3}] run function rematch:game/pvp/arenas/forest/worldborder
execute if entity @s[scores={arenaID=4}] run function rematch:game/pvp/arenas/graveyard/worldborder
execute if entity @s[scores={arenaID=5}] run function rematch:game/pvp/arenas/jungle/worldborder
execute if entity @s[scores={arenaID=6}] run function rematch:game/pvp/arenas/snowy/worldborder
execute if entity @s[scores={arenaID=7}] run function rematch:game/pvp/arenas/swamp/worldborder

worldborder warning distance 10
worldborder damage amount 0.4
worldborder damage buffer 0
worldborder set 120 0
worldborder set 5 90
setworldspawn 1 51 50
return 1