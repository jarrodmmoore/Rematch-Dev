execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_chestplate"}}] run tag @s add refund
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_leggings"}}] run tag @s add refund
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_boots"}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=500..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/iron_armor
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 500
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:iron_chestplate[minecraft:custom_name='{"bold":true,"color":"white","text":"Iron Chestplate"}',minecraft:item_name='{"extra":["Iron Chestplate"],"text":"EMU"}',minecraft:unbreakable={},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"white","text":"Iron Chestplate"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:iron_leggings[minecraft:custom_name='{"bold":true,"color":"white","text":"Iron Pants"}',minecraft:item_name='{"extra":["Iron Pants"],"text":"EMU"}',minecraft:unbreakable={},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"white","text":"Iron Pants"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:iron_boots[minecraft:custom_name='{"bold":true,"color":"white","text":"Iron Boots"}',minecraft:item_name='{"extra":["Iron Boots"],"text":"EMU"}',minecraft:unbreakable={},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"white","text":"Iron Boots"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Iron Outfit]","bold":true,"color":"white","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject
return 1