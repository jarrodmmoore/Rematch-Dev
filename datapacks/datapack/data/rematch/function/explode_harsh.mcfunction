#no resistance, raw explosion damage!

summon minecraft:area_effect_cloud ~ ~ ~ {Invulnerable:1b,Duration:10,Tags:["killcloud","keepcloud"]}
summon minecraft:creeper ~1 ~.5 ~-1 {Invulnerable:1b,Fuse:0s,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:1980,show_particles:0b}]}
summon minecraft:creeper ~1 ~.5 ~1 {Invulnerable:1b,Fuse:0s,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:1980,show_particles:0b}]}
summon minecraft:creeper ~-1 ~.5 ~1 {Invulnerable:1b,Fuse:0s,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:1980,show_particles:0b}]}
summon minecraft:creeper ~-1 ~.5 ~-1 {Invulnerable:1b,Fuse:0s,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:1980,show_particles:0b}]}
return 1