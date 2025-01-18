#120 Ready! (1)
#140 Ready! (2)
#160 Ready! (3)
#180 Fight!

execute if entity @e[scores={gameTime=120..205},name=Global] run title @a subtitle [""]

#text
execute if entity @e[scores={gameTime=120..139},name=Global] run title @a title ["",{"text":"Ready...","color":"dark_gray","bold":true,"type":"text"}]
execute if entity @e[scores={gameTime=140..159},name=Global] run title @a title ["",{"text":"Ready...","color":"gray","bold":true,"type":"text"}]
execute if entity @e[scores={gameTime=160..179},name=Global] run title @a title ["",{"text":"Ready...","color":"gold","bold":true,"type":"text"}]
execute if entity @e[scores={gameTime=180..181},name=Global] run title @a title ["",{"text":"FIGHT!","color":"red","bold":true,"type":"text"}]
execute if entity @e[scores={gameTime=182..183},name=Global] run title @a title ["",{"text":"FIGHT!","color":"dark_red","bold":true,"type":"text"}]
execute if entity @e[scores={gameTime=184..185},name=Global] run title @a title ["",{"text":"FIGHT!","color":"red","bold":true,"type":"text"}]
execute if entity @e[scores={gameTime=186..187},name=Global] run title @a title ["",{"text":"FIGHT!","color":"dark_red","bold":true,"type":"text"}]
execute if entity @e[scores={gameTime=188..189},name=Global] run title @a title ["",{"text":"FIGHT!","color":"red","bold":true,"type":"text"}]
execute if entity @e[scores={gameTime=190..191},name=Global] run title @a title ["",{"text":"FIGHT!","color":"dark_red","bold":true,"type":"text"}]
execute if entity @e[scores={gameTime=192..193},name=Global] run title @a title ["",{"text":"FIGHT!","color":"red","bold":true,"type":"text"}]
execute if entity @e[scores={gameTime=194..195},name=Global] run title @a title ["",{"text":"FIGHT!","color":"dark_red","bold":true,"type":"text"}]
execute if entity @e[scores={gameTime=196..197},name=Global] run title @a title ["",{"text":"FIGHT!","color":"red","bold":true,"type":"text"}]
execute if entity @e[scores={gameTime=198..199},name=Global] run title @a title ["",{"text":"FIGHT!","color":"dark_red","bold":true,"type":"text"}]
execute if entity @e[scores={gameTime=200..201},name=Global] run title @a title ["",{"text":"FIGHT!","color":"red","bold":true,"type":"text"}]
execute if entity @e[scores={gameTime=202..203},name=Global] run title @a title ["",{"text":"FIGHT!","color":"dark_red","bold":true,"type":"text"}]
execute if entity @e[scores={gameTime=204..205},name=Global] run title @a title [""]

#sounds
execute if entity @e[scores={gameTime=120},name=Global] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ 100000 ~ 100000 .7
execute if entity @e[scores={gameTime=140},name=Global] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ 100000 ~ 100000 .89
execute if entity @e[scores={gameTime=160},name=Global] as @a at @s run playsound minecraft:block.note_block.pling master @s ~ 100000 ~ 100000 1.05
execute if entity @e[scores={gameTime=180},name=Global] as @a at @s run playsound minecraft:entity.ender_dragon.ambient master @s ~ 100000 ~ 100000 1.1
execute if entity @e[scores={gameTime=180},name=Global] as @a at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ 100000 ~ 100000 .91
return 1