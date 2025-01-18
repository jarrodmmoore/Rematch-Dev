#please_wait
scoreboard players add @e[tag=please_wait] text_timer 1
execute if entity @e[tag=please_wait,scores={text_timer=20..39}] as @a[team=players] run title @s actionbar {"text":"Please wait one moment.","bold":true,"color":"gold","type":"text"}
execute if entity @e[tag=please_wait,scores={text_timer=40..59}] as @a[team=players] run title @s actionbar {"text":"Please wait one moment..","bold":true,"color":"gold","type":"text"}
execute if entity @e[tag=please_wait,scores={text_timer=60..79}] as @a[team=players] run title @s actionbar {"text":"Please wait one moment...","bold":true,"color":"gold","type":"text"}
execute if entity @e[tag=please_wait,scores={text_timer=80..99}] as @a[team=players] run title @s actionbar {"text":"Please wait one moment....","bold":true,"color":"gold","type":"text"}
execute if entity @e[tag=please_wait,scores={text_timer=100}] as @a[team=players] run title @s actionbar {"text":"","type":"text"}
execute as @e[tag=please_wait,scores={text_timer=100}] run function rematch:text/please_wait_remove

return 1