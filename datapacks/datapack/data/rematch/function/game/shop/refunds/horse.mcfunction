scoreboard players add @s currency 150
clear @s minecraft:leather_horse_armor[minecraft:custom_name='{"bold":true,"color":"red","text":"Horse"}',minecraft:item_name='{"extra":["Horse"],"text":"EMU"}',minecraft:custom_data~{Tags:["deployonground","horse1"],emu_lock_name:'{"bold":true,"color":"red","text":"Horse"}'}] 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Horse]","bold":true,"color":"red","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
