tag @a add readyup
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] readyState 1

function rematch:text/shop_messages/announce_lobby_ready


#add time so players aren't caught off guard if the lobby un-readied right before voting or game time was about to expire
scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] gameTime 20