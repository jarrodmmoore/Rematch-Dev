scoreboard players add @s sinkHole 1
scoreboard players reset @s[gamemode=!adventure] sinkHole

#sink if there's a non-solid block where our head is
execute if entity @s[scores={sinkHole=..100}] at @s if block ~ ~1 ~ #rematch:missile_do_not_explode run tp @s ~ ~-.03 ~
execute if entity @s[scores={sinkHole=..100}] at @s if block ~ ~2 ~ #rematch:missile_do_not_explode run tp @s ~ ~-.02 ~

#rise back up at the end
execute if entity @s[scores={sinkHole=101..398}] at @s unless block ~ ~ ~ #rematch:missile_do_not_explode run tp @s ~ ~.05 ~
execute if entity @s[scores={sinkHole=101..398}] at @s if block ~ ~ ~ #rematch:missile_do_not_explode run scoreboard players set @s sinkHole 400
execute if entity @s[scores={sinkHole=399}] at @s unless block ~ ~ ~ #rematch:missile_do_not_explode run function rematch:game/pvp/respawn_main
execute if entity @s[scores={sinkHole=560..}] at @s if block ~ ~ ~ #rematch:missile_do_not_explode run scoreboard players reset @s sinkHole