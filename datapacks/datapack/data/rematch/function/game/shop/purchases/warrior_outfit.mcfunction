execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["warrioroutfit"]}}}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=800..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/warrior_outfit
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 800
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_chestplate[minecraft:custom_name='{"bold":true,"color":"yellow","text":"Warrior Battleplate"}',minecraft:item_name='{"extra":["Warrior Battleplate"],"text":"EMU"}',minecraft:dyed_color={rgb:16777021},minecraft:unbreakable={},minecraft:custom_data={Tags:["warrioroutfit"],emu_lock_name:'{"bold":true,"color":"yellow","text":"Warrior Battleplate"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_leggings[minecraft:custom_name='{"bold":true,"color":"yellow","text":"Warrior Wrappings"}',minecraft:item_name='{"extra":["Warrior Wrappings"],"text":"EMU"}',minecraft:dyed_color={rgb:16777021},minecraft:unbreakable={},minecraft:custom_data={Tags:["warrioroutfit"],emu_lock_name:'{"bold":true,"color":"yellow","text":"Warrior Wrappings"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_boots[minecraft:custom_name='{"bold":true,"color":"yellow","text":"Warrior Sandals"}',minecraft:item_name='{"extra":["Warrior Sandals"],"text":"EMU"}',minecraft:dyed_color={rgb:16777021},minecraft:unbreakable={},minecraft:custom_data={Tags:["warrioroutfit"],emu_lock_name:'{"bold":true,"color":"yellow","text":"Warrior Sandals"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Warrior Outfit]","bold":true,"color":"yellow","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject