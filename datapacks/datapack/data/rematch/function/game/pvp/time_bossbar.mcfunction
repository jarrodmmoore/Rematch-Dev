bossbar set minecraft:timeremaining players @a
bossbar set minecraft:timeremaining color white
bossbar set minecraft:timeremaining style notched_20
bossbar set minecraft:timeremaining max 1200
execute store result bossbar minecraft:timeremaining value run scoreboard players get @e[limit=1,name=Global] timeRemaining

#put time on display
scoreboard players set @e[tag=arenaStand,scores={arenaID=1}] math 20
scoreboard players set @e[tag=arenaStand,scores={arenaID=2}] math 1200
scoreboard players operation @e[name=Global] math = @e[limit=1,name=Global] timeRemaining
scoreboard players operation @e[name=Global] math2 = @e[limit=1,name=Global] timeRemaining
execute as @e[name=Global] run scoreboard players operation @s math /= @e[tag=arenaStand,scores={arenaID=1},limit=1] math
execute as @e[name=Global] run scoreboard players operation @s math2 /= @e[tag=arenaStand,scores={arenaID=2},limit=1] math

scoreboard players remove @e[scores={math=1920..},name=Global] math 1920
scoreboard players remove @e[scores={math=960..},name=Global] math 960
scoreboard players remove @e[scores={math=480..},name=Global] math 480
scoreboard players remove @e[scores={math=240..},name=Global] math 240
scoreboard players remove @e[scores={math=120..},name=Global] math 120
scoreboard players remove @e[scores={math=60..},name=Global] math 60

execute if entity @e[scores={math=10..},name=Global] run bossbar set timeremaining name ["",{"text":"Hurry up! ","color":"white","bold":true,"type":"text"},{"score":{"name":"@e[limit=1,name=Global]","objective":"math2"},"bold":true,"color":"white","type":"score"},{"text":":","color":"white","bold":true,"type":"text"},{"score":{"name":"@e[limit=1,name=Global]","objective":"math"},"bold":true,"color":"white","type":"score"}]
execute if entity @e[scores={math=..9},name=Global] run bossbar set timeremaining name ["",{"text":"Hurry up! ","color":"white","bold":true,"type":"text"},{"score":{"name":"@e[limit=1,name=Global]","objective":"math2"},"bold":true,"color":"white","type":"score"},{"text":":0","color":"white","bold":true,"type":"text"},{"score":{"name":"@e[limit=1,name=Global]","objective":"math"},"bold":true,"color":"white","type":"score"}]
return 1