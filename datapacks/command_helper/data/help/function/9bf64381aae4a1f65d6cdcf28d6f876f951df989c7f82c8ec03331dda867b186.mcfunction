effect give @s minecraft:jump_boost 10 3 true
execute as @s if entity @s[type=minecraft:player,predicate=effect:jump_boost] run function effect:jump_boost/check
return 1