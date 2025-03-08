scoreboard players add @s currency 50
clear @s minecraft:splash_potion[minecraft:custom_name='{"bold":true,"color":"green","text":"Poison I Potion"}',minecraft:item_name='{"extra":["Poison I Potion"],"text":"EMU"}',minecraft:potion_contents={potion:"minecraft:poison"},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"green","text":"Poison I Potion"}'}] 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Poison I Potion]","bold":true,"color":"green","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
