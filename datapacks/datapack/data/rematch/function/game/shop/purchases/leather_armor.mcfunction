execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"bold":true,"color":"red","text":"Leather Tunic"}',"minecraft:item_name":'{"extra":["Leather Tunic"],"text":"EMU"}',"minecraft:custom_data":{emu_lock_name:'{"bold":true,"color":"red","text":"Leather Tunic"}'}}}}] run tag @s add refund
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"bold":true,"color":"red","text":"Leather Leggings"}',"minecraft:item_name":'{"extra":["Leather Leggings"],"text":"EMU"}',"minecraft:custom_data":{emu_lock_name:'{"bold":true,"color":"red","text":"Leather Leggings"}'}}}}] run tag @s add refund
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"bold":true,"color":"red","text":"Leather Shoes"}',"minecraft:item_name":'{"extra":["Leather Shoes"],"text":"EMU"}',"minecraft:custom_data":{emu_lock_name:'{"bold":true,"color":"red","text":"Leather Shoes"}'}}}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=50..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/leather_armor
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 50
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_chestplate[minecraft:custom_name='{"bold":true,"color":"red","text":"Leather Tunic"}',minecraft:item_name='{"extra":["Leather Tunic"],"text":"EMU"}',minecraft:unbreakable={},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"red","text":"Leather Tunic"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_leggings[minecraft:custom_name='{"bold":true,"color":"red","text":"Leather Leggings"}',minecraft:item_name='{"extra":["Leather Leggings"],"text":"EMU"}',minecraft:unbreakable={},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"red","text":"Leather Leggings"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:leather_boots[minecraft:custom_name='{"bold":true,"color":"red","text":"Leather Shoes"}',minecraft:item_name='{"extra":["Leather Shoes"],"text":"EMU"}',minecraft:unbreakable={},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"red","text":"Leather Shoes"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Leather Outfit]","bold":true,"color":"red","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject
return 1