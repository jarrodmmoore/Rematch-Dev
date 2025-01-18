scoreboard players add @s currency 40
clear @s minecraft:potion[minecraft:custom_name='{"bold":true,"color":"white","text":"Slowfall Potion"}',minecraft:item_name='{"extra":["Slowfall Potion"],"text":"EMU"}',minecraft:potion_contents={potion:"minecraft:slow_falling"},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"white","text":"Slowfall Potion"}'}] 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Slowfall Potion]","bold":true,"color":"white","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1