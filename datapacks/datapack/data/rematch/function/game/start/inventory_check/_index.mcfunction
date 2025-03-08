#inventory controls
tag @s remove hasRWool
tag @s remove hasGWool
tag @s remove hasGDye
tag @s remove hasRDye
tag @s remove hasBDye
tag @s remove hasControls

tag @s[nbt={Inventory:[{id:"minecraft:red_wool",components:{"minecraft:custom_data":{Tags:["invControl","invPlay"]}},Slot:19b}]}] add hasRWool
tag @s[nbt={Inventory:[{id:"minecraft:gray_wool",components:{"minecraft:custom_data":{Tags:["invControl","invSpectate"]}},Slot:20b}]}] add hasGWool
tag @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["invControl","invNTeam"]}},Slot:23b}]}] add hasGDye
tag @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["invControl","invRTeam"]}},Slot:24b}]}] add hasRDye
tag @s[nbt={Inventory:[{components:{"minecraft:custom_data":{Tags:["invControl","invBTeam"]}},Slot:25b}]}] add hasBDye

#actions are triggered by removing one object from the inventory, not multiple at the same time which would happen from a /clear
execute if entity @s[tag=hasGWool,tag=!hasRWool] run function rematch:game/start/inventory_check/inventory_controls/become_player
execute if entity @s[tag=hasRWool,tag=!hasGWool] run function rematch:game/start/inventory_check/inventory_controls/become_spectator
execute if entity @s[tag=hasBDye,tag=!hasRDye] run function rematch:game/start/inventory_check/inventory_controls/request_red_team
execute if entity @s[tag=hasRDye,tag=!hasBDye] run function rematch:game/start/inventory_check/inventory_controls/request_blue_team
execute if entity @s[tag=hasBDye,tag=!hasGDye] run function rematch:game/start/inventory_check/inventory_controls/request_no_team

clear @s[tag=!hasRWool] minecraft:red_wool[minecraft:custom_data~{Tags:["invControl"]}]
clear @s[tag=!hasGWool] minecraft:gray_wool[minecraft:custom_data~{Tags:["invControl"]}]
clear @s[tag=!hasRDye] minecraft:red_dye[minecraft:custom_data~{Tags:["invControl"]}]
clear @s[tag=!hasBDye] minecraft:blue_dye[minecraft:custom_data~{Tags:["invControl"]}]
clear @s[tag=!hasGDye] minecraft:light_gray_dye[minecraft:custom_data~{Tags:["invControl"]}]

tag @s[tag=hasRWool,tag=hasGWool,tag=hasGDye,tag=hasRDye,tag=hasBDye] add hasControls
execute if entity @s[tag=!hasControls] run function rematch:text/start/give_inventory_controls