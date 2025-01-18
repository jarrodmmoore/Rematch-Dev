effect give @a[distance=..10,tag=!nohit] minecraft:levitation 1 41 true
execute as @a[distance=..10,tag=!nohit] if entity @s[type=minecraft:player,predicate=effect:levitation] run function effect:levitation/check
return 1