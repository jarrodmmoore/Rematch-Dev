scoreboard players add @s currency 120
clear @s minecraft:tipped_arrow[minecraft:potion_contents={custom_color:10557192,potion:"minecraft:awkward"},minecraft:custom_name='{"bold":true,"color":"dark_red","text":"Explosive Arrow"}',minecraft:item_name='{"extra":["Explosive Arrow"],"text":"EMU"}',minecraft:custom_data={explosiveArrow:1b,emu_lock_name:'{"bold":true,"color":"dark_red","text":"Explosive Arrow"}'}] 2
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Explosive Arrows] (x2)","bold":true,"color":"dark_red","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
