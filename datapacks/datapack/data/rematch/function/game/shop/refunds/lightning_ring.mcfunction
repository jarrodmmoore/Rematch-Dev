scoreboard players add @s currency 200
clear @s minecraft:diamond 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Lightning Ring]","bold":true,"color":"aqua","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
