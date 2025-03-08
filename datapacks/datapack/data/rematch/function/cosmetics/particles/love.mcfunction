scoreboard players add @a[tag=Love] particle_Love 1
execute as @a[tag=Love,tag=!playernoparticle,scores={particle_Love=10,Health=10..}] at @s run particle minecraft:heart ~ ~2 ~ .2 0 .2 1 1 normal @a
execute as @a[tag=Love,tag=!playernoparticle,scores={particle_Love=10,Health=..9}] at @s run particle minecraft:damage_indicator ~ ~2 ~ .2 0 .2 .1 2 normal @a
scoreboard players set @a[tag=Love,scores={particle_Love=10}] particle_Love 0

scoreboard players add @e[tag=Love_display] particle_Love 1
execute as @e[tag=Love_display,tag=!playernoparticle,scores={particle_Love=10}] at @s run particle minecraft:heart ~ ~1 ~ .2 0 .2 1 1 normal @a
scoreboard players set @e[tag=Love_display,scores={particle_Love=10}] particle_Love 0