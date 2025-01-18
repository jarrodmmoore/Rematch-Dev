execute at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1 1

team join redplayers @s[team=!spectators]
tag @s add requestRedTeam
tag @s remove requestBlueTeam
return 1