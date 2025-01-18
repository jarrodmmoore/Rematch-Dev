bossbar set minecraft:timeremaining players @a
bossbar set minecraft:timeremaining color white
bossbar set minecraft:timeremaining style notched_20
bossbar set minecraft:timeremaining max 1200
execute store result bossbar minecraft:timeremaining value run scoreboard players get @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] timeRemaining

#put time on display
scoreboard players set @e[tag=arenaStand,scores={arenaID=1}] math 20
scoreboard players set @e[tag=arenaStand,scores={arenaID=2}] math 1200
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math = @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] timeRemaining
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math2 = @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] timeRemaining
execute as @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run scoreboard players operation @s math /= @e[tag=arenaStand,scores={arenaID=1},limit=1] math
execute as @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run scoreboard players operation @s math2 /= @e[tag=arenaStand,scores={arenaID=2},limit=1] math

scoreboard players remove @e[scores={math=1920..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math 1920
scoreboard players remove @e[scores={math=960..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math 960
scoreboard players remove @e[scores={math=480..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math 480
scoreboard players remove @e[scores={math=240..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math 240
scoreboard players remove @e[scores={math=120..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math 120
scoreboard players remove @e[scores={math=60..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math 60

execute if entity @e[scores={math=10..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run bossbar set timeremaining name ["",{"text":"Hurry up! ","color":"white","bold":true,"type":"text"},{"score":{"name":"@e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1]","objective":"math2"},"bold":true,"color":"white","type":"score"},{"text":":","color":"white","bold":true,"type":"text"},{"score":{"name":"@e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1]","objective":"math"},"bold":true,"color":"white","type":"score"}]
execute if entity @e[scores={math=..9},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run bossbar set timeremaining name ["",{"text":"Hurry up! ","color":"white","bold":true,"type":"text"},{"score":{"name":"@e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1]","objective":"math2"},"bold":true,"color":"white","type":"score"},{"text":":0","color":"white","bold":true,"type":"text"},{"score":{"name":"@e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1]","objective":"math"},"bold":true,"color":"white","type":"score"}]
return 1