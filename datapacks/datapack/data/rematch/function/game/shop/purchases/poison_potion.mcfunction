execute if entity @s[nbt={SelectedItem:{id:"minecraft:splash_potion",components:{"minecraft:potion_contents":{potion:"minecraft:poison"}}}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=50..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/poison_potion
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 50
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:splash_potion[minecraft:custom_name='{"bold":true,"color":"green","text":"Poison I Potion"}',minecraft:item_name='{"extra":["Poison I Potion"],"text":"EMU"}',minecraft:potion_contents={potion:"minecraft:poison"},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"green","text":"Poison I Potion"}'}]
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Poison I Potion]","bold":true,"color":"green","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject