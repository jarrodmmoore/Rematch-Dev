title @a subtitle ["",{"text":"Countdown paused!","color":"red","bold":true,"type":"text"}]
title @a title [""]

execute as @a at @s run playsound minecraft:entity.chicken.death master @s ~ 100000 ~ 100000 1
execute as @a[team=players] at @s run particle minecraft:falling_dust{block_state:{Name:"minecraft:red_concrete"}} ~ ~1 ~ 0.4 0.4 0.4 1 20