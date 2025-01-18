scoreboard players operation @e[tag=currencystand] math -= @s playerID
scoreboard players reset @e[tag=currencystand,scores={math=0}] math2
execute as @e[tag=!chicken_presence,scores={kill_chicken=1}] run tag @s add chicken
execute as @e[tag=chicken_presence,scores={kill_chicken=1}] if entity @e[type=minecraft:chicken,tag=baby_chicken] run tag @s add chicken
execute as @e[tag=chicken_presence,scores={kill_chicken=1}] if entity @e[type=minecraft:chicken,tag=!baby_chicken] run tag @s add baby_chicken
execute as @e[tag=chicken_presence,scores={kill_chicken=1}] unless entity @e[type=minecraft:chicken] run tag @s add baby_chicken
execute if entity @a[tag=chicken] run scoreboard players add @e[tag=currencystand,scores={math=0}] math2 6
execute if entity @a[tag=baby_chicken] run scoreboard players add @e[tag=currencystand,scores={math=0}] math2 48
execute if entity @e[scores={eventScore=2},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] x2
execute if entity @e[scores={eventScore=4},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] x2
scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] customMultiplier
execute as @e[tag=currencystand,scores={math=0}] run function rematch:game/gather/currencystand_color
scoreboard players operation @s currency += @e[tag=currencystand,scores={math=0}] math2
function rematch:game/gather/currency_playsound
tag @a remove chicken
tag @a remove baby_chicken
tag @a remove chicken_presence
scoreboard players reset @s kill_chicken

scoreboard players operation @e[tag=currencystand] math += @s playerID
return 1