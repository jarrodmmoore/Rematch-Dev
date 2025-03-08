scoreboard players add @s currency 50
clear @s minecraft:tipped_arrow[minecraft:custom_name='{"bold":true,"color":"green","text":"Poison Arrow"}',minecraft:item_name='{"extra":["Poison Arrow"],"text":"EMU"}',minecraft:potion_contents={potion:"minecraft:poison"},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"green","text":"Poison Arrow"}'}] 4
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Poison Arrows] (x4)","bold":true,"color":"green","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
