scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] optionGatherTime 300
playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 2
tellraw @s ["",{"text":" ","type":"text"}]
tellraw @s ["",{"text":"Restored default setting for Gathering Phase time.","color":"gold","type":"text"}]
return 1