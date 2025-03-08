scoreboard players add @s lightningRing 180
scoreboard players set @s[scores={lightningRing=250}] lightningRing 250

playsound minecraft:entity.illusioner.prepare_blindness master @a ~ ~ ~ 1.5 1.2
particle minecraft:falling_dust{block_state:{Name:"minecraft:diamond_block"}} ~ ~1 ~ 0.5 0.5 10.5 1 20

scoreboard players reset @s dropDiamond