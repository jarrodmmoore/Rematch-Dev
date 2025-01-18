scoreboard players add @s currency 200
clear @s minecraft:fire_coral_block 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Safe Shot]","bold":true,"color":"dark_red","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1