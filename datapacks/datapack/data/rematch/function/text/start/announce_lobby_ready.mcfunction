title @a subtitle ["",{"text":"Ready to play!","color":"green","bold":true,"type":"text"}]
title @a title [""]

execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ 100000 ~ 100000 .5
execute as @a[team=players] at @s run particle minecraft:falling_dust{block_state:{Name:"minecraft:lime_concrete"}} ~ ~1 ~ 0.4 0.4 0.4 1 20