scoreboard players add @s currency 400
clear @s minecraft:diamond_sword 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Diamond Blade]","bold":true,"color":"aqua","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1