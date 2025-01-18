tag @a add readyup
scoreboard players set @e[name=Global] readyState 1

function rematch:text/shop_messages/announce_lobby_ready


#add time so players aren't caught off guard if the lobby un-readied right before voting or game time was about to expire
scoreboard players set @e[name=Global] gameTime 20
return 1