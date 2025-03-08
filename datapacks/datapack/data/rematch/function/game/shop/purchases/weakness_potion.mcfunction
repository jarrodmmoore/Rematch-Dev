execute if entity @s[nbt={SelectedItem:{id:"minecraft:splash_potion",components:{"minecraft:potion_contents":{potion:"minecraft:weakness"}}}}] run tag @s add refund
execute unless entity @s[tag=refund] unless entity @s[scores={currency=40..}] run tag @s add reject
execute if entity @s[tag=refund] run function rematch:game/shop/refunds/weakness_potion
execute if entity @s[tag=reject] run function rematch:game/shop/purchases/_reject

execute if entity @s[tag=!reject,tag=!refund] run scoreboard players remove @s currency 40
execute if entity @s[tag=!reject,tag=!refund] run give @s minecraft:splash_potion[minecraft:custom_name='{"bold":true,"color":"dark_gray","text":"Weakness Potion"}',minecraft:item_name='{"extra":["Weakness Potion"],"text":"EMU"}',minecraft:potion_contents={potion:"minecraft:weakness"},minecraft:custom_data={emu_lock_name:'{"bold":true,"color":"dark_gray","text":"Weakness Potion"}'}] 1
execute if entity @s[tag=!reject,tag=!refund] run tellraw @s ["",{"text":"\u2714 Purchased","color":"dark_green","type":"text"},{"text":" [Weakness Potion]","bold":true,"color":"dark_gray","type":"text"}]
execute if entity @s[tag=!reject,tag=!refund] at @s run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1

execute if entity @s[tag=refund] run tag @s remove refund
execute if entity @s[tag=reject] run tag @s remove reject