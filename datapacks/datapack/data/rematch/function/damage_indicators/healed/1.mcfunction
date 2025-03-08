summon minecraft:armor_stand ~ ~2.2 ~ {CustomName:'{"bold":true,"color":"light_purple","text":"+1"}',CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setscore"]}
scoreboard players set @e[tag=setscore] floatup 10
tag @e[tag=setscore] remove setscore