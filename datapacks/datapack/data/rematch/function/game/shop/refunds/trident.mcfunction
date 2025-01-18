scoreboard players add @s currency 600
clear @s minecraft:trident 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Trident]","bold":true,"color":"dark_aqua","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1