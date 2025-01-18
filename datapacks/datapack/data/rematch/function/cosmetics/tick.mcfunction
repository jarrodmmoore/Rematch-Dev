execute if entity @e[scores={gameState=0},name=Global] run function rematch:cosmetics/particleloop_lobby
execute if entity @e[tag=!noparticles,scores={gameState=1..},name=Global] run function rematch:cosmetics/particleloop
execute if entity @e[scores={gameState=0},name=Global] run function rematch:cosmetics/parkourloop
execute if entity @e[scores={gameState=0},name=Global] run function rematch:cosmetics/creditsloop
execute if entity @e[scores={gameState=0},name=Global] run function rematch:cosmetics/lobby_letter_heads
execute if entity @e[scores={gameState=0},name=Global] run function rematch:cosmetics/tutorial/_tick

execute as @e[tag=hat_selector] at @s if entity @e[type=minecraft:player,distance=..10,limit=1] run function rematch:cosmetics/hats_list
execute as @e[tag=hat_selector] at @s unless entity @e[type=minecraft:player,distance=..10,limit=1] run item replace entity @s armor.head with minecraft:air

tag @a[gamemode=!spectator] remove playernoparticle
tag @a[gamemode=spectator] add playernoparticle

function rematch:cosmetics/attack_sound
scoreboard players set @e[scores={Hit=1..}] Hit 0
execute as @e[tag=attack_sound_selector] at @s if entity @e[type=minecraft:player,distance=..10,sort=nearest,limit=1] unless entity @e[type=minecraft:pig,distance=..5] run summon minecraft:pig ~ ~1 ~ {Silent:1b,Age:-25000,Rotation:[270.0f,0.0f,0.0f],NoAI:1b,Health:1.0f,Tags:["attack_sound_bee"],CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}'}
execute as @e[tag=attack_sound_selector] at @s unless entity @e[type=minecraft:player,distance=..10,sort=nearest,limit=1] run kill @e[type=minecraft:pig,distance=..5]

execute as @e[tag=particle_selector2] at @s if entity @e[type=minecraft:player,distance=..10,sort=nearest,limit=1] run tag @s add particle_selector
execute as @e[tag=particle_selector] at @s if entity @e[type=minecraft:player,distance=..10,sort=nearest,limit=1] run function rematch:cosmetics/particle_display
execute as @e[tag=particle_selector] at @s if entity @e[type=minecraft:player,distance=..10,sort=nearest,limit=1] run data merge entity @s {Invisible:0b}
execute as @e[tag=particle_selector] at @s unless entity @e[type=minecraft:player,distance=..10,sort=nearest,limit=1] run data merge entity @s {Invisible:1b}
execute as @e[tag=particle_selector] at @s unless entity @e[type=minecraft:player,distance=..10,sort=nearest,limit=1] run function rematch:cosmetics/particles/_remove
execute as @e[tag=particle_selector] at @s unless entity @e[type=minecraft:player,distance=..10,sort=nearest,limit=1] run scoreboard players remove @s particle_score 1
execute as @e[tag=particle_selector] at @s unless entity @e[type=minecraft:player,distance=..10,sort=nearest,limit=1] run tag @s remove particle_selector

function rematch:cosmetics/kill_effect
execute as @e[tag=kill_effect_selector] at @s if entity @e[type=minecraft:player,distance=..10,sort=nearest,limit=1] run setblock -5 55 -29 minecraft:spruce_wall_sign[facing=west]{front_text:{messages:['{"text":"","clickEvent":{"action":"run_command","value":"/function rematch:cosmetics/kill_effects/preview"},"type":"text"}','{"text":"Preview","italic":true,"color":"gold","type":"text"}','{"text":"\\u2605 Click","italic":true,"color":"dark_red","type":"text"}','""']}}
execute as @e[tag=kill_effect_selector] at @s if entity @e[type=minecraft:player,distance=..10,sort=nearest,limit=1] run item replace entity @e[tag=kill_effect_selector,limit=1] armor.head with minecraft:dispenser
execute as @e[tag=kill_effect_selector] at @s unless entity @e[type=minecraft:player,distance=..10,sort=nearest,limit=1] run setblock -5 55 -29 minecraft:air
execute as @e[tag=kill_effect_selector] at @s unless entity @e[type=minecraft:player,distance=..10,sort=nearest,limit=1] run item replace entity @e[tag=kill_effect_selector,limit=1] armor.head with minecraft:air

function rematch:cosmetics/win_effect

function rematch:cosmetics/settings
return 1