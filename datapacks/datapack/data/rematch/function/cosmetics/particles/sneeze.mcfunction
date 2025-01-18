scoreboard players add @e[tag=Sneeze] particle_Sneeze 1
execute as @e[tag=Sneeze,tag=!playernoparticle,scores={particle_Sneeze=10}] at @s run particle minecraft:sneeze ~ ~1.5 ~ .3 0 .3 .01 10 normal @a
scoreboard players set @e[tag=Sneeze,scores={particle_Sneeze=80}] particle_Sneeze 0

scoreboard players add @e[tag=Sneeze_display] particle_Sneeze 1
execute as @e[tag=Sneeze_display,tag=!playernoparticle,scores={particle_Sneeze=10}] at @s run particle minecraft:sneeze ~ ~0.5 ~ .3 0 .3 .01 10 normal @a
scoreboard players set @e[tag=Sneeze_display,scores={particle_Sneeze=80}] particle_Sneeze 0
return 1