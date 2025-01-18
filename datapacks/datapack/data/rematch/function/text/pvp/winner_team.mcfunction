tellraw @a ["",{"text":" ","color":"red","type":"text"}]
tellraw @a ["",{"text":"======= GAME ENDED! =======","color":"gold","bold":true,"type":"text"}]
execute if entity @a[tag=winner,team=redplayers] run tellraw @a ["",{"text":"Red Team","color":"red","type":"text"},{"text":" won the game!","type":"text"}]
execute if entity @a[tag=winner,team=blueplayers] run tellraw @a ["",{"text":"Blue Team","color":"blue","type":"text"},{"text":" won the game!","type":"text"}]
execute unless entity @a[tag=winner] run tellraw @a ["",{"text":"Everyone died. The end.","color":"gray","type":"text"}]
tellraw @a ["",{"text":" ","color":"red","type":"text"}]

execute if entity @a[tag=winner] as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ 100000 ~ 100000
execute unless entity @a[tag=winner] as @a at @s run playsound minecraft:entity.player.burp master @s ~ 100000 ~ 100000 .7
return 1