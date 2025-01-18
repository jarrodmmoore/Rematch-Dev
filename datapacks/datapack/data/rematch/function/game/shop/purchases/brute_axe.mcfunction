execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=400..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/brute_axe
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 400
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:iron_axe[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:movement_speed",slot:"mainhand",operation:"add_multiplied_base",id:"minecraft:4e1d98c0-4344-4f44-b7cc-597d15b7320a",amount:-0.25d},{type:"minecraft:attack_damage",slot:"mainhand",operation:"add_value",id:"minecraft:39053872-e866-4241-b624-fff80834485e",amount:9.0d},{type:"minecraft:attack_speed",slot:"mainhand",operation:"add_multiplied_base",id:"minecraft:57fb88f0-b734-4cc9-9ea6-0049c0b0c593",amount:-0.8d}]},minecraft:custom_name='{"bold":true,"color":"white","text":"Brute\'s Axe"}',minecraft:item_name='{"extra":["Brute_SQ_s Axe"],"text":"EMU"}',minecraft:unbreakable={},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"white","text":"Brute\'s Axe"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Brute's Axe]","bold":true,"color":"white","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject

return 1