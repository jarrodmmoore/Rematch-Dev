tellraw @s ["",{"text":"Spawnpoint created.","type":"text"}]
tellraw @s ["",{"text":"playerSpawn no. ","type":"text"},{"score":{"name":"@s","objective":"playerSpawn"},"type":"score"}]
tellraw @s ["",{"text":" ","type":"text"}]

summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,NoBasePlate:1b,Tags:["playerSpawn","setme"]}
tp @e[tag=setme] @s
scoreboard players operation @e[tag=setme] playerSpawn = @s playerSpawn
tag @e[tag=setme] remove setme

scoreboard players add @s playerSpawn 1