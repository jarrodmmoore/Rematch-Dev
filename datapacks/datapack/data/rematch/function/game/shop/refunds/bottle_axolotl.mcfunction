scoreboard players add @s currency 75
clear @s minecraft:axolotl_bucket 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Bottle O' Axolotl]","bold":true,"color":"light_purple","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
