scoreboard players add @s currency 200
clear @s minecraft:iron_sword 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Sturdy Sword]","bold":true,"color":"white","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1