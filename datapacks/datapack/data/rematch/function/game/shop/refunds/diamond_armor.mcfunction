scoreboard players add @s currency 1000
clear @s minecraft:diamond_chestplate[minecraft:custom_name='{"bold":true,"color":"aqua","text":"Diamond Cuirass"}',minecraft:item_name='{"extra":["Diamond Cuirass"],"text":"EMU"}',minecraft:unbreakable={},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"aqua","text":"Diamond Cuirass"}'}] 1
clear @s minecraft:diamond_leggings[minecraft:custom_name='{"bold":true,"color":"aqua","text":"Diamond Leg Armor"}',minecraft:item_name='{"extra":["Diamond Leg Armor"],"text":"EMU"}',minecraft:unbreakable={},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"aqua","text":"Diamond Leg Armor"}'}] 1
clear @s minecraft:diamond_boots[minecraft:custom_name='{"bold":true,"color":"aqua","text":"Diamond Boots"}',minecraft:item_name='{"extra":["Diamond Boots"],"text":"EMU"}',minecraft:unbreakable={},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"aqua","text":"Diamond Boots"}'}] 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Diamond Outfit]","bold":true,"color":"aqua","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1