#0.4 chance
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math = @e[tag=arenaStand,scores={arenaID=1..5},sort=random,limit=1] arenaID

execute if entity @e[scores={math=1..2},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["chest","checkProximity"],Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:chest",count:1}],HandItems:[{},{}],CustomName:'{"bold":true,"color":"dark_green","text":"CLICK!"}',CustomNameVisible:0b,DisabledSlots:986895}