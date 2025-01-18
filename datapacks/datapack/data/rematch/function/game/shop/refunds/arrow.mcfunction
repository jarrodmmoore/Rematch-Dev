scoreboard players add @s currency 50
clear @s minecraft:arrow 16
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Arrows] (x16)","bold":true,"color":"dark_gray","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1