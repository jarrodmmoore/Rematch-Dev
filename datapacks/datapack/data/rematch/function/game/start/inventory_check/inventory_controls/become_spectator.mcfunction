tag @s add forcespectate
execute at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1

team join spectators @s
tag @s remove requestRedTeam
tag @s remove requestBlueTeam

clear @s minecraft:red_dye[minecraft:custom_data~{Tags:["invControl"]}]
clear @s minecraft:blue_dye[minecraft:custom_data~{Tags:["invControl"]}]
clear @s minecraft:light_gray_dye[minecraft:custom_data~{Tags:["invControl"]}]
return 1