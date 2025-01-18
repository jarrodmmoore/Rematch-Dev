summon minecraft:armor_stand ~ ~ ~ {Tags:["phase3trap","sinkhole","longrange","setme"],NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,DisabledSlots:4144959}

particle minecraft:falling_dust{block_state:{Name:"minecraft:sand"}} ~ ~.2 ~ 5.0 0.0 5.0 1 50
particle minecraft:falling_dust{block_state:{Name:"minecraft:gravel"}} ~ ~.2 ~ 5.0 0.0 5.0 1 50

playsound minecraft:entity.creeper.death master @a ~ ~ ~ 2 .5
playsound minecraft:entity.vex.charge master @a ~ ~ ~ .6 1.4

#trap inherits playerID and team data
scoreboard players operation @e[tag=setme] playerID = @s playerID
execute if entity @s[tag=reditem] run tag @e[tag=setme] add reditem
execute if entity @s[tag=blueitem] run tag @e[tag=setme] add blueitem

tag @e[tag=setme] remove setme
return 1