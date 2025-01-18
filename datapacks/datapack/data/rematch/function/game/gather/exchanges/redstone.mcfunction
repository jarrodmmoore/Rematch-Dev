scoreboard players operation @e[tag=currencystand] math -= @s playerID
scoreboard players reset @e[tag=currencystand,scores={math=0}] math2
scoreboard players add @e[tag=currencystand,scores={math=0}] math2 8
execute if entity @e[scores={eventScore=1},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] x2
execute if entity @e[scores={eventScore=4},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] x2
scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] customMultiplier
execute as @e[tag=currencystand,scores={math=0}] run function rematch:game/gather/currencystand_color
scoreboard players operation @s currency += @e[tag=currencystand,scores={math=0}] math2
function rematch:game/gather/currency_playsound
scoreboard players reset @s mine_redstone

scoreboard players operation @e[tag=currencystand] math += @s playerID
return 1