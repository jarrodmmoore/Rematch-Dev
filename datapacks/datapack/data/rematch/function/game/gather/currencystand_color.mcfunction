execute if entity @s[scores={math2=1}] run function rematch:text/gather_messages/exchange1
execute if entity @s[scores={math2=2..5}] run function rematch:text/gather_messages/exchange2
execute if entity @s[scores={math2=6..10}] run function rematch:text/gather_messages/exchange3
execute if entity @s[scores={math2=11..20}] run function rematch:text/gather_messages/exchange4
execute if entity @s[scores={math2=21..}] run function rematch:text/gather_messages/exchange5
return 1