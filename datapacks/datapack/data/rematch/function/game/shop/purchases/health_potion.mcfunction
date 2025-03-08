execute if entity @s[nbt={SelectedItem:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:healing"}}}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=50..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/health_potion
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 50
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:potion[minecraft:custom_name='{"bold":true,"color":"red","text":"Health I Potion"}',minecraft:item_name='{"extra":["Health I Potion"],"text":"EMU"}',minecraft:potion_contents={potion:"minecraft:healing"},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"red","text":"Health I Potion"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Health I Potion]","bold":true,"color":"red","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject