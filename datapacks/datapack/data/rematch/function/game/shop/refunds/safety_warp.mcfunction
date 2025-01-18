scoreboard players add @s currency 200
clear @s minecraft:emerald_block 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Safety Warp]","bold":true,"color":"green","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1