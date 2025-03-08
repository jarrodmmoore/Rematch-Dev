scoreboard players add @s currency 500
clear @s minecraft:iron_chestplate[minecraft:custom_name='{"bold":true,"color":"white","text":"Iron Chestplate"}',minecraft:item_name='{"extra":["Iron Chestplate"],"text":"EMU"}',minecraft:unbreakable={},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"white","text":"Iron Chestplate"}'}] 1
clear @s minecraft:iron_leggings[minecraft:custom_name='{"bold":true,"color":"white","text":"Iron Pants"}',minecraft:item_name='{"extra":["Iron Pants"],"text":"EMU"}',minecraft:unbreakable={},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"white","text":"Iron Pants"}'}] 1
clear @s minecraft:iron_boots[minecraft:custom_name='{"bold":true,"color":"white","text":"Iron Boots"}',minecraft:item_name='{"extra":["Iron Boots"],"text":"EMU"}',minecraft:unbreakable={},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"white","text":"Iron Boots"}'}] 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Iron Outfit]","bold":true,"color":"white","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
