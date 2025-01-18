scoreboard players operation @e[tag=currencystand] math -= @s playerID
scoreboard players reset @e[tag=currencystand,scores={math=0}] math2
execute as @e[tag=!sheep_presence,scores={kill_sheep=1}] run tag @s add sheep
execute as @e[tag=sheep_presence,scores={kill_sheep=1}] if entity @e[type=minecraft:sheep,nbt={potion_contents:{custom_color:6}}] run tag @s add sheep
execute as @e[tag=sheep_presence,scores={kill_sheep=1}] if entity @e[type=minecraft:sheep,nbt=!{potion_contents:{custom_color:6}}] run tag @s add pink_sheep
execute as @e[tag=sheep_presence,scores={kill_sheep=1}] unless entity @e[type=minecraft:sheep] run tag @s add pink_sheep
execute if entity @a[tag=sheep] run scoreboard players add @e[tag=currencystand,scores={math=0}] math2 6
execute if entity @a[tag=pink_sheep] run scoreboard players add @e[tag=currencystand,scores={math=0}] math2 48
execute if entity @e[scores={eventScore=2},name=Global] run scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global] x2
execute if entity @e[scores={eventScore=4},name=Global] run scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global] x2
scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global] customMultiplier
execute as @e[tag=currencystand,scores={math=0}] run function rematch:game/gather/currencystand_color
scoreboard players operation @s currency += @e[tag=currencystand,scores={math=0}] math2
function rematch:game/gather/currency_playsound

tag @a remove sheep
tag @a remove pink_sheep
tag @a remove sheep_presence
scoreboard players reset @s kill_sheep

scoreboard players operation @e[tag=currencystand] math += @s playerID
return 1