scoreboard players add @s currency 125
clear @s minecraft:beacon 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Instant Shield]","bold":true,"color":"aqua","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1