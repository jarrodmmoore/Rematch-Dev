#immediately run this on players who join the world
execute as @a unless entity @s[scores={join=100}] run function rematch:game/join/player_join
execute as @a[scores={hpSet=..999}] run function rematch:game/join/hp_scoreboard_fix
scoreboard players add @e[name=Global] join 1
execute if entity @e[scores={join=1000..},name=Global] run function rematch:game/join/join_objective_refresh

#players abandon phase 2 or 3? boot out to lobby
scoreboard players set @e[name=Global] playerCountZ 0
execute as @a[team=!spectators] run scoreboard players add @e[name=Global] playerCountZ 1
execute if entity @e[scores={gameState=1..2,playerCountZ=..1},name=Global] run function rematch:text/game_abandon
return 1