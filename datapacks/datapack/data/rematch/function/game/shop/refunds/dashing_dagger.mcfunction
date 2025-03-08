scoreboard players add @s currency 350
clear @s minecraft:golden_sword 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Dashing Dagger]","bold":true,"color":"yellow","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1
