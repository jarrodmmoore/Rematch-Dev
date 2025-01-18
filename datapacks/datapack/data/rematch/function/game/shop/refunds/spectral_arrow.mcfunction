scoreboard players add @s currency 25
clear @s minecraft:spectral_arrow[minecraft:custom_name='{"bold":true,"color":"yellow","text":"Spectral Arrow"}',minecraft:item_name='{"extra":["Spectral Arrow"],"text":"EMU"}',minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"yellow","text":"Spectral Arrow"}'}] 4
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Spectral Arrows] (x4)","bold":true,"color":"yellow","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1