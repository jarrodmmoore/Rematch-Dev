#oTimer for misc timer stuff
scoreboard players add @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] oTimer 1
scoreboard players set @e[scores={oTimer=21..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] oTimer 1

#item logic
function rematch:game/pvp/items/_items_main

#timer logic
scoreboard players remove @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] timeRemaining 1
execute if entity @e[scores={timeRemaining=1..1220},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/pvp/time_bossbar
execute if entity @e[scores={timeRemaining=..0},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run bossbar set minecraft:timeremaining players
execute if entity @e[scores={timeRemaining=..0},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/pvp/deathmatch/deathmatch_main

#tell players what items need to be dropped to activate
execute as @a[gamemode=adventure,team=!spectators,nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["droptouse"]}}}}] run function rematch:text/pvp/drop_to_activate
execute as @a[gamemode=adventure,team=!spectators,nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["deployonground"]}}}}] run function rematch:text/pvp/drop_to_activate
execute as @a[gamemode=adventure,team=!spectators,nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["holdinventory"]}}}}] run function rematch:text/pvp/hold_in_inventory
execute if entity @e[tag=!darkHUD,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,team=!spectators] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["droptouse"]}}}}] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["deployonground"]}}}}] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["holdinventory"]}}}}] run function rematch:text/pvp/self_lives_display
execute if entity @e[tag=darkHUD,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[gamemode=adventure,team=!spectators] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["droptouse"]}}}}] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["deployonground"]}}}}] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["holdinventory"]}}}}] run function rematch:text/pvp/self_lives_display_dark

#lives display for certain teams
execute as @a[scores={lives=1..},team=redplayers] run scoreboard players operation @s redlives = @s lives
execute as @a[scores={lives=1..},team=blueplayers] run scoreboard players operation @s bluelives = @s lives

#lives logic and respawns after death
effect give @a[gamemode=adventure,scores={death=0..}] minecraft:blindness 15 10 true
scoreboard players remove @a[scores={death=1}] lives 1
scoreboard players add @a[scores={death=1..}] death 1
execute as @a[scores={death=10}] at @s run function rematch:game/pvp/respawn_main
execute as @a[tag=!eliminated,scores={death=11..}] at @s run function rematch:game/pvp/respawn_done
execute as @a[tag=!eliminated,team=!spectators] unless entity @s[scores={lives=1..}] run function rematch:game/pvp/eliminate_player
effect clear @a[gamemode=!adventure] minecraft:blindness

#end game logic
execute if entity @e[tag=!teamplay,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/pvp/end_game_logic_ffa
execute if entity @e[tag=teamplay,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/pvp/end_game_logic_teamplay