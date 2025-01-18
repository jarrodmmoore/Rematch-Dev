scoreboard players add @s currency 200
clear @s minecraft:leather_chestplate[minecraft:custom_name='{"bold":true,"color":"green","text":"Frog Vest"}',minecraft:item_name='{"extra":["Frog Vest"],"text":"EMU"}',minecraft:dyed_color={rgb:5439325},minecraft:unbreakable={},minecraft:custom_data~{Tags:["frogoutfit"],emu_lock_name:'{"bold":true,"color":"green","text":"Frog Vest"}'}] 1
clear @s minecraft:leather_leggings[minecraft:custom_name='{"bold":true,"color":"green","text":"Frog Hide"}',minecraft:item_name='{"extra":["Frog Hide"],"text":"EMU"}',minecraft:dyed_color={rgb:5439325},minecraft:unbreakable={},minecraft:custom_data~{Tags:["frogoutfit"],emu_lock_name:'{"bold":true,"color":"green","text":"Frog Hide"}'}] 1
clear @s minecraft:leather_boots[minecraft:custom_name='{"bold":true,"color":"green","text":"Frog Footware"}',minecraft:item_name='{"extra":["Frog Footware"],"text":"EMU"}',minecraft:dyed_color={rgb:5439325},minecraft:unbreakable={},minecraft:custom_data~{Tags:["frogoutfit"],emu_lock_name:'{"bold":true,"color":"green","text":"Frog Footware"}'}] 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Frog Outfit]","bold":true,"color":"green","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1