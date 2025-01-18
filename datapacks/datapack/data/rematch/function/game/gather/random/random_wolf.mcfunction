#0.5 chance

scoreboard players operation @e[name=Global] math = @e[tag=arenaStand,scores={arenaID=1..2},sort=random,limit=1] arenaID

execute if entity @e[scores={math=1},name=Global] run summon minecraft:wolf ~ ~ ~ {Tags:["wolf"],CustomName:'{"bold":true,"text":"PUNCH!"}',PersistenceRequired:0b,CanPickUpLoot:0b,Health:8,attributes:[{id:"minecraft:max_health",base:8.0d},{id:"minecraft:movement_speed",base:0.3d}]}
return 1