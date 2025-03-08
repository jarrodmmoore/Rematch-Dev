scoreboard players add @s currency 80
clear @s minecraft:potion[minecraft:custom_name='{"bold":true,"color":"red","text":"Health II Potion"}',minecraft:item_name='{"extra":["Health II Potion"],"text":"EMU"}',minecraft:potion_contents={potion:"minecraft:strong_healing"},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"red","text":"Health II Potion"}'}] 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Health II Potion]","bold":true,"color":"red","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
