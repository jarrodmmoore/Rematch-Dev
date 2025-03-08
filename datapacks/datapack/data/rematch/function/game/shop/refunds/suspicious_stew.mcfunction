scoreboard players add @s currency 10
clear @s minecraft:suspicious_stew 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Suspicious Stew]","bold":true,"color":"dark_green","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
