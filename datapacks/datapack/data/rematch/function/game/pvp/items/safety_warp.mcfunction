tag @s add self

playsound minecraft:entity.enderman.teleport master @s ~ 100000 ~ 100000 1
playsound minecraft:entity.enderman.teleport master @a[tag=!self] ~ ~ ~ 2 1
particle minecraft:falling_dust{block_state:{Name:"minecraft:emerald_block"}} ~ ~1 ~ 0.6 0.6 0.6 1 50

#no worldborder, warp to a random spawnpoint that isn't near a player
execute if entity @e[scores={timeRemaining=0..},name=Global] run function rematch:game/pvp/safety_warp_away

#worldborder is closing in, tp self upward and get slow falling
execute unless entity @e[scores={timeRemaining=0..},name=Global] run function help:8cf14a18ca4f037dc58f7c01a35881efc8f36124198a82ce6402c0d65ece51fd
execute unless entity @e[scores={timeRemaining=0..},name=Global] run effect give @s minecraft:slow_falling 15 0 false

tag @s remove self

scoreboard players reset @s dropEmeraldBlock
return 1