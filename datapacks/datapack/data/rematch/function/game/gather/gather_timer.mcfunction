bossbar set timer visible true
bossbar set timer players @a
bossbar set timer color green
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] timer 0
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] globalTimer = @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] optionGatherTime
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math_colors 2
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math_minute 60
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] green = @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] globalTimer
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] yellow = @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] globalTimer
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] red = @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] globalTimer
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] yellow /= @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math_colors
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math_colors 6
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] red /= @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math_colors
execute store result bossbar minecraft:timer max run scoreboard players get @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] globalTimer
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math_livestock 30
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math_monster 60
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] maxTime = @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] globalTimer
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math_30 30
tag @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] add secondsCount