scoreboard players add @s currency 300
clear @s minecraft:leather_horse_armor[minecraft:custom_name='{"bold":true,"color":"aqua","text":"Speedy Horse"}',minecraft:item_name='{"extra":["Speedy Horse"],"text":"EMU"}',minecraft:dyed_color={rgb:8779775},minecraft:custom_data~{Tags:["deployonground","horse3"],emu_lock_name:'{"bold":true,"color":"aqua","text":"Speedy Horse"}'}] 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Speedy Horse]","bold":true,"color":"aqua","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
