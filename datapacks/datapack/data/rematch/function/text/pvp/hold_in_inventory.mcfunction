execute unless entity @e[tag=darkHUD,name=Global] run title @s actionbar ["",{"text":"Keep this item in your inventory!","color":"white","type":"text"}]
execute if entity @e[tag=darkHUD,name=Global] run title @s actionbar ["",{"text":"Keep this item in your inventory!","color":"black","type":"text"}]
return 1