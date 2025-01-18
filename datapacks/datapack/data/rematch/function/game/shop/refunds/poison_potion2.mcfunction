scoreboard players add @s currency 100
clear @s minecraft:splash_potion[minecraft:custom_name='{"bold":true,"color":"green","text":"Poison II Potion"}',minecraft:item_name='{"extra":["Poison II Potion"],"text":"EMU"}',minecraft:potion_contents={potion:"minecraft:strong_poison"},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"green","text":"Poison II Potion"}'}] 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Poison II Potion]","bold":true,"color":"green","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1