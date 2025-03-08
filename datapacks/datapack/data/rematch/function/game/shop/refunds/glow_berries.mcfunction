scoreboard players add @s currency 15
clear @s minecraft:glow_berries 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Glow Berries]","bold":true,"color":"yellow","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
