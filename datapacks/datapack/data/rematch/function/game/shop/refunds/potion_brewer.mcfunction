scoreboard players add @s currency 350
clear @s minecraft:brewing_stand 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Potion Brewer]","bold":true,"color":"dark_purple","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
