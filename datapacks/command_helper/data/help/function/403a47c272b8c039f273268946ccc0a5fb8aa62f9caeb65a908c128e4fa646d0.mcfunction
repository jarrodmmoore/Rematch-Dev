effect give @a[distance=..5,tag=!nohit] minecraft:levitation 1 47 true
execute as @a[distance=..5,tag=!nohit] if entity @s[type=minecraft:player,predicate=effect:levitation] run function effect:levitation/check
return 1