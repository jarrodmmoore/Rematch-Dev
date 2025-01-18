bossbar set minecraft:menutimer style notched_10
execute if entity @e[scores={gameTime=2..},name=Global] run bossbar set minecraft:menutimer name ["",{"text":"Game starts in ","color":"aqua","bold":true,"type":"text"},{"score":{"name":"@e[limit=1,name=Global]","objective":"gameTime"},"color":"aqua","bold":true,"type":"score"},{"text":" seconds!","color":"aqua","bold":true,"type":"text"}]
execute if entity @e[scores={gameTime=1},name=Global] run bossbar set minecraft:menutimer name ["",{"text":"Game starts in ","color":"aqua","bold":true,"type":"text"},{"score":{"name":"@e[limit=1,name=Global]","objective":"gameTime"},"color":"aqua","bold":true,"type":"score"},{"text":" second!","color":"aqua","bold":true,"type":"text"}]
execute if entity @e[scores={gameTime=..0},name=Global] run bossbar set minecraft:menutimer name ["",{"text":"Game starts in ","color":"aqua","bold":true,"type":"text"},{"score":{"name":"@e[limit=1,name=Global]","objective":"gameTime"},"color":"aqua","bold":true,"type":"score"},{"text":" seconds!","color":"aqua","bold":true,"type":"text"}]

bossbar set minecraft:menutimer color blue
bossbar set minecraft:menutimer style notched_10
return 1