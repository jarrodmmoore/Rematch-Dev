function help:0210150598536c7a0dcf49762d0eb43b64282ec1a528722a50df3a2af2a481a0
execute as @a[tag=target2] at @s run playsound minecraft:entity.slime.attack master @a
execute as @a[tag=target2] at @s run particle minecraft:dust{color:[0.5f,1.0f,0.5f],scale:2.0f} ~ ~.6 ~ 0.5 0.2 0.5 1 15 force
execute as @a[tag=target2,tag=!target] run effect give @s minecraft:slow_falling 5 1 true
return 1