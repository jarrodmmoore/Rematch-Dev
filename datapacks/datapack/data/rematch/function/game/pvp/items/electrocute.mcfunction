scoreboard players add @s electrocute 1

#zap
execute if entity @s[scores={electrocute=2}] run particle minecraft:end_rod ~ ~1 ~ 0.5 0.5 0.5 0 20
effect give @s[scores={electrocute=2}] minecraft:wither 1 2 true
execute if entity @s[scores={electrocute=2}] run playsound minecraft:entity.shulker_bullet.hit master @a ~ ~ ~ 2 .5

#critical hit in water
execute if entity @s[scores={electrocute=2}] if block ~ ~ ~ minecraft:water run effect give @s minecraft:instant_damage 1 0 true
execute if entity @s[scores={electrocute=2}] if block ~ ~ ~ minecraft:water run function rematch:damage_indicators/hurt/critical_hit
execute if entity @s[scores={electrocute=2}] if entity @s[scores={electrocute=2}] run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 1 1.5

#1sec reapply cooldown
scoreboard players reset @s[scores={electrocute=20..}] electrocute