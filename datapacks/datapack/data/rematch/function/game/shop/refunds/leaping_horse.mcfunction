scoreboard players add @s currency 250
clear @s minecraft:leather_horse_armor[minecraft:custom_name='{"bold":true,"color":"green","text":"Leaping Horse"}',minecraft:item_name='{"extra":["Leaping Horse"],"text":"EMU"}',minecraft:dyed_color={rgb:6160215},minecraft:custom_data~{Tags:["deployonground","horse2"],emu_lock_name:'{"bold":true,"color":"green","text":"Leaping Horse"}'}] 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Leaping Horse]","bold":true,"color":"green","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1