scoreboard players set @e[name=Global] optionLives 3
playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 2
tellraw @s ["",{"text":" ","type":"text"}]
tellraw @s ["",{"text":"Restored default setting for PVP Phase lives.","color":"gold","type":"text"}]
return 1