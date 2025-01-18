scoreboard players add @e[tag=Ink] particle_Ink 1
execute at @e[tag=Ink,tag=!playernoparticle,scores={particle_Ink=10}] run particle minecraft:squid_ink ~ ~.7 ~ .1 .01 .1 .01 5 normal @a
scoreboard players set @e[tag=Ink,scores={particle_Ink=80}] particle_Ink 0
return 1