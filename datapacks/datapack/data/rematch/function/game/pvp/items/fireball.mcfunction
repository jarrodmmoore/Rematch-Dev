execute at @s run summon minecraft:snowball ^ ^1.6 ^1 {NoGravity:1b,Tags:["aimMe","fireball"],Item:{id:"minecraft:fire_charge",count:1}}
playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1.2 1.6

scoreboard players set @s coord_dx 0
scoreboard players set @s coord_dy 0
scoreboard players set @s coord_dz 0

tag @s add self

execute store result score @s coord_x run data get entity @s Pos[0] 10000
execute store result score @s coord_y run data get entity @s Pos[1] 10000
execute store result score @s coord_z run data get entity @s Pos[2] 10000

execute at @s run summon minecraft:area_effect_cloud ^ ^ ^0.0015 {Tags:["lookinghere"]}

execute as @e[tag=lookinghere] store result score @a[tag=self,limit=1] coord_dx run data get entity @s Pos[0] 10000
execute as @e[tag=lookinghere] store result score @a[tag=self,limit=1] coord_dy run data get entity @s Pos[1] 10000
execute as @e[tag=lookinghere] store result score @a[tag=self,limit=1] coord_dz run data get entity @s Pos[2] 10000

scoreboard players operation @s coord_dx -= @s coord_x
scoreboard players operation @s coord_dy -= @s coord_y
scoreboard players operation @s coord_dz -= @s coord_z

execute store result entity @e[tag=aimMe,limit=1] Motion[0] double 0.1 run scoreboard players get @s coord_dx
execute store result entity @e[tag=aimMe,limit=1] Motion[1] double 0.1 run scoreboard players get @s coord_dy
execute store result entity @e[tag=aimMe,limit=1] Motion[2] double 0.1 run scoreboard players get @s coord_dz

scoreboard players operation @e[tag=aimMe] playerID = @s playerID
scoreboard players operation @e[tag=aimMe] coord_dx = @s coord_dx
scoreboard players operation @e[tag=aimMe] coord_dy = @s coord_dy
scoreboard players operation @e[tag=aimMe] coord_dz = @s coord_dz

kill @e[tag=lookinghere]

execute if entity @s[team=redplayers] run tag @e[tag=aimMe] add reditem
execute if entity @s[team=blueplayers] run tag @e[tag=aimMe] add blueitem

tag @e[tag=aimMe] remove aimMe
tag @s remove self

scoreboard players reset @s dropFireball