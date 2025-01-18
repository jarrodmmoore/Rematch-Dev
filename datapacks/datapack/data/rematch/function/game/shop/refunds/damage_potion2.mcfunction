scoreboard players add @s currency 80
clear @s minecraft:splash_potion[minecraft:custom_name='{"bold":true,"color":"dark_purple","text":"Damage II Potion"}',minecraft:item_name='{"extra":["Damage II Potion"],"text":"EMU"}',minecraft:potion_contents={potion:"minecraft:strong_harming"},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"dark_purple","text":"Damage II Potion"}'}] 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Damage II Potion]","bold":true,"color":"dark_purple","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1