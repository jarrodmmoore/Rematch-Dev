scoreboard players add @s currency 250
clear @s minecraft:clock 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Player Swap]","bold":true,"color":"yellow","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
