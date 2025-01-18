effect give @a[tag=target2] minecraft:levitation 1 12 true
execute as @a[tag=target2] if entity @s[type=minecraft:player,predicate=effect:levitation] run function effect:levitation/check
return 1