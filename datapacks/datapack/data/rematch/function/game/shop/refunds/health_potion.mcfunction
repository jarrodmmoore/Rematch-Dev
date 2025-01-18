scoreboard players add @s currency 50
clear @s minecraft:potion[minecraft:custom_name='{"bold":true,"color":"red","text":"Health I Potion"}',minecraft:item_name='{"extra":["Health I Potion"],"text":"EMU"}',minecraft:potion_contents={potion:"minecraft:healing"},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"red","text":"Health I Potion"}'}] 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Health I Potion]","bold":true,"color":"red","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1