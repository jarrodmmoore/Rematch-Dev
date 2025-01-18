summon minecraft:creeper ~ ~1 ~ {powered:1b,Tags:["phase3item"]}

particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 0.01 20
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1 1.7
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0.75
return 1