scoreboard players add @e[tag=Brewing] brewParticle 1
scoreboard players add @e[tag=Brewing_display] brewParticle 1
scoreboard players set @e[scores={brewParticle=10..}] brewParticle 1

execute as @e[tag=Brewing,tag=!playernoparticle,scores={brewParticle=1}] at @s run particle minecraft:entity_effect{color:[0.0f,0.0f,0.0f,0.5f]} ~ ~2 ~ 1.000 0.000 0.000 1 0 normal @a
execute as @e[tag=Brewing,tag=!playernoparticle,scores={brewParticle=2}] at @s run particle minecraft:entity_effect{color:[0.0f,0.0f,0.0f,0.5f]} ~ ~2 ~ 1.000 0.569 0.000 1 0 normal @a
execute as @e[tag=Brewing,tag=!playernoparticle,scores={brewParticle=3}] at @s run particle minecraft:entity_effect{color:[0.0f,0.0f,0.0f,0.5f]} ~ ~2 ~ 1.000 1.000 0.000 1 0 normal @a
execute as @e[tag=Brewing,tag=!playernoparticle,scores={brewParticle=4}] at @s run particle minecraft:entity_effect{color:[0.0f,0.0f,0.0f,0.5f]} ~ ~2 ~ 0.110 1.000 0.012 1 0 normal @a
execute as @e[tag=Brewing,tag=!playernoparticle,scores={brewParticle=5}] at @s run particle minecraft:entity_effect{color:[0.0f,0.0f,0.0f,0.5f]} ~ ~2 ~ 0.000 1.000 1.000 1 0 normal @a
execute as @e[tag=Brewing,tag=!playernoparticle,scores={brewParticle=6}] at @s run particle minecraft:entity_effect{color:[0.0f,0.0f,0.0f,0.5f]} ~ ~2 ~ 0.067 0.000 1.000 1 0 normal @a
execute as @e[tag=Brewing,tag=!playernoparticle,scores={brewParticle=7}] at @s run particle minecraft:entity_effect{color:[0.0f,0.0f,0.0f,0.5f]} ~ ~2 ~ 0.902 0.000 1.000 1 0 normal @a
execute as @e[tag=Brewing,tag=!playernoparticle,scores={brewParticle=8}] at @s run particle minecraft:entity_effect{color:[0.0f,0.0f,0.0f,1.0f]} ~ ~2 ~ 1.000 1.000 1.000 1 0 normal @a
execute as @e[tag=Brewing,tag=!playernoparticle,scores={brewParticle=9}] at @s run particle minecraft:entity_effect{color:[0.0f,0.0f,0.0f,1.0f]} ~ ~2 ~ 0.000 0.000 0.000 1 0 normal @a

execute as @e[tag=Brewing_display,tag=!playernoparticle,scores={brewParticle=1}] at @s run particle minecraft:entity_effect{color:[0.0f,0.0f,0.0f,0.5f]} ~ ~1 ~ 1.000 0.000 0.000 1 0 normal @a
execute as @e[tag=Brewing_display,tag=!playernoparticle,scores={brewParticle=2}] at @s run particle minecraft:entity_effect{color:[0.0f,0.0f,0.0f,0.5f]} ~ ~1 ~ 1.000 0.569 0.000 1 0 normal @a
execute as @e[tag=Brewing_display,tag=!playernoparticle,scores={brewParticle=3}] at @s run particle minecraft:entity_effect{color:[0.0f,0.0f,0.0f,0.5f]} ~ ~1 ~ 1.000 1.000 0.000 1 0 normal @a
execute as @e[tag=Brewing_display,tag=!playernoparticle,scores={brewParticle=4}] at @s run particle minecraft:entity_effect{color:[0.0f,0.0f,0.0f,0.5f]} ~ ~1 ~ 0.110 1.000 0.012 1 0 normal @a
execute as @e[tag=Brewing_display,tag=!playernoparticle,scores={brewParticle=5}] at @s run particle minecraft:entity_effect{color:[0.0f,0.0f,0.0f,0.5f]} ~ ~1 ~ 0.000 1.000 1.000 1 0 normal @a
execute as @e[tag=Brewing_display,tag=!playernoparticle,scores={brewParticle=6}] at @s run particle minecraft:entity_effect{color:[0.0f,0.0f,0.0f,0.5f]} ~ ~1 ~ 0.067 0.000 1.000 1 0 normal @a
execute as @e[tag=Brewing_display,tag=!playernoparticle,scores={brewParticle=7}] at @s run particle minecraft:entity_effect{color:[0.0f,0.0f,0.0f,0.5f]} ~ ~1 ~ 0.902 0.000 1.000 1 0 normal @a
execute as @e[tag=Brewing_display,tag=!playernoparticle,scores={brewParticle=8}] at @s run particle minecraft:entity_effect{color:[0.0f,0.0f,0.0f,1.0f]} ~ ~1 ~ 1.000 1.000 1.000 1 0 normal @a
execute as @e[tag=Brewing_display,tag=!playernoparticle,scores={brewParticle=9}] at @s run particle minecraft:entity_effect{color:[0.0f,0.0f,0.0f,1.0f]} ~ ~1 ~ 0.000 0.000 0.000 1 0 normal @a