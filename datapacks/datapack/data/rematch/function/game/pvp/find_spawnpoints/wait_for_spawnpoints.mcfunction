tag @e[name=Global] remove wegood

#make sure the first 11 spawnpoints are loaded before we get going
function rematch:game/pvp/find_spawnpoints/verify_spawnpoints/1

scoreboard players set @e[tag=!wegood,scores={loadingTimeout=..240},name=Global] gameTime 61
scoreboard players add @e[name=Global] loadingTimeout 1
tag @e[name=Global] remove wegood
return 1