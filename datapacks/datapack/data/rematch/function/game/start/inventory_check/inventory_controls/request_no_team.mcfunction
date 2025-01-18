execute at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1 .8

team join players @s[team=!spectators]
tag @s remove requestRedTeam
tag @s remove requestBlueTeam
return 1