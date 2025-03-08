scoreboard players add @s currency 40
clear @s minecraft:splash_potion[minecraft:custom_name='{"bold":true,"color":"dark_gray","text":"Weakness Potion"}',minecraft:item_name='{"extra":["Weakness Potion"],"text":"EMU"}',minecraft:potion_contents={potion:"minecraft:weakness"},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"dark_gray","text":"Weakness Potion"}'}] 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Weakness Potion]","bold":true,"color":"dark_gray","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
