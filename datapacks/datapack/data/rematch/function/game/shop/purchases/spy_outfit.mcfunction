execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["spyoutfit"]}}}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=200..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/spy_outfit
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 200
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_chestplate[minecraft:custom_name='{"bold":true,"color":"dark_gray","text":"Spy Cloak"}',minecraft:item_name='{"extra":["Spy Cloak"],"text":"EMU"}',minecraft:dyed_color={rgb:0},minecraft:unbreakable={},minecraft:custom_data={Tags:["spyoutfit"],emu_lock_name:'{"bold":true,"color":"dark_gray","text":"Spy Cloak"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_leggings[minecraft:custom_name='{"bold":true,"color":"dark_gray","text":"Spy Briefs"}',minecraft:item_name='{"extra":["Spy Briefs"],"text":"EMU"}',minecraft:dyed_color={rgb:0},minecraft:unbreakable={},minecraft:custom_data={Tags:["spyoutfit"],emu_lock_name:'{"bold":true,"color":"dark_gray","text":"Spy Briefs"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_boots[minecraft:custom_name='{"bold":true,"color":"dark_gray","text":"Spy Sneakers"}',minecraft:item_name='{"extra":["Spy Sneakers"],"text":"EMU"}',minecraft:dyed_color={rgb:0},minecraft:unbreakable={},minecraft:custom_data={Tags:["spyoutfit"],emu_lock_name:'{"bold":true,"color":"dark_gray","text":"Spy Sneakers"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Spy Outfit]","bold":true,"color":"black","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject