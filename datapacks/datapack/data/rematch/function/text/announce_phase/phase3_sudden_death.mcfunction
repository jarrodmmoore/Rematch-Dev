tellraw @a ["",{"text":" ","type":"text"}]

tellraw @a ["",{"text":"Sudden Death!","color":"gold","bold":true,"type":"text"}]
tellraw @a ["",{"text":"Everyone has been taken down to 1 life.","type":"text"}]
tellraw @a ["",{"text":"Watch out, the world border is closing in!","color":"red","type":"text"}]

tellraw @a ["",{"text":" ","type":"text"}]

execute as @a run playsound minecraft:entity.wither.spawn master @s ~ 100000 ~ 1000000
return 1