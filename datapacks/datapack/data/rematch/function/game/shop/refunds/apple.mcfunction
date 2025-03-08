scoreboard players add @s currency 20
clear @s minecraft:apple 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Apple]","bold":true,"color":"dark_red","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
