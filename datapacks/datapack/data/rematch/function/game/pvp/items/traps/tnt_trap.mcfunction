execute positioned ~ ~2 ~ run function rematch:explode_small

execute as @a[tag=target] at @s run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 1 2

playsound minecraft:entity.evoker_fangs.attack master @a
particle minecraft:dust{color:[1.0f,0.5f,0.5f],scale:2.0f} ~ ~.6 ~ 0.5 0.2 0.5 1 50 force
particle minecraft:instant_effect ~ ~.6 ~ 0 0 0 1 20

tag @s add die
return 1