#give proper tags to players and spectators
team join players @a[tag=!forcespectate,tag=!afk,team=!players,team=!redplayers,team=!blueplayers]
team join spectators @a[tag=forcespectate,team=!spectators]
team join spectator @a[tag=afk,team=!spectator]

#heals for all
effect give @a[scores={hp=..19}] minecraft:instant_health 1 10 true

#keep players at spawn
execute as @a[x=-10,y=56,z=15,distance=90..] run tp @s 1 51 50 118 8

#trigger tutorial text
function rematch:game/start/tutorial_triggers/listen

#set globalTimer equal to settings
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] globalTimer = @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] optionGatherTime

#item frames can't be rotated
execute as @e[tag=arena_display] run data merge entity @s {ItemRotation:0,Silent:1b}

#count players
function rematch:count_players

#make sure all players have carrot on stick in offhand
execute as @a at @s run function rematch:carrot_on_stick

#give ready-up item
tag @a remove hasRU
tag @a[team=!spectators,nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["readyup"]}},Slot:0b}]}] add hasRU
clear @a[tag=!hasRU] minecraft:red_concrete
clear @a[tag=!hasRU] minecraft:lime_concrete
clear @a[tag=readyup] minecraft:red_concrete
clear @a[tag=!readyup] minecraft:lime_concrete
function rematch:text/start/ready_up_item

#right-click concrete to toggle ready
execute as @a[scores={inputCooldown=..0,carrotInput=1..},team=!spectators,nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["readyup","red"]}}}}] at @s run function rematch:game/start/self_ready
execute as @a[scores={inputCooldown=..0,carrotInput=1..},team=!spectators,nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["readyup","green"]}}}}] at @s run function rematch:game/start/self_not_ready

#control tips
execute as @a[gamemode=adventure,team=!spectators,nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["readyup"]}}}}] run function rematch:text/click_to_toggle_ready
execute as @a[gamemode=adventure,team=!spectators,nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["mapv"]}}}}] run function rematch:text/click_to_vote
execute as @a[gamemode=adventure,team=!spectators] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["itemhastitle"]}}}}] run title @s actionbar [""]

#inventory controls for all players in lobby
execute as @a[gamemode=!creative] run function rematch:game/start/inventory_check/_index
execute if entity @a[team=!players,team=!spectators] run team modify players prefix ["",{"text":"■","color":"white"},{"text":" "}]
execute if entity @a[team=!players,team=!spectators] run team modify players color white
execute unless entity @a[team=!players,team=!spectators] run team modify players prefix [""]
execute unless entity @a[team=!players,team=!spectators] run team modify players color red

#######################
#DETERMINE IF PLAYERS ARE READY OR NOT
#number of ready players required to start is the total divided by 2
#calculate required players
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyDummy = @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] playerCountA
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math 2
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyDummy /= @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyRequired = @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyDummy
scoreboard players add @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyRequired 1
scoreboard players set @e[scores={readyRequired=..1},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyRequired 2

#calculate ready players
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyDummy 0
execute as @a[tag=readyup,team=!spectators] run scoreboard players add @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyDummy 1
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyCount = @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyDummy

#take (ready players) - (required ready players)
#if result is 0 or greater, get the lobby enters into "ready" mode and track is selected
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyDummy -= @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyRequired
execute if entity @e[scores={readyDummy=0..,readyState=..0},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/start/set_mode_ready
execute if entity @e[scores={readyState=..0},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] if entity @a[tag=admin,tag=readyup] run function rematch:game/start/set_mode_ready
execute if entity @e[scores={readyDummy=..-1,readyState=1..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] unless entity @a[tag=admin,tag=readyup] run function rematch:game/start/set_mode_not_ready
#######################

#logic depending on readyState
execute if entity @e[scores={readyState=..0},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/start/_tick_not_ready
execute if entity @e[scores={readyState=1..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/start/_tick_ready

#get rid of unwanted item drops
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{Tags:["readyup"]}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{Tags:["invControl"]}}}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{Tags:["mapv"]}}}}]

#NASA PEEPO



# Kick back non-admins

execute if entity @a[tag=admin] positioned -9 50 34 as @a[distance=..7,tag=!admin] run tellraw @s {"text":"Hey! No touching settings!","color":"red","type":"text"}
execute if entity @a[tag=admin] positioned -9 50 34 as @a[distance=..7,tag=!admin] at @s run playsound minecraft:entity.item.break master @s
execute if entity @a[tag=admin] positioned -9 50 34 as @a[distance=..7,tag=!admin] facing entity @s feet rotated ~ 0 positioned as @s run tp @s ^ ^ ^1