scoreboard players add @s currency 40
clear @s minecraft:cooked_beef 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Steak]","bold":true,"color":"red","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1