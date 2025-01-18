effect give @a[distance=..25,tag=!nohit] minecraft:levitation 1 15 true
execute as @a[distance=..25,tag=!nohit] if entity @s[type=minecraft:player,predicate=effect:levitation] run function effect:levitation/check
return 1