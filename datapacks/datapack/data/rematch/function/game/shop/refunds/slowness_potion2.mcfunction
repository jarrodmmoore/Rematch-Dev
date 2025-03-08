scoreboard players add @s currency 70
clear @s minecraft:splash_potion[minecraft:potion_contents={custom_color:5926017,custom_effects:[{id:"minecraft:slowness",amplifier:3b,duration:400}]},minecraft:custom_name='{"bold":true,"color":"dark_gray","text":"Slowness II Potion"}',minecraft:item_name='{"extra":["Slowness II Potion"],"text":"EMU"}',minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"dark_gray","text":"Slowness II Potion"}'}] 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Slowness II Potion]","bold":true,"color":"dark_gray","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
