effect give @a[team=players] minecraft:speed 100000 2 true
effect give @a[team=players] minecraft:jump_boost 100000 1 true
tag @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] add gather2
effect clear @a minecraft:slow_falling
execute as @a run attribute @s minecraft:jump_strength base reset