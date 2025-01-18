scoreboard players add @s currency 300
clear @s minecraft:ghast_tear 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Vampire's Teeth]","bold":true,"color":"white","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1