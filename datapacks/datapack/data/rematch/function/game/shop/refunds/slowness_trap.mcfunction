scoreboard players add @s currency 30
clear @s minecraft:blue_glazed_terracotta 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Slowness Trap]","bold":true,"color":"dark_blue","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1