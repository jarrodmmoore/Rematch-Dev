scoreboard players add @s currency 100
clear @s minecraft:red_stained_glass 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Laser Beam]","bold":true,"color":"dark_red","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
