scoreboard players add @s currency 225
clear @s minecraft:totem_of_undying 1
tellraw @s ["",{"text":"\u2714 Refunded","color":"dark_red","type":"text"},{"text":" [Totem of Undying]","bold":true,"color":"yellow","type":"text"}]
execute at @s run playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1 1

return 1