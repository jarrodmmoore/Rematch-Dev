#immediately integrate players once they join the world
function rematch:game/join/_tick

function rematch:cosmetics/tick

#disable all PVP when Global has "noPunch" tag
execute if entity @e[tag=noPunch,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run effect give @a[gamemode=!creative] minecraft:weakness 3 105 true

#call the major tick functions depending on gameState
execute if entity @e[scores={gameState=0},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/start/_tick
execute if entity @e[scores={gameState=1},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/gather/_tick
execute if entity @e[scores={gameState=2},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/shop/_tick
execute if entity @e[scores={gameState=3},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/pvp/_tick
execute if entity @e[scores={gameState=4},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/end/_tick

#run spectator logic (unless we're in the lobby)
execute if entity @e[scores={gameState=1..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/spectator_logic

#natural saturation
execute unless entity @e[scores={gameState=3},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run effect give @a minecraft:saturation 100000 10 true

#damage indicators
execute as @a[gamemode=adventure,scores={hp=1..}] run function rematch:damage_indicators/main
scoreboard players add @e[scores={floatup=0..}] floatup 1
execute as @e[scores={floatup=1..}] at @s run tp @s ~ ~.1 ~
kill @e[type=minecraft:armor_stand,scores={floatup=20..}]

#clean up explosions
execute as @e[tag=killcloud] at @s run kill @e[type=minecraft:area_effect_cloud,distance=..4,tag=!keepcloud]

#clear any carrot on stick inputs that happened on this tick
scoreboard players reset @a[scores={carrotInput=..999}] carrotInput

#clear thrown guidebooks and input detectors
execute as @a at @s run kill @e[type=minecraft:item,distance=..3,nbt={Item:{id:"minecraft:written_book"}}]
execute as @a at @s run kill @e[type=minecraft:item,distance=..3,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1}}]

#tutorial commands
execute as @a[scores={tut_click=1}] run function rematch:cosmetics/tutorial/tutorial_book
execute as @a[scores={tut_click=2}] run function rematch:cosmetics/tutorial/lobby_book
execute as @a[scores={tut_click=3}] run function rematch:cosmetics/tutorial/gather_book
execute as @a[scores={tut_click=4}] run function rematch:cosmetics/tutorial/shops_book
execute as @a[scores={tut_click=5}] run function rematch:cosmetics/tutorial/pvp_book


#clear tags related to guidebook
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:written_book",Slot:7b}]}] if entity @s[tag=lobby_book] run tag @s remove lobby_book
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:written_book",Slot:7b}]}] if entity @s[tag=gather_book] run tag @s remove gather_book
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:written_book",Slot:7b}]}] if entity @s[tag=shops_book] run tag @s remove shops_book
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:written_book",Slot:7b}]}] if entity @s[tag=pvp_book] run tag @s remove pvp_book
execute as @a unless entity @s[nbt={Inventory:[{id:"minecraft:written_book",Slot:7b}]}] if entity @s[tag=tutorial_book] run tag @s remove tutorial_book

#=================================
#developer stuff
#remove # to re-enable

#execute as @e[limit=10,sort=random,tag=playerSpawn,tag=!redteam,tag=!blueteam] at @s run particle minecraft:dust 1 1 1 2 ~ ~ ~ 0 5 0 1 10 force @a
#execute as @e[tag=playerSpawn,tag=redteam] at @s run particle minecraft:dust 1 0 0 2 ~ ~ ~ 0 5 0 1 10 force @a
#execute as @e[tag=playerSpawn,tag=blueteam] at @s run particle minecraft:dust .3 .3 1 2 ~ ~ ~ 0 5 0 1 10 force @a
#=================================
return 1