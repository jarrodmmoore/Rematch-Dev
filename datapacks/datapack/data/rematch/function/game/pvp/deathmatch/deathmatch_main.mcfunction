execute if entity @e[scores={timeRemaining=0},name=Global] run function rematch:text/announce_phase/phase3_sudden_death

#world center is 1 51 50

scoreboard players set @a[scores={lives=2..}] lives 1

#running this as a player spawn doesn't unload
execute if entity @e[scores={timeRemaining=0},name=Global] as @a[limit=1] run function rematch:game/pvp/arenas/worldborder_index


#start killing people for stalling
execute if entity @e[scores={timeRemaining=-2600},name=Global] run function rematch:text/pvp/fight_or_get_snapped
execute if entity @e[scores={timeRemaining=..-3000,gameTime=..99999},name=Global] run kill @a[gamemode=adventure,limit=1]
scoreboard players set @e[scores={timeRemaining=..-3000},name=Global] timeRemaining -2800
return 1