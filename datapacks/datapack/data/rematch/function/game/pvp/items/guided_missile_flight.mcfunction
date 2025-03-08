tag @s add imamissile

execute as @a[gamemode=adventure] run scoreboard players operation @s math = @s playerID
execute as @a[gamemode=adventure] run scoreboard players operation @s math -= @e[tag=imamissile,limit=1] playerID
tag @a[gamemode=adventure,scores={math=0},sort=nearest,limit=1] add parent

#moves towards nearest player
execute if entity @s[tag=!reditem,tag=!blueitem] at @s facing entity @a[tag=!parent,sort=nearest,limit=1,team=!spectators] feet run rotate @s ~ ~
execute if entity @s[tag=reditem] facing entity @a[tag=!parent,sort=nearest,limit=1,team=blueplayers] feet run rotate @s ~ ~
execute if entity @s[tag=blueitem] facing entity @a[tag=!parent,sort=nearest,limit=1,team=redplayers] feet run rotate @s ~ ~
tp @s ^ ^ ^0.4

particle minecraft:large_smoke ~ ~1.7 ~ 0.1 0.1 0.1 0 1 force
particle minecraft:flame ~ ~1.7 ~ 0.1 0.1 0.1 .1 1 force
playsound minecraft:block.lava.extinguish master @a ~ ~ ~ .2 .5 .1

#explode on contact with enemy players
execute if entity @s[scores={age=10..}] if entity @s[tag=!reditem,tag=!blueitem] if entity @a[gamemode=adventure,distance=..2,tag=!parent] run function rematch:game/pvp/items/missile_explode
execute if entity @s[scores={age=10..}] if entity @s[tag=reditem] if entity @a[gamemode=adventure,distance=..2,tag=!parent,team=blueplayers] run function rematch:game/pvp/items/missile_explode
execute if entity @s[scores={age=10..}] if entity @s[tag=blueitem] if entity @a[gamemode=adventure,distance=..2,tag=!parent,team=redplayers] run function rematch:game/pvp/items/missile_explode

#...or explode on contact with a surface
execute unless block ^ ^1.5 ^.25 #rematch:missile_do_not_explode run function rematch:game/pvp/items/missile_explode

#...or explode after flying for too long
scoreboard players add @s age 1
execute if entity @s[scores={age=300..}] run function rematch:game/pvp/items/missile_explode

tag @a[tag=parent] remove parent
tag @s remove imamissile