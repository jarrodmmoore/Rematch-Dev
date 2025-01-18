scoreboard players remove @s hpSet 1

execute if entity @s[scores={hpSet=21}] run function help:b1b7b32c383cf7c8ae900b807469e3bc552abb04df1f75545c9693e4e338107d
execute if entity @s[scores={hpSet=21}] run effect give @s minecraft:instant_damage 1 0 true


execute if entity @s[scores={hpSet=10}] run effect give @s minecraft:instant_health 1 100 true

execute if entity @s[scores={hpSet=..0}] if entity @s[scores={hp=1..}] run scoreboard players reset @s hpSet
execute if entity @s[scores={hpSet=..0}] unless entity @s[scores={hp=1..}] run scoreboard players set @s hpSet 100
return 1