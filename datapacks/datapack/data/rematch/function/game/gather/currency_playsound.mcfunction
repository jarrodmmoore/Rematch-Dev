execute if entity @e[tag=currencystand,scores={math=0,math2=1..5}] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1
execute if entity @e[tag=currencystand,scores={math=0,math2=6..10}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 2
execute if entity @e[tag=currencystand,scores={math=0,math2=11..20}] at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 1 2
execute if entity @e[tag=currencystand,scores={math=0,math2=21..}] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2