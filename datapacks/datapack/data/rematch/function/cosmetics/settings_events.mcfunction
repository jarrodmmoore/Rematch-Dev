scoreboard players add @e[tag=settings_stand] eventsToggle 1
execute if entity @e[tag=settings_stand,scores={eventsToggle=2..}] run scoreboard players set @e[tag=settings_stand] eventsToggle 0

execute at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 2

setblock -9 51 36 minecraft:air
setblock -9 51 36 minecraft:spruce_wall_sign[facing=west]
execute if entity @e[tag=settings_stand,scores={eventsToggle=0}] run data merge block -9 51 36 {front_text:{messages:['{"text":"Gathering Phase","color":"dark_green","type":"text"}','{"text":"Events","bold":true,"color":"light_purple","type":"text"}','{"text":"","type":"text"}','{"text":" Off ","bold":true,"color":"gold","type":"text"}']}}
execute if entity @e[tag=settings_stand,scores={eventsToggle=1}] run data merge block -9 51 36 {front_text:{messages:['{"text":"Gathering Phase","color":"dark_green","type":"text"}','{"text":"Events","bold":true,"color":"light_purple","type":"text"}','{"text":"","type":"text"}','{"text":" On ","bold":true,"color":"gold","type":"text"}']}}
return 1