scoreboard players add @s currency 20
clear @s minecraft:ender_eye 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Radio Tracker]","bold":true,"color":"dark_gray","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
