scoreboard players add @s currency 80
clear @s minecraft:stone_sword 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Rusted Steel]","bold":true,"color":"dark_gray","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1