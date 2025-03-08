tag @e[type=minecraft:fishing_bobber,tag=!bobberHasID,limit=1] add giveID
scoreboard players operation @e[tag=giveID] playerID = @s playerID
tag @e[tag=giveID] add bobberHasID
tag @e[tag=giveID] remove giveID

tag @e[tag=myBobber] remove myBobber
execute as @e[type=minecraft:fishing_bobber,tag=bobberHasID] run scoreboard players operation @s math = @s playerID
scoreboard players operation @e[type=minecraft:fishing_bobber,tag=bobberHasID] math -= @s playerID
tag @e[type=minecraft:fishing_bobber,tag=bobberHasID,scores={math=0}] add myBobber

execute if entity @e[tag=myBobber,nbt={OnGround:1b}] at @e[tag=myBobber,limit=1] run function rematch:game/pvp/items/rumble_rod_hit

tag @e[tag=myBobber] remove myBobber