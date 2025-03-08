execute if entity @e[scores={timeRemaining=0},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:text/announce_phase/phase3_sudden_death

#world center is 1 51 50

scoreboard players set @a[scores={lives=2..}] lives 1

#running this as a player spawn doesn't unload
execute if entity @e[scores={timeRemaining=0},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[limit=1] run function rematch:game/pvp/arenas/worldborder_index

