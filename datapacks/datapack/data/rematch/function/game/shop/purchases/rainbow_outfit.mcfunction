execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["rainbowoutfit"]}}}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=1000..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/rainbow_outfit
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 1000
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_chestplate[minecraft:custom_name='{"bold":true,"color":"white","text":"Rainbow Shirt"}',minecraft:item_name='{"extra":["Rainbow Shirt"],"text":"EMU"}',minecraft:dyed_color={rgb:16760788},minecraft:unbreakable={},minecraft:custom_data={Tags:["rainbowoutfit"],emu_lock_name:'{"bold":true,"color":"white","text":"Rainbow Shirt"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_leggings[minecraft:custom_name='{"bold":true,"color":"white","text":"Rainbow Pants"}',minecraft:item_name='{"extra":["Rainbow Pants"],"text":"EMU"}',minecraft:dyed_color={rgb:16760788},minecraft:unbreakable={},minecraft:custom_data={Tags:["rainbowoutfit"],emu_lock_name:'{"bold":true,"color":"white","text":"Rainbow Pants"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_boots[minecraft:custom_name='{"bold":true,"color":"white","text":"Rainbow Shoes"}',minecraft:item_name='{"extra":["Rainbow Shoes"],"text":"EMU"}',minecraft:dyed_color={rgb:16760788},minecraft:unbreakable={},minecraft:custom_data={Tags:["rainbowoutfit"],emu_lock_name:'{"bold":true,"color":"white","text":"Rainbow Shoes"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Ra","bold":true,"color":"red","type":"text"},{"text":"inb","bold":true,"color":"gold","type":"text"},{"text":"ow","bold":true,"color":"yellow","type":"text"},{"text":" Ou","bold":true,"color":"green","type":"text"},{"text":"tf","bold":true,"color":"aqua","type":"text"},{"text":"it]","bold":true,"color":"light_purple","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject