scoreboard players reset @s death
particle minecraft:happy_villager ~ ~1 ~ 0.4 0.4 0.4 1 25 normal
playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 1 .5
function rematch:text/pvp/you_died
effect clear @s
scoreboard players reset @s SPEEN
effect clear @s minecraft:blindness