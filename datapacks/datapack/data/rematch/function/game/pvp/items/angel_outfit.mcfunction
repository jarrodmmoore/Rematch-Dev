#execute if entity @e[name=Global,scores={oTimer=1}] run effect give @s minecraft:regeneration 2 1 true
effect give @s minecraft:slow_falling 1 0 true

scoreboard players add @s angel_outfit 1
execute if entity @s[scores={angel_outfit=1}] run give @s minecraft:potion[minecraft:custom_name='{"bold":true,"color":"red","text":"Health II Potion"}',minecraft:item_name='{"extra":["Health II Potion"],"text":"EMU"}',minecraft:potion_contents={potion:"minecraft:strong_healing"},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"red","text":"Health II Potion"}'}] 1
execute if entity @s[scores={angel_outfit=600..}] run scoreboard players reset @s angel_outfit
return 1