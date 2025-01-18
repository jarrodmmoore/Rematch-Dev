execute at @s run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1
tellraw @s {"text":"\u2716 Insufficient funds.","color":"dark_red","type":"text"}
return 1