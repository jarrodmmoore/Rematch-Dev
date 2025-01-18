#spin in a circle
function help:0c5a51064e20602a0784400cff9b7481d51c4033e7c2afc95c4e1c3615950626

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
execute if entity @s[tag=a4] as @a[distance=..4] run function help:35d6691452f6804f1eb12247c4d974954d1d09d26b5cb9c3de6b97b167b6b953
execute if entity @s[tag=a4] as @a[distance=..4] run function help:9bf64381aae4a1f65d6cdcf28d6f876f951df989c7f82c8ec03331dda867b186
execute if entity @s[tag=a5] as @a[distance=..4] run effect clear @s minecraft:speed
execute if entity @s[tag=a5] as @a[distance=..4] run effect give @s minecraft:speed 10 1 true

#timer
scoreboard players add @s axolotl_timer 1
execute if entity @s[scores={axolotl_timer=400}] run kill @s
return 1