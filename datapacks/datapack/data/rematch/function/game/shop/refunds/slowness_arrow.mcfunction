scoreboard players add @s currency 40
clear @s minecraft:tipped_arrow[minecraft:custom_name='{"bold":true,"color":"dark_gray","text":"Slowness Arrow"}',minecraft:item_name='{"extra":["Slowness Arrow"],"text":"EMU"}',minecraft:potion_contents={potion:"minecraft:slowness"},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"dark_gray","text":"Slowness Arrow"}'}] 4
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Slowness Arrows] (x4)","bold":true,"color":"dark_gray","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
