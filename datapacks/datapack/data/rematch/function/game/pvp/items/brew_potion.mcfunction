playsound minecraft:block.brewing_stand.brew master @s

scoreboard players set @s math 0
scoreboard players operation @s math = @e[tag=arenaStand,scores={arenaID=1..6},sort=random,limit=1] arenaID

execute if entity @s[scores={math=1}] run give @s minecraft:potion[minecraft:custom_name='{"bold":true,"color":"red","text":"Health II Potion"}',minecraft:item_name='{"extra":["Health II Potion"],"text":"EMU"}',minecraft:potion_contents={potion:"minecraft:strong_healing"},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"red","text":"Health II Potion"}'}] 1
execute if entity @s[scores={math=2}] run give @s minecraft:splash_potion[minecraft:custom_name='{"bold":true,"color":"dark_purple","text":"Damage II Potion"}',minecraft:item_name='{"extra":["Damage II Potion"],"text":"EMU"}',minecraft:potion_contents={potion:"minecraft:strong_harming"},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"dark_purple","text":"Damage II Potion"}'}] 1
execute if entity @s[scores={math=3}] run give @s minecraft:splash_potion[minecraft:custom_name='{"bold":true,"color":"green","text":"Poison II Potion"}',minecraft:item_name='{"extra":["Poison II Potion"],"text":"EMU"}',minecraft:potion_contents={potion:"minecraft:strong_poison"},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"green","text":"Poison II Potion"}'}] 1
execute if entity @s[scores={math=4}] run give @s minecraft:potion[minecraft:custom_name='{"bold":true,"color":"white","text":"Slowfall Potion"}',minecraft:item_name='{"extra":["Slowfall Potion"],"text":"EMU"}',minecraft:potion_contents={potion:"minecraft:slow_falling"},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"white","text":"Slowfall Potion"}'}] 1
execute if entity @s[scores={math=5}] run give @s minecraft:splash_potion[minecraft:potion_contents={custom_color:5926017,custom_effects:[{id:"minecraft:slowness",amplifier:3b,duration:400}]},minecraft:custom_name='{"bold":true,"color":"dark_gray","text":"Slowness II Potion"}',minecraft:item_name='{"extra":["Slowness II Potion"],"text":"EMU"}',minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"dark_gray","text":"Slowness II Potion"}'}] 1
execute if entity @s[scores={math=6}] run give @s minecraft:splash_potion[minecraft:custom_name='{"bold":true,"color":"dark_gray","text":"Weakness Potion"}',minecraft:item_name='{"extra":["Weakness Potion"],"text":"EMU"}',minecraft:potion_contents={potion:"minecraft:weakness"},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"dark_gray","text":"Weakness Potion"}'}] 1

scoreboard players reset @s brewingTime
return 1