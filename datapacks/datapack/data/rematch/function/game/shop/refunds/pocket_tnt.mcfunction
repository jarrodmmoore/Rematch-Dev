scoreboard players add @s currency 50
clear @s minecraft:tnt 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Pocket TNT]","bold":true,"color":"dark_red","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
