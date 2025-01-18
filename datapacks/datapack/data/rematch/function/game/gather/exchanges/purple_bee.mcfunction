scoreboard players operation @e[tag=currencystand] math -= @s playerID
scoreboard players reset @e[tag=currencystand,scores={math=0}] math2
scoreboard players add @e[tag=currencystand,scores={math=0}] math2 32
execute if entity @e[scores={eventScore=3},name=Global] run scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global] x2
execute if entity @e[scores={eventScore=4},name=Global] run scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global] x2
scoreboard players operation @e[tag=currencystand,scores={math=0}] math2 *= @e[limit=1,name=Global] customMultiplier
execute as @e[tag=currencystand,scores={math=0}] run function rematch:game/gather/currencystand_color
scoreboard players operation @s currency += @e[tag=currencystand,scores={math=0}] math2
function rematch:game/gather/currency_playsound
clear @s minecraft:player_head[minecraft:custom_name='"Purple Bee"',minecraft:item_name='{"extra":["Purple Bee"],"text":"EMU"}',minecraft:custom_data={emu_lock_name:'"Purple Bee"'}]

scoreboard players operation @e[tag=currencystand] math += @s playerID
return 1