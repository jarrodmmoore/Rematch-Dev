execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_apple"}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=100..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/golden_apple
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 100
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:golden_apple[minecraft:custom_name='{"bold":true,"color":"yellow","text":"Golden Apple"}',minecraft:item_name='{"extra":["Golden Apple"],"text":"EMU"}',minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"yellow","text":"Golden Apple"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Golden Apple]","bold":true,"color":"yellow","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject
return 1