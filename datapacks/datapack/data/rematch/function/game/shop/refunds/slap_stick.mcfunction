scoreboard players add @s currency 150
clear @s minecraft:bamboo 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Slap Stick]","bold":true,"color":"green","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1