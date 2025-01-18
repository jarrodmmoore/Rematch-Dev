effect clear @a[team=players] minecraft:jump_boost
execute as @a[team=players] if entity @s[type=minecraft:player] unless score @s effect.jump_boost_duration matches 0 run function effect:jump_boost/remove
return 1