execute if entity @e[scores={countdown=2},name=Global] run effect give @a minecraft:slow_falling 20 1 true
execute if entity @e[scores={countdown=2},name=Global] run tp @e[type=minecraft:player,team=players] 1259 84 1119
execute if entity @e[scores={countdown=2},name=Global] run fill 1257 86 1117 1261 80 1121 minecraft:black_concrete hollow
#execute if entity @e[name=Global,scores={countdown=11}] run function rematch:game/gather/reset_noores
execute if entity @e[scores={countdown=11},name=Global] at @r[team=players] run function rematch:game/gather/reset_farm
#execute if entity @e[name=Global,scores={countdown=11}] run function rematch:game/gather/generate
execute if entity @e[scores={countdown=11},name=Global] at @r[team=players] run function rematch:game/gather/generate_farm
execute if entity @e[scores={countdown=21},name=Global] run fill 1257 86 1117 1261 80 1121 minecraft:air hollow
execute if entity @e[scores={countdown=21},name=Global] run tp @e[type=minecraft:player,team=players] 1128 93 1246
execute if entity @e[scores={countdown=21},name=Global] run fill 1126 95 1248 1130 89 1244 minecraft:black_concrete hollow
#execute if entity @e[name=Global,scores={countdown=30}] run function rematch:game/gather/reset
execute if entity @e[scores={countdown=30},name=Global] at @r[team=players] run function rematch:game/gather/reset_cave
#execute if entity @e[name=Global,scores={countdown=31}] run function rematch:game/gather/generate
execute if entity @e[scores={countdown=31},name=Global] at @r[team=players] run function rematch:game/gather/generate_cave
execute if entity @e[scores={countdown=36},name=Global] run fill 1126 95 1248 1130 89 1244 minecraft:air hollow
execute if entity @e[scores={countdown=36},name=Global] run tp @e[type=minecraft:player,team=players] 1190 70 1341
execute if entity @e[scores={countdown=40},name=Global] at @r[team=players] run function rematch:game/gather/reset_ores2
execute if entity @e[scores={countdown=41},name=Global] at @r[team=players] run function rematch:game/gather/generate_ores2
execute if entity @e[scores={countdown=46},name=Global] run tp @e[type=minecraft:player,team=players] 1357 91 1308
execute if entity @e[scores={countdown=46},name=Global] run fill 1355 87 1306 1359 93 1310 minecraft:black_concrete hollow
#execute if entity @e[name=Global,scores={countdown=51}] run function rematch:game/gather/reset_noores
execute if entity @e[scores={countdown=51},name=Global] at @r[team=players] run function rematch:game/gather/reset_forest
#execute if entity @e[name=Global,scores={countdown=51}] run function rematch:game/gather/generate
execute if entity @e[scores={countdown=51},name=Global] at @r[team=players] run function rematch:game/gather/generate_forest
execute if entity @e[scores={countdown=61},name=Global] run fill 1355 87 1306 1359 93 1310 minecraft:air hollow
execute if entity @e[scores={countdown=61},name=Global] as @e[type=minecraft:player,team=players] run tp @s @e[sort=random,limit=1,name=gatherTP]
#execute if entity @e[name=Global,scores={countdown=71}] run function rematch:game/gather/reset_noores
execute if entity @e[scores={countdown=71},name=Global] at @r[team=players] run function rematch:game/gather/reset_center
#execute if entity @e[name=Global,scores={countdown=71}] run function rematch:game/gather/generate
execute if entity @e[scores={countdown=71},name=Global] at @r[team=players] run function rematch:game/gather/generate_center
return 1