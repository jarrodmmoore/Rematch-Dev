effect clear @a
execute as @a if entity @s[type=minecraft:player] run function effect:remove_all
return 1