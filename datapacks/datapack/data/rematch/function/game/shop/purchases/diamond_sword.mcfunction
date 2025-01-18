execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=400..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/diamond_sword
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 400
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:diamond_sword[minecraft:custom_name='{"bold":true,"color":"aqua","text":"Diamond Blade"}',minecraft:item_name='{"extra":["Diamond Blade"],"text":"EMU"}',minecraft:unbreakable={},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"aqua","text":"Diamond Blade"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Diamond Blade]","bold":true,"color":"aqua","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject
return 1