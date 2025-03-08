summon minecraft:horse ~ ~1 ~ {Health:20.0f,Tame:1b,Variant:2,Tags:["phase3item"],SaddleItem:{id:"minecraft:saddle",Count:1b},attributes:[{id:"minecraft:max_health",base:20.0d},{id:"minecraft:movement_speed",base:0.21d},{id:"minecraft:jump_strength",base:0.6d}]}

particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 0.01 20
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 1.7
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0.75