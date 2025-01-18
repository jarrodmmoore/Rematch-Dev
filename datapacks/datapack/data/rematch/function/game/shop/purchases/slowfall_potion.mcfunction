execute if entity @s[nbt={SelectedItem:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:slow_falling"}}}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=40..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/slowfall_potion
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 40
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:potion[minecraft:custom_name='{"bold":true,"color":"white","text":"Slowfall Potion"}',minecraft:item_name='{"extra":["Slowfall Potion"],"text":"EMU"}',minecraft:potion_contents={potion:"minecraft:slow_falling"},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"white","text":"Slowfall Potion"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Slowfall Potion]","bold":true,"color":"white","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject
return 1