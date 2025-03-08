execute if entity @s[nbt={SelectedItem:{id:"minecraft:trident"}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=600..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/trident
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 600
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:trident[minecraft:custom_name='{"bold":true,"color":"dark_aqua","text":"Trident"}',minecraft:item_name='{"extra":["Trident"],"text":"EMU"}',minecraft:enchantments={levels:{"minecraft:loyalty":1}},minecraft:unbreakable={},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"dark_aqua","text":"Trident"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Trident]","bold":true,"color":"dark_aqua","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject