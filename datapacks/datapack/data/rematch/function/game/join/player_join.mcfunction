#tp to spawn maybe
function help:e3c77337313e42a21ac2b7f8e75285f4ce7d3c30b2c7a83e57afd9f8a89cd7d0

#guidebook check
tag @s remove tutorial_book
tag @s remove lobby_book
tag @s remove gather_book
tag @s remove shops_book
tag @s remove pvp_book
execute if entity @s[scores={tutorialState=1}] run tag @s add no_guidebook

scoreboard players reset @s
team leave @s

#guidebook check (part 2)
execute if entity @s[tag=no_guidebook] run scoreboard players set @s tutorialState 1
execute unless entity @s[scores={tutorialState=1}] run tag @s add guidebook
tag @s[tag=no_guidebook] remove no_guidebook

function rematch:game/clear_self_inventory
function help:b1b7b32c383cf7c8ae900b807469e3bc552abb04df1f75545c9693e4e338107d

title @s times 0 45 5
title @s title [""]
title @s subtitle [""]
title @s actionbar [""]

#enable tutorial trigger
scoreboard players enable @s tut_click

scoreboard players set @s join 100
scoreboard players set @s hpSet 100

#give unique player ID
scoreboard players set @s playerID 0
function rematch:give_self_player_id

#set scoreboard objectives here...
tag @s remove playerVote1
tag @s remove playerVote2
tag @s remove playerVote3
tag @s remove requestRedTeam
tag @s remove requestBlueTeam
tag @s remove eliminated
tag @s remove winner
xp set @s 0 levels
xp set @s 0 points
scoreboard players set @s inputCooldown 0
scoreboard players reset @s currency
scoreboard players set @s playerSpawn 1
#...

tag @s add self
execute if entity @e[scores={gameState=0},name=Global] run function rematch:game/join/join_logic/start
execute if entity @a[tag=!self] if entity @e[scores={gameState=1},name=Global] run function rematch:game/join/join_logic/gather
execute if entity @a[tag=!self] if entity @e[scores={gameState=2},name=Global] run function rematch:game/join/join_logic/shop
execute if entity @a[tag=!self] if entity @e[scores={gameState=3},name=Global] run function rematch:game/join/join_logic/pvp
execute unless entity @a[tag=!self] if entity @e[scores={gameState=1..},name=Global] run function rematch:game/join/join_logic/force_start
tag @s remove self

tag @s remove readyup
#if the lobby is already in "ready" mode, newly joined players are declared ready by default
execute if entity @e[scores={readyState=1..},name=Global] run tag @s add readyup
return 1