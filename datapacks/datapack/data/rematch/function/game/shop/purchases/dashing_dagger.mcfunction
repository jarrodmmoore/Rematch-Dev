execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=350..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/dashing_dagger
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 350
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:golden_sword[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:movement_speed",slot:"mainhand",operation:"add_value",id:"minecraft:a747d3d5-9de7-467b-9a6b-8738f6e906b1",amount:0.03d},{type:"minecraft:attack_speed",slot:"mainhand",operation:"add_multiplied_base",id:"minecraft:4e37f50e-2d26-4097-9a46-c99bfdb84f96",amount:-0.6d},{type:"minecraft:attack_damage",slot:"mainhand",operation:"add_value",id:"minecraft:dd88c924-5941-4ed0-8bd1-44ab604ca03e",amount:3.0d}]},minecraft:custom_name='{"bold":true,"color":"yellow","text":"Dashing Dagger"}',minecraft:item_name='{"extra":["Dashing Dagger"],"text":"EMU"}',minecraft:unbreakable={},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"yellow","text":"Dashing Dagger"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Dashing Dagger]","bold":true,"color":"yellow","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject
return 1