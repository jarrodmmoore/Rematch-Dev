summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull",count:1}],HandItems:[{},{}],Tags:["missile","aimMe"]}

#im stealing a lot of code from myself here wow
tp @e[tag=aimMe] @s
scoreboard players operation @e[tag=aimMe] playerID = @s playerID
execute if entity @s[team=redplayers] run tag @e[tag=aimMe] add reditem
execute if entity @s[team=blueplayers] run tag @e[tag=aimMe] add blueitem
tag @e[tag=aimMe] remove aimMe

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.7
particle minecraft:explosion ^ ^1.5 ^.5 0.2 0.2 0.2 .01 1

scoreboard players reset @s dropMissile
return 1