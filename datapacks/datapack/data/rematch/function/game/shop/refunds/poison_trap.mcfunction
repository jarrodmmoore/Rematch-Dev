scoreboard players add @s currency 40
clear @s minecraft:green_glazed_terracotta 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Poison Trap]","bold":true,"color":"green","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1