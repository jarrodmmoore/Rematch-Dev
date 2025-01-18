tellraw @a ["",{"text":" ","type":"text"}]

execute unless entity @e[tag=teamplay,name=Global] run tellraw @a ["",{"text":"Phase [3/3] -- Free for all PVP","color":"gold","bold":true,"type":"text"}]
execute unless entity @e[tag=teamplay,name=Global] run tellraw @a ["",{"text":"It's you against everyone else!","type":"text"}]
execute unless entity @e[tag=teamplay,name=Global] run tellraw @a ["",{"text":"Last player standing wins.","type":"text"}]

execute if entity @e[tag=teamplay,name=Global] run tellraw @a ["",{"text":"Phase [3/3] -- Team PVP","color":"gold","bold":true,"type":"text"}]
execute if entity @e[tag=teamplay,name=Global] run tellraw @a ["",{"text":"Defeat the other team!","type":"text"}]
execute if entity @e[tag=teamplay,name=Global] run tellraw @a ["",{"text":"Last team with living players wins.","type":"text"}]

tellraw @a ["",{"text":" ","type":"text"}]
return 1