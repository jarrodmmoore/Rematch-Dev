scoreboard players operation @e[tag=currencystand] math -= @s playerID
scoreboard players reset @e[tag=currencystand,scores={math=0}] math2
execute as @e[tag=!bunny_presence,scores={kill_rabbits=1}] run tag @s add bunny
execute as @e[tag=bunny_presence,scores={kill_rabbits=1}] if entity @e[type=minecraft:rabbit,nbt={RabbitType:99}] run tag @s add bunny
execute as @e[tag=bunny_presence,scores={kill_rabbits=1}] if entity @e[type=minecraft:rabbit,nbt=!{RabbitType:99}] run tag @s add killer_bunny
execute as @e[tag=bunny_presence,scores={kill_rabbits=1}] unless entity @e[type=minecraft:rabbit] run tag @s add killer_bunny
execute if entity @a[tag=bunny] run scoreboard players add @e[tag=currencystand,scores={math=0}] math2 12
execute if entity @a[tag=killer_bunny] run scoreboard players add @e[tag=currencystand,scores={math=0}] math2 64
execute if entity @e[scores={eventScore=2},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] x2
execute if entity @e[scores={eventScore=4},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] x2
scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] customMultiplier
execute as @e[tag=currencystand,scores={math=0}] run function rematch:game/gather/currencystand_color
scoreboard players operation @s currency += @e[tag=currencystand,scores={math=0}] math2
function rematch:game/gather/currency_playsound
tag @a remove bunny
tag @a remove killer_bunny
tag @a remove bunny_presence
scoreboard players reset @s kill_rabbits

scoreboard players operation @e[tag=currencystand] math += @s playerID
return 1