#spin in a circle
rotate @s ~20 ~

#denote particle boundary
execute if entity @s[tag=a1] at @s run particle minecraft:dust{color:[1.0f,0.0f,0.667f],scale:1.0f} ^ ^ ^4 0 0 0 0 3 normal @a
execute if entity @s[tag=a1] at @s run particle minecraft:dust{color:[1.0f,0.0f,0.667f],scale:1.0f} ^ ^ ^-4 0 0 0 0 3 normal @a
execute if entity @s[tag=a2] at @s run particle minecraft:dust{color:[0.369f,0.149f,0.0f],scale:1.0f} ^ ^ ^4 0 0 0 0 3 normal @a
execute if entity @s[tag=a2] at @s run particle minecraft:dust{color:[0.369f,0.149f,0.0f],scale:1.0f} ^ ^ ^-4 0 0 0 0 3 normal @a
execute if entity @s[tag=a3] at @s run particle minecraft:dust{color:[1.0f,1.0f,0.0f],scale:1.0f} ^ ^ ^4 0 0 0 0 3 normal @a
execute if entity @s[tag=a3] at @s run particle minecraft:dust{color:[1.0f,1.0f,0.0f],scale:1.0f} ^ ^ ^-4 0 0 0 0 3 normal @a
execute if entity @s[tag=a4] at @s run particle minecraft:dust{color:[0.0f,1.0f,1.0f],scale:1.0f} ^ ^ ^4 0 0 0 0 3 normal @a
execute if entity @s[tag=a4] at @s run particle minecraft:dust{color:[0.0f,1.0f,1.0f],scale:1.0f} ^ ^ ^-4 0 0 0 0 3 normal @a
execute if entity @s[tag=a5] at @s run particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:1.0f} ^ ^ ^4 0 0 0 0 3 normal @a
execute if entity @s[tag=a5] at @s run particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:1.0f} ^ ^ ^-4 0 0 0 0 3 normal @a

#give effects
execute if entity @s[tag=a1] as @a[distance=..4] run effect clear @s minecraft:haste
execute if entity @s[tag=a1] as @a[distance=..4] run effect give @s minecraft:haste 10 0 true
execute if entity @s[tag=a2] as @a[distance=..4] run effect clear @s minecraft:strength
execute if entity @s[tag=a2] as @a[distance=..4] run effect give @s minecraft:strength 10 0 true
execute if entity @s[tag=a3] as @a[distance=..4] run effect clear @s minecraft:slow_falling
execute if entity @s[tag=a3] as @a[distance=..4] run effect give @s minecraft:slow_falling 10 1 true
execute if entity @s[tag=a4] as @a[distance=..4] run effect clear @s minecraft:jump_boost
execute if entity @s[tag=a4] as @a[distance=..4] run effect give @s minecraft:jump_boost 10 3 true
execute if entity @s[tag=a5] as @a[distance=..4] run effect clear @s minecraft:speed
execute if entity @s[tag=a5] as @a[distance=..4] run effect give @s minecraft:speed 10 1 true

#timer
scoreboard players add @s axolotl_timer 1
execute if entity @s[scores={axolotl_timer=400}] run kill @s