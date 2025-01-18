scoreboard players add @e[tag=Angry_Cloud] particle_AngClod 1
execute as @e[tag=Angry_Cloud,tag=!playernoparticle,scores={particle_AngClod=10}] at @s run particle minecraft:angry_villager ~ ~1.7 ~ 0 0 0 0 1 normal @a
scoreboard players set @e[scores={particle_AngClod=20}] particle_AngClod 0

scoreboard players add @e[tag=Angry_Cloud_display] particle_AngClod 1
execute as @e[tag=Angry_Cloud_display,scores={particle_AngClod=10}] at @s run particle minecraft:angry_villager ~ ~0.7 ~ 0 0 0 0 1 normal @a
return 1