scoreboard players add @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] countdown 1
execute if entity @e[scores={countdown=1},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[team=players] at @s run playsound minecraft:entity.lightning_bolt.thunder master @s
execute if entity @e[scores={countdown=1},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run title @a title {"text":"\u26a0 Time's up! \u26a0","bold":true,"color":"dark_red","type":"text"}
execute if entity @e[scores={countdown=11},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run title @a title {"text":"\u26a0 Time's up! \u26a0","bold":true,"color":"gold","type":"text"}
execute if entity @e[scores={countdown=21},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run title @a title {"text":"\u26a0 Time's up! \u26a0","bold":true,"color":"dark_red","type":"text"}
execute if entity @e[scores={countdown=31},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run title @a title {"text":"\u26a0 Time's up! \u26a0","bold":true,"color":"gold","type":"text"}
execute if entity @e[scores={countdown=41},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run title @a title {"text":"\u26a0 Time's up! \u26a0","bold":true,"color":"dark_red","type":"text"}
execute if entity @e[scores={countdown=51},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run title @a title {"text":"\u26a0 Time's up! \u26a0","bold":true,"color":"gold","type":"text"}
execute if entity @e[scores={countdown=61},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run title @a title {"text":"\u26a0 Time's up! \u26a0","bold":true,"color":"dark_red","type":"text"}
execute if entity @e[scores={countdown=71},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run title @a title {"text":"\u26a0 Time's up! \u26a0","bold":true,"color":"gold","type":"text"}
execute if entity @e[scores={countdown=81},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run title @a title {"text":"\u26a0 Time's up! \u26a0","bold":true,"color":"dark_red","type":"text"}
execute if entity @e[scores={countdown=91},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run title @a title {"text":"\u26a0 Time's up! \u26a0","bold":true,"color":"gold","type":"text"}

execute if entity @e[scores={countdown=201},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run title @a[team=players] actionbar {"text":"Please wait one moment","bold":true,"color":"gold","type":"text"}
execute if entity @e[scores={countdown=221},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run title @a[team=players] actionbar {"text":"Please wait one moment.","bold":true,"color":"gold","type":"text"}
execute if entity @e[scores={countdown=241},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run title @a[team=players] actionbar {"text":"Please wait one moment..","bold":true,"color":"gold","type":"text"}
execute if entity @e[scores={countdown=261},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run title @a[team=players] actionbar {"text":"Please wait one moment...","bold":true,"color":"gold","type":"text"}
execute if entity @e[scores={countdown=281},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run title @a[team=players] actionbar {"text":"Please wait one moment....","bold":true,"color":"gold","type":"text"}

execute if entity @e[scores={countdown=321},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run tag @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] remove text_start2
execute if entity @e[scores={countdown=321},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] countdown 0



return 1