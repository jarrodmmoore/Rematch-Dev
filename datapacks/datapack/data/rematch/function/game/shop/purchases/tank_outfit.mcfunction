execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["tankoutfit"]}}}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=700..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/tank_outfit
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 700
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_chestplate[minecraft:custom_name='{"bold":true,"color":"dark_aqua","text":"Tank Top"}',minecraft:item_name='{"extra":["Tank Top"],"text":"EMU"}',minecraft:dyed_color={rgb:7725055},minecraft:unbreakable={},minecraft:custom_data={Tags:["tankoutfit"],emu_lock_name:'{"bold":true,"color":"dark_aqua","text":"Tank Top"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_leggings[minecraft:custom_name='{"bold":true,"color":"dark_aqua","text":"Tank Leg Armor"}',minecraft:item_name='{"extra":["Tank Leg Armor"],"text":"EMU"}',minecraft:dyed_color={rgb:7725055},minecraft:unbreakable={},minecraft:custom_data={Tags:["tankoutfit"],emu_lock_name:'{"bold":true,"color":"dark_aqua","text":"Tank Leg Armor"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_boots[minecraft:custom_name='{"bold":true,"color":"dark_aqua","text":"Tank Boots"}',minecraft:item_name='{"extra":["Tank Boots"],"text":"EMU"}',minecraft:dyed_color={rgb:7725055},minecraft:unbreakable={},minecraft:custom_data={Tags:["tankoutfit"],emu_lock_name:'{"bold":true,"color":"dark_aqua","text":"Tank Boots"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Tank Outfit]","bold":true,"color":"dark_aqua","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject