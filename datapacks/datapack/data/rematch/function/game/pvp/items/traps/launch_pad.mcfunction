effect give @a[tag=target2] minecraft:levitation 1 12 true
execute as @a[tag=target2] at @s run playsound minecraft:entity.slime.attack master @a
execute as @a[tag=target2] at @s run particle minecraft:dust{color:[0.5f,1.0f,0.5f],scale:2.0f} ~ ~.6 ~ 0.5 0.2 0.5 1 15 force
execute as @a[tag=target2,tag=!target] run effect give @s minecraft:slow_falling 5 1 true