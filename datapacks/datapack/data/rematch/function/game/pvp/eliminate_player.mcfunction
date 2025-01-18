tag @s add eliminated
gamemode spectator @s

scoreboard players reset @s lives
scoreboard players reset @s redlives
scoreboard players reset @s bluelives

scoreboard players set @e[name=Global] playerCountA 0
execute as @a[gamemode=adventure,team=!spectators] run scoreboard players add @e[name=Global] playerCountA 1

item replace entity @s armor.head with minecraft:air
item replace entity @s armor.chest with minecraft:air
item replace entity @s armor.legs with minecraft:air
item replace entity @s armor.feet with minecraft:air

function rematch:text/pvp/player_eliminated
return 1