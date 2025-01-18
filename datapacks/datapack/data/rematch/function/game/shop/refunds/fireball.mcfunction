scoreboard players add @s currency 80
clear @s minecraft:fire_charge 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Fireball]","bold":true,"color":"red","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1