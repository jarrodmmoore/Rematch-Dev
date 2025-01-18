scoreboard players set @e[name=Global] optionTimePVP 8400
playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 2
tellraw @s ["",{"text":" ","type":"text"}]
tellraw @s ["",{"text":"Restored default setting for PVP Phase time.","color":"gold","type":"text"}]
return 1