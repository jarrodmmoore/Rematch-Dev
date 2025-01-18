scoreboard players add @s currency 200
clear @s minecraft:leather_chestplate[minecraft:custom_name='{"bold":true,"color":"dark_gray","text":"Spy Cloak"}',minecraft:item_name='{"extra":["Spy Cloak"],"text":"EMU"}',minecraft:dyed_color={rgb:0},minecraft:unbreakable={},minecraft:custom_data~{Tags:["spyoutfit"],emu_lock_name:'{"bold":true,"color":"dark_gray","text":"Spy Cloak"}'}] 1
clear @s minecraft:leather_leggings[minecraft:custom_name='{"bold":true,"color":"dark_gray","text":"Spy Briefs"}',minecraft:item_name='{"extra":["Spy Briefs"],"text":"EMU"}',minecraft:dyed_color={rgb:0},minecraft:unbreakable={},minecraft:custom_data~{Tags:["spyoutfit"],emu_lock_name:'{"bold":true,"color":"dark_gray","text":"Spy Briefs"}'}] 1
clear @s minecraft:leather_boots[minecraft:custom_name='{"bold":true,"color":"dark_gray","text":"Spy Sneakers"}',minecraft:item_name='{"extra":["Spy Sneakers"],"text":"EMU"}',minecraft:dyed_color={rgb:0},minecraft:unbreakable={},minecraft:custom_data~{Tags:["spyoutfit"],emu_lock_name:'{"bold":true,"color":"dark_gray","text":"Spy Sneakers"}'}] 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Spy Outfit]","bold":true,"color":"black","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1