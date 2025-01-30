#2 in 5 chance of getting a heal
execute store result score @s oTimer run random value 1..5
execute if score @s oTimer matches ..2 run effect give @s minecraft:instant_health 1 0 true
scoreboard players reset @s oTimer