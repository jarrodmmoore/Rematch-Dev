effect give @a[distance=..7] minecraft:resistance 1 2 true

summon minecraft:area_effect_cloud ~ ~ ~ {Invulnerable:1b,Duration:10,Tags:["killcloud","keepcloud"]}
summon minecraft:creeper ~ ~.5 ~ {Invulnerable:1b,Fuse:0s,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:1980,show_particles:0b}]}