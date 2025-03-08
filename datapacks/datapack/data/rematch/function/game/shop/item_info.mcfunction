#check to see if item frames are rotated
execute if entity @e[type=minecraft:glow_item_frame,tag=shop_info,tag=!rotated,nbt={ItemRotation:1b}] as @e[type=minecraft:glow_item_frame,tag=shop_info,tag=!rotated,nbt={ItemRotation:1b}] run tag @s add rotated

#timer
execute as @e[tag=rotated] run scoreboard players add @s info_timer 1
execute as @e[tag=rotated,scores={info_timer=21}] run tag @s remove rotated
execute as @e[scores={info_timer=21}] run scoreboard players reset @s info_timer

#effects
execute as @e[tag=rotated,scores={info_timer=1}] run data merge entity @s {Fixed:1b,ItemRotation:8b,Item:{id:"minecraft:glow_ink_sac",count:1}}
execute as @e[tag=rotated,scores={info_timer=20}] run data merge entity @s {Fixed:0b,Item:{id:"minecraft:copper_ingot",count:1}}
execute as @e[tag=rotated,scores={info_timer=1}] at @s run particle minecraft:dust{color:[0.333f,1.0f,0.0f],scale:1.0f} ~ ~ ~ 0.1 0.1 0.1 0 5 normal @a
execute as @e[tag=rotated,scores={info_timer=1}] at @s as @a[sort=nearest,limit=1] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.1

#check
execute as @e[tag=rotated,scores={info_timer=1}] at @s rotated as @s positioned ^ ^-1 ^-0.3 run function rematch:game/shop/info/_check


