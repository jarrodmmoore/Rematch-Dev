scoreboard players set @s math 0
scoreboard players operation @s math = @e[tag=arenaStand,scores={arenaID=1..5},sort=random,limit=1] arenaID

execute if entity @s[scores={math=1}] run summon minecraft:axolotl ~ ~ ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Variant:0,Tags:["effectaxolotl","a1"],CustomName:'{"bold":true,"color":"#FF00AA","text":"Attack Speed Boost!"}'}
execute if entity @s[scores={math=2}] run summon minecraft:axolotl ~ ~ ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Variant:1,Tags:["effectaxolotl","a2"],CustomName:'{"bold":true,"color":"#5E2600","text":"Strength Boost!"}'}
execute if entity @s[scores={math=3}] run summon minecraft:axolotl ~ ~ ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Variant:2,Tags:["effectaxolotl","a3"],CustomName:'{"bold":true,"color":"#FFFF00","text":"Slow Falling!"}'}
execute if entity @s[scores={math=4}] run summon minecraft:axolotl ~ ~ ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Variant:3,Tags:["effectaxolotl","a4"],CustomName:'{"bold":true,"color":"#00FFFF","text":"Jump Boost!"}'}
execute if entity @s[scores={math=5}] run summon minecraft:axolotl ~ ~ ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Variant:4,Tags:["effectaxolotl","a5"],CustomName:'{"bold":true,"color":"#0000FF","text":"Speed Boost!"}'}

particle minecraft:bubble_pop ~ ~1 ~ 0.2 0 0.2 0.05 10 normal @a
playsound minecraft:entity.axolotl.splash master @a ~ ~ ~ 1 1
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 0.75
return 1