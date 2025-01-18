scoreboard players add @e[name=Global] countdown 1

execute if entity @e[scores={countdown=1..20},name=Global] run title @a[team=players] actionbar {"text":"Please wait one moment","bold":true,"color":"gold","type":"text"}
execute if entity @e[scores={countdown=21..40},name=Global] run title @a[team=players] actionbar {"text":"Please wait one moment.","bold":true,"color":"gold","type":"text"}
execute if entity @e[scores={countdown=41..60},name=Global] run title @a[team=players] actionbar {"text":"Please wait one moment..","bold":true,"color":"gold","type":"text"}
execute if entity @e[scores={countdown=61..80},name=Global] run title @a[team=players] actionbar {"text":"Please wait one moment...","bold":true,"color":"gold","type":"text"}
execute if entity @e[scores={countdown=81},name=Global] run title @a[team=players] actionbar {"text":"Please wait one moment....","bold":true,"color":"gold","type":"text"}

#extra delay for ticks to catch up after generation freaks the server out
execute if entity @e[scores={countdown=115..119,extraCDelay=1..},name=Global] run scoreboard players set @e[name=Global] countdown 115
execute if entity @e[scores={countdown=115..119,extraCDelay=1..},name=Global] run scoreboard players remove @e[name=Global] extraCDelay 1

execute if entity @e[scores={countdown=120},name=Global] run title @a[team=players] title {"text":"","type":"text"}
execute if entity @e[scores={countdown=120},name=Global] run title @a[team=players] subtitle {"text":"\u22d9 \u0020 \u0020 5 \u0020 \u0020 \u22d8","bold":true,"color":"dark_red","type":"text"}
execute if entity @e[scores={countdown=120},name=Global] as @a[team=players] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1

execute if entity @e[scores={countdown=140},name=Global] run title @a[team=players] title {"text":"","type":"text"}
execute if entity @e[scores={countdown=140},name=Global] run title @a[team=players] subtitle {"text":"\u22d9 \u0020 \u00204 \u0020 \u0020\u22d8","bold":true,"color":"dark_red","type":"text"}
execute if entity @e[scores={countdown=140},name=Global] as @a[team=players] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.25

execute if entity @e[scores={countdown=160},name=Global] run title @a[team=players] title {"text":"","type":"text"}
execute if entity @e[scores={countdown=160},name=Global] run title @a[team=players] subtitle {"text":"\u22d9 \u0020 3 \u0020 \u22d8","bold":true,"color":"gold","type":"text"}
execute if entity @e[scores={countdown=160},name=Global] as @a[team=players] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.5

execute if entity @e[scores={countdown=180},name=Global] run title @a[team=players] title {"text":"","type":"text"}
execute if entity @e[scores={countdown=180},name=Global] run title @a[team=players] subtitle {"text":"\u22d9 \u00202 \u0020\u22d8","bold":true,"color":"gold","type":"text"}
execute if entity @e[scores={countdown=180},name=Global] as @a[team=players] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 1.75

execute if entity @e[scores={countdown=200},name=Global] run title @a[team=players] title {"text":"","type":"text"}
execute if entity @e[scores={countdown=200},name=Global] run title @a[team=players] subtitle {"text":"\u22d9 1 \u22d8","bold":true,"color":"green","type":"text"}
execute if entity @e[scores={countdown=200},name=Global] as @a[team=players] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2

execute if entity @e[scores={countdown=220},name=Global] run title @a[team=players] title {"text":"","type":"text"}
execute if entity @e[scores={countdown=220},name=Global] run title @a[team=players] subtitle {"text":"\u22d8 GO \u22d9","bold":true,"color":"dark_green","type":"text"}
execute if entity @e[scores={countdown=220},name=Global] as @a[team=players] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @e[scores={countdown=225},name=Global] run title @a[team=players] title {"text":"","type":"text"}
execute if entity @e[scores={countdown=225},name=Global] run title @a[team=players] subtitle {"text":"\u22d8 \u0020GO \u0020\u22d9","bold":true,"color":"dark_green","type":"text"}
execute if entity @e[scores={countdown=225},name=Global] as @a[team=players] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @e[scores={countdown=230},name=Global] run title @a[team=players] title {"text":"","type":"text"}
execute if entity @e[scores={countdown=230},name=Global] run title @a[team=players] subtitle {"text":"\u22d8 \u0020 GO \u0020 \u22d9","bold":true,"color":"dark_green","type":"text"}
execute if entity @e[scores={countdown=230},name=Global] as @a[team=players] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @e[scores={countdown=235},name=Global] run title @a[team=players] title {"text":"","type":"text"}
execute if entity @e[scores={countdown=235},name=Global] run title @a[team=players] subtitle {"text":"\u22d8 \u0020 \u0020GO \u0020 \u0020\u22d9","bold":true,"color":"dark_green","type":"text"}
execute if entity @e[scores={countdown=235},name=Global] as @a[team=players] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @e[scores={countdown=240},name=Global] run title @a[team=players] title {"text":"","type":"text"}
execute if entity @e[scores={countdown=240},name=Global] run title @a[team=players] subtitle {"text":"\u22d8 \u0020 \u0020 GO \u0020 \u0020 \u22d9","bold":true,"color":"dark_green","type":"text"}
execute if entity @e[scores={countdown=240},name=Global] as @a[team=players] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @e[scores={countdown=245},name=Global] run tag @e[name=Global] remove noparticles
execute if entity @e[scores={countdown=245},name=Global] run title @a[team=players] title {"text":"","type":"text"}
execute if entity @e[scores={countdown=245},name=Global] run title @a[team=players] subtitle {"text":"","type":"text"}
execute if entity @e[scores={countdown=245},name=Global] as @a[team=players] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

execute if entity @e[tag=gather,scores={countdown=245..},name=Global] run scoreboard players reset @e[name=Global] countdown
return 1