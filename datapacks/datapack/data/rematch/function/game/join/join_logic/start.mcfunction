gamemode adventure @s

#join message for lobby
execute if entity @a[tag=!self] run function rematch:text/join_messages/in_lobby_players
execute unless entity @a[tag=!self] run function rematch:text/join_messages/in_lobby_no_players

execute unless entity @a[tag=!self] run function rematch:game/start/_initialize