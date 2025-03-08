scoreboard players operation @e[tag=currencystand] math -= @s playerID
scoreboard players reset @e[tag=currencystand,scores={math=0}] math2
execute as @e[tag=!pig_presence,scores={kill_pigs=1}] run tag @s add pig
execute as @e[tag=pig_presence,scores={kill_pigs=1}] if entity @e[type=minecraft:pig,nbt={Saddle:1b}] run tag @s add pig
execute as @e[tag=pig_presence,scores={kill_pigs=1}] if entity @e[type=minecraft:pig,nbt=!{Saddle:1b}] run tag @s add saddle_pig
execute as @e[tag=pig_presence,scores={kill_pigs=1}] unless entity @e[type=minecraft:pig] run tag @s add saddle_pig
execute if entity @a[tag=pig] run scoreboard players add @e[tag=currencystand,scores={math=0}] math2 6
execute if entity @a[tag=saddle_pig] run scoreboard players add @e[tag=currencystand,scores={math=0}] math2 36
execute if entity @e[scores={eventScore=2},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] x2
execute if entity @e[scores={eventScore=4},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] x2
scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] customMultiplier
execute as @e[tag=currencystand,scores={math=0}] run function rematch:game/gather/currencystand_color
scoreboard players operation @s currency += @e[tag=currencystand,scores={math=0}] math2
function rematch:game/gather/currency_playsound
tag @a remove pig
tag @a remove saddle_pig
tag @a remove pig_presence
scoreboard players reset @s kill_pigs

scoreboard players operation @e[tag=currencystand] math += @s playerID