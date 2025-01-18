#send everyone to spectator who needs to be in spectator
gamemode spectator @a[gamemode=adventure,team=spectators]
scoreboard players reset @a[scores={currency=..9999},team=spectators] currency
scoreboard players reset @a[scores={readyShop=..999},team=spectators] readyShop
scoreboard players reset @a[scores={lives=..999},team=spectators] lives
scoreboard players reset @a[scores={redlives=..999},team=spectators] redlives
scoreboard players reset @a[scores={bluelives=..999},team=spectators] bluelives

#stay near players, don't fly away
execute as @a[gamemode=spectator] at @s unless entity @a[gamemode=adventure,distance=..120,scores={hp=1..}] run tp @s @e[gamemode=adventure,sort=nearest,limit=1]

#no players left? go back to the start of the map
execute if entity @a[team=spectators] unless entity @a[team=!spectators] run function rematch:game/start/_initialize
return 1