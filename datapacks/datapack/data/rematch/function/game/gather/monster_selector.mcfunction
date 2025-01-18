scoreboard players set @e[name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] randomSelect 0
function rematch:game/gather/random/random_monster
function rematch:game/gather/random/random_monster
function rematch:game/gather/random/random_monster
function rematch:game/gather/random/random_monster
function rematch:game/gather/random/random_monster
function rematch:game/gather/random/random_monster
function rematch:game/gather/random/random_monster
function rematch:game/gather/random/random_monster
function rematch:game/gather/random/random_monster

execute as @e[tag=generate_monsters] at @s if score @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] randomSelect matches 0 run summon minecraft:zombie_horse ~ ~ ~ {Tags:["monster"],Health:16,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}'}
execute as @e[tag=generate_monsters] at @s if score @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] randomSelect matches 1 run summon minecraft:drowned ~ ~ ~ {Tags:["monster"],Health:16,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}',HandItems:[{id:"minecraft:iron_pickaxe",components:{"minecraft:damage":0},count:1},{}]}
execute as @e[tag=generate_monsters] at @s if score @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] randomSelect matches 2 run summon minecraft:zombie_villager ~ ~ ~ {Tags:["monster"],Health:16,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}',HandItems:[{id:"minecraft:iron_pickaxe",components:{"minecraft:damage":0},count:1},{}]}
execute as @e[tag=generate_monsters] at @s if score @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] randomSelect matches 3 run summon minecraft:husk ~ ~ ~ {Tags:["monster"],Health:16,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}',HandItems:[{id:"minecraft:iron_pickaxe",components:{"minecraft:damage":0},count:1},{}]}
execute as @e[tag=generate_monsters] at @s if score @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] randomSelect matches 4 run summon minecraft:zombie ~ ~ ~ {Tags:["monster"],Health:16,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}',HandItems:[{id:"minecraft:iron_pickaxe",components:{"minecraft:damage":0},count:1},{}]}
execute as @e[tag=generate_monsters] at @s if score @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] randomSelect matches 5 run summon minecraft:skeleton ~ ~ ~ {Tags:["monster"],Health:16,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}',HandItems:[{id:"minecraft:iron_pickaxe",components:{"minecraft:damage":0},count:1},{}]}
execute as @e[tag=generate_monsters] at @s if score @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] randomSelect matches 6 run summon minecraft:piglin ~ ~ ~ {Tags:["monster"],Health:16,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}',HandItems:[{id:"minecraft:iron_pickaxe",components:{"minecraft:damage":0},count:1},{}],attributes:[{id:"minecraft:follow_range",base:10.0d}]}
execute as @e[tag=generate_monsters] at @s if score @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] randomSelect matches 7 run summon minecraft:wither_skeleton ~ ~ ~ {Tags:["monster"],Health:16,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}',HandItems:[{id:"minecraft:iron_pickaxe",components:{"minecraft:damage":0},count:1},{}]}
execute as @e[tag=generate_monsters] at @s if score @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] randomSelect matches 8 run summon minecraft:stray ~ ~ ~ {Tags:["monster"],Health:16,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}',HandItems:[{id:"minecraft:iron_pickaxe",components:{"minecraft:damage":0},count:1},{}]}
execute as @e[tag=generate_monsters] at @s if score @e[limit=1,name=Global,type=armor_stand,x=0,y=50,z=49,dx=1,dy=1,dz=1] randomSelect matches 9 run summon minecraft:skeleton_horse ~ ~ ~ {Tags:["monster"],Health:16,CustomName:'{"bold":true,"color":"white","text":"PUNCH!"}'}
return 1