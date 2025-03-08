scoreboard players add @s tutorialState 1
execute if entity @s[scores={tutorialState=2..}] run scoreboard players set @s tutorialState 0
execute if entity @s[scores={tutorialState=1}] run tag @s remove guidebook
execute if entity @s[scores={tutorialState=0}] run tag @s add guidebook
execute if entity @s[tag=!guidebook] run tellraw @s ["",{"text":"\n","type":"text"},{"text":"\u2716 ","color":"red","type":"text"},{"text":"Guidebook disabled","italic":true,"type":"text"},{"text":"\n ","type":"text"}]
execute if entity @s[tag=!guidebook] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0
clear @s[tag=!guidebook] minecraft:written_book
execute if entity @s[tag=guidebook] run tellraw @s ["",{"text":"\n","type":"text"},{"text":"\u2714","color":"dark_green","type":"text"},{"text":" Guidebook enabled","italic":true,"type":"text"},{"text":"\n ","type":"text"}]
execute if entity @s[tag=guidebook] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 2