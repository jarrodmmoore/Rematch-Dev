scoreboard players operation @e[tag=currencystand] math -= @s playerID
scoreboard players reset @e[tag=currencystand,scores={math=0}] math2
scoreboard players set @s randomSelect 0

scoreboard players operation @s math = @e[tag=arenaStand,scores={arenaID=1..7},sort=random,limit=1] arenaID
scoreboard players operation @s math2 = @e[tag=arenaStand,scores={arenaID=1..4},sort=random,limit=1] arenaID

tag @s[scores={math=..1}] add chest_1
tag @s[scores={math=2}] add chest_2
tag @s[scores={math=3}] add chest_4
tag @s[scores={math=4}] add chest_8
tag @s[scores={math=5}] add chest_16
tag @s[scores={math=6,math2=2..}] add chest_32
tag @s[scores={math=6..,math2=1}] add chest_48
tag @s[scores={math=7..,math2=2..}] add chest_64

execute if entity @s[tag=chest_1] run scoreboard players add @e[tag=currencystand,scores={math=0}] math2 1
execute if entity @s[tag=chest_2] run scoreboard players add @e[tag=currencystand,scores={math=0}] math2 2
execute if entity @s[tag=chest_4] run scoreboard players add @e[tag=currencystand,scores={math=0}] math2 4
execute if entity @s[tag=chest_8] run scoreboard players add @e[tag=currencystand,scores={math=0}] math2 8
execute if entity @s[tag=chest_16] run scoreboard players add @e[tag=currencystand,scores={math=0}] math2 16
execute if entity @s[tag=chest_32] run scoreboard players add @e[tag=currencystand,scores={math=0}] math2 32
execute if entity @s[tag=chest_48] run scoreboard players add @e[tag=currencystand,scores={math=0}] math2 48
execute if entity @s[tag=chest_64] run scoreboard players add @e[tag=currencystand,scores={math=0}] math2 64

execute if entity @e[scores={eventScore=4},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] x2
scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] customMultiplier
execute as @e[tag=currencystand,scores={math=0}] run function rematch:game/gather/currencystand_color
scoreboard players operation @s currency += @e[tag=currencystand,scores={math=0}] math2
function rematch:game/gather/currency_playsound

execute if entity @s[tag=chest_1] run tag @s remove chest_1
execute if entity @s[tag=chest_2] run tag @s remove chest_2
execute if entity @s[tag=chest_4] run tag @s remove chest_4
execute if entity @s[tag=chest_8] run tag @s remove chest_8
execute if entity @s[tag=chest_16] run tag @s remove chest_16
execute if entity @s[tag=chest_32] run tag @s remove chest_32
execute if entity @s[tag=chest_48] run tag @s remove chest_48
execute if entity @s[tag=chest_64] run tag @s remove chest_64

clear @s minecraft:chest

scoreboard players reset @s randomSelect

scoreboard players operation @e[tag=currencystand] math += @s playerID