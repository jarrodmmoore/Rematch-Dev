summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,DisabledSlots:2039583,Tags:["laserbeam","aimMe"]}

#im stealing a lot of code from myself here wow
tp @e[tag=aimMe] @s
scoreboard players operation @e[tag=aimMe] playerID = @s playerID
execute if entity @s[team=redplayers] run tag @e[tag=aimMe] add reditem
execute if entity @s[team=blueplayers] run tag @e[tag=aimMe] add blueitem
tag @e[tag=aimMe] remove aimMe

playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1.7
particle minecraft:dust{color:[1.0f,0.2f,0.2f],scale:2.0f} ^ ^1.5 ^.5 0.35 0.35 0.35 .01 10

scoreboard players reset @s dropRedGlass