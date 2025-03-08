execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["angeloutfit"]}}}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=400..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/angel_outfit
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 400
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_chestplate[minecraft:custom_name='{"bold":true,"color":"white","text":"Angel Breastplate"}',minecraft:item_name='{"extra":["Angel Breastplate"],"text":"EMU"}',minecraft:dyed_color={rgb:16777215},minecraft:unbreakable={},minecraft:custom_data={Tags:["angeloutfit"],emu_lock_name:'{"bold":true,"color":"white","text":"Angel Breastplate"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_leggings[minecraft:custom_name='{"bold":true,"color":"white","text":"Angel Stockings"}',minecraft:item_name='{"extra":["Angel Stockings"],"text":"EMU"}',minecraft:dyed_color={rgb:16777215},minecraft:unbreakable={},minecraft:custom_data={Tags:["angeloutfit"],emu_lock_name:'{"bold":true,"color":"white","text":"Angel Stockings"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_boots[minecraft:custom_name='{"bold":true,"color":"white","text":"Angel Boots"}',minecraft:item_name='{"extra":["Angel Boots"],"text":"EMU"}',minecraft:dyed_color={rgb:16777215},minecraft:unbreakable={},minecraft:custom_data={Tags:["angeloutfit"],emu_lock_name:'{"bold":true,"color":"white","text":"Angel Boots"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Angel Outfit]","bold":true,"color":"white","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject