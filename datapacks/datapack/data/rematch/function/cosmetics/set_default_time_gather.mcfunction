scoreboard players set @e[name=Global] optionGatherTime 300
playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 2
tellraw @s ["",{"text":" ","type":"text"}]
tellraw @s ["",{"text":"Restored default setting for Gathering Phase time.","color":"gold","type":"text"}]
return 1