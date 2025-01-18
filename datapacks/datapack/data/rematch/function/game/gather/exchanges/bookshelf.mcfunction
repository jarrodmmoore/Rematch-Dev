scoreboard players operation @e[tag=currencystand] math -= @s playerID
scoreboard players reset @e[tag=currencystand,scores={math=0}] math2
scoreboard players add @e[tag=currencystand,scores={math=0}] math2 10
execute if entity @e[scores={eventScore=2},name=Global] at @s if entity @e[type=minecraft:armor_stand,distance=..100,tag=bookshelf_farm] run scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global] x2
execute if entity @e[scores={eventScore=3},name=Global] at @s if entity @e[type=minecraft:armor_stand,distance=..100,tag=bookshelf_forest] run scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global] x2
execute if entity @e[scores={eventScore=4},name=Global] run scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global] x2
scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global] customMultiplier
execute as @e[tag=currencystand,scores={math=0}] run function rematch:game/gather/currencystand_color
scoreboard players operation @s currency += @e[tag=currencystand,scores={math=0}] math2
function rematch:game/gather/currency_playsound
scoreboard players reset @s mine_bookshelves

scoreboard players operation @e[tag=currencystand] math += @s playerID
return 1