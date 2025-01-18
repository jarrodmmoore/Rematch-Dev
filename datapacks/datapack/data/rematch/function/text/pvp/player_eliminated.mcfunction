execute as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ 100000 ~ 100000 .5

title @s times 0 45 5
title @s subtitle ["",{"text":"You've been eliminated!","color":"red","bold":true,"type":"text"}]
title @s title [""]
title @s actionbar [""]

tellraw @a ["",{"text":" ","type":"text"}]
tellraw @a ["",{"selector":"@s","type":"selector"},{"text":" has been eliminated!","type":"text"}]
execute if entity @e[scores={playerCountA=2..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run tellraw @a ["",{"score":{"name":"@e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1]","objective":"playerCountA"},"italic":true,"type":"score"},{"text":" players remain.","italic":true,"type":"text"}]
tellraw @a ["",{"text":" ","type":"text"}]
return 1