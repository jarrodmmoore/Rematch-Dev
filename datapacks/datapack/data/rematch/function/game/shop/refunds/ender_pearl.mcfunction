scoreboard players add @s currency 75
clear @s minecraft:ender_pearl 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Ender Pearl]","bold":true,"color":"dark_aqua","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
