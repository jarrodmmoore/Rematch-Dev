summon minecraft:armor_stand ~ ~ ~ {Tags:["phase3trap","harmingtrap","shortrange","setme"],DisabledSlots:4144959,NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b}

particle minecraft:falling_dust{block_state:{Name:"minecraft:red_wool"}} ~ ~.2 ~ 0.3 0.0 0.3 1 20

playsound minecraft:entity.creeper.hurt master @a ~ ~ ~ 1 1
playsound minecraft:entity.vex.charge master @a ~ ~ ~ .6 1.4

#trap inherits playerID and team data
scoreboard players operation @e[tag=setme] playerID = @s playerID
execute if entity @s[tag=reditem] run tag @e[tag=setme] add reditem
execute if entity @s[tag=blueitem] run tag @e[tag=setme] add blueitem

tag @e[tag=setme] remove setme
return 1