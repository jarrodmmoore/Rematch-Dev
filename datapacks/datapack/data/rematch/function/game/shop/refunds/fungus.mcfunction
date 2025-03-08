scoreboard players add @s currency 200
clear @s minecraft:weeping_vines 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Fungus]","bold":true,"color":"red","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
