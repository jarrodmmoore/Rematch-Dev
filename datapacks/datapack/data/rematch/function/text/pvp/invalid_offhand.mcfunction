execute if entity @e[scores={oTimer=..10},name=Global] run title @s actionbar ["",{"text":"Your offhand slot is needed for input detection!","color":"red","bold":true,"type":"text"}]
execute if entity @e[scores={oTimer=11..},name=Global] run title @s actionbar ["",{"text":"Your offhand slot is needed for input detection!","color":"dark_red","bold":true,"type":"text"}]
return 1