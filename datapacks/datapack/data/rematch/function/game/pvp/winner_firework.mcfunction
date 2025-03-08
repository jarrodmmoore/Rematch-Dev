#one of 5 random fireworks
scoreboard players operation @s math = @e[tag=arenaStand,scores={arenaID=1..5},sort=random,limit=1] arenaID

execute if entity @s[scores={math=1}] run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16729574],fade_colors:[I;6225844],has_trail:1b,has_twinkle:1b}]}},count:1}}

execute if entity @s[scores={math=2}] run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0d,0.8d,0.0d],FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;14548739],fade_colors:[I;16777215],has_trail:1b}]}},count:1}}

execute if entity @s[scores={math=3}] run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0d,0.7d,0.0d],FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"star",colors:[I;2415359],fade_colors:[I;16757683],has_trail:1b,has_twinkle:1b}]}},count:1}}

execute if entity @s[scores={math=4}] run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0d,1.1d,0.0d],FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"creeper",colors:[I;1376075],has_trail:1b}]}},count:1}}

execute if entity @s[scores={math=5}] run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:20,Motion:[0.0d,0.5d,0.0d],FireworksItem:{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{shape:"burst",colors:[I;16711680,15662848,261899],fade_colors:[I;16749051],has_trail:1b,has_twinkle:1b}]}},count:1}}