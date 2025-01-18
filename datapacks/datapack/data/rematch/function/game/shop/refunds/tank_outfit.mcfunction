scoreboard players add @s currency 700
clear @s minecraft:leather_chestplate[minecraft:custom_name='{"bold":true,"color":"dark_aqua","text":"Tank Top"}',minecraft:item_name='{"extra":["Tank Top"],"text":"EMU"}',minecraft:dyed_color={rgb:7725055},minecraft:unbreakable={},minecraft:custom_data~{Tags:["tankoutfit"],emu_lock_name:'{"bold":true,"color":"dark_aqua","text":"Tank Top"}'}] 1
clear @s minecraft:leather_leggings[minecraft:custom_name='{"bold":true,"color":"dark_aqua","text":"Tank Leg Armor"}',minecraft:item_name='{"extra":["Tank Leg Armor"],"text":"EMU"}',minecraft:dyed_color={rgb:7725055},minecraft:unbreakable={},minecraft:custom_data~{Tags:["tankoutfit"],emu_lock_name:'{"bold":true,"color":"dark_aqua","text":"Tank Leg Armor"}'}] 1
clear @s minecraft:leather_boots[minecraft:custom_name='{"bold":true,"color":"dark_aqua","text":"Tank Boots"}',minecraft:item_name='{"extra":["Tank Boots"],"text":"EMU"}',minecraft:dyed_color={rgb:7725055},minecraft:unbreakable={},minecraft:custom_data~{Tags:["tankoutfit"],emu_lock_name:'{"bold":true,"color":"dark_aqua","text":"Tank Boots"}'}] 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Tank Outfit]","bold":true,"color":"dark_aqua","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1