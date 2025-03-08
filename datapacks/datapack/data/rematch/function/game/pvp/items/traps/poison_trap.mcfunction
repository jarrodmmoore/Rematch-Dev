effect give @a[tag=target] minecraft:poison 5 2 false

execute as @a[tag=target] at @s run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 1 2
execute as @a[tag=target] at @s run particle minecraft:dust{color:[0.0f,0.5f,0.0f],scale:1.5f} ~ ~1 ~ 0.5 0.2 0.5 1 5

playsound minecraft:entity.evoker_fangs.attack master @a
particle minecraft:dust{color:[0.0f,0.5f,0.0f],scale:2.0f} ~ ~.6 ~ 0.5 0.2 0.5 1 50 force
particle minecraft:instant_effect ~ ~.6 ~ 0 0 0 1 20

tag @s add die