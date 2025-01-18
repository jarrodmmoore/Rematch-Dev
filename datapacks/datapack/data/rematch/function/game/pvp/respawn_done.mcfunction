scoreboard players reset @s death
particle minecraft:happy_villager ~ ~1 ~ 0.4 0.4 0.4 1 25 normal
playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 1 .5
function rematch:text/pvp/you_died
function help:b1b7b32c383cf7c8ae900b807469e3bc552abb04df1f75545c9693e4e338107d
scoreboard players reset @s SPEEN
effect clear @s minecraft:blindness
return 1