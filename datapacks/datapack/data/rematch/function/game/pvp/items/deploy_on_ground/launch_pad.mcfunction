summon minecraft:armor_stand ~ ~-1.5 ~ {Tags:["phase3trap","launchpad","shortrange","setme"],ArmorItems:[{},{},{},{id:"minecraft:slime_block",count:1}],NoGravity:1b,Invulnerable:1b,Small:0b,Invisible:1b,DisabledSlots:4144959}

particle minecraft:falling_dust{block_state:{Name:"minecraft:slime_block"}} ~ ~.5 ~ 0.3 0.3 0.3 1 20

playsound minecraft:entity.slime.hurt master @a ~ ~ ~ 1 1

#trap inherits playerID and team data
scoreboard players operation @e[tag=setme] playerID = @s playerID
execute if entity @s[tag=reditem] run tag @e[tag=setme] add reditem
execute if entity @s[tag=blueitem] run tag @e[tag=setme] add blueitem

tag @e[tag=setme] remove setme