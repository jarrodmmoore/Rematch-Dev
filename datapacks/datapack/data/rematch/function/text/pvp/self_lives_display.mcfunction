title @s[scores={lives=3..}] actionbar ["",{"text":"Lives Remaining: ","color":"white","bold":true,"type":"text"},{"score":{"name":"@s","objective":"lives"},"color":"green","bold":false,"type":"score"}]
title @s[scores={lives=2}] actionbar ["",{"text":"Lives Remaining: ","color":"white","bold":true,"type":"text"},{"score":{"name":"@s","objective":"lives"},"color":"yellow","bold":false,"type":"score"}]

execute if entity @e[scores={oTimer=..10},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run title @s[scores={lives=1}] actionbar ["",{"text":"Lives Remaining: ","color":"white","bold":true,"type":"text"},{"score":{"name":"@s","objective":"lives"},"color":"red","bold":false,"type":"score"}]
execute if entity @e[scores={oTimer=11..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run title @s[scores={lives=1}] actionbar ["",{"text":"Lives Remaining: ","color":"white","bold":true,"type":"text"},{"score":{"name":"@s","objective":"lives"},"color":"dark_red","bold":false,"type":"score"}]

execute unless entity @s[scores={lives=1..}] run title @s actionbar [""]