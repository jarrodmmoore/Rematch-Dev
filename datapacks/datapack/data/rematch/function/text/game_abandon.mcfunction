tellraw @a ["",{"text":" ","color":"red","type":"text"}]
tellraw @a ["",{"text":"Game abandoned! Two players are needed to play.","color":"red","type":"text"}]
tellraw @a ["",{"text":" ","color":"red","type":"text"}]

execute as @a at @s run playsound minecraft:entity.bat.death master @s ~ 100000 ~ 100000

function rematch:game/start/_initialize