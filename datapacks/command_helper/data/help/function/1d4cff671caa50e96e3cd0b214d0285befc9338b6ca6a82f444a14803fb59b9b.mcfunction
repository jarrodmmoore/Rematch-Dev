effect give @a[distance=..20,tag=!nohit] minecraft:levitation 1 25 true
execute as @a[distance=..20,tag=!nohit] if entity @s[type=minecraft:player,predicate=effect:levitation] run function effect:levitation/check
return 1