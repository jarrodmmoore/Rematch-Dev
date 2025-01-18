effect give @a[distance=..15,tag=!nohit] minecraft:levitation 1 35 true
execute as @a[distance=..15,tag=!nohit] if entity @s[type=minecraft:player,predicate=effect:levitation] run function effect:levitation/check
return 1