scoreboard players set @e[name=Global] randomSelect 0
function rematch:game/gather/random/random_livestock
function rematch:game/gather/random/random_livestock
function rematch:game/gather/random/random_livestock
function rematch:game/gather/random/random_livestock
function rematch:game/gather/random/random_livestock
function rematch:game/gather/random/random_livestock
function rematch:game/gather/random/random_livestock
function rematch:game/gather/random/random_livestock
function rematch:game/gather/random/random_livestock
function rematch:game/gather/random/random_livestock
function rematch:game/gather/random/random_livestock
function rematch:game/gather/random/random_livestock
function rematch:game/gather/random/random_livestock
function rematch:game/gather/random/random_livestock
function rematch:game/gather/random/random_livestock

execute as @e[tag=generate_livestock] at @s if score @e[limit=1,name=Global] randomSelect matches 0 run summon minecraft:rabbit ~ ~ ~ {Tags:["livestock","killer_bunny"],RabbitType:99,NoAI:1b,Health:8,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}'}
execute as @e[tag=generate_livestock] at @s if score @e[limit=1,name=Global] randomSelect matches 1 run summon minecraft:sheep ~ ~ ~ {Tags:["livestock"],NoAI:1b,Health:8,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}',potion_contents:{custom_color:6}}
execute as @e[tag=generate_livestock] at @s if score @e[limit=1,name=Global] randomSelect matches 2 run summon minecraft:pig ~ ~ ~ {Tags:["livestock"],Saddle:1,NoAI:1b,Health:8,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}'}
execute as @e[tag=generate_livestock] at @s if score @e[limit=1,name=Global] randomSelect matches 3 run summon minecraft:cat ~ ~ ~ {Tags:["livestock"],NoAI:1b,Health:8,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}'}
execute as @e[tag=generate_livestock] at @s if score @e[limit=1,name=Global] randomSelect matches 4 run summon minecraft:ocelot ~ ~ ~ {Tags:["livestock"],NoAI:1b,Health:8,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}'}
execute as @e[tag=generate_livestock] at @s if score @e[limit=1,name=Global] randomSelect matches 5 run summon minecraft:rabbit ~ ~ ~ {Tags:["livestock"],NoAI:1b,Health:8,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}'}
execute as @e[tag=generate_livestock] at @s if score @e[limit=1,name=Global] randomSelect matches 6 run summon minecraft:sheep ~ ~ ~ {Tags:["livestock"],NoAI:1b,Health:8,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}'}
execute as @e[tag=generate_livestock] at @s if score @e[limit=1,name=Global] randomSelect matches 7 run summon minecraft:cow ~ ~ ~ {Tags:["livestock"],NoAI:1b,Health:8,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}'}
execute as @e[tag=generate_livestock] at @s if score @e[limit=1,name=Global] randomSelect matches 8 run summon minecraft:pig ~ ~ ~ {Tags:["livestock"],NoAI:1b,Health:8,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}'}
execute as @e[tag=generate_livestock] at @s if score @e[limit=1,name=Global] randomSelect matches 9 run summon minecraft:chicken ~ ~ ~ {Tags:["livestock"],NoAI:1b,Health:8,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}'}
execute as @e[tag=generate_livestock] at @s if score @e[limit=1,name=Global] randomSelect matches 10 run summon minecraft:horse ~ ~ ~ {Tags:["livestock"],NoAI:1b,Health:8,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}'}
execute as @e[tag=generate_livestock] at @s if score @e[limit=1,name=Global] randomSelect matches 11 run summon minecraft:llama ~ ~ ~ {Tags:["livestock"],NoAI:1b,Health:8,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}'}
execute as @e[tag=generate_livestock] at @s if score @e[limit=1,name=Global] randomSelect matches 12 run summon minecraft:donkey ~ ~ ~ {Tags:["livestock"],NoAI:1b,Health:8,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}'}
execute as @e[tag=generate_livestock] at @s if score @e[limit=1,name=Global] randomSelect matches 13 run summon minecraft:trader_llama ~ ~ ~ {Tags:["livestock"],NoAI:1b,Health:8,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}'}
execute as @e[tag=generate_livestock] at @s if score @e[limit=1,name=Global] randomSelect matches 14 run summon minecraft:chicken ~ ~ ~ {Tags:["livestock"],NoAI:1b,Health:8,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}',Passengers:[{id:"minecraft:chicken",Tags:["baby_chicken"],NoAI:1b,Health:8,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}'}]}
execute as @e[tag=generate_livestock] at @s if score @e[limit=1,name=Global] randomSelect matches 15 run summon minecraft:mooshroom ~ ~ ~ {Tags:["livestock"],NoAI:1b,Health:8,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}'}
return 1