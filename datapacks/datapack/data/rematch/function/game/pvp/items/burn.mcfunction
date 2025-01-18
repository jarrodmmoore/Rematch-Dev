scoreboard players add @s burn 1

#we on fire
particle minecraft:flame ~ ~1 ~ 0.2 0.5 0.2 .02 8
effect give @s[scores={burn=2}] minecraft:wither 2 2 true
playsound minecraft:block.lava.extinguish master @a ~ ~ ~ .3 .5

#1sec reapply cooldown
scoreboard players reset @s[scores={burn=30..}] burn
return 1