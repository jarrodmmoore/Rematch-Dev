#0.5 chance

scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math = @e[tag=arenaStand,scores={arenaID=1..2},sort=random,limit=1] arenaID

execute if entity @e[scores={math=1},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run summon minecraft:wolf ~ ~ ~ {Tags:["wolf"],CustomName:'{"bold":true,"text":"PUNCH!"}',PersistenceRequired:0b,CanPickUpLoot:0b,Health:8,attributes:[{id:"minecraft:max_health",base:8.0d},{id:"minecraft:movement_speed",base:0.3d}]}