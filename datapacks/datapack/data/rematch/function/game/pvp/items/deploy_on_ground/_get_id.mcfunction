tag @a[gamemode=adventure,sort=nearest,limit=1,team=!spectators] add user

execute if entity @a[tag=user] run scoreboard players operation @s playerID = @e[tag=user,sort=nearest,limit=1] playerID
execute if entity @a[tag=user,team=redplayers] run tag @s add reditem
execute if entity @a[tag=user,team=blueplayers] run tag @s add blueitem
execute if entity @a[tag=user] run tag @s add itemHasID

tag @a[tag=user] remove user
return 1