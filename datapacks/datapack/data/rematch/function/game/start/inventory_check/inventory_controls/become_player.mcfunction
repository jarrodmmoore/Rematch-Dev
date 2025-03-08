tag @s remove forcespectate
execute at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

team join players @s[tag=!requestRedTeam,tag=!requestBlueTeam]
team join redplayers @s[tag=requestRedTeam]
team join blueplayers @s[tag=requestBlueTeam]