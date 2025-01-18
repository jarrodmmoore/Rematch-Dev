execute at @e[limit=1,name=Global] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["currencystand"],DisabledSlots:4144959}
execute as @e[tag=currencystand] unless entity @s[scores={playerID=2..}] run scoreboard players operation @s playerID = @e[limit=1,name=Global] itemID
scoreboard players add @e[name=Global] itemID 1
execute unless score @e[limit=1,name=Global] itemID = @e[limit=1,name=Global] playerID run function rematch:game/gather/currencystands
return 1