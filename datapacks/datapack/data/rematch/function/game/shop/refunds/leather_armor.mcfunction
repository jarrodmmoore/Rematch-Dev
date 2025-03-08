scoreboard players add @s currency 50
clear @s minecraft:leather_chestplate[minecraft:custom_name='{"bold":true,"color":"red","text":"Leather Tunic"}',minecraft:item_name='{"extra":["Leather Tunic"],"text":"EMU"}',minecraft:unbreakable={},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"red","text":"Leather Tunic"}'}] 1
clear @s minecraft:leather_leggings[minecraft:custom_name='{"bold":true,"color":"red","text":"Leather Leggings"}',minecraft:item_name='{"extra":["Leather Leggings"],"text":"EMU"}',minecraft:unbreakable={},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"red","text":"Leather Leggings"}'}] 1
clear @s minecraft:leather_boots[minecraft:custom_name='{"bold":true,"color":"red","text":"Leather Shoes"}',minecraft:item_name='{"extra":["Leather Shoes"],"text":"EMU"}',minecraft:unbreakable={},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"red","text":"Leather Shoes"}'}] 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Leather Outfit]","bold":true,"color":"red","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
