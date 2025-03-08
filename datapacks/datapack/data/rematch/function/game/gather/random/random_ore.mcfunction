#rough model after these probabilities...
#EMERALD 0.0155582375
#DIAMOND 0.032805
#GOLD 0.0729
#REDSTONE 0.081
#LAPIS 0.09
#IRON 0.1
#NOTHING 0.7887367625

scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math = @e[tag=arenaStand,scores={arenaID=1..7},sort=random,limit=1] arenaID
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math2 = @e[tag=arenaStand,scores={arenaID=1..4},sort=random,limit=1] arenaID
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] randomSelect = @e[tag=arenaStand,scores={arenaID=1..5},sort=random,limit=1] arenaID
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] arenaID = @e[tag=arenaStand,scores={arenaID=1..5},sort=random,limit=1] arenaID

#if math is 3 or higher, don't spawn anything

execute if entity @e[scores={math=..2,math2=1},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run setblock ~ ~ ~ minecraft:iron_ore
execute if entity @e[scores={math=..2,math2=2},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run setblock ~ ~ ~ minecraft:lapis_ore
execute if entity @e[scores={math=..2,math2=3},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run setblock ~ ~ ~ minecraft:redstone_ore
execute if entity @e[scores={math=..2,math2=4},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run setblock ~ ~ ~ minecraft:gold_ore

execute if entity @e[scores={math=1,randomSelect=..3,arenaID=..2},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run setblock ~ ~ ~ minecraft:diamond_ore
execute if entity @e[scores={math=1,randomSelect=..3,arenaID=5},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run setblock ~ ~ ~ minecraft:emerald_ore