scoreboard players add @e[tag=Pheonix_display] particle_Pheonix 1
scoreboard players add @e[tag=Pheonix_Flame] particle_Pheonix 1
execute as @e[tag=Pheonix_Flame] at @s run function help:1b836f036fb6baee2fe464caf3c378653972a2b76cfaaecd388aaa3e133433ab
execute as @e[tag=Pheonix_Flame] at @s run tp @s ^ ^ ^0.05
execute as @e[tag=Pheonix_Flame] at @s run particle minecraft:flame ~ ~ ~ 0 0 0 0 3 normal @a
execute as @e[tag=Pheonix_Flame] at @s run tp @s ~ ~0.025 ~
kill @e[type=minecraft:armor_stand,tag=Pheonix_Flame,scores={particle_Pheonix=35}]

execute as @e[type=!minecraft:player,tag=Pheonix_display,scores={particle_Pheonix=25}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["Pheonix_Flame"],Marker:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:31,Small:1b,Rotation:[0.0f,0.0f]}
execute as @e[type=!minecraft:player,tag=Pheonix_display,scores={particle_Pheonix=25}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["Pheonix_Flame"],Marker:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:31,Small:1b,Rotation:[90.0f,0.0f]}
execute as @e[type=!minecraft:player,tag=Pheonix_display,scores={particle_Pheonix=25}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["Pheonix_Flame"],Marker:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:31,Small:1b,Rotation:[180.0f,0.0f]}
execute as @e[type=!minecraft:player,tag=Pheonix_display,scores={particle_Pheonix=25}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["Pheonix_Flame"],Marker:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:31,Small:1b,Rotation:[270.0f,0.0f]}

execute as @a[tag=Pheonix_display,tag=!playernoparticle,scores={particle_Pheonix=25}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["Pheonix_Flame"],Marker:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:31,Small:1b,Rotation:[0.0f,0.0f]}
execute as @a[tag=Pheonix_display,tag=!playernoparticle,scores={particle_Pheonix=25}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["Pheonix_Flame"],Marker:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:31,Small:1b,Rotation:[90.0f,0.0f]}
execute as @a[tag=Pheonix_display,tag=!playernoparticle,scores={particle_Pheonix=25}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["Pheonix_Flame"],Marker:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:31,Small:1b,Rotation:[180.0f,0.0f]}
execute as @a[tag=Pheonix_display,tag=!playernoparticle,scores={particle_Pheonix=25}] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Tags:["Pheonix_Flame"],Marker:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:31,Small:1b,Rotation:[270.0f,0.0f]}

scoreboard players set @e[tag=Pheonix_display,scores={particle_Pheonix=50}] particle_Pheonix 0
return 1