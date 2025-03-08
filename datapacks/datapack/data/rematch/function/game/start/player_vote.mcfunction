#make sure player has maps
#and also prevent inventory replaceitem spam
#maps are only given when the player lacks the "hasMaps" tag

tag @s remove hasMaps
tag @s remove hasMap1
tag @s remove hasMap2
tag @s remove hasMap3

tag @s[gamemode=!creative,nbt={Inventory:[{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapv1"]}},Slot:1b}]}] add hasMap1
tag @s[gamemode=!creative,nbt={Inventory:[{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapv2"]}},Slot:2b}]}] add hasMap2
tag @s[gamemode=!creative,nbt={Inventory:[{id:"minecraft:filled_map",components:{"minecraft:custom_data":{Tags:["mapv3"]}},Slot:3b}]}] add hasMap3

tag @s[tag=hasMap1,tag=hasMap2,tag=hasMap3] add hasMaps

#clear @s[tag=!hasMaps] filled_map
clear @s[tag=!hasMap1] minecraft:filled_map[minecraft:custom_data~{Tags:["mapv1"]}]
clear @s[tag=!hasMap2] minecraft:filled_map[minecraft:custom_data~{Tags:["mapv2"]}]
clear @s[tag=!hasMap3] minecraft:filled_map[minecraft:custom_data~{Tags:["mapv3"]}]
tag @s[tag=!hasMaps] add replaceMaps

#right click to vote
execute if entity @s[scores={carrotInput=1..,inputCooldown=..0},nbt={SelectedItem:{id:"minecraft:filled_map"}}] run function rematch:game/start/click_vote