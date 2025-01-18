scoreboard players add @s currency 75
clear @s minecraft:creeper_spawn_egg 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Charged Creeper]","bold":true,"color":"green","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1