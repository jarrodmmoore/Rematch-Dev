function help:cb9bc967a29c9c2b35788781c0c1ba2519260236f4de260f020e236f48de1086
tp @s ^ ^ ^0.1
execute if entity @e[type=minecraft:player,distance=..5,sort=nearest,limit=1] run data merge entity @s {CustomNameVisible:1b}
execute unless entity @e[type=minecraft:player,distance=..5,sort=nearest,limit=1] run data merge entity @s {CustomNameVisible:0b}
execute unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1}]}] run kill @s
return 1