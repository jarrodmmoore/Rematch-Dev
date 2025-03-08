execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["frogoutfit"]}}}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=200..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/frog_outfit
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 200
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_chestplate[minecraft:custom_name='{"bold":true,"color":"green","text":"Frog Vest"}',minecraft:item_name='{"extra":["Frog Vest"],"text":"EMU"}',minecraft:dyed_color={rgb:5439325},minecraft:unbreakable={},minecraft:custom_data={Tags:["frogoutfit"],emu_lock_name:'{"bold":true,"color":"green","text":"Frog Vest"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_leggings[minecraft:custom_name='{"bold":true,"color":"green","text":"Frog Hide"}',minecraft:item_name='{"extra":["Frog Hide"],"text":"EMU"}',minecraft:dyed_color={rgb:5439325},minecraft:unbreakable={},minecraft:custom_data={Tags:["frogoutfit"],emu_lock_name:'{"bold":true,"color":"green","text":"Frog Hide"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_boots[minecraft:custom_name='{"bold":true,"color":"green","text":"Frog Footware"}',minecraft:item_name='{"extra":["Frog Footware"],"text":"EMU"}',minecraft:dyed_color={rgb:5439325},minecraft:unbreakable={},minecraft:custom_data={Tags:["frogoutfit"],emu_lock_name:'{"bold":true,"color":"green","text":"Frog Footware"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Frog Outfit]","bold":true,"color":"green","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject