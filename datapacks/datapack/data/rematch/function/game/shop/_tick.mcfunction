#text for startup
execute if entity @e[tag=text_start2,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:text/shop_messages/startup

#countdown2
scoreboard players add @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] countdown2 1

#reset phase 1
execute if entity @e[scores={countdown=221..320},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run effect give @a minecraft:blindness 10000 1 true
execute if entity @e[scores={countdown=221..320},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run effect give @a minecraft:slow_falling 10000 10 true
execute if entity @e[scores={countdown=221},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run tp @e[type=minecraft:player,team=players] 1259 84 1119
execute if entity @e[scores={countdown=221},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run fill 1257 86 1117 1261 82 1121 minecraft:black_concrete hollow
execute if entity @e[scores={countdown=231},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/gather/reset
execute if entity @e[scores={countdown=241},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run fill 1257 86 1117 1261 82 1121 minecraft:air hollow
execute if entity @e[scores={countdown=241},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run tp @e[type=minecraft:player,team=players] 1128 93 1246
execute if entity @e[scores={countdown=241},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run fill 1126 95 1248 1130 91 1244 minecraft:black_concrete hollow
execute if entity @e[scores={countdown=251},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/gather/reset
execute if entity @e[scores={countdown=261},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run fill 1126 95 1248 1130 91 1244 minecraft:air hollow
execute if entity @e[scores={countdown=261},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run tp @e[type=minecraft:player,team=players] 1357 91 1308
execute if entity @e[scores={countdown=261},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run fill 1355 89 1306 1359 93 1310 minecraft:black_concrete hollow
execute if entity @e[scores={countdown=271},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/gather/reset
execute if entity @e[scores={countdown=281},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run fill 1355 89 1306 1359 93 1310 minecraft:air hollow
execute if entity @e[scores={countdown=281},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @e[type=minecraft:player,team=players] run function help:796ee7b9dd00e58e2710ab7f7397ab2194710b282198729909a2d3c74a1dd783
execute if entity @e[scores={countdown=281},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run tp @e[type=minecraft:player,team=spectators] 2019 27 2008
#execute if entity @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1,scores={countdown=300}] run function rematch:game/shop/remove_items
#execute if entity @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1,scores={countdown=320}] run function rematch:game/shop/summon_items
execute if entity @e[scores={countdown=281},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run scoreboard objectives setdisplay sidebar readyShop
execute if entity @e[scores={countdown=320},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run effect clear @a minecraft:blindness
execute if entity @e[scores={countdown=320},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run effect clear @a minecraft:slow_falling
execute if entity @e[scores={countdown=320},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:text/announce_phase/phase2
execute if entity @e[scores={countdown=320},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run tag @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] remove noparticles
execute if entity @e[scores={countdown=320},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/gather/clear_inventory
#execute if entity @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1,scores={countdown=320}] as @a[team=players] run tellraw @s ["",{"text":"You have","italic":true,"color":"white"},{"text":" [","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"currency"},"bold":true,"color":"gold"},{"text":"]","bold":true,"color":"gold"},{"text":" coin(s) remaining...","italic":true,"color":"white"}]

#give players refund gold ingot
#execute if entity @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1,scores={countdown=320}] run item replace entity @a[team=players] inventory.8 with minecraft:gold_ingot{display:{Name:'[{"text":"Place Item Here to","color":"red","italic":false},{"text":" Refund!","color":"dark_red","bold":true,"italic":false}]'}}

#set spawn point for players, also keep at spawn
spawnpoint @a 2005 27 2008
execute if entity @e[scores={countdown2=320..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run tp @a[x=2005,y=27,z=2008,distance=80..] 2005 27 2008
execute if entity @e[scores={countdown2=320..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[tag=!invalidCarrot,team=players] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["itemhastitle"]}}}}] run function rematch:text/shop_messages/currency_display
execute if entity @e[scores={countdown2=320..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a[tag=invalidCarrot,team=players] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["itemhastitle"]}}}}] run function rematch:text/invalid_offhand

#guidebook
execute as @a[tag=guidebook] unless entity @s[nbt={Inventory:[{id:"minecraft:written_book",Slot:8b}]}] at @s run clear @s minecraft:written_book
execute as @a[gamemode=adventure,tag=guidebook] if entity @e[scores={gameState=2},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] unless entity @s[nbt={Inventory:[{id:"minecraft:written_book",Slot:8b}]}] run item replace entity @s hotbar.8 with minecraft:written_book[minecraft:written_book_content={author:"the Rematch development team",pages:[{raw:'["",{"text":"Welcome to ","type":"text"},{"text":"Rematch!","bold":true,"color":"gold","type":"text"},{"text":"\\n\\nThis ","color":"black","type":"text"},{"text":"Guidebook","italic":true,"type":"text"},{"text":" will help you master the tips & tricks to the map!\\n\\n","color":"black","type":"text"},{"text":"Note:","color":"dark_red","type":"text"},{"text":" Words with \\"","color":"black","type":"text"},{"text":"[ ]","bold":true,"type":"text"},{"text":"\\" are clickable!\\n\\n","color":"black","type":"text"},{"text":"Note:","color":"dark_red","type":"text"},{"text":" The ","color":"black","type":"text"},{"text":"Guidebook","italic":true,"type":"text"},{"text":"\\nwill update depending on what part of the game you are in.","color":"black","type":"text"}]'},{raw:'["",{"text":"Note:","color":"dark_red","type":"text"},{"text":" The ","color":"black","type":"text"},{"text":"Guidebook","italic":true,"type":"text"},{"text":"\\ncan be disabled using the Tutorial Villager in the main lobby.\\n\\n","color":"black","type":"text"},{"text":"New to the game?","italic":true,"color":"dark_purple","type":"text"},{"text":"\\nClick to check out the ","color":"black","type":"text"},{"text":"Tutorial Book!","italic":true,"color":"dark_green","type":"text"},{"text":"\\n","color":"black","type":"text"},{"text":"[Click here]","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger tut_click set 1"},"hoverEvent":{"action":"show_text","contents":{"text":"Click for a copy!","italic":true,"color":"light_purple","type":"text"}},"type":"text"},{"text":"\\n\\n","color":"black","type":"text"},{"text":"Note:","color":"dark_red","type":"text"},{"text":" The ","color":"black","type":"text"},{"text":"Tutorial Book","italic":true,"color":"dark_green","type":"text"},{"text":" contains links to all editions of the ","color":"black","type":"text"},{"text":"Guidebook!","italic":true,"type":"text"}]'},{raw:'["",{"text":"Phase Two: Shops","bold":true,"type":"text"},{"text":"\\n\\nUsing the coins obtained from the gathering phase, you can purchase items, weapons, etc. in order to fight!\\n\\u25cf ","color":"black","type":"text"},{"text":"[Blacksmith]","bold":true,"color":"dark_blue","clickEvent":{"action":"change_page","value":"4"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to swap pages!","italic":true,"color":"light_purple","type":"text"}},"type":"text"},{"text":"\\n\\u25cf ","color":"black","type":"text"},{"text":"[Utilities]","bold":true,"color":"dark_green","clickEvent":{"action":"change_page","value":"5"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to swap pages!","italic":true,"color":"light_purple","type":"text"}},"type":"text"},{"text":"\\n\\u25cf ","color":"black","type":"text"},{"text":"[Power Ups]","bold":true,"color":"dark_purple","clickEvent":{"action":"change_page","value":"6"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to swap pages!","italic":true,"color":"light_purple","type":"text"}},"type":"text"},{"text":"\\n\\u25cf ","color":"black","type":"text"},{"text":"[Food]","bold":true,"color":"red","clickEvent":{"action":"change_page","value":"7"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to swap pages!","italic":true,"color":"light_purple","type":"text"}},"type":"text"},{"text":"\\n\\u25cf ","color":"black","type":"text"},{"text":"[Refund System]","bold":true,"color":"gold","clickEvent":{"action":"change_page","value":"8"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to swap pages!","italic":true,"color":"light_purple","type":"text"}},"type":"text"}]'},{raw:'["",{"text":"Blacksmith","bold":true,"color":"dark_blue","type":"text"},{"text":"\\n\\nThis is the area to buy ","color":"black","type":"text"},{"text":"weapons","underlined":true,"type":"text"},{"text":" and ","color":"black","type":"text"},{"text":"armor","underlined":true,"type":"text"},{"text":". You can buy:\\n\\u2b27 Classic armor\\n\\u2b27 Standard swords\\n\\u2b27 Custom weapons\\n\\u2b27 etc.\\n","color":"black","type":"text"},{"text":"All items and descriptions can be viewed in game.","italic":true,"type":"text"},{"text":"\\n","color":"black","type":"text"},{"text":"[Return]","bold":true,"color":"dark_gray","clickEvent":{"action":"change_page","value":"3"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to swap pages!","italic":true,"color":"light_purple","type":"text"}},"type":"text"}]'},{raw:'["",{"text":"Utilities","bold":true,"color":"dark_green","type":"text"},{"text":"\\n\\nThis is the area to buy ","color":"black","type":"text"},{"text":"potions ","underlined":true,"type":"text"},{"text":"and","color":"black","type":"text"},{"text":" tools.","underlined":true,"type":"text"},{"text":" You can give yourself:\\n\\u2b27 Potion effects\\n\\u2b27 Flight\\n\\u2b27 Horses! \\n\\u2b27 etc.\\n","color":"black","type":"text"},{"text":"All items and descriptions can be viewed in game.","italic":true,"type":"text"},{"text":"\\n","color":"black","type":"text"},{"text":"[Return]","bold":true,"color":"dark_gray","clickEvent":{"action":"change_page","value":"3"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to swap pages!","italic":true,"color":"light_purple","type":"text"}},"type":"text"}]'},{raw:'["",{"text":"Power Ups","bold":true,"color":"dark_purple","type":"text"},{"text":"\\n\\nThis is the area to buy ","color":"black","type":"text"},{"text":"custom powerful items.","underlined":true,"type":"text"},{"text":" However, watch your wallet because they are expensive!\\n\\n\\n","color":"black","type":"text"},{"text":"All items and descriptions can be viewed in game.","italic":true,"type":"text"},{"text":"\\n","color":"black","type":"text"},{"text":"[Return]","bold":true,"color":"dark_gray","clickEvent":{"action":"change_page","value":"3"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to swap pages!","italic":true,"color":"light_purple","type":"text"}},"type":"text"},{"text":"\\n ","color":"black","type":"text"}]'},{raw:'["",{"text":"Food","bold":true,"color":"red","type":"text"},{"text":"\\n\\nThis is the area to buy... ","color":"black","type":"text"},{"text":"food","underlined":true,"type":"text"},{"text":". Enjoy the benefits of...\\n\\u2b27 Saturation\\n\\u2b27 Saturation points\\n\\u2b27 The thrill of eating!\\n\\n","color":"black","type":"text"},{"text":"All items and descriptions can be viewed in game.","italic":true,"type":"text"},{"text":"\\n","color":"black","type":"text"},{"text":"[Return]","bold":true,"color":"dark_gray","clickEvent":{"action":"change_page","value":"3"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to swap pages!","italic":true,"color":"light_purple","type":"text"}},"type":"text"}]'},{raw:'["",{"text":"Refund System","bold":true,"color":"gold","type":"text"},{"text":"\\n\\nIn order to refund an item:\\n1. Hold it in your mainhand.\\n2. Find the place where you purchased it.\\n3. Interact with the sign with it selected.\\n4. Enjoy a full refund!\\n","color":"black","type":"text"},{"text":"[Return]","bold":true,"color":"dark_gray","clickEvent":{"action":"change_page","value":"3"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to swap pages!","italic":true,"color":"light_purple","type":"text"}},"type":"text"}]'}],title:{raw:"Guidebook"}},minecraft:lore=['"A guidebook to help you understand the \\"nitty-gritty\\" of the map."']]

#prevent bugs
function rematch:game/shop/bug_prevention

#rotate shop models
execute as @e[tag=shop_display] at @s run function help:ec2788977c0c29cdb319cc994542affba8eb7f23efde2887b0072046f4d6d4f1

#don't let players drop their items!
execute as @e[type=minecraft:item,tag=!shop_item_display,tag=!nopickup] at @s if entity @a[gamemode=adventure,distance=..2] run data merge entity @s[type=minecraft:item] {PickupDelay:0}


#count players
function rematch:count_players

#make sure all players have carrot on stick in offhand
execute if entity @e[scores={countdown2=320..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] as @a at @s run function rematch:carrot_on_stick_alt

#give ready-up item
tag @a remove hasRU
tag @a[team=players,nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["readyup"]}},Slot:0b}]}] add hasRU
clear @a[tag=!hasRU] minecraft:red_concrete
clear @a[tag=!hasRU] minecraft:lime_concrete
clear @a[tag=readyup] minecraft:red_concrete
clear @a[tag=!readyup] minecraft:lime_concrete
execute if entity @e[scores={countdown2=320..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:text/start/ready_up_item

#right-click concrete to toggle ready
execute as @a[scores={inputCooldown=..0,carrotInput=1..},team=players,nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["readyup","red"]}}}}] at @s run function rematch:game/start/self_ready
execute as @a[scores={inputCooldown=..0,carrotInput=1..},team=players,nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["readyup","green"]}}}}] at @s run function rematch:game/start/self_not_ready

#control tips
execute as @a[gamemode=adventure,team=!spectators,nbt={SelectedItem:{components:{"minecraft:custom_data":{Tags:["readyup"]}}}}] run function rematch:text/click_to_toggle_ready

#loop refund system
#function rematch:game/shop/refunds/_tick

#######################
#DETERMINE IF PLAYERS ARE READY OR NOT
#number of ready players required to start is the total divided by 2
#calculate required players
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyDummy = @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] playerCountA
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math 2
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyDummy /= @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] math
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyRequired = @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyDummy
scoreboard players add @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyRequired 1
scoreboard players set @e[scores={readyRequired=..0},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyRequired 1

#calculate ready players
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyDummy 0
execute as @a[tag=readyup,team=players] run scoreboard players add @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyDummy 1
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyCount = @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyDummy

#take (ready players) - (required ready players)
#if result is 0 or greater, get the lobby enters into "ready" mode and track is selected
scoreboard players operation @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyDummy -= @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyRequired
execute if entity @e[scores={readyDummy=0..,readyState=..0},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/shop/set_mode_ready
execute if entity @e[scores={readyState=..0},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] if entity @a[tag=admin,tag=readyup] run function rematch:game/shop/set_mode_ready
execute if entity @e[scores={readyDummy=..-1,readyState=1..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] unless entity @a[tag=admin,tag=readyup] run function rematch:game/shop/set_mode_not_ready
#######################

#item info call
function rematch:game/shop/item_info

#logic depending on readyState
execute if entity @e[scores={readyState=..0},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/shop/_tick_not_ready
execute if entity @e[scores={readyState=1..},name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] run function rematch:game/shop/_tick_ready

return 1