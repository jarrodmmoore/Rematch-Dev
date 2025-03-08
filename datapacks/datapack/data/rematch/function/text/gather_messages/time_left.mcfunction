scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] isStart = @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] maxTime
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] isStart -= @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] globalTimer

execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=1800,timer=1,isGreen=1..}] run tellraw @a {"text":"[Time remaining] : 30 minutes","color":"green","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=1800,timer=1,isGreen=..0,isYellow=1..}] run tellraw @a {"text":"[Time remaining] : 30 minutes","color":"gold","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=1800,timer=1,isYellow=..0}] run tellraw @a {"text":"[Time remaining] : 30 minutes","color":"dark_red","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=1800,timer=1}] as @e[team=players] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2

execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=1200,timer=1,isGreen=1..}] run tellraw @a {"text":"[Time remaining] : 20 minutes","color":"green","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=1200,timer=1,isGreen=..0,isYellow=1..}] run tellraw @a {"text":"[Time remaining] : 20 minutes","color":"gold","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=1200,timer=1,isYellow=..0}] run tellraw @a {"text":"[Time remaining] : 20 minutes","color":"dark_red","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=1200,timer=1}] as @e[team=players] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2

execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=900,timer=1,isGreen=1..}] run tellraw @a {"text":"[Time remaining] : 15 minutes","color":"green","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=900,timer=1,isGreen=..0,isYellow=1..}] run tellraw @a {"text":"[Time remaining] : 15 minutes","color":"gold","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=900,timer=1,isYellow=..0}] run tellraw @a {"text":"[Time remaining] : 15 minutes","color":"dark_red","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=900,timer=1}] as @e[team=players] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2

execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=600,timer=1,isGreen=1..}] run tellraw @a {"text":"[Time remaining] : 10 minutes","color":"green","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=600,timer=1,isGreen=..0,isYellow=1..}] run tellraw @a {"text":"[Time remaining] : 10 minutes","color":"gold","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=600,timer=1,isYellow=..0}] run tellraw @a {"text":"[Time remaining] : 10 minutes","color":"dark_red","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=600,timer=1}] as @e[team=players] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2

execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=300,timer=1,isGreen=1..}] run tellraw @a {"text":"[Time remaining] : 5 minutes","color":"green","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=300,timer=1,isGreen=..1,isYellow=0..}] run tellraw @a {"text":"[Time remaining] : 5 minutes","color":"gold","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=300,timer=1,isYellow=..0}] run tellraw @a {"text":"[Time remaining] : 5 minutes","color":"dark_red","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=300,timer=1}] as @e[team=players] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2

execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=240,timer=1,isGreen=1..}] run tellraw @a {"text":"[Time remaining] : 4 minutes","color":"green","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=240,timer=1,isGreen=..0,isYellow=1..}] run tellraw @a {"text":"[Time remaining] : 4 minutes","color":"gold","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=240,timer=1,isYellow=..0}] run tellraw @a {"text":"[Time remaining] : 4 minutes","color":"dark_red","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=240,timer=1}] as @e[team=players] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2

execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=180,timer=1,isGreen=1..}] run tellraw @a {"text":"[Time remaining] : 3 minutes","color":"green","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=180,timer=1,isGreen=..0,isYellow=1..}] run tellraw @a {"text":"[Time remaining] : 3 minutes","color":"gold","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=180,timer=1,isYellow=..0}] run tellraw @a {"text":"[Time remaining] : 3 minutes","color":"dark_red","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=180,timer=1}] as @e[team=players] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2

execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=120,timer=1,isGreen=1..}] run tellraw @a {"text":"[Time remaining] : 2 minutes","color":"green","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=120,timer=1,isGreen=..0,isYellow=1..}] run tellraw @a {"text":"[Time remaining] : 2 minutes","color":"gold","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=120,timer=1,isYellow=..0}] run tellraw @a {"text":"[Time remaining] : 2 minutes","color":"dark_red","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=120,timer=1}] as @e[team=players] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2

execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=60,timer=1,isGreen=1..}] run tellraw @a {"text":"[Time remaining] : 1 minute","color":"green","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=60,timer=1,isGreen=..0,isYellow=1..}] run tellraw @a {"text":"[Time remaining] : 1 minute","color":"gold","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=60,timer=1,isYellow=..0}] run tellraw @a {"text":"[Time remaining] : 1 minute","color":"dark_red","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=60,timer=1}] as @e[team=players] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2

execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=30,timer=1,isGreen=1..}] run tellraw @a {"text":"[Time remaining] : 30 seconds","color":"green","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=30,timer=1,isGreen=..0,isYellow=1..}] run tellraw @a {"text":"[Time remaining] : 30 seconds","color":"gold","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=30,timer=1,isYellow=..0}] run tellraw @a {"text":"[Time remaining] : 30 seconds","color":"dark_red","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=30,timer=1}] as @e[team=players] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2

execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=20,timer=1,isGreen=1..}] run tellraw @a {"text":"[Time remaining] : 20 seconds","color":"green","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=20,timer=1,isGreen=..0,isYellow=1..}] run tellraw @a {"text":"[Time remaining] : 20 seconds","color":"gold","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=20,timer=1,isYellow=..0}] run tellraw @a {"text":"[Time remaining] : 20 seconds","color":"dark_red","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=20,timer=1}] as @e[team=players] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2

execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=10,timer=1,isGreen=1..}] run tellraw @a {"text":"[Time remaining] : 10 seconds","color":"green","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=10,timer=1,isGreen=..0,isYellow=1..}] run tellraw @a {"text":"[Time remaining] : 10 seconds","color":"gold","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=10,timer=1,isYellow=..0}] run tellraw @a {"text":"[Time remaining] : 10 seconds","color":"dark_red","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=10,timer=1}] as @e[team=players] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.5 2

execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=5,timer=1,isGreen=1..}] run tellraw @a {"text":"[Time remaining] : 5 seconds","color":"green","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=5,timer=1,isGreen=..0,isYellow=1..}] run tellraw @a {"text":"[Time remaining] : 5 seconds","color":"gold","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=5,timer=1,isYellow=..0}] run tellraw @a {"text":"[Time remaining] : 5 seconds","color":"dark_red","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=5,timer=1}] as @e[team=players] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1

execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=4,timer=1,isGreen=1..}] run tellraw @a {"text":"[Time remaining] : 4 seconds","color":"green","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=4,timer=1,isGreen=..0,isYellow=1..}] run tellraw @a {"text":"[Time remaining] : 4 seconds","color":"gold","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=4,timer=1,isYellow=..0}] run tellraw @a {"text":"[Time remaining] : 4 seconds","color":"dark_red","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=4,timer=1}] as @e[team=players] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.25

execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=3,timer=1,isGreen=1..}] run tellraw @a {"text":"[Time remaining] : 3 seconds","color":"green","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=3,timer=1,isGreen=..0,isYellow=1..}] run tellraw @a {"text":"[Time remaining] : 3 seconds","color":"gold","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=3,timer=1,isYellow=..0}] run tellraw @a {"text":"[Time remaining] : 3 seconds","color":"dark_red","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=3,timer=1}] as @e[team=players] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.5

execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=2,timer=1,isGreen=1..}] run tellraw @a {"text":"[Time remaining] : 2 seconds","color":"green","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=2,timer=1,isGreen=..0,isYellow=1..}] run tellraw @a {"text":"[Time remaining] : 2 seconds","color":"gold","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=2,timer=1,isYellow=..0}] run tellraw @a {"text":"[Time remaining] : 2 seconds","color":"dark_red","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=2,timer=1}] as @e[team=players] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.75

execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=1,timer=1,isGreen=1..}] run tellraw @a {"text":"[Time remaining] : 1 second","color":"green","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=1,timer=1,isGreen=..0,isYellow=1..}] run tellraw @a {"text":"[Time remaining] : 1 seconds","color":"gold","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=1,timer=1,isYellow=..0}] run tellraw @a {"text":"[Time remaining] : 1 seconds","color":"dark_red","type":"text"}
execute if entity @e[tag=secondsCount,scores={isStart=1..,globalTimer=1,timer=1}] as @e[team=players] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2