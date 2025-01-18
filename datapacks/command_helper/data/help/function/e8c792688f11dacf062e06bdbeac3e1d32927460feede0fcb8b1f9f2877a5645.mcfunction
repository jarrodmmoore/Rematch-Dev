effect give @a[team=players] minecraft:jump_boost 100000 1 true
execute as @a[team=players] if entity @s[type=minecraft:player,predicate=effect:jump_boost] run function effect:jump_boost/check
return 1