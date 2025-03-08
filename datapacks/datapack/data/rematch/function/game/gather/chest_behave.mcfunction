execute if entity @e[type=minecraft:player,distance=..5,sort=nearest,limit=1] run data merge entity @s {CustomNameVisible:1b}
execute unless entity @e[type=minecraft:player,distance=..5,sort=nearest,limit=1] run data merge entity @s {CustomNameVisible:0b}
execute unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:chest",count:1}]}] run kill @s

execute at @s facing entity @a[sort=nearest,limit=1,team=!spectators] eyes rotated ~ 0 run rotate @s ~ ~