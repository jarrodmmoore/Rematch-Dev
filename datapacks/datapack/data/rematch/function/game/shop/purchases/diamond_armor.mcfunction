execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_chestplate"}}] run tag @s add refund
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_leggings"}}] run tag @s add refund
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_boots"}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=1000..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/diamond_armor
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 1000
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:diamond_chestplate[minecraft:custom_name='{"bold":true,"color":"aqua","text":"Diamond Cuirass"}',minecraft:item_name='{"extra":["Diamond Cuirass"],"text":"EMU"}',minecraft:unbreakable={},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"aqua","text":"Diamond Cuirass"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:diamond_leggings[minecraft:custom_name='{"bold":true,"color":"aqua","text":"Diamond Leg Armor"}',minecraft:item_name='{"extra":["Diamond Leg Armor"],"text":"EMU"}',minecraft:unbreakable={},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"aqua","text":"Diamond Leg Armor"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:diamond_boots[minecraft:custom_name='{"bold":true,"color":"aqua","text":"Diamond Boots"}',minecraft:item_name='{"extra":["Diamond Boots"],"text":"EMU"}',minecraft:unbreakable={},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"aqua","text":"Diamond Boots"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Diamond Outfit]","bold":true,"color":"aqua","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject
return 1