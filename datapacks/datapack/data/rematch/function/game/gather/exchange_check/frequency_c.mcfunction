execute as @e[scores={mine_iron=1..}] run function rematch:game/gather/exchanges/iron
execute as @e[scores={mine_lapis=1..}] run function rematch:game/gather/exchanges/lapis
execute as @e[scores={mine_redstone=1..}] run function rematch:game/gather/exchanges/redstone
execute as @e[scores={mine_gold=1..}] run function rematch:game/gather/exchanges/gold
execute as @e[scores={mine_diamond=1..}] run function rematch:game/gather/exchanges/diamond
execute as @e[scores={mine_emerald=1..}] run function rematch:game/gather/exchanges/emerald

execute as @e[scores={mine_hay=1..}] run function rematch:game/gather/exchanges/hay
execute as @e[scores={mine_bookshelves=1..}] run function rematch:game/gather/exchanges/bookshelf

data merge entity @e[type=minecraft:chicken,tag=baby_chicken,limit=1] {Age:-25000}
return 1