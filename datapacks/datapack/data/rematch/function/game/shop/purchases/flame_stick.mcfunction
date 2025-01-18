execute if entity @s[nbt={SelectedItem:{id:"minecraft:blaze_rod"}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=100..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/flame_stick
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 100
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:blaze_rod[minecraft:custom_name='{"bold":true,"color":"red","text":"Flame Stick"}',minecraft:item_name='{"extra":["Flame Stick"],"text":"EMU"}',minecraft:enchantments={levels:{"minecraft:fire_aspect":1}},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"red","text":"Flame Stick"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Flame Stick]","bold":true,"color":"red","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject
return 1