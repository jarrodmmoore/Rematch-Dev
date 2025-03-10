execute if entity @a[scores={tutorial=1..}] unless entity @e[scores={tutorialState=2..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run scoreboard players add @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] tutorialState 1
execute as @a[scores={tutorial=1..}] run function rematch:cosmetics/tutorial/book
execute as @a[tag=guidebook] run function rematch:cosmetics/tutorial/give_guidebook

data merge entity @e[type=minecraft:villager,tag=tutorial_villager,limit=1] {Health:20}
effect give @e[type=minecraft:villager,tag=tutorial_villager] minecraft:resistance 1 255 true

execute if entity @e[scores={tutorialState=1},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] tutorialState 2
execute as @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] if entity @s[scores={tutorialState=2..}] run scoreboard players add @s tutorialState 1
execute if entity @e[scores={tutorialState=3..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a if entity @s[scores={tutorialState=1,tutorial=1..}] run data merge entity @e[tag=tutorial_lobby,limit=1] {CustomName:'{"color":"gold","text":"Thank you!"}',CustomNameVisible:1b}
execute if entity @e[scores={tutorialState=3..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a unless entity @s[scores={tutorialState=1}] if entity @s[scores={tutorial=1..}] run data merge entity @e[tag=tutorial_lobby,limit=1] {CustomName:'{"color":"gold","text":"Here is a guidebook!"}',CustomNameVisible:1b}
execute if entity @e[scores={tutorialState=3},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @e[tag=tutorial_lobby] at @s run playsound minecraft:entity.villager.yes master @a ~ ~ ~ 1 1
execute if entity @e[scores={tutorialState=43},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run data merge entity @e[tag=tutorial_lobby,limit=1] {CustomName:'{"color":"gold","text":"Tutorial"}',CustomNameVisible:0b}
scoreboard players reset @e[scores={tutorialState=43},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] tutorialState

#leave at bottom
scoreboard players set @a[scores={tutorial=1..}] tutorial 0